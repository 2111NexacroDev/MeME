package org.kh.meme.member.service;

import java.util.List;

import org.kh.meme.board.domain.Board;
import org.kh.meme.common.PageInfo;
import org.kh.meme.member.domain.Member;
import org.kh.meme.meme.domain.Meme;
import org.kh.meme.meme.domain.MemeRequest;
import org.kh.meme.quiz.domain.Quiz;
import org.kh.meme.quiz.domain.QuizReport;

public interface AdminService {

	int getAllMemberListCount();
	int getAllMemeListCount();
	int getAllMemeRequestListCount();
	int getAllQuizListCount();
	int getAllQuizReportListCount();
	int getAllBoardListCount();

	List<Member> printAllMember(PageInfo pi);
	List<Meme> printAllMeme(PageInfo pi);
	List<MemeRequest> printAllMemeRequest(PageInfo pi);
	List<Quiz> printAllQuiz(PageInfo pi);
	List<QuizReport> printAllQuizReportRequest(PageInfo pi);
	List<Board> printAllBoard(PageInfo pi);
	//게시판 신고기록
	int getReportBoardListCount();
	List<Board> printAllReportBoard(PageInfo pi);
	//게시글 보이기
	int getStatusNBoardListCount();
	List<Board> printStatusNBoard(PageInfo pi);



}
