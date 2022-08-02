package fr.eni.tebd.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.eni.tebd.bo.Utilisateur;
import fr.eni.tebd.dal.DAOFactory;
import fr.eni.tebd.dal.UtilisateurDAO;



@WebServlet("/Connection")
public class Connection extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String pseudo = request.getParameter("pseudo");
		String motDePasse = request.getParameter("motDePasse");

		UtilisateurDAO utilisateurDAO = DAOFactory.getUtilisateurDAO();
		Utilisateur user = new Utilisateur(pseudo, motDePasse);

		if (utilisateurDAO.control(user) == true) {
			Utilisateur utilisateur = utilisateurDAO.selectByPseudo(pseudo);
			request.getSession().setAttribute("utilisateur", utilisateur);

			// Je récupère l'identifiant

			//int noUtilisateur = utilisateur.getNoUtilisateur();

			
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/page/confirmationConnection.jsp");
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/page/erreurConnection.jsp");
			rd.forward(request, response);
		}
	}
	}
