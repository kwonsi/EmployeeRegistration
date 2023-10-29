package my.company.test.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import my.company.test.dao.EmployeeDao;
import my.company.test.vo.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeDao dao;

	//직원 등록
	@Override
	public int registration(Employee inputEp) {
		return dao.registration(inputEp);
	}

	//직원 삭제
	@Override
	public int employeeDelete(String employeeNo) {
		return dao.employeeDelete(employeeNo);
	}

	//수정 위한 직원 조회
	@Override
	public Employee employeeSelect(String employeeNo) {
		return dao.employeeSelect(employeeNo);
	}

	//직원 수정
	@Override
	public int employeeUpdate(Employee updateEp) {
		return dao.employeeUpdate(updateEp);
	}






}
