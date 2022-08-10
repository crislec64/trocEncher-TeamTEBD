package fr.eni.tebd.dal;

import java.util.List;

import fr.eni.tebd.bo.Article;

public interface ArticleDAO {

	public void insert(Article article);
	
	public List<Article> selectall();
	
	public List<Article> selectByNoUtilisateur(int noUtilisateur);
	
	public void delete(int noArticle);
	
	public Article selectByNoArticle(int noArticles);
	
}
