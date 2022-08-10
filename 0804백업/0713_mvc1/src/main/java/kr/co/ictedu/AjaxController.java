package kr.co.ictedu;

import java.io.PrintWriter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AjaxController {

	private static final Logger logger = LoggerFactory.getLogger(AjaxController.class);
	
	@Autowired
	private AjaxService service;
	
	@RequestMapping( value = "/ajax3_test", method = RequestMethod.POST)
	public void ajax3Test( String mid, PrintWriter out ) {
		int dupYN = 0;
		dupYN = service.idDupCheck(mid);
		out.print(dupYN);
		out.close();
	}//ajax3Test
	
	@RequestMapping( value = "/ajax3", method = RequestMethod.GET)
	public String day5Ajax3() {
		return "day5_ajax3";//jsp 파일 이름
	}//day5Ajax3
	
	
	@RequestMapping( value = "/ajax2_test", method = RequestMethod.POST)
	public void ajax2Test( String id, String pwd, PrintWriter out ) {
		logger.info(id);
		logger.info(pwd);
		out.print("아이디는 [" + id + "]이고, 비밀번호는 [" + pwd + "]입니다.");
		out.close();
	}//ajax2Test
	
	@RequestMapping( value = "/ajax2", method = RequestMethod.GET)
	public String day5Ajax2() {
		return "day5_ajax2";//jsp 파일 이름
	}//day5Ajax2
	
	
	@RequestMapping( value = "/ajax1_test", method = RequestMethod.GET)
	public void ajax1Test( PrintWriter out ) {
		out.print("This is message from Server.");
		out.close();
	}//ajax1Test
	
	@RequestMapping( value = "/ajax1", method = RequestMethod.GET)
	public String day5Ajax1() {
		return "day5_ajax1";//jsp 파일 이름
	}//day5Ajax1
	
}//class
