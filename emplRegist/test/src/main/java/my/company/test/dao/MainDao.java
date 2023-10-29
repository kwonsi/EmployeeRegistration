package my.company.test.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import my.company.test.vo.Employee;


@Repository
public class MainDao {


	@Autowired
	private SqlSessionTemplate sqlSession;

	//직원 검색 조회
	public List<Employee> selectEmployeeList(Map<String, Object> paramMap) {
		return sqlSession.selectList("employeeMapper.selectEmployeeList", paramMap);
	}

	//직원 리스트 조회
	public List<Employee> selectEmployeeList() {
		return sqlSession.selectList("employeeMapper.selectEmployeeList");
	}






}
