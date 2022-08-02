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

<h1>Mon profil</h1>
 <table border = "1">
         <tr>
         	<th>noUtilisateur</th>
         	<th>Pseudo</th>
            <th>Nom</th>
            <th>Prénom</th>
            <th>Email</th>
            <th>Téléphone</th>
            <th>Numéro de rue</th>
            <th>Rue</th>
            <th>Code postal</th>
            <th>Ville</th>
            <th>MotDePasse</th>
            <th>Crédit</th>
            <th>Administrateur</th>
            <th>Modifier</th>
            <th>Supprimer</th>
         </tr>
            <tr>
            	<td> <c:out value = "${utilisateur.noUtilisateur}"/></td>
       		    <td> <c:out value = "${utilisateur.pseudo}"/></td>
               <td> <c:out value = "${utilisateur.nom}"/></td>
               <td> <c:out value = "${utilisateur.prenom}"/></td>
               <td> <c:out value = "${utilisateur.email}"/></td>
               <td> <c:out value = "${utilisateur.telephone}"/></td>
               <td> <c:out value = "${utilisateur.noRue}"/></td>
               <td> <c:out value = "${utilisateur.rue}"/></td>
               <td> <c:out value = "${utilisateur.codePostal}"/></td>
               <td> <c:out value = "${utilisateur.ville}"/></td>
               <td> <c:out value = "${utilisateur.motDePasse}"/></td>
               <td> <c:out value = "${utilisateur.credit}"/></td>
               <td> <c:out value = "${utilisateur.administrateur}"/></td>
               <td> <a href="<c:url value="/utilisateur/modifier.jsp"/>">Modifier</a></td>
               <td> <a href="<c:url value="/utilisateur/supprimer.jsp"/>">Supprimer</a></td>
            </tr>
            
      </table>

<a href="<c:url value="/index.jsp"/>">Retour à la page d'accueil</a>

</body>
</html>