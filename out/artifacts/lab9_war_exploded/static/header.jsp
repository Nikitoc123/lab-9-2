<%@page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- Обработать параметр сортировки --%>
<c:if test="${param.sort!=null}">
    <c:set var="sort" scope="session" value="${param.sort}"/>
</c:if>
<%-- Обработать параметр направления сортировки --%>
<c:if test="${param.dir!=null}">
    <c:set var="dir" scope="session" value="${param.dir}"/>
</c:if>
<%-- Общая декоративная "шапка" для всех страниц --%>
<div style="background-color: #378ff0; padding: 10px; ">
    <img src="/lab9_war_exploded/resources/traxter.jpg" width="71" height="53" border="0"
         align="left">
    <div style="font-family: 'DS Greece'; font-size: 50px; height: 53px;
margin-left: 80px;">
        Доска объявлений имени Кирилла Сергеевича Шпака
    </div>
</div>
<%-- Панель отображается если пользователь аутентифицирован --%>
<c:if test="${sessionScope.authUser!=null}">
    <div style="background-color: #ccc; padding: 5px">
        <div style="font-family: 'Kankin'; float: right; margin-right: 5px">
            [ <a href="<c:url value="/doLogout.jsp" />">Выйти</a> ]
        </div>
        Вы вошли как:
        <c:out value="${sessionScope.authUser.name}" />
        ( <c:out value="${sessionScope.authUser.login}" /> )
    </div>
</c:if>
