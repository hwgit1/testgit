package kr.co.ictedu;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmpService {

	@Autowired
	private EmpDAO dao;
	
	public EmpDTO empDetail(String eno) {
		
		EmpDTO dto = null;
		
		dto = dao.empDetail(eno);//dao가 수행되면서 값을 받아온다.
		
		return dto;//Controller로 넘긴다
	}//empDetail
	
	public List<EmpDTO> empList() {
		System.out.println("여기는 서비스 입니다.");
		
		List<EmpDTO> list = null;
		
		list = dao.emplist();//dao가 수행되면서 값을 받아온다.
		
		return list;//Controller로 넘긴다
	}//empList
	
}//class
