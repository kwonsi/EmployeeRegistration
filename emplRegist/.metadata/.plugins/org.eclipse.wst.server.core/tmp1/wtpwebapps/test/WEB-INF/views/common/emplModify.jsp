<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="${contextPath}/resources/css/main.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/employee-style.css">
    
    <title>직원 정보 수정</title>
</head>

<body>
    <main>

  
    <jsp:include page="/WEB-INF/views/common/header.jsp" />

    <h2>직원 정보 수정</h2>
    <form action="${employeeNo}" method="POST" onsubmit="return modify()">
       
        <div class="eInfo">
            <div class="eNo1">직원번호</div><span class="modifyNum">${employee.employeeNo}</span>
            <span class="numMessage">(직원번호 수정 불가)</span>
        </div>

        <div class="eInfo">
            <div class="eRegistration">직급</div><input id="employeeRank" name="employeeRank" class="eRegistration-input" value="${employee.employeeRank}">
        </div>

        <div class="eInfo">
            <div class="eName">이름</div><input id="employeeName" name="employeeName" class="eName-input" value="${employee.employeeName}">
        </div>

        <div class="eInfo">
            <div class="eTel">전화번호</div><input id="employeeTel" name="employeeTel" class="eTel-input" value="${employee.employeeTel}">
            <span class="telMessage">' - '를 제외하고 입력해주세요</span>
        </div>

        <div class="eInfo">
            <div class="eMail">이메일</div><input id="employeeMail" name="employeeMail" class="eMail-input" value="${employee.employeeMail}">
            <span class="mailMessage">이메일 형식에 맞게 입력해주세요</span>
        </div>

        <br>
        <button id="registBtn">수정</button>
    </form>

    </main>

	<c:if test="${!empty message}">
		<script>
			alert("${message}");
		</script>
	</c:if>
	
    <script>
        const employeeNo = "${employee.employeeNo}";
    </script>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="${contextPath}/resources/js/employee.js"></script>
</body>

</html>