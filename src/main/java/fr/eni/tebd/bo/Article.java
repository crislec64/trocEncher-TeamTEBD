package fr.eni.tebd.bo;

import java.util.Date;

public class Article {
	
	private int noArticles;
	private int noUtilisateur;
	private String nomArticles;
	private String designationArticles;
	private int noCategories;
	private String urlArticles;
	private int prixArticles;
	private Date debutEncheres;
	private Date finEncheres;
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
	public String getDesignationArticles() {
		return designationArticles;
	}
	public void setDesignationArticles(String designationArticles) {
		this.designationArticles = designationArticles;
	}
	public int getNoCategories() {
		return noCategories;
	}
	public void setNoCategories(int noCategories) {
		this.noCategories = noCategories;
	}
	public String getUrlArticles() {
		return urlArticles;
	}
	public void setUrlArticles(String urlArticles) {
		this.urlArticles = urlArticles;
	}
	public int getPrixArticles() {
		return prixArticles;
	}
	public void setPrixArticles(int prixArticles) {
		this.prixArticles = prixArticles;
	}
	public Date getDebutEncheres() {
		return debutEncheres;
	}
	public void setDebutEncheres(Date debutEncheres) {
		this.debutEncheres = debutEncheres;
	}
	public Date getFinEncheres() {
		return finEncheres;
	}
	public void setFinEncheres(Date finEncheres) {
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
	public Article(int noArticles, int noUtilisateur, String nomArticles, String designationArticles, int noCategories,
			String urlArticles, int prixArticles, Date debutEncheres, Date finEncheres, int noRue, String rue,
			String codePostal, String ville, int statutArticles) {
		super();
		this.noArticles = noArticles;
		this.noUtilisateur = noUtilisateur;
		this.nomArticles = nomArticles;
		this.designationArticles = designationArticles;
		this.noCategories = noCategories;
		this.urlArticles = urlArticles;
		this.prixArticles = prixArticles;
		this.debutEncheres = debutEncheres;
		this.finEncheres = finEncheres;
		this.noRue = noRue;
		this.rue = rue;
		this.codePostal = codePostal;
		this.ville = ville;
		this.statutArticles = statutArticles;
	}
	
	public Article() {
	}
	@Override
	public String toString() {
		return "Article :" + noArticles + noUtilisateur + nomArticles + designationArticles + noCategories + urlArticles 
				+ prixArticles + debutEncheres + finEncheres + noRue + rue + codePostal + ville + statutArticles;
	}
	
	

}
