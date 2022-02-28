package org.kh.meme.board.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.kh.meme.board.domain.Board;
import org.kh.meme.board.domain.BoardFile;
import org.kh.meme.board.domain.Comment;
import org.kh.meme.board.domain.Recommend;
import org.kh.meme.board.service.BoardService;
import org.kh.meme.common.PageInfo;
import org.kh.meme.common.Pagination;
import org.kh.meme.member.domain.Member;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
public class BoardController {

	@Autowired
	private BoardService bService;
	
	@Autowired
	private RankService rService;
	

	@RequestMapping(value="/boardtest", method=RequestMethod.GET)
	public String boardTestList() {
		return "/board/boardlist";
	}
	
	@RequestMapping(value="/boarderror", method=RequestMethod.GET)
	public String boarderror() {
		return "/board/error";
	}
	

	@RequestMapping(value="/boardwrite", method=RequestMethod.GET)
	public String boardwritetest() {
		return "/board/write";
	}
	
	@RequestMapping(value="/boarddetail", method=RequestMethod.GET)
	public String boarddetailtest() {
		return "/board/boardDetailView";
	}
	
	
	//댓글
	@ResponseBody
	@RequestMapping(value="/board/commentAdd", method=RequestMethod.POST)
	public String boardCommentAdd(
			@ModelAttribute Comment comment) {
		System.out.println(comment);
//		String commentWriter = "어쩔티비";
//		comment.setMemberNickname(commentWriter);
		int result = bService.registerComment(comment);
		
		//후속조치
		if(result > 0 ) {
			return "success";
		} else {
			return "fail";
		}

	}
	
	
	@ResponseBody
	@RequestMapping(value="/board/commentList", method=RequestMethod.GET
								, produces="application/json;charset=utf-8")
	public String boardCommentList(
			Model model
			, @RequestParam("boardNo") int boardNo) {
		
		List<Comment> commentList = bService.printAllCommentList(boardNo);

		if(!commentList.isEmpty()) {
//			return new Gson().toJson(rList);
			//같은 내용
//			Gson gson = new Gson();
			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
			return gson.toJson(commentList);
		}
		return null;

	}
	

	@ResponseBody
	@RequestMapping(value="/board/commentModify", method=RequestMethod.POST)
	public String boardReplyModify(
			@ModelAttribute Comment comment) {
		int result = bService.modifyComment(comment);
		if(result > 0 ) {
			return "success";
		} else {
			return "fail";
		}
	}
	
	@ResponseBody
	@RequestMapping(value="/board/commentDelete", method=RequestMethod.GET)
	public String boardCommentRemove(
			@RequestParam("commentNo") int commentNo) {
		int result = bService.removeComment(commentNo);
		if(result > 0) {
			return "success";
		} else {
			return "fail";
		}
	}
	
	
	
	
	//게시글
	@RequestMapping(value="/board/detail_updateView", method=RequestMethod.POST)
	public String boardDetailUpdateView(
			Model model
			, @RequestParam("boardNo") Integer boardNo) {
		
		//게시글 보기
		Board oneBoard = bService.printBoardOneByNo(boardNo);
		BoardFile boardFile = bService.printBoardFileOneByNo(oneBoard.getBoardNo());
		
		//랭킹
		model.addAttribute("rankmain", "board");
		List<MemeRank> memeRankList = rService.printMemeRank();
		List<BoardRank> boardPushRankList = rService.printBoardPushRank();
		List<BoardRank> boardFreeRankList = rService.printBoardFreeRank();
		List<QuizRank> quizRankList = rService.printQuizRank();
 
		
		if(oneBoard != null && !memeRankList.isEmpty() && !boardPushRankList.isEmpty() && !boardFreeRankList.isEmpty() && !quizRankList.isEmpty()) {
			//게시물
			model.addAttribute("oneBoard", oneBoard);
			model.addAttribute("boardFile", boardFile);
			
			model.addAttribute("memeRankList", memeRankList);
				model.addAttribute("boardPushRankList", boardPushRankList);
				model.addAttribute("boardFreeRankList", boardFreeRankList);
				model.addAttribute("quizRankList", quizRankList);
				return ".tiles/board/update";
			
		} else {
			//일단 error 나누어서 안 적음, 필요하면 적기
			model.addAttribute("msg", "게시글 조회 실패");
			return "error";
		}
		
//		return ".tiles/board/update";
	}
	
	
	
