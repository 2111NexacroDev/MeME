package org.kh.meme.member.store.logic;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.kh.meme.board.domain.Board;
import org.kh.meme.board.domain.Comment;
import org.kh.meme.common.PageInfo;
import org.kh.meme.member.domain.Member;
import org.kh.meme.member.store.MemberStore;
import org.kh.meme.quiz.domain.Quiz;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

@Repository
public class MemberStoreLogic implements MemberStore{

	@Override
	public Member selectLoginMember(SqlSession sqlSession, Member member) {
		Member memberOne = sqlSession.selectOne("MemberMapper.selectLoginMember", member);
		return memberOne;
	}
	
	@Override
	public Member selectById(SqlSession sqlSession, String memberId) {
		Member member = sqlSession.selectOne("MemberMapper.selectById", memberId);
		return member;
	}
	
	@Override
	public Member selectMemberByNameEmail(SqlSession sqlSession, Member member) {
		Member memberOne = sqlSession.selectOne("MemberMapper.selectMemberByNameEmail", member);
		return memberOne;
	}
	
	@Override
	public Member selectMemberByIdNameEmail(SqlSession sqlSession, Member member) {
		Member memberOne = sqlSession.selectOne("MemberMapper.selectMemberByIdNameEmail", member);
		return memberOne;
	}
	
	@Override
	public List<Board> selectMyBoard(SqlSession sqlSession, PageInfo pi, String memberId) {
		int limit = pi.getBoardLimit();
		int currentPage = pi.getCurrentPage();
		int offset = (currentPage - 1 ) * limit;

		RowBounds rowBounds = new RowBounds(offset, limit);
		
		List<Board> myBoardList = sqlSession.selectList("BoardMapper.selectMyBoardList", memberId, rowBounds);
		return myBoardList;
	}
	
	@Override
	public List<Quiz> selectMyQuiz(SqlSession sqlSession, PageInfo pi, String memberId) {
		int limit = pi.getBoardLimit();
		int currentPage = pi.getCurrentPage();
		int offset = (currentPage - 1 ) * limit;

		RowBounds rowBounds = new RowBounds(offset, limit);
		
		List<Quiz> myQuizList = sqlSession.selectList("QuizMapper.selectMyQuizList", memberId, rowBounds);
		return myQuizList;
	}
	
	@Override
	public List<Comment> selectMyComment(SqlSession sqlSession, PageInfo pi, String memberId) {
		int limit = pi.getBoardLimit();
		int currentPage = pi.getCurrentPage();
		int offset = (currentPage - 1 ) * limit;

		RowBounds rowBounds = new RowBounds(offset, limit);
		
		List<Comment> myCommentList = sqlSession.selectList("BoardMapper.selectMyCommentList", memberId, rowBounds);
		return myCommentList;
	}
	
	@Override
	public int myPageListCount(SqlSession sqlSession, String memberId) {
		int totalCount = sqlSession.selectOne("BoardMapper.selectMyPageListCount", memberId);
		return totalCount;
	}
	
	@Override
	public int myQuizListCount(SqlSession sqlSession, String memberId) {
		int totalCount = sqlSession.selectOne("QuizMapper.selectMyQuizCount", memberId);
		return totalCount;
	}
	
	@Override
	public int myCommentListCount(SqlSession sqlSession, String memberId) {
		int totalCount = sqlSession.selectOne("BoardMapper.selectMyCommentListCount", memberId);
		return totalCount;
	}
	
	@Override
	public int insertMember(SqlSession sqlSession, Member member) {
		int result = sqlSession.insert("MemberMapper.insertMember", member);
		return result;
	}

	@Override
	public int updateMemberPw(SqlSession sqlSession, Member member) {
		int result = sqlSession.update("MemberMapper.updateMemberPw", member);
		return result;
	}

	@Override
	public int updateMember(SqlSession sqlSession, Member member) {
		int result = sqlSession.update("MemberMapper.updateMember", member);
		return result;
	}
	
	@Override
	public int memberDelete(SqlSession sqlSession, String memberId) {
		int result = sqlSession.delete("MemberMapper.deleteMember", memberId);
		return result;
	}








}
