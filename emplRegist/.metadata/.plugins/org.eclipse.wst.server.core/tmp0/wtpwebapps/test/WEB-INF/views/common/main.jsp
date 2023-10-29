<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<c:set var="employeeList" value="${employeeList}" />


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="../test/resources/css/main.css">

    <title>직원목록</title>
 

</head>
<body>
    <main>
      <a class="epResistraion" href="${contextPath}/empl/registration">직원등록</a>
      <table>
        <tr>
          <th>번호</th>
          <th>직급</th>
          <th>이름</th>
          <th>전화번호</th>
          <th>이메일</th>
        </tr>

        <c:choose>
          <c:when test="${empty employeeList}">
            <tr>
              <th colspan="5">직원이 존재하지 않습니다.</th>
            </tr>
          </c:when>

          <c:otherwise>
            <c:forEach var="employee" items="${employeeList}">
              <tr>
                <td>${employee.employeeNo}</td>
                <td>${employee.employeeRank}</td>
                <td>${employee.employeeName}</td>
                <td>${employee.employeeTel}</td>
                <td>${employee.employeeMail}</td>
                <td><button type="button" class="emplDel" onclick="emplDelete('${employee.employeeNo}')">삭제</button></td>
              </tr>  
              
            </c:forEach>         
          </c:otherwise>

        </c:choose>

        
      </table>
      
    </main>
    
   

    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="${contextPath}/resources/js/employee.js"></script>

</body>
</html>