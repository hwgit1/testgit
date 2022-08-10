package kr.co.ictedu;

import java.io.PrintWriter;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class JsonController {

	public static final Logger logger = LoggerFactory.getLogger(JsonController.class);
	
	@Autowired
	private EmpService service;
	
	@RequestMapping( value = "/json2_test", method = RequestMethod.GET)
	public void json2Test( PrintWriter out) {
		
		List<EmpDTO> list = null;
		list = service.empList();
		
		JSONArray arr = new JSONArray();
		for(EmpDTO dto : list) {
			JSONObject obj = new JSONObject();
			obj.put("empno", dto.getEmpno());
			obj.put("ename", dto.getEname());
			obj.put("job", dto.getJob());
			obj.put("mgr", dto.getMgr());
			obj.put("hiredate", dto.getHiredate());
			obj.put("sal", dto.getSal());
			obj.put("comm", dto.getComm());
			obj.put("deptno", dto.getDeptno());
			arr.add(obj);
		}//for
		out.print(arr.toJSONString() );
		out.close();
		
	}//json2Test
	
	@RequestMapping( value = "/json2", method = RequestMethod.GET)
	public String day5Json2() {
		return "day5_json2";//jsp 파일 이름
	}//day5Json2
	
	@RequestMapping( value = "/json1", method = RequestMethod.GET)
	public String day5Json1( Model model ) {
		
		JSONObject obj1 = new JSONObject();
		obj1.put("원빈", "아저씨");
		obj1.put("배역", "싸움짱");
		JSONObject obj2 = new JSONObject();
		obj2.put("정우성", "놈놈놈");
		obj2.put("배역", "총짱");
		JSONObject obj3 = new JSONObject();
		obj3.put("장혁", "화산고");
		obj3.put("배역", "주먹짱");
		
		JSONArray arr = new JSONArray();
		arr.add(obj1);
		arr.add(obj2);
		arr.add(obj3);
		
		model.addAttribute("json_array", arr.toJSONString() );
		logger.info(arr.toJSONString());
		
		return "day5_json1";//jsp 파일 이름
	}//day5Json1
	

}//class