	@RequestMapping(value="/board/detail_update", method=RequestMethod.POST)
	public String boardDetailUpdate(
			Model model
			, @RequestParam("boardNo") Integer boardNo
			, @ModelAttribute BoardFile boardFile
			, @ModelAttribute Board board
			, HttpServletRequest request
			, @RequestParam(value="uploadFile", required = false) MultipartFile uploadFile
			) {
	
		//memberId session에서 가져오기
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("loginMember");
		System.out.println(member);
		
		//첨부파일
		if(!uploadFile.getOriginalFilename().contentEquals("")) {
			String fileRename = saveFile(uploadFile, request);
			if(fileRename != null) {
				boardFile.setBoardFilename(uploadFile.getOriginalFilename());
				boardFile.setBoardFilerename(fileRename);
			}
		}
		
		board.setBoardNo(boardNo);
		board.setMemberNickname(member.getMemberNickname());
		System.out.println(board);
		System.out.println(boardFile);


		int result = bService.updateBoard(board, boardFile);
		System.out.println(result);
		
		//랭킹
		model.addAttribute("rankmain", "board");
		List<MemeRank> memeRankList = rService.printMemeRank();
		List<BoardRank> boardPushRankList = rService.printBoardPushRank();
		List<BoardRank> boardFreeRankList = rService.printBoardFreeRank();
		List<QuizRank> quizRankList = rService.printQuizRank();
		
		
		if(result > 0 && !memeRankList.isEmpty() && !boardPushRankList.isEmpty() && !boardFreeRankList.isEmpty() && !quizRankList.isEmpty()) {
		
			//랭킹
			model.addAttribute("memeRankList", memeRankList);
			model.addAttribute("boardPushRankList", boardPushRankList);
			model.addAttribute("boardFreeRankList", boardFreeRankList);
			model.addAttribute("quizRankList", quizRankList);
			return "redirect:/board";
		} else {
			//일단 error 나누어서 안 적음, 필요하면 적기
			model.addAttribute("msg", "랭킹 조회 실패");
			return "error";
		}
		
//		try {
//			
//		} catch (Exception e) {
//			System.out.println("게시글 추가 실패");
//			return "error";
//		}
		
	}
	
	
	@RequestMapping(value="/board/detail_delete", method=RequestMethod.POST)
	public String boardDetailDelete(
			Model model
			, @RequestParam("boardNo") Integer boardNo
			, HttpServletRequest request) {
		

		int result = bService.deleteBoard(boardNo);
		System.out.println(result);
		
		//랭킹
		model.addAttribute("rankmain", "board");
		List<MemeRank> memeRankList = rService.printMemeRank();
		List<BoardRank> boardPushRankList = rService.printBoardPushRank();
		List<BoardRank> boardFreeRankList = rService.printBoardFreeRank();
		List<QuizRank> quizRankList = rService.printQuizRank();
		
		
		if(result > 0 && !memeRankList.isEmpty() && !boardPushRankList.isEmpty() && !boardFreeRankList.isEmpty() && !quizRankList.isEmpty()) {
		
			//랭킹
			model.addAttribute("memeRankList", memeRankList);
			model.addAttribute("boardPushRankList", boardPushRankList);
			model.addAttribute("boardFreeRankList", boardFreeRankList);
			model.addAttribute("quizRankList", quizRankList);
			return "redirect:/board";
		} else {
			//일단 error 나누어서 안 적음, 필요하면 적기
			model.addAttribute("msg", "랭킹 조회 실패");
			return "error";
		}
		
//		try {
//			
//		} catch (Exception e) {
//			System.out.println("게시글 추가 실패");
//			return "error";
//		}
		
	}
	
	@RequestMapping(value="/board/detail_delete_mypage", method=RequestMethod.POST)
	public String boardDetailDeleteMyPage(
			Model model
			, @RequestParam("boardNo") Integer boardNo
			, HttpServletRequest request) {
		

		int result = bService.deleteBoard(boardNo);
		
		return "redirect:/myPage.me";
	}
	
	@RequestMapping(value="/board/detail_delete_admin", method=RequestMethod.POST)
	public String boardDetailDeleteAdmin(
			Model model
			, @RequestParam("boardNo") Integer boardNo
			, HttpServletRequest request) {
		

		int result = bService.deleteBoard(boardNo);
		
		return "redirect:/admin/manageBoard.me";
	}

	@RequestMapping(value="/board/detail_report", method=RequestMethod.POST
			, produces="application/json;charset=utf-8")
	public String boardDetailReport(
			HttpServletRequest request
			, @RequestParam("boardNo") int boardNo) {
		System.out.println(boardNo);
		
		String referer = request.getHeader("Referer");
		
		
		int boardReportData = bService.addBoardReport(boardNo);
		if(boardReportData > 0) {
			//게시물 추천수
			//board_tbl boardLike update
			
			System.out.println("board에 게시물 신고수 반영!");
			return "redirect:/board/detail?boardNo="+boardNo;
//			return "redirect:"+referer;
		} else {
			System.out.println("board에 게시물 신고수 반영 안됨!");
			return "redirect:"+referer;
		}

	}
	
