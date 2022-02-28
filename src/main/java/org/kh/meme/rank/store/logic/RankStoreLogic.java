package org.kh.meme.rank.store.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.kh.meme.rank.domain.BoardRank;
import org.kh.meme.rank.domain.MemeRank;
import org.kh.meme.rank.domain.QuizRank;
import org.kh.meme.rank.store.RankStore;
import org.springframework.stereotype.Repository;


@Repository
public class RankStoreLogic implements RankStore{


	@Override
	public List<MemeRank> selectMemeRank(SqlSession sqlSession) {
		List<MemeRank> memeRankList = sqlSession.selectList("RankMapper.selectMemeRank");
		
		return memeRankList;
	}
	
	@Override
	public List<BoardRank> selectBoardPushRank(SqlSession sqlSession) {
		List<BoardRank> boardPushRankList = sqlSession.selectList("RankMapper.selectBoardPushRank");
		
		return boardPushRankList;
	}

	@Override
	public List<BoardRank> selectBoardFreeRank(SqlSession sqlSession) {
		List<BoardRank> boardFreeRankList = sqlSession.selectList("RankMapper.selectBoardFreeRank");
		
		return boardFreeRankList;
	}
	
	@Override
	public List<QuizRank> selectQuizRank(SqlSession sqlSession) {
		List<QuizRank> quizRankList = sqlSession.selectList("RankMapper.selectQuizRank");
		
		return quizRankList;
	}


}
