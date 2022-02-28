package org.kh.meme.member.service.logic;

import java.util.List;

import org.kh.meme.board.domain.Board;
import org.kh.meme.board.domain.Comment;
import org.kh.meme.common.PageInfo;
import org.kh.meme.member.domain.Member;
import org.kh.meme.member.service.MemberService;
import org.kh.meme.member.store.MemberStore;
import org.kh.meme.quiz.domain.Quiz;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberStore mStore;
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public Member loginMember(Member member) {
		Member memberOne = mStore.selectLoginMember(sqlSession, member);
		return memberOne;
	}
	
	@Override
	public Member selectById(String memberId) {
		Member member = mStore.selectById(sqlSession, memberId);
		return member;
	}

	@Override
	public Member findMemberId(Member member) {
		Member memberOne = mStore.selectMemberByNameEmail(sqlSession, member);
		return memberOne;
	}
	
	@Override
	public Member findMemberPw(Member member) {
		Member memberOne = mStore.selectMemberByIdNameEmail(sqlSession, member);
		return memberOne;
	}
	
	@Override
	public List<Board> printMyBoard(PageInfo pi, String memberId) {
		List<Board> myPageList = mStore.selectMyBoard(sqlSession, pi, memberId);
		
		return myPageList;
	}
	
	@Override
	public List<Quiz> printMyQuiz(PageInfo pi, String memberId) {
		List<Quiz> myQuizList = mStore.selectMyQuiz(sqlSession, pi, memberId);
		return myQuizList;
	}
	
	@Override
	public List<Comment> printMyComment(PageInfo pi, String memberId) {
		List<Comment> myCommentList = mStore.selectMyComment(sqlSession, pi, memberId);
		return myCommentList;
	}
	
	@Override
	public int getMyPageListCount(String memberId) {
		int totalCount = mStore.myPageListCount(sqlSession, memberId);
		return totalCount;
	}
	
	@Override
	public int getMyQuizListCount(String memberId) {
		int totalCount = mStore.myQuizListCount(sqlSession, memberId);
		return totalCount;
	}
	
	@Override
	public int getMyCommentListCount(String memberId) {
		int totalCount = mStore.myCommentListCount(sqlSession, memberId);
		return totalCount;
	}
	
	@Override
	public int registerMember(Member member) {
		int result = mStore.insertMember(sqlSession, member);
		return result;
	}

	@Override
	public int memberPwReset(Member member) {
		int result = mStore.updateMemberPw(sqlSession, member);
		return result;
	}

	@Override
	public int modifyMember(Member member) {
		int result = mStore.updateMember(sqlSession, member);
		return result;
	}
	
	@Override
	public int memberRemove(String memberId) {
		int result = mStore.memberDelete(sqlSession, memberId);
		return result;
	}








}
