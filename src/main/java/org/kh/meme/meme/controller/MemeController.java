package org.kh.meme.meme.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.kh.meme.common.Pagination;
import org.kh.meme.member.domain.Member;
import org.kh.meme.meme.domain.Meme;
import org.kh.meme.meme.domain.MemeFile;
import org.kh.meme.meme.domain.MemeRequest;
//import org.kh.meme.meme.domain.PageInfo;
import org.kh.meme.meme.service.MemeService;
import org.kh.meme.rank.domain.BoardRank;
import org.kh.meme.rank.domain.MemeRank;
import org.kh.meme.rank.domain.QuizRank;
import org.kh.meme.rank.service.RankService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class MemeController {

	@Autowired
	private MemeService mService;

	@Autowired
	private RankService rService;

	// 사전 등재 요청
	@RequestMapping(value = "/meme/registerView", method = RequestMethod.GET)
	public String memeWriteView(Model model, HttpSession session) {
		// 비로그인->로그인페이지, 로그인->등재요청페이지
		if (session.getAttribute("loginMember") == null) {
			return "redirect:/login.me";
		}
		// 로그인 후 등재 요청시 작성자에 닉네임 출력
		Member member = (Member) session.getAttribute("loginMember");
		model.addAttribute("memberNickname", member.getMemberNickname());
		return ".tilesHead/meme/memeRegisterForm";
	}

	@RequestMapping(value = "/meme/register", method = RequestMethod.POST)
	public String memeRegister(Model model, @ModelAttribute Meme meme, @ModelAttribute MemeFile memeFile,
			@RequestParam(value = "uploadFile", required = false) MultipartFile uploadFile,
			HttpServletRequest request) {

		try {
			if (!uploadFile.getOriginalFilename().contentEquals("")) {
				String renameFileName = saveFile(uploadFile, request);
				if (renameFileName != null) {
					memeFile.setMemeFileName(uploadFile.getOriginalFilename());
					memeFile.setMemeFileRename(renameFileName);
				}
			}
			int result = mService.registerMeme(meme, memeFile);
			if (result > 0) {
				System.out.println("등록성공");
				return "redirect:/";

			} else {
				System.out.println("등록 실패");
				return "redirect:/";
			}

		} catch (Exception e) {
			System.out.println("실패");
			return "redirect:/";
		}

	}

	// 첨부파일저장
	public String saveFile(MultipartFile uploadFile, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\memeUploadFiles";
		File folder = new File(savePath);
		if (!folder.exists()) {
			folder.mkdir();
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String originalFileName = uploadFile.getOriginalFilename();
		String renameFileName = sdf.format(new Date(System.currentTimeMillis())) + "."
				+ originalFileName.substring(originalFileName.lastIndexOf(".") + 1);
		String filePath = folder + "\\" + renameFileName;
		try {
			uploadFile.transferTo(new File(filePath));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return renameFileName;

	}

	/*
	 * // 사전 목록
	 * 
	 * @RequestMapping(value = "/meme/list", method = RequestMethod.GET) public
	 * String memeListView(Model model, @RequestParam(value = "page", required =
	 * false) Integer page) { int currentPage = (page != null) ? page : 1; int
	 * totalCount = mService.getListCount(); PageInfo pi =
	 * Pagination.getPageInfo(currentPage, totalCount); List<Meme> mList =
	 * mService.printAll(pi); try { if (!mList.isEmpty()) {
	 * model.addAttribute("mList", mList); model.addAttribute("pi", pi); return
	 * "meme/memeListView"; } else { System.out.println("전체조회실패"); return
	 * "redirect:/"; } } catch (Exception e) { System.out.println("실패"); return
	 * "redirect:/";
	 * 
	 * } }
	 */

	// 사전 상세보기
//	@RequestMapping(value = "/meme/detail", method = RequestMethod.GET)
//	public String memeDetailView(Model model, @RequestParam(value = "memeName") String memeName) {
//		Meme meme = mService.printOneByMeme(memeName);
//		MemeFile memeFile = mService.printOneByMemeFile(meme.getMemeNo());
//		if (meme != null) {
//			// 조회수 증가
//			mService.memeCountUpdate(meme.getMemeNo());
//			model.addAttribute("meme", meme);
//			model.addAttribute("memeFile", memeFile);
//			return "meme/memeDetailView";
//		} else {
//			return "redirct:/";
//		}
//
//	}

	// 사전 상세보기
	@RequestMapping(value = "/meme/detail", method = RequestMethod.GET)
	public String memeDetail(Model model, @RequestParam(value = "memeName") String memeName) {
		try {
			Meme meme = mService.printOneByMeme(memeName);
			MemeFile memeFile = mService.printOneByMemeFile(meme.getMemeNo());

			model.addAttribute("rankmain", "meme");
			List<MemeRank> memeRankList = rService.printMemeRank();
			List<BoardRank> boardPushRankList = rService.printBoardPushRank();
			List<BoardRank> boardFreeRankList = rService.printBoardFreeRank();

			List<QuizRank> quizRankList = rService.printQuizRank();
			if (meme != null && !memeRankList.isEmpty() && !boardPushRankList.isEmpty() && !boardFreeRankList.isEmpty()
					&& !quizRankList.isEmpty()) {
				model.addAttribute("memeRankList", memeRankList);
				model.addAttribute("boardPushRankList", boardPushRankList);
				model.addAttribute("boardFreeRankList", boardFreeRankList);
				model.addAttribute("quizRankList", quizRankList);

				// 조회수 증가
				mService.memeCountUpdate(meme.getMemeNo());
				model.addAttribute("meme", meme);

				model.addAttribute("memeFile", memeFile);
				return ".tiles/meme/memeDetailView";
			} else {
				// 일단 error 나누어서 안 적음, 필요하면 적기
				model.addAttribute("msg", "사전 상세 조회 실패");
				return "common/memeErrorPage";
			}

		} catch (Exception e) {
			model.addAttribute("msg", "사전에 등재되지 않은 단어 입니다. 유행어를 등록 해주세요~!");
			return ".tilesHead/common/memeErrorPage";

		}

	}

	// 사전 수정삭제 요청
	@RequestMapping(value = "/meme/requestView", method = RequestMethod.GET)
	public String memeRequestView(Model model, @RequestParam(value = "memeNo") int memeNo) {

		//랭킹
		model.addAttribute("rankmain", "meme");
		List<MemeRank> memeRankList = rService.printMemeRank();
		List<BoardRank> boardPushRankList = rService.printBoardPushRank();
		List<BoardRank> boardFreeRankList = rService.printBoardFreeRank();
		List<QuizRank> quizRankList = rService.printQuizRank();


		if(!memeRankList.isEmpty() && !boardPushRankList.isEmpty() && !boardFreeRankList.isEmpty() && !quizRankList.isEmpty()) {

			//랭킹
			model.addAttribute("memeRankList", memeRankList);
			model.addAttribute("boardPushRankList", boardPushRankList);
			model.addAttribute("boardFreeRankList", boardFreeRankList);
			model.addAttribute("quizRankList", quizRankList);
			return ".tiles/meme/memeRequestForm";
		} else {
			//일단 error 나누어서 안 적음, 필요하면 적기
			model.addAttribute("msg", "랭킹 조회 실패");
			return "error";
		}
		
		
	}

	// 사전 수정삭제 요청 등록
	@RequestMapping(value = "/meme/request", method = RequestMethod.GET)
	public String memeReqeust(Model model, @ModelAttribute MemeRequest memeRequest) {

		try {
			int result = mService.requestMeme(memeRequest);
			if (result > 0) {
				System.out.println("등록성공");
				
				return "redirect:/";

			} else {
				System.out.println("등록 실패");
				return "error";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}

//	@RequestMapping(value="/meme", method = RequestMethod.GET)
//	public String memelist(Model model) {
//		model.addAttribute("page", "meme");
//		return ".tiles/meme/list";
//	}

// 	@RequestMapping(value="/meme", method = RequestMethod.GET)
// 	public String memeranklist(Model model) {
// 		model.addAttribute("rankmain", "meme");
// 		List<MemeRank> memeRankList = rService.printMemeRank();
// 		List<BoardRank> boardPushRankList = rService.printBoardPushRank();
// 		List<BoardRank> boardFreeRankList = rService.printBoardFreeRank();

// 		List<QuizRank> quizRankList = rService.printQuizRank();
// 		if(!memeRankList.isEmpty() && !boardPushRankList.isEmpty() && !boardFreeRankList.isEmpty() && !quizRankList.isEmpty()) {
// 			model.addAttribute("memeRankList", memeRankList);
// 			model.addAttribute("boardPushRankList", boardPushRankList);
// 			model.addAttribute("boardFreeRankList", boardFreeRankList);
// 			model.addAttribute("quizRankList", quizRankList);
// 			return ".tiles/meme/list";
// 		} else {
// 			//일단 error 나누어서 안 적음, 필요하면 적기
// 			model.addAttribute("msg", "랭킹 조회 실패");
// 			return "error";

	//타임라인
	@RequestMapping(value="/meme/timeline", method=RequestMethod.GET)
	public String memeTimeline(Model model) {
		List<Meme> memeTimeline = mService.printMemeTimeline();
		model.addAttribute("memeTimeline",memeTimeline);
		
		List<Meme> memeSecondTimeline = mService.printSeoncdMemeTimeline();
		model.addAttribute("memeSecondTimeline",memeSecondTimeline);

		List<Meme> memeThirdTimeline = mService.printThirdMemeTimeline();
		model.addAttribute("memeThirdTimeline",memeThirdTimeline);

		List<Meme> memeFourthTimeline = mService.printFourthMemeTimeline();
		model.addAttribute("memeFourthTimeline",memeFourthTimeline);
		
		List<Meme> memeFifthTimeline = mService.printFifthMemeTimeline();
		model.addAttribute("memeFifthTimeline",memeFifthTimeline);
		
		List<Meme> memeSixthTimeline = mService.printSixthMemeTimeline();
		model.addAttribute("memeSixthTimeline",memeSixthTimeline);
		
		
		
		return".tilesHead/meme/memeTimeline";
	}
	
	
	
}
