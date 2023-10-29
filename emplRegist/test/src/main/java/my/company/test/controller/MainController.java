package my.company.test.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.slf4j.Slf4j;
import my.company.test.service.EmployeeService;
import my.company.test.service.MainService;
import my.company.test.vo.Employee;

@Slf4j
@Controller
public class MainController {

	@Autowired
	private MainService service;

	@Autowired
	private EmployeeService eService;

	//메인페이지 이동
	@RequestMapping("/main")
	public String mainA() {
		return "common/main";
		//-> common = WEB-INF/views/common
	}


	//직원 전체 조회
	@GetMapping("/main")
	public String boardList(Model model){

			List<Employee> employeeList = service.selectEmployeeList();
			model.addAttribute("employeeList", employeeList);

		return "common/main";
	}

	//직원 검색
	@GetMapping("/searchEpl")
	public String boardList(@RequestParam Map<String, Object> paramMap,
							Model model){

			System.out.println("query :: " + paramMap.get("query"));
			List<Employee> employeeList = service.selectEmployeeList(paramMap);
			model.addAttribute("employeeList", employeeList);

		return "common/main";
	}


	//직원삭제
	@ResponseBody
	@PostMapping("/employeeDelete")
	public int employeeDelete(String employeeNo) {

		log.info("  직원번호 :  " + employeeNo);

		int result = eService.employeeDelete(employeeNo);

		return result;
	}



}
