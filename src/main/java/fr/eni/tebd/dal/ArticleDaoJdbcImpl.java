package fr.eni.tebd.dal;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import fr.eni.tebd.bo.Article;


public class ArticleDaoJdbcImpl implements ArticleDAO {

	private static final String insertSQL = "INSERT INTO ARTICLES(nomArticles, descriptionArticles, noCategorie, prixArticles, debutEncheres, finEncheres, noRue, rue, codePostal, ville, noUtilisateur,statutArticles)VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
	private static final String selectAllSQL = "SELECT noArticles, noUtilisateur, nomArticles, descriptionArticles, noCategorie, prixArticles, debutEncheres, finEncheres, noRue, rue, codePostal, ville, statutArticles FROM ARTICLES ORDER BY finEncheres";
	private static final String deleteSQL = "DELETE FROM ARTICLES where noArticles=?";
	private static final String selectByNoUtilisateur = "SELECT noArticles, noUtilisateur, nomArticles, descriptionArticles, noCategorie, prixArticles, debutEncheres, finEncheres, noRue, rue, codePostal, ville, statutArticles FROM ARTICLES WHERE noUtilisateur = ? ORDER BY finEncheres";
	private static final String selectByNoArticle = "SELECT noArticles, noUtilisateur, nomArticles, descriptionArticles, noCategorie, prixArticles, debutEncheres, finEncheres, noRue, rue, codePostal, ville, statutArticles FROM ARTICLES WHERE noArticles = ?";
	private static final String selectByNoCategories ="SELECT noArticles, noUtilisateur, nomArticles, descriptionArticles, noCategorie, prixArticles, debutEncheres, finEncheres, noRue, rue, codePostal, ville, statutArticles FROM ARTICLES WHERE noCategorie = ? ORDER BY finEncheres";
	private static final String selectAllByMotClef ="SELECT noArticles, noUtilisateur, nomArticles, descriptionArticles, noCategorie, prixArticles, debutEncheres, finEncheres, noRue, rue, codePostal, ville, statutArticles FROM ARTICLES WHERE nomArticles like ? OR descriptionArticles like ? ORDER BY finEncheres";
	
	public void insert(Article article) {
		try (Connection con = PersistenceProvider.getConnection();PreparedStatement pstmt = con.prepareStatement(insertSQL);){
		
			pstmt.setString(1, article.getNomArticles());
			pstmt.setString(2, article.getDescriptionArticles());
			pstmt.setInt(3, article.getNoCategories());
			pstmt.setInt(4, article.getPrixArticles());
			pstmt.setDate(5, Date.valueOf(article.getDebutEncheres()));
			pstmt.setDate(6, Date.valueOf(article.getFinEncheres()));
			pstmt.setInt(7, article.getNoRue());
			pstmt.setString(8, article.getRue());
			pstmt.setString(9, article.getCodePostal());
			pstmt.setString(10, article.getVille());
			pstmt.setInt(11, article.getNoUtilisateur());
			pstmt.setInt(12, 0);
			
			pstmt.execute();
			
		} catch (Exception e) {
			e.printStackTrace();

		}
		
	}
	
	public List<Article> selectall() {
		
		ArrayList<Article> articles = new ArrayList<Article>();
		
		try(Connection con = PersistenceProvider.getConnection();Statement stmt = con.createStatement();ResultSet rs = 	stmt.executeQuery(selectAllSQL);){
			
		while (rs.next()) {
			int noArticles = rs.getInt(1);
			int noUtilisateur = rs.getInt(2);
			String nomArticles = rs.getString(3);
			String descriptionArticles = rs.getString(4);
			int noCategories = rs.getInt(5);
			int prixArticles = rs.getInt(6);
			String debutsEncheresString = rs.getString(7);
			LocalDate debutEncheres = LocalDate.parse(debutsEncheresString);
			String finEncheresString = rs.getString(8);
			LocalDate finEncheres = LocalDate.parse(finEncheresString);
			int noRue = rs.getInt(9);		
			String rue = rs.getString(10);
			String codePostal = rs.getString(11);
			String ville = rs.getString(12);
			int statutArticles = rs.getInt(13);
						
			articles.add(new Article(noArticles, noUtilisateur, nomArticles, descriptionArticles, noCategories, prixArticles, debutEncheres, finEncheres, noRue, rue, codePostal, ville, statutArticles));
		}
		
		
		
		} catch (Exception e) {
			e.printStackTrace();

		}
		
		return articles;
	}
	
