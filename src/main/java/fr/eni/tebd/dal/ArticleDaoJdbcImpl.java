package fr.eni.tebd.dal;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import fr.eni.tebd.bo.Article;

public class ArticleDaoJdbcImpl implements ArticleDAO {


	public void insert(Article article) {
		try (Connection con = PersistenceProvider.getConnection();){
			
			
			PreparedStatement pstmt = con.prepareStatement("INSERT INTO ARTICLES(nomArticles, descriptionArticles, noCategorie, prixArticles, debutEncheres, finEncheres, noRue, rue, codePostal, ville, noUtilisateur)VALUES (?,?,?,?,?,?,?,?,?,?,?)");
			
			pstmt.setString(1, article.getNomArticles());
			pstmt.setString(2, article.getDescriptionArticle());
			pstmt.setInt(3, article.getNoCategories());
			pstmt.setInt(4, article.getPrixArticles());
			pstmt.setDate(5, Date.valueOf(article.getDebutEncheres()));
			pstmt.setDate(6, Date.valueOf(article.getFinEncheres()));
			pstmt.setInt(7, article.getNoRue());
			pstmt.setString(8, article.getRue());
			pstmt.setString(9, article.getCodePostal());
			pstmt.setString(10, article.getVille());
			pstmt.setInt(11, article.getNoUtilisateur());
			
			
			
			pstmt.execute();
			
		} catch (Exception e) {
			e.printStackTrace();

		}
		
	}
	
	public List<Article> selectall() {
		
		ArrayList<Article> listeArticles = new ArrayList<Article>();
		
		try(Connection con = PersistenceProvider.getConnection();){
				
		createStatement stmt = con.createStarement("SELECT ALL FROM ARTICLES");
		
		return.this
		
		} catch (Exception e) {
			e.printStackTrace();

		}
		
		
	}
	

}