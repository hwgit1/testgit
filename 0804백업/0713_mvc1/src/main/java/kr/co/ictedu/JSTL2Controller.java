package kr.co.ictedu;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class JSTL2Controller {
	
	private static final Logger logger = LoggerFactory.getLogger(JSTL2Controller.class); 

	@RequestMapping( value = "/jstl11", method = RequestMethod.GET)
	public String day2Jstl11() {
		return "day2jstl11";////jsp 파일 이름.
	}//day2Jstl11
	
	@RequestMapping( value = "/jstl10", method = RequestMethod.GET)
	public String day2Jstl10() {
		return "day2jstl10";////jsp 파일 이름.
	}//day2Jstl10
	
	@RequestMapping( value = "/jstl9", method = RequestMethod.GET)
	public String day2Jstl9() {
		return "day2jstl9";////jsp 파일 이름.
	}//day2Jstl9
	
	@RequestMapping( value = "/jstl8", method = RequestMethod.GET)
	public String day2Jstl8() {
		return "day2jstl8";////jsp 파일 이름.
	}//day2Jstl8
	
	@RequestMapping( value = "/jstl7", method = RequestMethod.GET)
	public String day2Jstl7() {
		return "day2jstl7";//jsp 파일 이름.
	}//day2Jstl7
	
	@RequestMapping( value = "/jstl6", method = RequestMethod.GET)
	public String day2Jstl6() {
		return "day2jstl6";//jsp 파일 이름.
	}//day2Jstl6
	
	@RequestMapping( value = "/jstl5", method = RequestMethod.GET)
	public String day2Jstl5() {
		return "day2jstl5";//jsp 파일 이름.
	}//day2Jstl5
	
	@RequestMapping( value = "/jstl4", method = RequestMethod.GET)
	public String day2Jstl4() {
		return "day2jstl4";//jsp 파일 이름.
	}//day2Jstl4
	
	@RequestMapping( value = "/jstl3", method = RequestMethod.GET)
	public String day1Jstl3( Model model, ArrayList<String> list ) {
		
		list.add("hi");list.add("hello");list.add("how are you");
		list.add("안녕");list.add("밥먹었니?");
		model.addAttribute("mylist", list);
		
		return "day1jstl3";//jsp 파일 이름.
	}//day1Jstl3
	
	@RequestMapping( value = "/jstl2", method = RequestMethod.GET)
	public String day1Jstl2() {
		return "day1jstl2";//jsp 파일 이름.
	}//day1Jstl2
	
	@RequestMapping( value = "/jstl1", method = RequestMethod.GET)
	public String day1Jstl1() {
		return "day1jstl1";//jsp 파일 이름
	}//day1Jstl1
	
}//class
