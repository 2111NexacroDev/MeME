package org.kh.meme.meme.service.logic;

import java.util.List;

import org.kh.meme.common.PageInfo;
import org.kh.meme.meme.domain.Meme;
import org.kh.meme.meme.domain.MemeFile;
import org.kh.meme.meme.domain.MemeRequest;

import org.kh.meme.meme.service.MemeService;
import org.kh.meme.meme.store.MemeStore;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemeServiceImpl implements MemeService{

	@Autowired
	private MemeStore mStore;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int getListCount() {
		int totalCount = mStore.selectListCount(sqlSession);
		return totalCount;
	}
	
	//게시물을 가져오기
	@Override
	public List<Meme> printAll(PageInfo pi) {
		List<Meme> mList = mStore.selectAll(sqlSession, pi);
		return mList;
	}
	
	@Override
	public int registerMeme(Meme meme, MemeFile memeFile) {
		int result = mStore.insertMeme(sqlSession, meme);
		if(result > 0) {
			mStore.insertMemeFile(sqlSession, memeFile);
		}
		return result;
	}


	@Override
	public Meme printOneByMeme(String memeName) {
		Meme meme = mStore.selectOneByMeme(sqlSession, memeName);
		return meme;
	}

	
	@Override
	public MemeFile printOneByMemeFile(int memeNo) {
		MemeFile memeFile = mStore.selectOneByMemeFile(sqlSession, memeNo);
		return memeFile;
	}

	//조회수
	@Override
	public int memeCountUpdate(int memeNo) {
		int result = mStore.updateCount(sqlSession, memeNo);
		return result;
	}

	//사전 수정삭제 요청
	@Override
	public int requestMeme(MemeRequest memeRequest) {
		int result = mStore.insertMemeRequest(sqlSession, memeRequest);
		return result;
	}

	
	//타임라인
	@Override
	public List<Meme> printMemeTimeline() {
		List<Meme> memeTimeline = mStore.selectFirstTimeline(sqlSession);
		return memeTimeline;
	}

	@Override
	public List<Meme> printSeoncdMemeTimeline() {
		List<Meme> memeSecondTimeline = mStore.selectSecondTimeline(sqlSession);
		return memeSecondTimeline;
	}

	@Override
	public List<Meme> printThirdMemeTimeline() {
		List<Meme> memeThirdTimeline = mStore.selectThirdTimeline(sqlSession);
		return memeThirdTimeline;
	}

	@Override
	public List<Meme> printFourthMemeTimeline() {
		List<Meme> memeFourthTimeline = mStore.selectFourthTimeline(sqlSession);
		return memeFourthTimeline;
	}

	@Override
	public List<Meme> printFifthMemeTimeline() {
		List<Meme> memeFifthTimeline = mStore.selectFifthTimeline(sqlSession);
		return memeFifthTimeline;
	}

	@Override
	public List<Meme> printSixthMemeTimeline() {
		List<Meme> memeSixthTimeline = mStore.selectSixthTimeline(sqlSession);
		return memeSixthTimeline;
	}






}
