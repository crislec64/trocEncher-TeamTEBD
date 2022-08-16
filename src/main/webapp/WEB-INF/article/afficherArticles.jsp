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
		<h1 id="mainTitre">Liste des enchères</h1>
		
		<div class="card-deck">
			<div class="row">
				<c:forEach var = "articles" items="${articles}">
		
					<div class="col-sm-4">
					
					 	<div class="card m-2">
					 	
					 		<c:if test="${articles.noCategories==1}">
		         				<img class="card-img-top w-100" src="<c:url value="/img/imageinformatique.jpg"/>" alt="image informatique" name="imageCard"/>
		         			</c:if>
		         		
		         			<c:if test="${articles.noCategories==2}">
		         				<img class="card-img-top w-100" src="<c:url value="/img/imageameublement.jpg"/>" alt="image ameubleument" name="imageCard"/>
		         			</c:if>
		         		
		         			<c:if test="${articles.noCategories==3}">
		         				<img class="card-img-top w-100" src="<c:url value="/img/imagevetemment.jpg"/>" alt="image vetemment	" name="imageCard"/>
		         			</c:if>
		         		
		         			<c:if test="${articles.noCategories==4}">
		         				<img class="card-img-top w-100" src="<c:url value="/img/imagesport.jpeg"/>" alt="image sport		" name="imageCard"/>
		         			</c:if>
		
				    
				    		<div class="card-body">
				      			<a href="<c:url value="/AfficherUnArticle?id=${articles.noArticles}"/>"><h5 class="card-title"><c:out value="${articles.nomArticles}"/></h5></a>
				      			<hr>
				     			 <p class="card-text">l'Enchère commence le : <c:out value="${articles.debutEncheres}"/><p>
				      			<hr>
				      			<p class="card-text">l'Enchère finit le : <c:out value="${articles.finEncheres}"/><p>
		
				   	 		</div>
				    
				    		<div class="card-footer">
				    	  		<small class="text-muted">Prix: ${articles.prixArticles} points</small>
				    		</div>
				
				  		</div>
				  	</div>
			  	
				</c:forEach>
			</div>
		</div>

	</div>
</main>

<%@ include file="/footer.jsp"%>

</body>
</html>