package org.kh.meme.board.service;

import java.util.List;

import org.kh.meme.board.domain.Board;
import org.kh.meme.board.domain.BoardFile;
import org.kh.meme.board.domain.Comment;
import org.kh.meme.board.domain.Recommend;
import org.kh.meme.common.PageInfo;


public interface BoardService {
	
	//페이징처리
	public int getListCount();
	
	//게시글 리스트
	public List<Board> printAllBoard(PageInfo pi);
	
	
	//게시글 상세 페이지
	public Board printBoardOneByNo(Integer boardNo);		//게시글 내용
	public BoardFile printBoardFileOneByNo(int boardNo);	//첨부파일



	
	//조회 수
	public int boardCount(Integer boardNo);

	//추천 수
	public int addBoardLike(Recommend recommend); //recommend 테이블 insert
	public int updateBoardLike(Recommend recommend); // board 테이블 업데이트

	//신고 수
	public int addBoardReport(int boardNo);		
	
	//게시글 추가
	public int registerBoard(Board board);
	public int registerNewBoard(Board board, BoardFile boardFile);
	
	//게시글 수정
	public int updateBoard(Board board, BoardFile boardFile);
	
	//게시글 삭제
	public int deleteBoard(Integer boardNo);

	//댓글
	public int registerComment(Comment comment); //댓글 등록
	
	public List<Comment> printAllCommentList(int boardNo); //댓글 목록
	
	public int modifyComment(Comment comment);	//댓글 수정

	public int removeComment(int commentNo);	//댓글 삭제

	
	
	//게시글 숨기기(관리자)
	public int boardReportManagerToN(int boardNo);

	public int boardReportManagerToY(int boardNo);


	

	

}
