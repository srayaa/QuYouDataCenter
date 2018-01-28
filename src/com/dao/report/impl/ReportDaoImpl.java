package com.dao.report.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.dao.cardRecord.mapper.CardRecordMapper;
import com.dao.report.ReportDao;
import com.dao.report.mapper.ReportMapper;
import com.pojo.Report;
import com.utils.SqlSessionUtil;

@Repository
public class ReportDaoImpl implements ReportDao{

	@Override
	public void addReportRecord(Report report) {
		try {
			SqlSession sqlSession = SqlSessionUtil.getSqlSession();
			ReportMapper cardMapper = sqlSession.getMapper(ReportMapper.class);
			cardMapper.addReport(report);
			sqlSession.commit();
			sqlSession.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
