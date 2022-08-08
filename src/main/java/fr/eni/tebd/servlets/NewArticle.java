package fr.eni.tebd.servlets;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.eni.tebd.bo.Article;
import fr.eni.tebd.dal.ArticleDaoJdbcImpl;

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
		
		String nomArticle = request.getParameter("nomArticle");
		String descriptionArticle = request.getParameter("descriptionArticle");
		String noCategorie = request.getParameter("noCatégorie");
		String urlArticles = request.getParameter("urlArticles");
		String prixArticles = request.getParameter("prixArticles");
		LocalDate debutEncheres = LocalDate.parse(request.getParameter("debutEncheres"));
		LocalDate finEncheres = LocalDate.parse(request.getParameter("finEncheres"));
		int noRue = Integer.parseInt(request.getParameter("noRue"));
		String rue = request.getParameter("rue");
		String codePostal = request.getParameter("codePostal");
		String ville = request.getParameter("ville");
		
		ArticleDaoJdbcImpl daoArticle = new ArticleDaoJdbcImpl();
		
		daoArticle.insert(new Article(nomArticle, descriptionArticle,noCategorie,urlArticles,prixArticles, debutEncheres, finEncheres,noRue, rue, codePostal, ville));
		doGet(request, response);
	}

}
