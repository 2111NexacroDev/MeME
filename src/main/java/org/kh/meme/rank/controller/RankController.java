package org.kh.meme.rank.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.kh.meme.HomeController;
import org.kh.meme.rank.domain.BoardRank;
import org.kh.meme.rank.domain.MemeRank;
import org.kh.meme.rank.domain.QuizRank;
import org.kh.meme.rank.service.RankService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RankController {
	
	@Autowired
	private RankService rService;

//	@RequestMapping(value="/rank/list", method = RequestMethod.GET)
//	public String ranklist() {
//		return "layout/rank";
//	}
	
	
	@RequestMapping(value="/rank", method=RequestMethod.GET)
	public String quizRankList(Model model) {
		
		List<MemeRank> memeRankList = rService.printMemeRank();
		List<BoardRank> boardPushRankList = rService.printBoardPushRank();
		List<BoardRank> boardFreeRankList = rService.printBoardFreeRank();
		
		List<QuizRank> quizRankList = rService.printQuizRank();
		if(!memeRankList.isEmpty() && !boardPushRankList.isEmpty() && !boardFreeRankList.isEmpty() && !quizRankList.isEmpty()) {
			model.addAttribute("memeRankList", memeRankList);
			model.addAttribute("boardPushRankList", boardPushRankList);
			model.addAttribute("boardFreeRankList", boardFreeRankList);
			model.addAttribute("quizRankList", quizRankList);
			return "layout/rank";
		} else {
			//일단 error 나누어서 안 적음, 필요하면 적기
			model.addAttribute("msg", "랭킹 조회 실패");
			return "error";
		}
		
	}
	

	
}