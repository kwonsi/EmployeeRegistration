<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="../resources/css/employee-style.css">
    
    <title>직원등록</title>
</head>

<body>
    <h1>직원등록</h1>
    <form action="registrationForm" method="POST" onsubmit="return regist()">

        <div class="eInfo">
            <div class="eNo">직원번호</div><input id="employeeNo" name="employeeNo" class="eNo-input">
            <span class="noMessage">3자리로 입력해주세요</span>
        </div>

        <div class="eInfo">
            <div class="eRegistration">직급</div><input id="employeeRank" name="employeeRank" class="eRegistration-input">
        </div>

        <div class="eInfo">
            <div class="eName">이름</div><input id="employeeName" name="employeeName" class="eName-input">
        </div>

        <div class="eInfo">
            <div class="eTel">전화번호</div><input id="employeeTel" name="employeeTel" class="eTel-input">
            <span class="telMessage">' - '를 제외하고 입력해주세요</span>
        </div>

        <div class="eInfo">
            <div class="eMail">이메일</div><input id="employeeMail" name="employeeMail" class="eMail-input">
            <span class="mailMessage">이메일 형식에 맞게 입력해주세요</span>
        </div>
       
        <button type="submit" id="registBtn">등록</button>
    </form>



	<c:if test="${!empty message}">
		<script>
			alert("${message}");
		</script>
	</c:if>
	



    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="${contextPath}/resources/js/employee.js"></script>
</body>

</html>