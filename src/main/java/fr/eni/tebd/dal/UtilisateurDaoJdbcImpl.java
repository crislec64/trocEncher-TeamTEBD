package fr.eni.tebd.dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import fr.eni.tebd.bo.Utilisateur;


public class UtilisateurDaoJdbcImpl implements UtilisateurDAO {

	private static final String insertSQL = "insert INTO UTILISATEURS (pseudo,nom,prenom,email,telephone,noRue,rue,codePostal,ville,motDePasse) VALUES (?,?,?,?,?,?,?,?,?,?)";
	private static final String controlSQL = "SELECT noUtilisateur,pseudo,nom,prenom,email,telephone,noRue,rue,codePostal,ville,motDePasse,credit,administrateur from UTILISATEURS where pseudo=? AND motDePasse=?";
	private static final String selectByPseudoSQL = "SELECT noUtilisateur,pseudo,nom,prenom,email,telephone,noRue,rue,codePostal,ville,motDePasse,credit,administrateur from UTILISATEURS where pseudo=?";
	private static final String updateByIdentifiantSQL = "update UTILISATEURS set pseudo=?,nom=?,prenom=?,email=?,telephone=?,noRue=?,rue=?,codePostal=?,ville=?,motDePasse=? where noUtilisateur=?";
	private static final String deleteSQL = "DELETE from UTILISATEURS where noUtilisateur=?";

	public void insert(Utilisateur utilisateur) {

		try (Connection con = PersistenceProvider.getConnection();
				PreparedStatement pstmt = con.prepareStatement(insertSQL, PreparedStatement.RETURN_GENERATED_KEYS);)

		{
			pstmt.setString(1, utilisateur.getPseudo());
			pstmt.setString(2, utilisateur.getNom());
			pstmt.setString(3, utilisateur.getPrenom());
			pstmt.setString(4, utilisateur.getEmail());
			pstmt.setString(5, utilisateur.getTelephone());
			pstmt.setInt(6, utilisateur.getNoRue());
			pstmt.setString(7, utilisateur.getRue());
			pstmt.setString(8, utilisateur.getCodePostal());
			pstmt.setString(9, utilisateur.getVille());
			pstmt.setString(10, utilisateur.getMotDePasse());
			pstmt.executeUpdate();

			ResultSet rs = pstmt.getGeneratedKeys();
			if (rs.next()) {
				utilisateur.setNoUtilisateur(rs.getInt(1));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public boolean control(Utilisateur utilisateur) {

		try (Connection con = PersistenceProvider.getConnection();
				PreparedStatement pstmt = con.prepareStatement(controlSQL);)

		{
			pstmt.setString(1, utilisateur.getPseudo());
			pstmt.setString(2, utilisateur.getMotDePasse());
			ResultSet rs = pstmt.executeQuery();
			return rs.next();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;

	}

	public Utilisateur selectByPseudo(String pseudo) {
		Utilisateur utilisateur = null;
		try (Connection con = PersistenceProvider.getConnection();
				PreparedStatement pstmt = con.prepareStatement(selectByPseudoSQL);) {
			pstmt.setString(1, pseudo);

			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {

				utilisateur = new Utilisateur(rs.getInt("noUtilisateur"), rs.getString("pseudo"), rs.getString("nom"),
						rs.getString("prenom"), rs.getString("email"), rs.getString("telephone"), rs.getInt("noRue"),
						rs.getString("rue"), rs.getString("codePostal"), rs.getString("ville"), rs.getString("motDePasse"),
						rs.getInt("credit"), rs.getBoolean("administrateur"));
			}

		} catch (SQLException e) {

		}
		return utilisateur;

	}

	public void update(Utilisateur utilisateur) {

		try (Connection con = PersistenceProvider.getConnection();
				PreparedStatement pstmt = con.prepareStatement(updateByIdentifiantSQL);) {
			pstmt.setString(1, utilisateur.getPseudo());
			pstmt.setString(2, utilisateur.getNom());
			pstmt.setString(3, utilisateur.getPrenom());
			pstmt.setString(4, utilisateur.getEmail());
			pstmt.setString(5, utilisateur.getTelephone());
			pstmt.setInt(6, utilisateur.getNoRue());
			pstmt.setString(7, utilisateur.getRue());
			pstmt.setString(8, utilisateur.getCodePostal());
			pstmt.setString(9, utilisateur.getVille());
			pstmt.setString(10, utilisateur.getMotDePasse());
			pstmt.setInt(11, utilisateur.getNoUtilisateur());
			int resultat = pstmt.executeUpdate();

			if (resultat == 1) {
				System.out.println("Utilisateur modifié");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void delete(int noUtilisateur) {

		try (Connection con = PersistenceProvider.getConnection();
				PreparedStatement pstmt = con.prepareStatement(deleteSQL);) {
			pstmt.setInt(1, noUtilisateur);
			int resultat = pstmt.executeUpdate();

			if (resultat == 1) {
				System.out.println("Utilisateur supprimé");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}