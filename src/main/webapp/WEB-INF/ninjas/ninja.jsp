<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>New Ninja</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/main.css" />
    <!-- change to match your file/naming structure -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
    <!-- change to match your file/naming structure -->
  </head>
  <body>
    <div class="container">
    <h1>New Ninja</h1>
    <form:form action="/createninja" method="post" modelAttribute="ninja">
      <p>
        <form:label path="dojo" class="form-label"><h3>Dojo:</h3></form:label>
        <form:select path="dojo" class="form-select">
          <c:forEach var="dojo" items="${dojos}">
            <form:option value="${dojo.id}">
              <c:out value="${dojo.name}" />
            </form:option>
          </c:forEach>
        </form:select>
      </p>
      <p>
        <form:label path="firstName" class="form-label">First Name:</form:label>
        <form:errors path="firstName" />
        <form:input path="firstName" class="form-control"/>
      </p>
      <p>
        <form:label path="lastName" class="form-label">Last Name:</form:label>
        <form:errors path="lastName" />
        <form:input path="lastName" class="form-control"/>
      </p>
      <p>
        <form:label path="age" class="form-label">Age:</form:label>
        <form:errors path="age" />
        <form:input type="number" path="age" class="form-control" />
      </p>
      <input type="submit" value="submit" class="btn btn-secondary" />
    </form:form>
  </div>
  </body>
</html>