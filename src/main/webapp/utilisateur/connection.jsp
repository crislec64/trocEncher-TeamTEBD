     <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <div id="Connection"><p>Vous êtes : </p><c:if test="${utilisateur==null}"><p>Déconnecté</p></c:if><p>${utilisateur.pseudo}</p>
        <c:if test="${utilisateur==null}">
        	<a href="<c:url value="utilisateur/seConnecter.jsp"/>">Se connecter</a>
        	<a href="<c:url value="utilisateur/inscription.jsp"/>">S'inscrire</a>
        </c:if>
        
        
        
        
        <c:if test="${utilisateur!=null}">
			<a href="<c:url value="/utilisateur/monProfil.jsp"/>">Mon profil</a>
        	<a href="<c:url value="/Deconnection"/>">Se déconnecter</a>
        </c:if>

        </div>