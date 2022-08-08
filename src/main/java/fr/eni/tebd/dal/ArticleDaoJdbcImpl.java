package fr.eni.tebd.dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.time.LocalDateTime;
import java.util.Date;

import fr.eni.tebd.bo.Article;

public class ArticleDaoJdbcImpl {


	public void insert(Article article) {
		try (Connection con = PersistenceProvider.getConnection();){
			
			
			PreparedStatement stmt = con.prepareStatement("INSERT INTO ARTICLES(nomArticle, descriptionArticle, noCategorie,  urlArticles,"
					+ "prixArticles, debutEncheres, finEncheres, noRue, rue, codePostal, ville)VALUES (?,?,?,?,?,?,?,?,?,?,?)");
			
			stmt.setString(1, article.getNomArticle());
			stmt.setString(2, article.getDescriptionArticle());
			stmt.setString(3, article.getNoCategorie());
			stmt.setString(4, article.getUrlArticles());
			stmt.setString(5, article.getPrixArticles());
			stmt.setDate(6, Date.valueOf(article.getDebutEncheres()));
			stmt.setDate(7, Date.valueOf(article.getFinEncheres()));
			stmt.setInt(8, article.getNoRue());
			stmt.setString(9, article.getRue());
			stmt.setString(10, article.getCodePostal());
			stmt.setString(11, article.getVille());
			
			
			
			stmt.execute();
			
		} catch (Exception e) {
			e.printStackTrace();

		}
	}

	

}