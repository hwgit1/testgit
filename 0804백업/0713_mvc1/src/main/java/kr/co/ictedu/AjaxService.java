package kr.co.ictedu;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AjaxService {
	
	@Autowired
	private AjaxDAO dao;
	
	public int idDupCheck(String mid) {
		int dupYN = 0;
		
		dupYN = dao.idDupCheck(mid);
		
		return dupYN;//컨트롤러로 전달
	}//idDupCheck
	
}//class
