package kr.co.ictedu;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String testhometest(Locale locale, Model model, TestObj to) {
		logger.info("Welcome home! The client locale is {}.", locale);
		logger.info("sysout은 이제 안녕");
		to.print();
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		//model.addAttribute("이름이 오는자리", "넣고 싶은 data가 오는 자리");
		model.addAttribute("yourName", "유 현 우");
		
		return "home";//jsp 파일 이름 -> home.jsp 실행을 의미.
	}//testhometest
	
}//class
