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
		
		Utilisateur utilisateur = (Utilisateur) request.getSession().getAttribute("utilisateur");
		
		if(utilisateur!=null) {
	        utilisateur.setPseudo(request.getParameter("pseudo"));
	        utilisateur.setNom(request.getParameter("nom"));
	        utilisateur.setPrenom(request.getParameter("prenom"));
	        utilisateur.setEmail(request.getParameter("email"));
	        utilisateur.setTelephone(request.getParameter("telephone"));
	        utilisateur.setNoRue(Integer.parseInt(request.getParameter("noRue")));
	        utilisateur.setRue(request.getParameter("rue"));
	        utilisateur.setCodePostal(request.getParameter("codePostal"));
	        utilisateur.setVille(request.getParameter("ville"));
	        utilisateur.setMotDePasse(request.getParameter("motDePasse"));
	        
	        
	        UtilisateurDAO utilisateurDAO = DAOFactory.getUtilisateurDAO();
	        utilisateurDAO.update(utilisateur);
		} 

		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/page/confirmation.jsp");
		rd.forward(request, response);
		
	}
	

}