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
import fr.eni.tebd.dal.ArticleDAO;
import fr.eni.tebd.dal.DAOFactory;

@WebServlet("/AfficherUnArticle")
public class AfficherUnArticle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		
		int noArticles = Integer.parseInt(request.getParameter("id"));
		
		ArticleDAO articleDAO = DAOFactory.getArticleDAO();
		Article article = articleDAO.selectByNoArticle(noArticles);
		
		request.getSession().setAttribute("article", article);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/article/afficherUnArticle.jsp");
		rd.forward(request, response);
	}
}