<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value="/css/style.css"/>">
<meta charset="UTF-8">
<title>Mon profil</title>
</head>
<body>
<%@ include file="/utilisateur/connection.jsp"%>
<%@ include file="/vente/filtre.jsp"%>

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
         <tr><td><a href="<c:url value="/utilisateur/modifier.jsp"/>">Modifier mon profil</a></td></tr>
         <tr><td><a href="<c:url value="/utilisateur/supprimer.jsp"/>">Supprimer</a><td></tr>
      </table>
</div>
</body>
</html>