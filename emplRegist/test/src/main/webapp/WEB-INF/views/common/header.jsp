<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>header</title>
</head>
<header>
    <section>
        <a href="${contextPath}">

            <h1>길동이네 직원</h1>
        </a>
    </section>
   
    
</header>
<c:if test="${ !empty message }">
    <script>
        alert("${message}");
    </script>
</c:if> 
</html>