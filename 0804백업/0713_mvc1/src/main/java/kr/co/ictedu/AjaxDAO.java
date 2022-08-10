package kr.co.ictedu;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AjaxDAO {

	@Autowired
	private SqlSession sqlSession;
	
	public int idDupCheck(String mid) {
		int dupYN = 0;
		
		dupYN = sqlSession.selectOne("AjaxMapper.idDupCheck", mid);
		
		return dupYN;//서비스로 전달
	}//idDupCheck
}//class