	@RequestMapping(value="/board/detail_reportAdminToN", method=RequestMethod.POST
			, produces="application/json;charset=utf-8")
	public String boardDetailReportManager1(
			HttpServletRequest request
			, @RequestParam("boardNo") int boardNo) {
		System.out.println(boardNo);

		String referer = request.getHeader("Referer");
		
		int boardReportManager = bService.boardReportManagerToN(boardNo);
		if(boardReportManager > 0) {
			//게시물 추천수
			//board_tbl boardLike update
			
			System.out.println("board 숨기기");
			return "redirect:/admin/manageBoardReported.me";
//				return "redirect:"+referer;
		} else {
			System.out.println("board 숨기기 실패");
			return "redirect:"+referer;
		}
		
	}
	
	@RequestMapping(value="/board/detail_reportAdminToY", method=RequestMethod.POST
			, produces="application/json;charset=utf-8")
	public String boardDetailReportManager2(
			HttpServletRequest request
			, @RequestParam("boardNo") int boardNo) {
		System.out.println(boardNo);

		String referer = request.getHeader("Referer");
		
		int boardReportManager = bService.boardReportManagerToY(boardNo);
		if(boardReportManager > 0) {
			//게시물 추천수
			//board_tbl boardLike update
			
			System.out.println("board 보이기");
			return "redirect:/admin/manageBoardReported.me";
//				return "redirect:"+referer;
		} else {
			System.out.println("board 보이기 실패");
			return "redirect:"+referer;
		}
		
	}
	
	@RequestMapping(value="/board/detail_like", method=RequestMethod.POST)
	public String boardDetailLike( HttpServletRequest request 
			, @RequestParam("boardNo") Integer boardNo) {
		
		//추천 수
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("loginMember");
		System.out.println(member);
		
		Recommend recommend = new Recommend();
		recommend.setBoardNo(boardNo);
		recommend.setRecommendId(member.getMemberId());
		
		String referer = request.getHeader("Referer");
		
		//추천 수
		//게시물 recommend 추가
		int boardLikeData = bService.addBoardLike(recommend);
		
		if(boardLikeData > 0) {
			//게시물 추천수
			//board_tbl boardLike update
			int boardLike = bService.updateBoardLike(recommend);
			System.out.println("board에 게시물 추천수 반영!");
			return "redirect:/board/detail?boardNo="+boardNo;
//			return "redirect:"+referer;
		} else {
			System.out.println("board에 게시물 추천수 반영 안됨!");
			return "redirect:"+referer;
		}
		
	}

	@RequestMapping(value="/board/detail", method=RequestMethod.GET)
	public String boardDetail( HttpServletRequest request
			, Model model
			, @RequestParam("boardNo") Integer boardNo) {
		
		//memberId session에서 가져오기
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("loginMember");
		System.out.println(member);
		
		//게시글 보기
		Board oneBoard = bService.printBoardOneByNo(boardNo);
		BoardFile boardFile = bService.printBoardFileOneByNo(boardNo);
		
		//랭킹
		model.addAttribute("rankmain", "board");
		List<MemeRank> memeRankList = rService.printMemeRank();
		List<BoardRank> boardPushRankList = rService.printBoardPushRank();
		List<BoardRank> boardFreeRankList = rService.printBoardFreeRank();
		List<QuizRank> quizRankList = rService.printQuizRank();
 
		
		if(oneBoard != null && !memeRankList.isEmpty() && !boardPushRankList.isEmpty() && !boardFreeRankList.isEmpty() && !quizRankList.isEmpty()) {
			//게시물
			model.addAttribute("oneBoard", oneBoard);
			model.addAttribute("boardFile", boardFile);
			model.addAttribute("member", member);
			
			//게시물 조회수 ++
//			bService.boardCount(oneBoard.getBoardNo());
			bService.boardCount(boardNo);
			
			model.addAttribute("memeRankList", memeRankList);
				model.addAttribute("boardPushRankList", boardPushRankList);
				model.addAttribute("boardFreeRankList", boardFreeRankList);
				model.addAttribute("quizRankList", quizRankList);
				return ".tiles/board/detail";
			
		} else {
			//일단 error 나누어서 안 적음, 필요하면 적기
			model.addAttribute("msg", "게시글 조회 실패");
			return "error";
		}
		
		
	}

