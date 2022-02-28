package org.kh.meme.member.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.kh.meme.board.domain.Board;
import org.kh.meme.common.PageInfo;
import org.kh.meme.member.domain.Member;
import org.kh.meme.meme.domain.Meme;
import org.kh.meme.meme.domain.MemeRequest;
import org.kh.meme.quiz.domain.Quiz;
import org.kh.meme.quiz.domain.QuizReport;
import org.mybatis.spring.SqlSessionTemplate;

public interface AdminStore {

	int allMemberListCount(SqlSession sqlSession);
	int allMemeListCount(SqlSession sqlSession);
	int allMemeRequestListCount(SqlSession sqlSession);
	int allQuizListCount(SqlSession sqlSession);
	int allQuizReportListCount(SqlSession sqlSession);
	int allBoardListCount(SqlSession sqlSession);

	List<Member> selectAllMember(SqlSession sqlSession, PageInfo pi);
	List<Meme> selectAllMeme(SqlSession sqlSession, PageInfo pi);
	List<MemeRequest> selectAllMemeRequest(SqlSession sqlSession, PageInfo pi);
	List<Quiz> selectAllQuiz(SqlSession sqlSession, PageInfo pi);
	List<QuizReport> selectAllQuizReport(SqlSession sqlSession, PageInfo pi);
	List<Board> selectAllBoard(SqlSession sqlSession, PageInfo pi);
	//게시글 신고목록
	int selectReportBoardListCount(SqlSessionTemplate sqlSession);
	List<Board> selectReportBoardList(SqlSessionTemplate sqlSession, PageInfo pi);
	//게시글 보이기
	int selectStatusNBoardListCount(SqlSessionTemplate sqlSession);
	List<Board> selectStatusNBoardList(SqlSessionTemplate sqlSession, PageInfo pi);



}