	public List<Article> selectByNoUtilisateur(int NoUtilisateur) {
		
		ArrayList<Article> listeArticles = new ArrayList<Article>();
		
		try(Connection con = PersistenceProvider.getConnection();PreparedStatement pstmt = con.prepareStatement(selectByNoUtilisateur);){
		
		pstmt.setInt(1, NoUtilisateur);
		
		ResultSet rs = pstmt.executeQuery();
			
		while (rs.next()) {
			int noArticles = rs.getInt(1);
			int noUtilisateur = rs.getInt(2);
			String nomArticles = rs.getString(3);
			String descriptionArticles = rs.getString(4);
			int noCategories = rs.getInt(5);
			int prixArticles = rs.getInt(6);
			String debutsEncheresString = rs.getString(7);
			LocalDate debutEncheres = LocalDate.parse(debutsEncheresString);
			String finEncheresString = rs.getString(8);
			LocalDate finEncheres = LocalDate.parse(finEncheresString);
			int noRue = rs.getInt(9);		
			String rue = rs.getString(10);
			String codePostal = rs.getString(11);
			String ville = rs.getString(12);
			int statutArticles = rs.getInt(13);
						
			listeArticles.add(new Article(noArticles, noUtilisateur, nomArticles, descriptionArticles, noCategories, prixArticles, debutEncheres, finEncheres, noRue, rue, codePostal, ville, statutArticles));
		}
		
		
		
		} catch (Exception e) {
			e.printStackTrace();

		}
		
		return listeArticles;
	}
	
	public void delete(int noArticles) {

		try (Connection con = PersistenceProvider.getConnection();
				PreparedStatement pstmt = con.prepareStatement(deleteSQL);) {
			pstmt.setInt(1, noArticles);
			pstmt.executeUpdate();

			

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Article selectByNoArticle(int noArticles) {
		
		Article article = null;
		
		try(Connection con = PersistenceProvider.getConnection();PreparedStatement pstmt = con.prepareStatement(selectByNoArticle);){
			
			pstmt.setInt(1, noArticles);
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				article = new Article(rs.getInt("noArticles"), rs.getInt("noUtilisateur"), rs.getString("nomArticles"),
                        rs.getString("descriptionArticles"), rs.getInt("noCategorie"), rs.getInt("prixArticles"),
                        LocalDate.parse(rs.getString("debutEncheres")), LocalDate.parse(rs.getString("finEncheres")),
                        rs.getInt("noRue"), rs.getString("rue"), rs.getString("codePostal"), rs.getString("ville"),
                        rs.getInt("statutArticles"));
			}else {
			
			System.out.println("Article not found");}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return article;
	}

	
	public List<Article> selectByNoCategories(int NoCategories) {
		
		ArrayList<Article> articles = new ArrayList<Article>();
		
		try(Connection con = PersistenceProvider.getConnection();PreparedStatement pstmt = con.prepareStatement(selectByNoCategories);){
		
		pstmt.setInt(1, NoCategories);

		ResultSet rs = pstmt.executeQuery();
			
		while (rs.next()) {
			int noArticles = rs.getInt(1);
			int noUtilisateur = rs.getInt(2);
			String nomArticles = rs.getString(3);
			String descriptionArticles = rs.getString(4);
			int noCategories = rs.getInt(5);
			int prixArticles = rs.getInt(6);
			String debutsEncheresString = rs.getString(7);
			LocalDate debutEncheres = LocalDate.parse(debutsEncheresString);
			String finEncheresString = rs.getString(8);
			LocalDate finEncheres = LocalDate.parse(finEncheresString);
			int noRue = rs.getInt(9);		
			String rue = rs.getString(10);
			String codePostal = rs.getString(11);
			String ville = rs.getString(12);
			int statutArticles = rs.getInt(13);
						
			articles.add(new Article(noArticles, noUtilisateur, nomArticles, descriptionArticles, noCategories, prixArticles, debutEncheres, finEncheres, noRue, rue, codePostal, ville, statutArticles));
		}
		
		
		
		} catch (Exception e) {
			e.printStackTrace();

		}
		
		return articles;
	}
	
	public List<Article> selectAllByMotClef(String motClef){
		
		ArrayList<Article> articles = new ArrayList<Article>();
		
		try(Connection con = PersistenceProvider.getConnection();PreparedStatement pstmt = con.prepareStatement(selectAllByMotClef);){
		
		pstmt.setString(1, "%" + motClef + "%");
		pstmt.setString(2, "%" + motClef + "%");
		
		ResultSet rs = pstmt.executeQuery();
			
		while (rs.next()) {
			int noArticles = rs.getInt(1);
			int noUtilisateur = rs.getInt(2);
			String nomArticles = rs.getString(3);
			String descriptionArticles = rs.getString(4);
			int noCategories = rs.getInt(5);
			int prixArticles = rs.getInt(6);
			String debutsEncheresString = rs.getString(7);
			LocalDate debutEncheres = LocalDate.parse(debutsEncheresString);
			String finEncheresString = rs.getString(8);
			LocalDate finEncheres = LocalDate.parse(finEncheresString);
			int noRue = rs.getInt(9);		
			String rue = rs.getString(10);
			String codePostal = rs.getString(11);
			String ville = rs.getString(12);
			int statutArticles = rs.getInt(13);
						
			articles.add(new Article(noArticles, noUtilisateur, nomArticles, descriptionArticles, noCategories, prixArticles, debutEncheres, finEncheres, noRue, rue, codePostal, ville, statutArticles));
		}
		
		
		
		} catch (Exception e) {
			e.printStackTrace();

		}
		
		return articles;
	}
}