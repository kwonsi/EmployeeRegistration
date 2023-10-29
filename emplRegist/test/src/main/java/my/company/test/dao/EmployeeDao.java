package my.company.test.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import my.company.test.vo.Employee;

@Repository
public class EmployeeDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	//직원 등록
	public int registration(Employee inputEp) {
		return sqlSession.insert("employeeMapper.registration", inputEp);
	}

	//직원 삭제
	public int employeeDelete(String employeeNo) {
		return sqlSession.delete("employeeMapper.employeeDelete",employeeNo);
	}

	//수정 위한 직원 조회
	public Employee employeeSelect(String employeeNo) {
		return sqlSession.selectOne("employeeMapper.employeeSelect", employeeNo);
	}

	//직원 수정
	public int employeeUpdate(Employee updateEp) {
		return sqlSession.update("employeeMapper.employeeUdate", updateEp);
	}






}
