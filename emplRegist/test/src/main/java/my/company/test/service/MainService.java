package my.company.test.service;

import java.util.List;
import java.util.Map;

import my.company.test.vo.Employee;

public interface MainService {

	List<Employee> selectEmployeeList(Map<String, Object> paramMap);

	List<Employee> selectEmployeeList();




}
