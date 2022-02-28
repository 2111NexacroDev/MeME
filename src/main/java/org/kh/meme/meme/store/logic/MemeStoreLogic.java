package org.kh.meme.meme.store.logic;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.kh.meme.common.PageInfo;
import org.kh.meme.meme.domain.Meme;
import org.kh.meme.meme.domain.MemeFile;
import org.kh.meme.meme.domain.MemeRequest;

import org.kh.meme.meme.store.MemeStore;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class MemeStoreLogic implements MemeStore{

	@Override
	public int selectListCount(SqlSession sqlSession) {
		int totalCount = sqlSession.selectOne("MemeMapper.selectListCount");
		return totalCount;
	}
	
	@Override
	public List<Meme> selectAll(SqlSession sqlSession, PageInfo pi) {
		int limit = pi.getBoardLimit();
		int currentPage = pi.getCurrentPage();
		int offset=(currentPage-1)*limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<Meme> mList = sqlSession.selectList("MemeMapper.selectAllList",pi,rowBounds);
		return mList;
	}

	@Override
	public int insertMeme(SqlSession session, Meme meme) {
		int result = session.insert("MemeMapper.insertMeme", meme);
		return result;
	}
	
	@Override
	public int insertMemeFile(SqlSession session, MemeFile memeFile) {
		int result = session.insert("MemeMapper.insertMemeFile", memeFile);
		return result;
	}

	@Override
	public Meme selectOneByMeme(SqlSession sqlSession, String memeName) {
		Meme meme = sqlSession.selectOne("MemeMapper.selectOneByMeme", memeName);
		return meme;
	}
	@Override
	public MemeFile selectOneByMemeFile(SqlSession session, int memeNo) {
		MemeFile memeFile = session.selectOne("MemeMapper.selectOneByMemeFile",memeNo);
		return memeFile;
	}

	@Override
	public int updateCount(SqlSession session, int memeNo) {
		int result = session.update("MemeMapper.updateMemeCount", memeNo);
		return result;
	}

	//사전 수정 삭제 요청
	@Override
	public int insertMemeRequest(SqlSession session, MemeRequest memeRequest) {
		int result = session.insert("MemeMapper.insertMemeRequest", memeRequest);
		return result;
	}

	
	//타임라인
	@Override
	public List<Meme> selectFirstTimeline(SqlSession sqlSession) {
		List<Meme> memeTimeline = sqlSession.selectList("MemeMapper.selectFirstTimeline");
		return memeTimeline;
	}

	@Override
	public List<Meme> selectSecondTimeline(SqlSessionTemplate sqlSession) {
		List<Meme> memeSecondTimeline = sqlSession.selectList("MemeMapper.selectSecondTimeline");
		return memeSecondTimeline;
	}

	@Override
	public List<Meme> selectThirdTimeline(SqlSessionTemplate sqlSession) {
		List<Meme> memeThirdTimeline = sqlSession.selectList("MemeMapper.selectThirdTimeline");
		return memeThirdTimeline;
	}

	@Override
	public List<Meme> selectFourthTimeline(SqlSessionTemplate sqlSession) {
		List<Meme> memeFourthTimeline = sqlSession.selectList("MemeMapper.selectFourthTimeline");
		return memeFourthTimeline;
	}

	@Override
	public List<Meme> selectFifthTimeline(SqlSessionTemplate sqlSession) {
		List<Meme> memeFifthTimeline = sqlSession.selectList("MemeMapper.selectFifthTimeline");
		return memeFifthTimeline;
	}

	@Override
	public List<Meme> selectSixthTimeline(SqlSessionTemplate sqlSession) {
		List<Meme> memeSixthTimeline = sqlSession.selectList("MemeMapper.selectSixthTimeline");
		return memeSixthTimeline;
	}



}
 