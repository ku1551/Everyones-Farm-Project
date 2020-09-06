package com.kh.farmapp.mypage.farmer.model.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import common.dto.Application;
import common.dto.FarmActivity;
import common.dto.FarmingDailylog;
import common.dto.TBOrder;
import common.dto.page.Criteria;

@Repository
public class FarmerMypageDaoImpl implements FarmerMypageDao {

	@Autowired
	SqlSessionTemplate session;
	
	// 농장 체험  리스트
	@Override
	public List<Map<String, Object>> activitylist(Criteria cri) {
//			System.out.println(session.selectList("ACTIVITY.listPage",cri));
		return session.selectList("MYPAGEACTIVITY.listPage",cri);
	}
	// 농장체험 총 갯수
	@Override
	public int listCount2() {
		return session.selectOne("MYPAGEACTIVITY.listCount");
	}
	
	// 체험신청 내역 승인 처리
	@Override
	public int updateIsApproval(Application application) {
		return session.update("MYPAGEACTIVITY.update",application);
	}
	
	// 체험신청 내역 application에 대한 한줄 조회 (승인 신청 조인한 것 한줄을 가져와서 비교해서 처리하기 위해)
	@Override
	public Application selectOne(Application application) {
		System.out.println(application);
		return session.selectOne("MYPAGEACTIVITY.selectOne",application);
	}
	
	//일손 체험 리스트
	@Override
	public List<Map<String, Object>> activitylist3(Criteria cri) {
		return session.selectList("MYPAGEACTIVITY.listPage2",cri);
	}
	//일손 체험 페이징
	@Override
	public int listCount3() {
		return session.selectOne("MYPAGEACTIVITY.listCount2");
	}
	
	
	// 영농일지 작성
	@Override
	public void writeDailylog(FarmingDailylog farmingDailylog) {
		session.insert("MYPAGEDAILY.insertFarmdaily", farmingDailylog);
	}
	
	// 영농일지 목록조회
	@Override
	public List<FarmingDailylog> dailyLoglist(Criteria cri) {
		return session.selectList("MYPAGEDAILY.listPage",cri);
	}

	// 영농일지 총 갯수
	@Override
	public int listCount() {
		return session.selectOne("MYPAGEDAILY.listCount");
	}
	
	//영농일지 상세
	@Override
	public FarmingDailylog read(int dailyLogNo) {
		System.out.println(dailyLogNo+"다오");
		return session.selectOne("MYPAGEDAILY.read",dailyLogNo);
	}
	
	// 판매 내역 리스트 조회하기
	@Override
	public List<Map<String, Object>> selllist(Criteria cri) {
		return session.selectList("MYPAGESELL.listPage",cri);
	}
	
	// 체험신청 내역 order에 대한 한줄 조회 (결제 신청 조인한 것 한줄을 가져와서 비교해서 처리하기 위해)
	@Override
	public TBOrder selectOne(TBOrder order) {
		return session.selectOne("MYPAGESELL.selectOne",order);
	}
	
	//체험 내역 승인처리
	@Override
	public int updatePayment(TBOrder order) {
		return session.update("MYPAGESELL.update",order);
	}
	
	@Override
	public List<Map<String, Object>> datelist(String date) {
		return session.selectList("MYPAGEDAILY.list",date);
	}
//	@Override
//	public List<Map<String, Object>> datelist(Date to) {
//		System.out.println(to);
//		return session.selectList("MYPAGEDAILY.list",to);
//	}
}
