package fr.ecole.ihm;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/demo/inscription")
public class InscriptionServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String prenom = request.getParameter("prenom");
		String nom = request.getParameter("nom");
		
		// System.out.println(prenom);
		// System.out.println(nom);
		
		request.setAttribute("prenom", prenom);
		request.setAttribute("nom", nom);

		request.getRequestDispatcher("/WEB-INF/pages/merci.jsp").forward(request, response);
	}

}
