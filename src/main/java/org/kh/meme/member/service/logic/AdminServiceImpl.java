package org.kh.meme.member.service.logic;

import java.util.List;

import org.kh.meme.board.domain.Board;
import org.kh.meme.common.PageInfo;
import org.kh.meme.member.domain.Member;
import org.kh.meme.member.service.AdminService;
import org.kh.meme.member.store.AdminStore;
import org.kh.meme.meme.domain.Meme;
import org.kh.meme.meme.domain.MemeRequest;
import org.kh.meme.quiz.domain.Quiz;
import org.kh.meme.quiz.domain.QuizReport;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminStore aStore;
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Override
	public int getAllMemberListCount() {
		int totalCount = aStore.allMemberListCount(sqlSession);
		return totalCount;
	}
	@Override
	public int getAllMemeListCount() {
		int totalCount = aStore.allMemeListCount(sqlSession);
		return totalCount;
	}
	@Override
	public int getAllMemeRequestListCount() {
		int totalCount = aStore.allMemeRequestListCount(sqlSession);
		return totalCount;
	}
	@Override
	public int getAllBoardListCount() {
		int totalCount = aStore.allBoardListCount(sqlSession);
		return totalCount;
	}
	@Override
	public int getAllQuizListCount() {
		int totalCount = aStore.allQuizListCount(sqlSession);
		return totalCount;
	}
	@Override
	public int getAllQuizReportListCount() {
		int totalCount = aStore.allQuizReportListCount(sqlSession);
		return totalCount;
	}
	@Override
	public List<Member> printAllMember(PageInfo pi) {
		List<Member> allMemberList = aStore.selectAllMember(sqlSession, pi);
		return allMemberList;
	}
	@Override
	public List<Meme> printAllMeme(PageInfo pi) {
		List<Meme> allMemeList = aStore.selectAllMeme(sqlSession, pi);
		return allMemeList;
	}
	@Override
	public List<MemeRequest> printAllMemeRequest(PageInfo pi) {
		List<MemeRequest> allMemeRequestList = aStore.selectAllMemeRequest(sqlSession, pi);
		return allMemeRequestList;
	}
	@Override
	public List<Board> printAllBoard(PageInfo pi) {
		List<Board> allBoardList = aStore.selectAllBoard(sqlSession, pi);
		return allBoardList;
	}
	@Override
	public List<Quiz> printAllQuiz(PageInfo pi) {
		List<Quiz> allQuizList = aStore.selectAllQuiz(sqlSession, pi);
		return allQuizList;
	}
	@Override
	public List<QuizReport> printAllQuizReportRequest(PageInfo pi) {
		List<QuizReport> allQuizReportList = aStore.selectAllQuizReport(sqlSession, pi);
		return allQuizReportList;
	}
	//게시판 신고 기록
	@Override
	public int getReportBoardListCount() {
		int reportBoardListCount = aStore.selectReportBoardListCount(sqlSession);
		return reportBoardListCount;
	}
	@Override
	public List<Board> printAllReportBoard(PageInfo pi) {
		List<Board> reportBoardList = aStore.selectReportBoardList(sqlSession, pi);
		return reportBoardList;
	}
	//게시글 보이기
	@Override
	public int getStatusNBoardListCount() {
		int statusNBoardListCount = aStore.selectStatusNBoardListCount(sqlSession);
		return statusNBoardListCount;
	}
	@Override
	public List<Board> printStatusNBoard(PageInfo pi) {
		List<Board> statusNBoardList = aStore.selectStatusNBoardList(sqlSession, pi);
		return statusNBoardList;
	}

}
