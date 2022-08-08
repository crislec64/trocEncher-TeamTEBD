package fr.eni.tebd.bo;

import java.time.LocalDate;

public class Article {
	private String nomArticle;
	private String descriptionArticle;
	private String noCategorie;
	private String urlArticles;
	private String prixArticles;
	private LocalDate debutEncheres;
	private LocalDate finEncheres;
	private  int noRue;
	private  String rue;
	private  String codePostal;
	private  String ville;
	
	
	

	public Article(String nomArticle, String descriptionArticle, String noCategorie, String urlArticles,
			String prixArticles, LocalDate debutEncheres, LocalDate finEncheres, int noRue, String rue,
			String codePostal, String ville) {
		this.nomArticle = nomArticle;
		this.descriptionArticle = descriptionArticle;
		this.noCategorie = noCategorie;
		this.urlArticles = urlArticles;
		this.prixArticles = prixArticles;
		this.debutEncheres = debutEncheres;
		this.finEncheres = finEncheres;
		this.noRue = noRue;
		this.rue = rue;
		this.codePostal = codePostal;
		this.ville = ville;
	}



	public String getNomArticle() {
		return nomArticle;
	}



	public void setNomArticle(String nomArticle) {
		this.nomArticle = nomArticle;
	}



	public String getDescriptionArticle() {
		return descriptionArticle;
	}



	public void setDescriptionArticle(String descriptionArticle) {
		this.descriptionArticle = descriptionArticle;
	}



	public String getNoCategorie() {
		return noCategorie;
	}



	public void setNoCategorie(String noCategorie) {
		this.noCategorie = noCategorie;
	}



	public String getUrlArticles() {
		return urlArticles;
	}



	public void setUrlArticles(String urlArticles) {
		this.urlArticles = urlArticles;
	}



	public String getPrixArticles() {
		return prixArticles;
	}



	public void setPrixArticles(String prixArticles) {
		this.prixArticles = prixArticles;
	}



	public LocalDate getDebutEncheres() {
		return debutEncheres;
	}



	public void setDebutEncheres(LocalDate debutEncheres) {
		this.debutEncheres = debutEncheres;
	}


	

	public LocalDate getFinEncheres() {
		return finEncheres;
	}



	public void setFinEncheres(LocalDate finEncheres) {
		this.finEncheres = finEncheres;
	}



	public int getNoRue() {
		return noRue;
	}



	public void setNoRue(int noRue) {
		this.noRue = noRue;
	}



	public String getRue() {
		return rue;
	}



	public void setRue(String rue) {
		this.rue = rue;
	}



	public String getCodePostal() {
		return codePostal;
	}



	public void setCodePostal(String codePostal) {
		this.codePostal = codePostal;
	}



	public String getVille() {
		return ville;
	}



	public void setVille(String ville) {
		this.ville = ville;
	}



	@Override
	public String toString() {
		return "Article [nomArticle=" + nomArticle + ", descriptionArticle=" + descriptionArticle + ", noCategorie="
				+ noCategorie + ", urlArticles=" + urlArticles + ", prixArticles=" + prixArticles + ", debutEncheres="
				+ debutEncheres + ", finEncheres=" + finEncheres + ", noRue=" + noRue + ", rue=" + rue + ", codePostal="
				+ codePostal + ", ville=" + ville + "]";
	}

	
	
}
	