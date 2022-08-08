package fr.eni.tebd.bo;

import java.time.LocalDate;

public class Article {
	
	private int noArticles;
	private int noUtilisateur;
	private String nomArticles;
	private String descriptionArticles;
	private int noCategories;
	private int prixArticles;
	private LocalDate debutEncheres;
	private LocalDate finEncheres;
	private int noRue;
	private String rue;
	private String codePostal;
	private String ville;
	private int statutArticles;
	
	public int getNoArticles() {
		return noArticles;
	}
	public void setNoArticles(int noArticles) {
		this.noArticles = noArticles;
	}
	public int getNoUtilisateur() {
		return noUtilisateur;
	}
	public void setNoUtilisateur(int noUtilisateur) {
		this.noUtilisateur = noUtilisateur;
	}
	public String getNomArticles() {
		return nomArticles;
	}
	public void setNomArticles(String nomArticles) {
		this.nomArticles = nomArticles;
	}
	public String getDescriptionArticle() {
		return descriptionArticles;
	}
	public void setDescriptionArticles(String designationArticles) {
		this.descriptionArticles = designationArticles;
	}
	public int getNoCategories() {
		return noCategories;
	}
	public void setNoCategories(int noCategories) {
		this.noCategories = noCategories;
	}
	public int getPrixArticles() {
		return prixArticles;
	}
	public void setPrixArticles(int prixArticles) {
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
	public int getStatutArticles() {
		return statutArticles;
	}
	public void setStatutArticles(int statutArticles) {
		this.statutArticles = statutArticles;
	}
	
	public Article(int noArticles, int noUtilisateur, String nomArticles, String descriptionArticles, int noCategories,
			String urlArticles, int prixArticles, LocalDate debutEncheres, LocalDate finEncheres, int noRue, String rue,
			String codePostal, String ville, int statutArticles) {
		super();
		this.noArticles = noArticles;
		this.noUtilisateur = noUtilisateur;
		this.nomArticles = nomArticles;
		this.descriptionArticles = descriptionArticles;
		this.noCategories = noCategories;
		this.prixArticles = prixArticles;
		this.debutEncheres = debutEncheres;
		this.finEncheres = finEncheres;
		this.noRue = noRue;
		this.rue = rue;
		this.codePostal = codePostal;
		this.ville = ville;
		this.statutArticles = statutArticles;
	}
	
	
	//constructeur insert NewArticle
	
	public Article(int noUtilisateur, String nomArticles, String descriptionArticles, int noCategories,
			int prixArticles, LocalDate debutEncheres, LocalDate finEncheres, int noRue, String rue, String codePostal,
			String ville) {
		super();
		this.noUtilisateur = noUtilisateur;
		this.nomArticles = nomArticles;
		this.descriptionArticles = descriptionArticles;
		this.noCategories = noCategories;
		this.prixArticles = prixArticles;
		this.debutEncheres = debutEncheres;
		this.finEncheres = finEncheres;
		this.noRue = noRue;
		this.rue = rue;
		this.codePostal = codePostal;
		this.ville = ville;
	}
	public Article() {
	}
	@Override
	public String toString() {
		return "Article :" + noArticles + noUtilisateur + nomArticles + descriptionArticles + noCategories
				+ prixArticles + debutEncheres + finEncheres + noRue + rue + codePostal + ville + statutArticles;
	}
	
	

}

