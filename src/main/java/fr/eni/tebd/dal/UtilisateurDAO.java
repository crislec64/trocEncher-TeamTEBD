package fr.eni.tebd.dal;

import fr.eni.tebd.bo.Utilisateur;

public interface UtilisateurDAO {
	public void insert(Utilisateur utilisateur);
	
	public boolean control(Utilisateur utilisateur);
	
	public Utilisateur selectByPseudo(String pseudo);
	
	public void update(Utilisateur utilisateur);
	
	public void delete(int noUtilisateur);


}
