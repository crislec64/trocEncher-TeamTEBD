<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<title>Accueil</title>
</head>
<body>
<%@ include file="/utilisateur/connection.jsp"%>

<main>
<div class="conteneur">
		<h1 id="mainTitre">Description de l'article : <c:out value="${article.nomArticles}"/></h1>

	<div class="col-sm-4">
 			<div id="SuperCard" class="card m-2">
		   		 
				<c:if test="${article.noCategories==1}">
		         				<img class="card-img-top w-100" src="<c:url value="/img/imageinformatique.jpg"/>" alt="image informatique" name="imageCard"/>
		         			</c:if>
		         		
		         			<c:if test="${article.noCategories==2}">
		         				<img class="card-img-top w-100" src="<c:url value="/img/imageameublement.jpg"/>" alt="image ameubleument" name="imageCard"/>
		         			</c:if>
		         		
		         			<c:if test="${article.noCategories==3}">
		         				<img class="card-img-top w-100" src="<c:url value="/img/imagevetemment.jpg"/>" alt="image vetemment	" name="imageCard"/>
		         			</c:if>
		         		
		         			<c:if test="${article.noCategories==4}">
		         				<img class="card-img-top w-100" src="<c:url value="/img/imagesport.jpeg"/>" alt="image sport		" name="imageCard"/>
		         			</c:if>
		    
			 	<div class="card-body">
			      <h5 class="card-title"><c:out value="${article.nomArticles}"/></h5>
			    <p>Vendeur: utilisateur n°<c:out value="${article.noUtilisateur}"/><p>
				<p>Categorie: <c:out value="${article.noCategories}"/><p>
				<p>Prix : <c:out value="${article.prixArticles}"/><p>
				<p>Description de l'article: <c:out value="${article.descriptionArticles}"/><p>
				<p>l'Enchère commence le : <c:out value="${article.debutEncheres}"/><p>
				<p>Fin de l'enchère le : <c:out value="${article.finEncheres}"/><p>
				<h3> Point de retrait </h3>
				<p>N° de rue:<c:out value="${article.noRue}"/><p>
				<p>Rue:<c:out value="${article.rue}"/><p>
				<p>Code Postal :<c:out value="${article.codePostal}"/><p>
				<p>ville :<c:out value="${article.ville}"/><p>
			    </div>
			    
			    <div class="card-footer">
			      <small class="text-muted">Prix: ${article.prixArticles} points</small>
			    </div>
		    

			</div>
	</div>
</div>
</main>
<%@ include file="/footer.jsp"%>
</body>
</html>