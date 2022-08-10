package kr.co.ictedu;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EmpDAO {

	@Autowired
	private SqlSession sqlSession;
	
	public EmpDTO empDetail(String eno) {
		EmpDTO dto = null;
		
		dto = sqlSession.selectOne("EmpMapper.empDetail", eno);
		
		return dto;//service로 넘긴다.
	}//empDetail
	
	public List<EmpDTO> emplist() {
		
		List<EmpDTO> list = null;
		
		list = sqlSession.selectList("EmpMapper.empList");
		
		System.out.println("Execute DAO : " + list);
		
		return list;//service로 넘긴다.
		
	}//emplist
	
}//class
