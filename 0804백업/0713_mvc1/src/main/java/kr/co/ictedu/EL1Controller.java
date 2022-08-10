package kr.co.ictedu;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EL1Controller {

	
	private static final Logger logger = LoggerFactory.getLogger(EL1Controller.class);
	
	@RequestMapping( value = "/el3", method = RequestMethod.GET )
	public String day1El3( Model model, ArrayList<String> list, HashMap<String, String> map ) {
		
		map.put("반장", "홍길동");map.put("부반장", "고길동");map.put("부장", "둘리");
		model.addAttribute("mymap", map);
		
		list.add("hi");list.add("hello");list.add("how are you");
		model.addAttribute("mylist", list);
		
		return "day1el3";//jsp 파일 이름.
	}//day1El3
	
	@RequestMapping( value = "/el2", method = RequestMethod.GET )
	public String day1El2( Model model, FreeBoardDTO dto, HttpServletRequest request, HttpSession session ) {
		
		request.setAttribute("messageFromRequest", "이것은 request를 통해 전달된 메세지 입니다.");
		
		session.setAttribute("messageFromSession", "이것은 session을 통해 전달된 메세지 입니다.");
		
		dto.setBno("111");
		dto.setBtitle("노인과 바다");
		dto.setBwriter("헤밍웨이");
		dto.setBcnts("sad ending");
		dto.setBdate("1945-08-15");
		model.addAttribute("free_board_dto", dto);
		
		return "day1el2";//jsp 파일 이름.
				
	}//day1El2
	
	@RequestMapping( value = "/el1", method = RequestMethod.GET )
	public String day1El1() {
		return "day1el1";//jsp 파일이름 리턴// 이 이름을 가진 jsp파일을 실행시켜라.
	}//day1El1
	
}//class
