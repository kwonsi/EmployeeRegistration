package my.company.test.service;

import my.company.test.vo.Employee;

public interface EmployeeService {

	//직원 등록
	int registration(Employee inputEp);

	//직원 삭제
	int employeeDelete(String employeeNo);

	//수정 위한 직원조회
	Employee employeeSelect(String employeeNo);

	//직원 수정
	int employeeUpdate(Employee updateEp);

}
