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
	
	
	@RequestMapping(value="/admin/adminHome.me", method=RequestMethod.GET)
	public String adminHome(HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member member = (Member)session.getAttribute("loginMember");
		if(member == null) {
			return "redirect:/login.me";
		}else if(member.getmGrade().equals("M")) {
			return ".tilesHead/admin/error";
		}
		
		return ".tilesHead/admin/adminHome";
	}
	
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
		
		return ".tilesHead/admin/manageMember";
	}
	
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
		return ".tilesHead/admin/manageMeme";
	}
	
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
		return ".tilesHead/admin/manageMemeRequest";
	}
	
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
		return ".tilesHead/admin/manageBoard";
	}
	
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
		
		return ".tilesHead/admin/manageBoardReported";
	}
	

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
		return ".tilesHead/admin/manageBoardStatus";
	}
	
	
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
		return ".tilesHead/admin/manageQuiz";
	}
	
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
		return ".tilesHead/admin/manageQuizReported";
	}
}
