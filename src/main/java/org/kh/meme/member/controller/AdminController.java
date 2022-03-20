package org.kh.meme.member.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.kh.meme.board.domain.Board;
import org.kh.meme.common.PageInfo;
import org.kh.meme.common.Pagination;
import org.kh.meme.member.domain.Member;
import org.kh.meme.member.service.AdminService;
import org.kh.meme.meme.domain.Meme;
import org.kh.meme.meme.domain.MemeRequest;
import org.kh.meme.quiz.domain.Quiz;
import org.kh.meme.quiz.domain.QuizReport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService aService;
	
	// 관리자 페이지 이동
	@RequestMapping(value="/admin/adminHome.me", method=RequestMethod.GET)
	public String adminHome(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		Member member = (Member)session.getAttribute("loginMember");
		if(member == null) {
			return "redirect:/login.me";
		}else if(member.getmGrade().equals("M")) {
			return ".tilesHead/admin/error";
		}
		model.addAttribute("title", "관리자 페이지");
		return ".tilesHead/admin/adminHome";
	}
	
	// 관리자 페이지 - 회원 관리
	@RequestMapping(value="/admin/manageMember.me", method=RequestMethod.GET)
	public String manageMember(HttpServletRequest request
			,Model model
			, @RequestParam(value="page", required=false) Integer page) {
		HttpSession session = request.getSession();
		Member member = (Member)session.getAttribute("loginMember");
		if(member == null) {
			return "redirect:/login.me";
		}else if(member.getmGrade().equals("M")) {
			return ".tilesHead/admin/error";
		}
		
		int currentPage = (page != null) ? page : 1;
		int totalCount = aService.getAllMemberListCount();
		PageInfo pi = Pagination.getPageInfo(currentPage, totalCount);
		model.addAttribute("pi", pi);
		
		
		List<Member> allMemberList = aService.printAllMember(pi);
		model.addAttribute("allMemberList", allMemberList);
		
		model.addAttribute("title", "관리자 페이지");
		return ".tilesHead/admin/manageMember";
	}
	
	
	// 관리자 페이지 - 사전 관리
	@RequestMapping(value="/admin/manageMeme.me", method=RequestMethod.GET)
	public String manageMeme(HttpServletRequest request
			,Model model
			, @RequestParam(value="page", required=false) Integer page) {
		HttpSession session = request.getSession();
		Member member = (Member)session.getAttribute("loginMember");
		if(member == null) {
			return "redirect:/login.me";
		}else if(member.getmGrade().equals("M")) {
			return ".tilesHead/admin/error";
		}
		
		int currentPage = (page != null) ? page : 1;
		int totalCount = aService.getAllMemeListCount();
		PageInfo pi = Pagination.getPageInfo(currentPage, totalCount);
		model.addAttribute("pi", pi);
		
		
		List<Meme> allMemeList = aService.printAllMeme(pi);
		model.addAttribute("allMemeList", allMemeList);
		model.addAttribute("title", "관리자 페이지");
		return ".tilesHead/admin/manageMeme";
	}
	
	// 관리자 페이지 - 사전 요청 관리
	@RequestMapping(value="/admin/manageMemeRequest.me", method=RequestMethod.GET)
	public String manageMemeRequest(HttpServletRequest request
			,Model model
			, @RequestParam(value="page", required=false) Integer page) {
		HttpSession session = request.getSession();
		Member member = (Member)session.getAttribute("loginMember");
		if(member == null) {
			return "redirect:/login.me";
		}else if(member.getmGrade().equals("M")) {
			return ".tilesHead/admin/error";
		}
		
		int currentPage = (page != null) ? page : 1;
		int totalCount = aService.getAllMemeRequestListCount();
		PageInfo pi = Pagination.getPageInfo(currentPage, totalCount);
		model.addAttribute("pi", pi);
		
		
		List<MemeRequest> allMemeList = aService.printAllMemeRequest(pi);
		model.addAttribute("allMemeRequestList", allMemeList);
		model.addAttribute("title", "관리자 페이지");
		return ".tilesHead/admin/manageMemeRequest";
	}
	
	// 관리자 페이지 - 게시글 관리
	@RequestMapping(value="/admin/manageBoard.me", method=RequestMethod.GET)
	public String manageBoard(HttpServletRequest request
			,Model model
			, @RequestParam(value="page", required=false) Integer page) {
		HttpSession session = request.getSession();
		Member member = (Member)session.getAttribute("loginMember");
		if(member == null) {
			return "redirect:/login.me";
		}else if(member.getmGrade().equals("M")) {
			return ".tilesHead/admin/error";
		}
		
		int currentPage = (page != null) ? page : 1;
		int totalCount = aService.getAllBoardListCount();
		PageInfo pi = Pagination.getPageInfo(currentPage, totalCount);
		model.addAttribute("pi", pi);
		
		
		List<Board> allBoardList = aService.printAllBoard(pi);
		model.addAttribute("allBoardList", allBoardList);
		model.addAttribute("title", "관리자 페이지");
		return ".tilesHead/admin/manageBoard";
	}
	
	// 관리자 페이지 - 신고된 게시글 관리
	@RequestMapping(value="/admin/manageBoardReported.me", method=RequestMethod.GET)
	public String manageBoardReported(
			Model model
			, HttpServletRequest request
			, @RequestParam(value="page", required=false) Integer page) {
		HttpSession session = request.getSession();
		Member member = (Member)session.getAttribute("loginMember");
		if(member == null) {
			return "redirect:/login.me";
		}else if(member.getmGrade().equals("M")) {
			return ".tilesHead/admin/error";
			
		}
		int currentPage = (page != null) ? page : 1;
		int totalCount = aService.getReportBoardListCount();
		PageInfo pi = Pagination.getPageInfo(currentPage, totalCount);
		model.addAttribute("pi", pi);
		
		
		List<Board> reportBoardList = aService.printAllReportBoard(pi);
		model.addAttribute("reportBoardList", reportBoardList);
		model.addAttribute("title", "관리자 페이지");
		
		return ".tilesHead/admin/manageBoardReported";
	}
	

	// 관리자 페이지 - 숨긴 글 관리
	@RequestMapping(value="/admin/manageBoardStatus.me", method=RequestMethod.GET)
	public String manageBoardStatus(HttpServletRequest request
			, Model model
			, @RequestParam(value="page", required=false) Integer page)
	{
		HttpSession session = request.getSession();
		Member member = (Member)session.getAttribute("loginMember");
		if(member == null) {
			return "redirect:/login.me";
		}else if(member.getmGrade().equals("M")) {
			return ".tilesHead/admin/error";
		}
		
		int currentPage = (page != null) ? page : 1;
		int totalCount = aService.getStatusNBoardListCount();
		PageInfo pi = Pagination.getPageInfo(currentPage, totalCount);
		model.addAttribute("pi", pi);
		
		
		List<Board> statusNBoardList = aService.printStatusNBoard(pi);
		model.addAttribute("statusNBoardList", statusNBoardList);
		model.addAttribute("title", "관리자 페이지");
		return ".tilesHead/admin/manageBoardStatus";
	}
	
	
	// 관리자 페이지 - 퀴즈 관리
	@RequestMapping(value="/admin/manageQuiz.me", method=RequestMethod.GET)
	public String manageQuiz(HttpServletRequest request
			,Model model
			, @RequestParam(value="page", required=false) Integer page) {
		HttpSession session = request.getSession();
		Member member = (Member)session.getAttribute("loginMember");
		if(member == null) {
			return "redirect:/login.me";
		}else if(member.getmGrade().equals("M")) {
			return ".tilesHead/admin/error";
		}
		
		int currentPage = (page != null) ? page : 1;
		int totalCount = aService.getAllQuizListCount();
		PageInfo pi = Pagination.getPageInfo(currentPage, totalCount);
		model.addAttribute("pi", pi);
		
		
		List<Quiz> allQuizList = aService.printAllQuiz(pi);
		model.addAttribute("allQuizList", allQuizList);
		model.addAttribute("title", "관리자 페이지");
		return ".tilesHead/admin/manageQuiz";
	}
	
	// 관리자 페이지 - 신고된 퀴즈
	@RequestMapping(value="/admin/manageQuizReported.me", method=RequestMethod.GET)
	public String manageQuizReported(HttpServletRequest request
			,Model model
			, @RequestParam(value="page", required=false) Integer page) {
		HttpSession session = request.getSession();
		Member member = (Member)session.getAttribute("loginMember");
		if(member == null) {
			return "redirect:/login.me";
		}else if(member.getmGrade().equals("M")) {
			return ".tilesHead/admin/error";
		}
		
		int currentPage = (page != null) ? page : 1;
		int totalCount = aService.getAllQuizReportListCount();
		PageInfo pi = Pagination.getPageInfo(currentPage, totalCount);
		model.addAttribute("pi", pi);
		
		List<QuizReport> allQuizReportList = aService.printAllQuizReportRequest(pi);
		model.addAttribute("allQuizReportList", allQuizReportList);
		model.addAttribute("title", "관리자 페이지");
		return ".tilesHead/admin/manageQuizReported";
	}
}
