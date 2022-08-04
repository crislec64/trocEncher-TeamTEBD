<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="filtre">
		<form>
		<fieldset>
		<legend>Filtres :</legend>
			<input type="text" name="recherche" placeholder="Le nom de l'article contient" id="textRechercher" ><br>
			<label for="categorie">Catégorie :</label>
			<select name="categorie" id="categorie">
				<option value="toutes">Toutes</option>
				<option value="informatique">Informatique</option>
				<option value="ameublement">Ameublement</option>
				<option value="vetement">Vêtements</option>
				<option value="sport">Sport&Loisirs</option>
			</select>
		<input type="submit" value="Rechercher" id="boutonSubmit"/>
		</fieldset>
        </form>
        
</div>