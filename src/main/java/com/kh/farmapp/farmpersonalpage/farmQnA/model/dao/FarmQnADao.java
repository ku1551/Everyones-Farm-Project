package com.kh.farmapp.farmpersonalpage.farmQnA.model.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import common.dto.FarmDiary;
import common.dto.FarmQnAQuestion;
import common.dto.FarmQnaAnswer;
import common.util.Paging;


public interface FarmQnADao {

	//게시글 삽입
	public int insertFarmQnA(Map<String, Object> commandMap);

	//게시글 목록 메소드
	public List<FarmQnAQuestion> selectFarmQnAList(Map<String, Object> map);

	//게시글 숫자
	public int contentCnt();

	//게시글 상세 조회 메소드
	public Map<String, Object> selectFarmQnADetail(int farmQnaQuestionNo);

	//게시글 삭제 메소드
	public int deleteQnA(int farmQnaQuestionNo);
	
	//게시글 수정 메소드
	public  int modifyQnA(Map<String, Object> commandMap);
	
	//farmerNo를 통한 farmNo 조회
    public int selectFarmNoByFarmerNo2(String farmerNo);
		
    //QnA 답글 작성
    public void answerInsert(FarmQnaAnswer farmqnaAnswer);
    
    //farmQnaQuestionNo번호로 QnA 답글 리스트 조회
    public List<FarmQnaAnswer> selectAnserList(int farmQnaQuestionNo);

	public int insertFarmerFarmQnA(Map<String, Object> commandMap);
}
