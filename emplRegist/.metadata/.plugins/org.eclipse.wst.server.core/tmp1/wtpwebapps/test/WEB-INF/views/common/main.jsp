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

    <title>직원 등록</title>
 

</head>
<body>
    <main>
     

      <jsp:include page="/WEB-INF/views/common/header.jsp" />


<!-- 직원검색 -->
      <div class="search-registration">
        <form action="searchEpl" method="get" id="employeeSearch">

          <select name="key" id="search-key">
            <option value="nb">번호</option>
            <option value="r">직급</option>
            <option value="nm">이름</option>
          </select>
  
          <input type="text" name="query" id="search-query" placeholder="검색어 입력">
          &nbsp;&nbsp;
          <button class="search">검색</button>
  
        </form>
        
      </div>
      
      <button type="button" class="eplResistraion" onclick="location.href='${contextPath}/empl/registration'">직원 등록 이동</button>

     <!-- 직원조회 -->
      <table>
        <tr>
          <th>번호</th>
          <th>직급</th>
          <th>이름</th>
          <th>전화번호</th>
          <th>이메일</th>
          <th></th>
          <th></th>
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
                &nbsp;
                <td><button type="button" class="emplMf" onclick="location.href='${contextPath}/empl/emplModify/${employee.employeeNo}'">수정</button></td>
              </tr>  
              
            </c:forEach>         
          </c:otherwise>

        </c:choose>

        
      </table>
      
    </main>
    
    <script>
      const contextPath = "${contextPath}";
      const employeeNo = "${employee.employeeNo}";
    </script>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="${contextPath}/resources/js/employee.js"></script>

</body>
</html>