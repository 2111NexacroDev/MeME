package org.kh.meme.quiz.store.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.kh.meme.quiz.domain.Quiz;
import org.kh.meme.quiz.domain.QuizBest;
import org.kh.meme.quiz.domain.QuizCh;
import org.kh.meme.quiz.domain.QuizFile;
import org.kh.meme.quiz.domain.QuizReport;
import org.kh.meme.quiz.store.QuizStore;
import org.springframework.stereotype.Repository;

@Repository
public class QuizStoreLogic implements QuizStore {

	@Override
	public List<Quiz> selectRandom(SqlSession sqlSession) {
		List<Quiz> qList = sqlSession.selectList("QuizMapper.selectRandom");
		return qList;
	}
	
	@Override
	public int insertQuiz(SqlSession session, Quiz quiz) {
		int result = session.insert("QuizMapper.insertQuiz", quiz);
		return result;
	}
	
	@Override
	public int updateQuiz(SqlSession sqlSession, Quiz quiz) {
		int result = sqlSession.update("QuizMapper.updateQuiz", quiz);
		if(!quiz.getQuizCh1().equals("")) {
			sqlSession.update("QuizMapper.updateQuizM", quiz);
		}
		return result;
	}

	@Override
	public int insertQuizM(SqlSession session, QuizCh quizCh) {
		int result = session.insert("QuizMapper.insertQuizM", quizCh);
		return result;
	}

	@Override
	public Quiz selectOneByNo(SqlSession sqlSession, Integer quizNo) {
		Quiz quiz = sqlSession.selectOne("QuizMapper.selectOneByNo", quizNo);
		return quiz;
	}

	@Override
	public int selectScore(SqlSession sqlSession, String memberId) {
		int result = sqlSession.selectOne("QuizMapper.selectScore", memberId);
		if(result>0) {
			return result;
		}else {
			return 0;
		}
	}

	@Override
	public int updateScore(SqlSession sqlSession, QuizBest qBest) {
		int result = sqlSession.update("QuizMapper.updateScore", qBest);
		return result;
	}

	@Override
	public int insertQuizFile(SqlSession sqlSession, QuizFile quizFile) {
		int result =0;
		if(quizFile.getQuizFileName()!=null) {
			result = sqlSession.insert("QuizMapper.insertQuizFile", quizFile);
		}
		return result;
	}

	@Override
	public int insertReport(SqlSession sqlSession, QuizReport qReport) {
		int result = sqlSession.insert("QuizMapper.insertQuizReport", qReport);
		return result;
	}

	@Override
	public int deleteQuiz(SqlSession sqlSession, int quizNo) {
		int result = sqlSession.delete("QuizMapper.deleteQuizByNo", quizNo);
		return result;
	}




}
