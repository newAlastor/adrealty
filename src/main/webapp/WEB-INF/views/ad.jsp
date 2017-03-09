<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf8">
    <title>${ad.name}</title>
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<a href="/ad">Всё обьявления</a>
<c:if test="${pageContext.request.userPrincipal.name != null}">
    <a href="/ad/new">Добавить своё объявление</a>
    <form id="logoutForm" method="POST" action="/logout">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>

    <h4 class="text-right"> ${pageContext.request.userPrincipal.name} |
        <a onclick="document.forms['logoutForm'].submit()">Выйти из аккаунта</a></h4>
</c:if>

<p class="text-right">Просмотров:${ad.numberShow + 1}</p>

<div class="page-header">${ad.name}</div>
    <p>${ad.info}</p>
    <p>${ad.price}</p>
    <p>Данные владельца</p>
    <p>${owner.name}</p>
    <p>${owner.email}</p>
    <p>${owner.phone}</p>
</body>
</html>