package org.kh.meme.meme.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.kh.meme.common.PageInfo;
import org.kh.meme.meme.domain.Meme;
import org.kh.meme.meme.domain.MemeFile;
import org.kh.meme.meme.domain.MemeRequest;

import org.mybatis.spring.SqlSessionTemplate;

public interface MemeStore {
	
	public int selectListCount(SqlSession sqlSession);
	public List<Meme> selectAll(SqlSession sqlSession, PageInfo pi);
	public int insertMeme(SqlSession session, Meme meme);
	public Meme selectOneByMeme(SqlSession session, String MemeName);
	public MemeFile selectOneByMemeFile(SqlSession session, int memeNo);
	public int updateCount(SqlSession Session, int memeNo);
	
	public int insertMemeFile(SqlSession session, MemeFile memeFile);
	
	//사전 수정삭제 요청 등록
	public int insertMemeRequest(SqlSession Session, MemeRequest memeRequest);
	
	//타임라인
	public List<Meme> selectFirstTimeline(SqlSession sqlSession);
	public List<Meme> selectSecondTimeline(SqlSessionTemplate sqlSession);
	public List<Meme> selectThirdTimeline(SqlSessionTemplate sqlSession);
	public List<Meme> selectFourthTimeline(SqlSessionTemplate sqlSession);
	public List<Meme> selectFifthTimeline(SqlSessionTemplate sqlSession);
	public List<Meme> selectSixthTimeline(SqlSessionTemplate sqlSession);
	
}
