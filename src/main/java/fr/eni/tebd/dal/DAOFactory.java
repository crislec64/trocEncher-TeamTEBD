package fr.eni.tebd.dal;



public abstract class DAOFactory {
	
	public static UtilisateurDAO getUtilisateurDAO() {
		
		return new UtilisateurDaoJdbcImpl();
	}
	
	public static ArticleDAO getArticleDAO() {
		
		return new ArticleDaoJdbcImpl();
	}
	
}
