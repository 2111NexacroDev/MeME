package org.kh.meme.quiz.service.logic;

import java.util.List;

import org.kh.meme.quiz.domain.Quiz;
import org.kh.meme.quiz.domain.QuizBest;
import org.kh.meme.quiz.domain.QuizCh;
import org.kh.meme.quiz.domain.QuizFile;
import org.kh.meme.quiz.domain.QuizReport;
import org.kh.meme.quiz.service.QuizService;
import org.kh.meme.quiz.store.QuizStore;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QuizServiceImpl implements QuizService {
	
	@Autowired
	private QuizStore qStore;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<Quiz> random() {
		List<Quiz> qList = qStore.selectRandom(sqlSession);
		return qList;
	}
	
	@Override
	public Quiz printOneByNo(Integer quizNo) {
		Quiz quiz = qStore.selectOneByNo(sqlSession, quizNo);
		return quiz;
	}
	
	@Override
	public int writeQuiz(Quiz quiz, QuizFile quizFile) {
		int result = qStore.insertQuiz(sqlSession, quiz);
		if(result > 0) {
			qStore.insertQuizFile(sqlSession, quizFile);
		}
		return result;
	}
	
	@Override
	public int modifyQuiz(Quiz quiz) {
		int result = qStore.updateQuiz(sqlSession, quiz);
		return result;
	}

	@Override
	public int writeQuizM(QuizCh quizCh) {
		int result = qStore.insertQuizM(sqlSession, quizCh);
		return result;
	}

	@Override
	public int ScoreOne(String memberId) {
			int result = qStore.selectScore(sqlSession, memberId);
			return result;
	}

	@Override
	public int updateScore(QuizBest qBest) {
		int result = qStore.updateScore(sqlSession, qBest);
		return result;
	}

	@Override
	public int registerReport(QuizReport qReport) {
		int result = qStore.insertReport(sqlSession, qReport);
		return result;
	}

	@Override
	public int deleteOneByNo(int quizNo) {
		int result = qStore.deleteQuiz(sqlSession, quizNo);
		return result;
	}






}
