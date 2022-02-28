package org.kh.meme.board.service.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.kh.meme.board.domain.Board;
import org.kh.meme.board.domain.BoardFile;
import org.kh.meme.board.domain.Comment;
import org.kh.meme.board.domain.Recommend;
import org.kh.meme.board.service.BoardService;
import org.kh.meme.board.store.BoardStore;
import org.kh.meme.common.PageInfo;
import org.kh.meme.rank.store.RankStore;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardStore bStore;
	
	@Autowired
	private SqlSession sqlSession;

	
	//페이징 처리
	@Override
	public int getListCount() {
		int totalCount = bStore.selectListCount(sqlSession);
		
		return totalCount;
	}
	
	
	//게시물 리스트
	@Override
	public List<Board> printAllBoard(PageInfo pi) {
		List<Board> boardAllList = bStore.selectAllBoard(sqlSession, pi);
		return boardAllList;
	}
	
	//게시물 디테일 페이지 확인
	@Override
	public Board printBoardOneByNo(Integer boardNo) {
		Board board = bStore.selectBoardOneById(sqlSession, boardNo);
		return board;
	}
	
	@Override
	public BoardFile printBoardFileOneByNo(int boardNo) {
		BoardFile boardFile = bStore.selectBoardFileOneByNo(sqlSession, boardNo);
		return boardFile;
	}


	//게시물 조회수 증가
	@Override
	public int boardCount(Integer boardNo) {
		int result = bStore.updateBoardCount(sqlSession, boardNo);
		return result;
	}

	//게시물 추천 수
	
	@Override
	public int addBoardLike(Recommend recommend) {
		int result = bStore.insertBoardLike(sqlSession, recommend);
		return result;
	}


	@Override
	public int updateBoardLike(Recommend recommend) {
		int result = bStore.updateBoardLike(sqlSession, recommend);
		return result;
	}
	
	//게시물 신고 수
	@Override
	public int addBoardReport(int boardNo) {
		int result = bStore.updateBoardReport(sqlSession, boardNo);
		return result;
	}


	
	//게시글 추가
	@Override
	public int registerBoard(Board board) {
		int result = bStore.insertBoard(sqlSession, board);
		return result;
	}

	@Override
	public int registerNewBoard(Board board, BoardFile boardFile) {
		int result = bStore.insertBoard(sqlSession, board);
		if(result > 0) {
			bStore.insertBoardFile(sqlSession, boardFile);
		}
		return result;
	}
	
	
	//게시글 수정
	@Override
	public int updateBoard(Board board, BoardFile boardFile) {
		int result = bStore.updateBoard(sqlSession, board);
		if(result > 0) {
			bStore.updateBoardFile(sqlSession, boardFile);
		}
		return result;
	}

	//게시글 삭제

	@Override
	public int deleteBoard(Integer boardNo) {
		int result = bStore.deleteBoard(sqlSession, boardNo);
		
		if(result > 0) {
			bStore.deleteBoardFile(sqlSession, boardNo);
			bStore.deleteCommentBoardNo(sqlSession, boardNo);
		}
		return result;
	}


	
	//댓글

	@Override
	public int registerComment(Comment comment) {
		int result = bStore.insertComment(sqlSession, comment);
		return result;
	}


	@Override
	public List<Comment> printAllCommentList(int boardNo) {
		List<Comment> commentList = bStore.selectAllComment(sqlSession, boardNo);
		return commentList;
	}

	
	@Override
	public int modifyComment(Comment comment) {
		int result = bStore.updateComment(sqlSession, comment);
		return result;
	}

	@Override
	public int removeComment(int commentNo) {
		int result = bStore.deleteComment(sqlSession, commentNo);
		return result;
	}

	
	
	//게시글 숨기기 (관리자)

	@Override
	public int boardReportManagerToN(int boardNo) {
		int result = bStore.updateBoardReportManagerToN(sqlSession, boardNo);
		return result;
	}

	@Override
	public int boardReportManagerToY(int boardNo) {
		int result = bStore.updateBoardReportManagerToY(sqlSession, boardNo);
		return result;
	}





}
