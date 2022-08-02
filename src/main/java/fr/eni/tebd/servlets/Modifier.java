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



@WebServlet("/Modifier")
public class Modifier extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int noUtilisateur = Integer.parseInt(request.getParameter("noUtilisateur"));
		
		
		String pseudo = request.getParameter("pseudo");
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String email = request.getParameter("email");
		String telephone = request.getParameter("telephone");
		int noRue = Integer.parseInt(request.getParameter("noRue"));
		String rue = request.getParameter("rue");
		String codePostal = request.getParameter("codePostal");
		String ville = request.getParameter("ville");
		String motDePasse = request.getParameter("motDePasse");
		
		
		UtilisateurDAO utilisateurDAO = DAOFactory.getUtilisateurDAO();
		utilisateurDAO.update(new Utilisateur(noUtilisateur,pseudo,nom,prenom,email,telephone,noRue,rue,codePostal,ville,motDePasse));

		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/page/confirmation.jsp");
		rd.forward(request, response);
		
	}
	

}