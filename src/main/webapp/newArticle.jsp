<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css"> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
<script type="text/javascript"></script>

<title>Vendre un article</title>

</head>
<body>

<%@ include file="/utilisateur/connection.jsp"%>

<main>

<form  action="<c:url value="/NewArticle"/>" method="post">	
<div  class="form-row">
    <label for="nomArticle" class="col-2 offset-md-3 col-md-2">Article</label>
    <input required name="nomArticle" type="text" class="form-control offset-1 col-8 col-md-3" id="name"
    >
</div>
<div class="form-row mt-2">
    <label for="description" class="form col-2 offset-md-3 col-md-2">Description</label>
    <textarea name="descriptionArticles" id="description" cols="30" rows="10" class="form-control offset-1 col-8 col-md-3"></textarea>
</div>
<div class="form-row mt-2">
    <label class="col-2 offset-md-3 col-md-2" for="noCategorie">Catégorie</label>
    <select name="noCategories" id="noCategories" class="form-control offset-1 col-8 col-md-3">
    <option value=0>Veuillez choisir la catégorie</option>
    	<option value=1>Informatique</option>
 		<option value=2>Ameublement</option>
 		<option value=3>Vêtement</option>
 		<option value=4>Sport & Loisir</option>
    </select>
</div>


<div class="form-row mt-2">
    <label for="urlArticle" class="col-4 offset-md-3 col-md-2">Photo de l'article</label>
    <input type="file" class="offset-1 col-7 col-md-3 form-control-file" id="picture">
</div>
<div class="form-row mt-2">
    <label for="prixArticles" class="col-4 offset-md-3 col-md-2">Mise à prix</label>
    <input required type="number" name="prixArticles" id="prixArticles" class="offset-1 col-6 col-md-3 form-control" min="1" value="1"
    >
</div>

<div class="form-row mt-3">
    <label for="debutEncheres" class="col-4 offset-md-3 col-md-2">Début de l'enchère</label>
    <div class="offset-1 col-6 col-md-3">
    <input type="date" class="form-control" id="debutEncheres" min="2022-01-01" name="debutEncheres"
					 required="required">              
	</div>
    
</div>

<div class="form-row">
    <label for="finEncheres" class="col-4 offset-md-3 col-md-2">Fin de l'enchère</label>
    	<div class="offset-1 col-6 col-md-3">
        	<div class="form-group">
            	<input type="date" class="form-control" id="finEncheres" min="2022-01-01" name="finEncheres"
						 required="required">              
			</div>
     	</div>
</div>
	
	<div class="form-group">
	    <div class="form-row">
	        <div class="col-form offset-md-3 col-md-1">
	        	<label class="col-3" for="street">Retrait</label>
	        </div>
	        
	        <div class="form-group offset-md-1 col-md-7">
	            <div class="form-row">
	                <label class="col-3" for="street">Rue</label>
	                <input type="text" id="Rue" name="rue" class="form-control d-inline offset-1 col-6 col-md-3">
	
	            </div>
	            
	            <div class="form-row mt-2">
	            	<label class="col-3" for="street"> Numero de Rue</label>
                    <input type="text" id="noRue" name="noRue" class="form-control d-inline offset-1 col-6 col-md-3">

                </div>
	            
	            <div class="form-row mt-2">
	                <label class="col-3" for="codePostal">Code postal</label>
	                <input type="text" id="codePostal" name="codePostal" class="form-control d-inline offset-1 col-6 col-md-3" >
	            </div>
	            
	            <div class="form-row mt-2">
	                <label class="col-3" for="ville">Ville</label>
	                <input type="text" id="ville" name="ville" class="form-control d-inline offset-1 col-6 col-md-3">
	            </div>
	        </div>
	    </div>
	</div>

<div class="form-row">
    <input type="submit" class="btn btn-lg btn-block btn-success offset-1 col-4 offset-md-4 col-md-2">
     <a href="" class="offset-1 col-4 offset-md-1 col-md-2">
        <button type="submit" class="btn btn-lg btn-block btn-danger">Annuler</button>
    </a>
</div>

</form>

</main>
<%@ include file="/footer.jsp"%>
</body>
</html>