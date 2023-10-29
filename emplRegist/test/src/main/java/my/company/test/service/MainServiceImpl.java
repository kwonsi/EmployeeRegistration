package my.company.test.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import my.company.test.dao.MainDao;
import my.company.test.vo.Employee;

@Service
public class MainServiceImpl implements MainService {

	@Autowired
	private MainDao dao;

	@Override
	public List<Employee> selectEmployeeList() {
		return dao.selectEmployeeList();
	}

	@Override
	public List<Employee> selectEmployeeList(Map<String, Object> paramMap) {
		return dao.selectEmployeeList(paramMap);
	}







}
