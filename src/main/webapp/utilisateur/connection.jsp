
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h1>ENI - Enchères</h1>
        <div id="Connection"></div><p>Vous êtes : </p><c:if test="${utilisateur==null}"><p>Déconnecté</p></c:if><p>${utilisateur.pseudo}</p>

        <c:if test="${utilisateur==null}">
        <ul>
        	<li><a href="<c:url value="/index.jsp"/>">Accueil</a>
        	<li><a href="<c:url value="/utilisateur/seConnecter.jsp"/>">Se connecter</a></li>
        	<li><a href="<c:url value="/utilisateur/inscription.jsp"/>">S'inscrire</a></li>
        </ul>
        </c:if>
        <c:if test="${utilisateur!=null}">
        <ul>
        	<li><a href="">Enchères</a></li>
        	<li><a href="<c:url value="/article/newArticle.jsp"/>">Vendre un article</a></li>
			<li><a href="<c:url value="/utilisateur/monProfil.jsp"/>">Mon profil</a></li>
        	<li><a href="<c:url value="/Deconnection"/>">Se déconnecter</a></li>
        </ul>
        </c:if>

