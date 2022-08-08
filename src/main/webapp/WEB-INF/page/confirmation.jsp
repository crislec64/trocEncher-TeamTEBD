<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<<<<<<< HEAD
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />

=======
<link rel="stylesheet" href="<c:url value="css/style.css"/>">
>>>>>>> branch 'Article' of https://github.com/crislec64/trocEnchere-TeamTEBD.git
<meta charset="UTF-8">
<title>Confirmation</title>
</head>
<body>
<%@ include file="/utilisateur/connection.jsp"%>
<%@ include file="/vente/filtre.jsp"%>

<h1 id="mainTitre">Confirmation</h1>

<div id="bodySite">

<p>L'opération demandée a été correctement exécutée.</p>
</div>
</body>
</html>
