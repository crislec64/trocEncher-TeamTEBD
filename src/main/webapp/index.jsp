<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css" />
<meta charset="UTF-8">
<title>Accueil</title>
</head>
<body>
<%@ include file="/utilisateur/connection.jsp"%>
<%@ include file="/vente/filtre.jsp"%>

<h1>Liste des enchères</h1>

<c:if test="${utilisateur==null}"><p>Vous n'êtes pas connecté</p></c:if>
<c:if test="${utilisateur!=null}"><p>Vous êtes connecté</p></c:if>

<%@ include file="/vente/articles.jsp"%>


</body>
</html>