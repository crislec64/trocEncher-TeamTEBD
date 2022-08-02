<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value="css/style.css"/>">
<meta charset="UTF-8">
<title>Accueil</title>
</head>
<body>
<%@ include file="/utilisateur/connection.jsp"%>

<h1>Accueil</h1>

<c:if test="${utilisateur==null}"><p>Il n'y a pas grand chose à faire ici. </p></c:if>
<c:if test="${utilisateur!=null}"><p>Ahhh, ça fait du bien d'être enfin connecté</p></c:if>


</body>
</html>