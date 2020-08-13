<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:out value="${'This si JSTL'}"/>

<c:import var="data" url="http://www.javatpoint.com"/>  
<c:out value="${data}"/>    

<c:set var="Income" scope="session" value="${5000*4.3}"/>  
<c:out value="${Income}"/>

<c:set var="Income_2" scope="session" value="${4000*4}"/>  
<p>Before Remove Value is: <c:out value="${Income_2}"/></p>  
<c:remove var="Income_2"/>  
<p>After Remove Value is: <c:out value="${Income_2}"/></p>

<c:catch var ="catchtheException">  
   <% int x = 2/0;%>  
</c:catch>  
  
<c:if test = "${catchtheException != null}">  
   <p>The type of exception is : ${catchtheException} <br />  
   There is an exception: ${catchtheException.message}</p>  
</c:if>  

<c:set var="number" scope="come" value="${4000*4}"/>  
<c:if test="${number > 8000}">  
   <p>My Number is: <c:out value="${number}"/><p>  
   
   <c:set var="income_3" scope="session" value="${4000*4}"/>  
	<p>Your income is : <c:out value="${income_3}"/></p>  
	<c:choose>  
    <c:when test="${income_3 <= 1000}">  
       Income is not good.  
    </c:when>  
    <c:when test="${income_3 > 10000}">  
        Income is very good.  
    </c:when>  
    <c:otherwise>  
       Income is undetermined...  
    </c:otherwise>  
</c:choose> 
</c:if> 

	<c:forEach var="j" begin="1" end="3">  
   	Item <c:out value="${j}"/><p>  
   </c:forEach> 
   
   <c:forTokens items="Ko-Yoon-Seo" delims="-" var="name">  
   		<c:out value="${name}"/><p>  
	</c:forTokens> 
</body>	
</html>
