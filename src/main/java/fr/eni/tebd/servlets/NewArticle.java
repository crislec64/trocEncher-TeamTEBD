package fr.eni.tebd.servlets;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.eni.tebd.bo.Article;
import fr.eni.tebd.bo.Utilisateur;
import fr.eni.tebd.dal.ArticleDAO;
import fr.eni.tebd.dal.ArticleDaoJdbcImpl;
import fr.eni.tebd.dal.DAOFactory;

/**
 * Servlet implementation class NewArticle
 */
@WebServlet("/NewArticle")
public class NewArticle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		Utilisateur utilisateur = (Utilisateur) request.getSession().getAttribute("utilisateur");
		
		String nomArticles= request.getParameter("nomArticle");
		String descriptionArticles = request.getParameter("descriptionArticles");
		int noCategories = Integer.parseInt(request.getParameter("noCategories"));
		int prixArticles = Integer.parseInt(request.getParameter("prixArticles"));
		LocalDate debutEncheres = LocalDate.parse(request.getParameter("debutEncheres"));
		LocalDate finEncheres = LocalDate.parse(request.getParameter("finEncheres"));
		int noRue = Integer.parseInt(request.getParameter("noRue"));
		String rue = request.getParameter("rue");
		String codePostal = request.getParameter("codePostal");
		String ville = request.getParameter("ville");
		int noUtilisateur = utilisateur.getNoUtilisateur();
		int statutArticles = 0;
		
		ArticleDAO articleDAO = DAOFactory.getArticleDAO();
		
		articleDAO.insert(new Article(noUtilisateur , nomArticles, descriptionArticles, noCategories, prixArticles, debutEncheres, finEncheres,noRue, rue, codePostal, ville, statutArticles));
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/page/confirmation.jsp");
        rd.forward(request, response);;
		
		
		
	}

	
}
