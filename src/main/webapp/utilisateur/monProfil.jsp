<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/tableau.css" />">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css"> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
<script type="text/javascript"></script>
<meta charset="UTF-8">
<title>Mon profil</title>
</head>
<body>
<%@ include file="/utilisateur/connection.jsp"%>

<main>
<h1 id="mainTitre">Mon profil</h1>

<div id="bodySite">
<table>
         <tr>
         	<th>noUtilisateur</th>
         	<td> <c:out value = "${utilisateur.noUtilisateur}"/></td>
         </tr>
         <tr>
         	<th>Pseudo</th>
         	<td> <c:out value = "${utilisateur.pseudo}"/></td>
         </tr>
         <tr>
         	<th>Nom</th>
         	<td> <c:out value = "${utilisateur.nom}"/></td>
         </tr>
         <tr>
         	<th>Prénom</th>
         	<td> <c:out value = "${utilisateur.prenom}"/></td>
         </tr>
         <tr>
         	<th>Email</th>
         	<td> <c:out value = "${utilisateur.email}"/></td>
         </tr>
         <tr>
         	<th>Téléphone</th>
         	<td> <c:out value = "${utilisateur.telephone}"/></td>
         	
         </tr>
         <tr>
         	<th>Numéro de rue</th>
         	<td> <c:out value = "${utilisateur.noRue}"/></td>
         </tr>
         <tr>
         	<th>Rue</th>
         	<td> <c:out value = "${utilisateur.rue}"/></td>
         </tr>
         <tr>
         	<th>Code postal</th>
         	<td> <c:out value = "${utilisateur.codePostal}"/></td>
         </tr>
         <tr>
         	<th>Ville</th>
         	<td> <c:out value = "${utilisateur.ville}"/></td>
         </tr>
         <tr>
         	<th>MotDePasse</th>
         	<td> <c:out value = "${utilisateur.motDePasse}"/></td>
         </tr>
         <tr>
         	<th>Crédit</th>
         	<td> <c:out value = "${utilisateur.credit}"/></td>
         </tr>
         <tr>
         	<th>Administrateur</th>
         	<td> <c:out value = "${utilisateur.administrateur}"/></td>
         </tr>
         
      </table>
    <h3><a class="liensCouleur" href="<c:url value="/utilisateur/modifier.jsp"/>">Modifier mon profil</a></h3>
    <h3><a class="liensCouleur" href="<c:url value="/utilisateur/supprimer.jsp"/>">Supprimer</a></h3>
</div>

</main>
<%@ include file="/footer.jsp"%>
</body>
</html>