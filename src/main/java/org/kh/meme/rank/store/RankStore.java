package org.kh.meme.rank.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.kh.meme.rank.domain.BoardRank;
import org.kh.meme.rank.domain.MemeRank;
import org.kh.meme.rank.domain.QuizRank;

public interface RankStore {

	public List<MemeRank> selectMemeRank(SqlSession sqlSession);

	public List<BoardRank> selectBoardPushRank(SqlSession sqlSession);
	public List<BoardRank> selectBoardFreeRank(SqlSession sqlSession);
	
	public List<QuizRank> selectQuizRank(SqlSession sqlSession);
	
}
