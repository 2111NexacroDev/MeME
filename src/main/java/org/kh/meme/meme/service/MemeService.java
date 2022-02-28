package org.kh.meme.meme.service;

import java.util.List;

import org.kh.meme.common.PageInfo;
import org.kh.meme.meme.domain.Meme;
import org.kh.meme.meme.domain.MemeFile;
import org.kh.meme.meme.domain.MemeRequest;


public interface MemeService {
	
	public int getListCount();
	public List<Meme> printAll(PageInfo pi);
	//사전 등록
	public int registerMeme(Meme meme, MemeFile memeFile);
	//사전 검색
	public Meme printOneByMeme(String memeName);
	//사전 검색 파일
	public MemeFile printOneByMemeFile(int memeNo);
	//사전 조회수
	public int memeCountUpdate(int memeNo);
	//사전 수정삭제요청 등록
	int requestMeme(MemeRequest memeRequest);
	//타임라인
	public List<Meme> printMemeTimeline();
	public List<Meme> printSeoncdMemeTimeline();
	public List<Meme> printThirdMemeTimeline();
	public List<Meme> printFourthMemeTimeline();
	public List<Meme> printFifthMemeTimeline();
	public List<Meme> printSixthMemeTimeline();

}