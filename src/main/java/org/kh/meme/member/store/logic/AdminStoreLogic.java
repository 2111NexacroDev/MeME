package org.kh.meme.member.store.logic;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.kh.meme.board.domain.Board;
import org.kh.meme.common.PageInfo;
import org.kh.meme.member.domain.Member;
import org.kh.meme.member.store.AdminStore;
import org.kh.meme.meme.domain.Meme;
import org.kh.meme.meme.domain.MemeRequest;
import org.kh.meme.quiz.domain.Quiz;
import org.kh.meme.quiz.domain.QuizReport;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class AdminStoreLogic implements AdminStore{

	@Override
	public int allMemberListCount(SqlSession sqlSession) {
		int totalCount = sqlSession.selectOne("MemberMapper.selectAllMemberCount");
		return totalCount;
	}

	@Override
	public int allMemeListCount(SqlSession sqlSession) {
		int totalCount = sqlSession.selectOne("MemeMapper.selectListCount");
		return totalCount;
	}

	@Override
	public int allMemeRequestListCount(SqlSession sqlSession) {
		int totalCount = sqlSession.selectOne("MemeMapper.selectMemeRequestListCount");
		return totalCount;
	}
	
	@Override
	public int allBoardListCount(SqlSession sqlSession) {
		int totalCount = sqlSession.selectOne("BoardMapper.selectAllBoardListCount_admin");
		return totalCount;
	}
	
	@Override
	public int allQuizListCount(SqlSession sqlSession) {
		int totalCount = sqlSession.selectOne("QuizMapper.selectAllQuizListCount");
		return totalCount;
	}
	
	@Override
	public int allQuizReportListCount(SqlSession sqlSession) {
		int totalCount = sqlSession.selectOne("QuizMapper.selectAllQuizReportListCount");
		return totalCount;
	}
	
	@Override
	public List<Member> selectAllMember(SqlSession sqlSession, PageInfo pi) {
		int limit = pi.getBoardLimit();
		int currentPage = pi.getCurrentPage();
		int offset = (currentPage - 1 ) * limit;

		RowBounds rowBounds = new RowBounds(offset, limit);
		
		List<Member> allMemberList = sqlSession.selectList("MemberMapper.selectAllMember", pi, rowBounds);
		return allMemberList;
	}


	@Override
	public List<Meme> selectAllMeme(SqlSession sqlSession, PageInfo pi) {
		int limit = pi.getBoardLimit();
		int currentPage = pi.getCurrentPage();
		int offset = (currentPage - 1 ) * limit;

		RowBounds rowBounds = new RowBounds(offset, limit);
		
		List<Meme> allMemeList = sqlSession.selectList("MemeMapper.selectAllList", pi, rowBounds);
		return allMemeList;
	}


	@Override
	public List<MemeRequest> selectAllMemeRequest(SqlSession sqlSession, PageInfo pi) {
		int limit = pi.getBoardLimit();
		int currentPage = pi.getCurrentPage();
		int offset = (currentPage - 1 ) * limit;

		RowBounds rowBounds = new RowBounds(offset, limit);
		
		List<MemeRequest> allMemeRequestList = sqlSession.selectList("MemeMapper.selectAllMemeRequestList", pi, rowBounds);
		return allMemeRequestList;
	}

	@Override
	public List<Board> selectAllBoard(SqlSession sqlSession, PageInfo pi) {
		int limit = pi.getBoardLimit();
		int currentPage = pi.getCurrentPage();
		int offset = (currentPage - 1 ) * limit;

		RowBounds rowBounds = new RowBounds(offset, limit);
		List<Board> allBoardList = sqlSession.selectList("BoardMapper.selectAllBoardList_admin", pi, rowBounds);
		return allBoardList;
	}

	@Override
	public List<Quiz> selectAllQuiz(SqlSession sqlSession, PageInfo pi) {
		int limit = pi.getBoardLimit();
		int currentPage = pi.getCurrentPage();
		int offset = (currentPage - 1 ) * limit;

		RowBounds rowBounds = new RowBounds(offset, limit);
		List<Quiz> allQuizList = sqlSession.selectList("QuizMapper.selectAllQuizList", pi, rowBounds);
		return allQuizList;
	}

	@Override
	public List<QuizReport> selectAllQuizReport(SqlSession sqlSession, PageInfo pi) {
		int limit = pi.getBoardLimit();
		int currentPage = pi.getCurrentPage();
		int offset = (currentPage - 1 ) * limit;

		RowBounds rowBounds = new RowBounds(offset, limit);
		List<QuizReport> allQuizReportList = sqlSession.selectList("QuizMapper.selectAllQuizReportList", pi, rowBounds);
		return allQuizReportList;
	}

	//게시글 신고 목록
	@Override
	public int selectReportBoardListCount(SqlSessionTemplate sqlSession) {
		int reportBoardListCount = sqlSession.selectOne("BoardMapper.selectReportBoardListCount");
		return reportBoardListCount;
	}

	@Override
	public List<Board> selectReportBoardList(SqlSessionTemplate sqlSession, PageInfo pi) {

		int limit = pi.getBoardLimit();
		int currentPage = pi.getCurrentPage();
		int offset = (currentPage - 1 ) * limit;
		//currentpage에 따라 달라짐.
		
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		//sql문 수정하지 않고 페이징 처리 해서 게시물 나누어 가져올 수 있음.
		
		
		List<Board> reportBoardList = sqlSession.selectList("BoardMapper.selectReportBoardList", pi, rowBounds);
		return reportBoardList;
	}

	//게시글 보이기
	@Override
	public int selectStatusNBoardListCount(SqlSessionTemplate sqlSession) {
		int statusNBoardListCount = sqlSession.selectOne("BoardMapper.selectStatusNBoardListCount");
		return statusNBoardListCount;
	}

	@Override
	public List<Board> selectStatusNBoardList(SqlSessionTemplate sqlSession, PageInfo pi) {

		int limit = pi.getBoardLimit();
		int currentPage = pi.getCurrentPage();
		int offset = (currentPage - 1 ) * limit;
		//currentpage에 따라 달라짐.
		
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		//sql문 수정하지 않고 페이징 처리 해서 게시물 나누어 가져올 수 있음.
		
		
		List<Board> statusNBoardList = sqlSession.selectList("BoardMapper.selectStatusNBoardList", pi, rowBounds);
		return statusNBoardList;
	}



}