	//글쓰기 페이지
	@RequestMapping(value="/board/write", method=RequestMethod.GET)
	public String boardwrite( HttpServletRequest request,
			Model model) {
		

		//memberId session에서 가져오기
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("loginMember");
		System.out.println(member);
				
				
		//랭킹
		model.addAttribute("rankmain", "board");
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
			return ".tiles/board/write";
		} else {
			//일단 error 나누어서 안 적음, 필요하면 적기
			model.addAttribute("msg", "랭킹 조회 실패");
			return "error";
		}
		
		
	}
	
	//게시글 등록
	@RequestMapping(value="/board/register", method=RequestMethod.POST)
	public String boardRegister( 
			Model model
			, @ModelAttribute BoardFile boardFile
			, @ModelAttribute Board board
			, HttpServletRequest request
			, @RequestParam(value="uploadFile", required = false) MultipartFile uploadFile
			) {
		
		//memberId session에서 가져오기
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("loginMember");
		System.out.println(member);
		
		try {
			//첨부파일
			if(!uploadFile.getOriginalFilename().contentEquals("")) {
				String fileRename = saveFile(uploadFile, request);
				if(fileRename != null) {
					boardFile.setBoardFilename(uploadFile.getOriginalFilename());
					boardFile.setBoardFilerename(fileRename);
				}
			}
			
			System.out.println(board);
			System.out.println(boardFile);
			board.setMemberNickname(member.getMemberNickname());
//			int result = bService.registerBoard(board);

			int result = bService.registerNewBoard(board, boardFile);
			System.out.println(result); //이게 아예 안 넘어옴...
			
			//랭킹
			model.addAttribute("rankmain", "board");
			List<MemeRank> memeRankList = rService.printMemeRank();
			List<BoardRank> boardPushRankList = rService.printBoardPushRank();
			List<BoardRank> boardFreeRankList = rService.printBoardFreeRank();
			List<QuizRank> quizRankList = rService.printQuizRank();
			
			
			if(result > 0 && !memeRankList.isEmpty() && !boardPushRankList.isEmpty() && !boardFreeRankList.isEmpty() && !quizRankList.isEmpty()) {
			
				//랭킹
				model.addAttribute("memeRankList", memeRankList);
				model.addAttribute("boardPushRankList", boardPushRankList);
				model.addAttribute("boardFreeRankList", boardFreeRankList);
				model.addAttribute("quizRankList", quizRankList);
				return "redirect:/board";
			} else {
				//일단 error 나누어서 안 적음, 필요하면 적기
				model.addAttribute("msg", "랭킹 조회 실패");
				return "error";
			}
		} catch (Exception e) {
			System.out.println("게시글 추가 실패");
			return "error";
		}
			
		
	}
	

	// 첨부파일저장
	public String saveFile(MultipartFile uploadFile, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\boardUploadFiles";
		File folder = new File(savePath);
		if (!folder.exists()) {
			folder.mkdir();
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String fileOriginalname = uploadFile.getOriginalFilename();
		String fileRename = sdf.format(new Date(System.currentTimeMillis())) + "."
				+ fileOriginalname.substring(fileOriginalname.lastIndexOf(".") + 1);
		String filePath = folder + "\\" + fileRename;
		try {
			uploadFile.transferTo(new File(filePath));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return fileRename;

	}

	
	
	
	
	@RequestMapping(value="/board", method = RequestMethod.GET, produces="application/text;charset=utf-8")
	public String boardranklist(
			Model model
			, @RequestParam(value="page", required=false) Integer page) {
		
		int currentPage = (page != null) ? page : 1;
		
		int totalCount = bService.getListCount();

		PageInfo pi = Pagination.getPageInfo(currentPage, totalCount);
		
		model.addAttribute("pi", pi);
		//비즈니스 로직 -> DB에서 전체 게시물 갯수 가져옴
		
		//게시판
		List<Board> boardAllList = bService.printAllBoard(pi);
		
		
		//랭킹
		model.addAttribute("rankmain", "board");
		List<MemeRank> memeRankList = rService.printMemeRank();
		List<BoardRank> boardPushRankList = rService.printBoardPushRank();
		List<BoardRank> boardFreeRankList = rService.printBoardFreeRank();
		List<QuizRank> quizRankList = rService.printQuizRank();
 
		
		if(!boardAllList.isEmpty() && !memeRankList.isEmpty() && !boardPushRankList.isEmpty() && !boardFreeRankList.isEmpty() && !quizRankList.isEmpty()) {
			//게시판
			model.addAttribute("boardAllList", boardAllList);
			
			//랭킹
			model.addAttribute("memeRankList", memeRankList);
			model.addAttribute("boardPushRankList", boardPushRankList);
			model.addAttribute("boardFreeRankList", boardFreeRankList);
			model.addAttribute("quizRankList", quizRankList);
			return ".tiles/board/list";
		} else {
			//일단 error 나누어서 안 적음, 필요하면 적기
			model.addAttribute("msg", "랭킹 조회 실패");
			return "error";
		}
		
	}
}
