<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/style.css" />">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css"> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
<script type="text/javascript"></script>
<meta charset="UTF-8">
<meta charset="UTF-8">
<title>Confirmer la suppression</title>
</head>
<body>
<%@ include file="/utilisateur/connection.jsp"%>

<main>

<p>Confirmer la suppression de l'utilisateur <c:out value = "${utilisateur.noUtilisateur}"/> ?</p>

<form action="<c:url value="/Supprimer"/>" method="post">
<input type="hidden" name="noUtilisateur" value="${utilisateur.noUtilisateur}"/>
<input type="submit" value="Confirmer"/>
</form>
<a href="<c:url value="/index.jsp"/>">Retour à la page d'accueil</a>

</main>
<%@ include file="/footer.jsp"%>
</body>
</html>