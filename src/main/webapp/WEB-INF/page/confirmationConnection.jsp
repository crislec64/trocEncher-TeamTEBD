<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="/utilisateur/connection.jsp"%>

<p>Vous êtes connecté</p>



<a href="<c:url value="/index.jsp"/>">Retour à la page d'accueil</a>
</body>
</html>