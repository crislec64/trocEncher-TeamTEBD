<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header class="fixed-top">

<div id="divImageLogo">
	<a href="<c:url value="/Index"/>">
		<img src="<c:url value="/img/eniEncheres.jpg"/>" alt="logo ENI Encheres"  width="10%" height="auto">
	</a>
</div>

<c:if test="${utilisateur==null}">
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="<c:url value="/Index"/>">ENI - Enchères</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <form class="d-flex" role="search" method="get" action="<c:url value="/MoteurDeRecherche"/>">
            <input class="form-control me-2" name="motClef" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success" name="motClef" type="submit">Search</button>
          </form>
          
          <div class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Catégories
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="<c:url value="/Filtre?noCategories=0"/>">Toutes</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="<c:url value="/Filtre?noCategories=1"/>">Informatique</a></li>
            <li><a class="dropdown-item" href="<c:url value="/Filtre?noCategories=2"/>">Ameublement</a></li>
            <li><a class="dropdown-item" href="<c:url value="/Filtre?noCategories=3"/>">Vêtements</a></li>
            <li><a class="dropdown-item" href="<c:url value="/Filtre?noCategories=4"/>">Sport&Loisirs</a></li>
          </ul>
        </div>
          
      <ul class="navbar-nav me-auto mb-2 mb-lg-0 ml-auto">
   
        <li class="nav-item"><a class="nav-link active" href="<c:url value="/Index"/>">Accueil</a></li>
        <li class="nav-item"><a class="nav-link" href="<c:url value="/utilisateur/seConnecter.jsp"/>">Se connecter</a></li>
        <li class="nav-item"><a class="nav-link" href="<c:url value="/utilisateur/inscription.jsp"/>">S'inscrire</a></li>
        
      </ul>
      
    </div>
  </div>
</nav>
</c:if>

<c:if test="${utilisateur!=null}">
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="<c:url value="/Index"/>">ENI - Enchères</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    	
    	<div class="collapse navbar-collapse" id="navbarSupportedContent">
        <form class="d-flex" role="search" method="get" action="<c:url value="/MoteurDeRecherche"/>">
            <input class="form-control me-2" name="motClef" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success" name="motClef" type="submit">Search</button>
          </form>
          
           <div class="nav-item dropdown">
          		<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            		Catégories
          		</a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="<c:url value="/Filtre?noCategories=0"/>">Toutes</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="<c:url value="/Filtre?noCategories=1"/>">Informatique</a></li>
            <li><a class="dropdown-item" href="<c:url value="/Filtre?noCategories=2"/>">Ameublement</a></li>
            <li><a class="dropdown-item" href="<c:url value="/Filtre?noCategories=3"/>">Vêtements</a></li>
            <li><a class="dropdown-item" href="<c:url value="/Filtre?noCategories=4"/>">Sport&Loisirs</a></li>
          </ul>
        </div>
          
      <ul class="navbar-nav me-auto mb-2 mb-lg-0 ml-auto">

        <li class="nav-item"><a class="nav-link active" href="<c:url value="/Index"/>">Accueil</a></li>
        <li class="nav-item"><a class="nav-link" href="<c:url value="/newArticle.jsp"/>">Ajouter un article</a></li>
        <li class="nav-item"><a class="nav-link" href="<c:url value="/utilisateur/monProfil.jsp"/>">Mon profil</a></li>
        <li class="nav-item"><a class="nav-link" href="<c:url value="/Deconnection"/>">Se déconnecter</a></li>
        
      </ul>
      
    </div>
  </div>
</nav>
</c:if>

</header>