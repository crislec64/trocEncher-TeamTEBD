package fr.eni.tebd.bo;

public class Utilisateur {

	// Rajout noRue par rapport à la BDD pour envoi postal
	private int noUtilisateur;
	private String pseudo;
	private String nom;
	private String prenom;
	private String email;
	private String telephone;
	private int noRue;
	private String rue;
	private String codePostal;
	private String ville;
	private String motDePasse;
	private int credit;
	private boolean administrateur;

	public int getNoUtilisateur() {
		return noUtilisateur;
	}

	public void setNoUtilisateur(int noUtilisateur) {
		this.noUtilisateur = noUtilisateur;
	}

	public String getPseudo() {
		return pseudo;
	}

	public void setPseudo(String pseudo) {
		this.pseudo = pseudo;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public int getNoRue() {
		return noRue;
	}

	public void setNoRue(int noRue) {
		this.noRue = noRue;
	}

	public String getRue() {
		return rue;
	}

	public void setRue(String rue) {
		this.rue = rue;
	}

	public String getCodePostal() {
		return codePostal;
	}

	public void setCodePostal(String codePostal) {
		this.codePostal = codePostal;
	}

	public String getVille() {
		return ville;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}

	public String getMotDePasse() {
		return motDePasse;
	}

	public void setMotDePasse(String motDePasse) {
		this.motDePasse = motDePasse;
	}

	public int getCredit() {
		return credit;
	}

	public void setCredit(int credit) {
		this.credit = credit;
	}

	public boolean isAdministrateur() {
		return administrateur;
	}

	public void setAdministrateur(boolean administrateur) {
		this.administrateur = administrateur;
	}
		// Constructeur global
	public Utilisateur(int noUtilisateur, String pseudo, String nom, String prenom, String email, String telephone,
			int noRue, String rue, String codePostal, String ville, String motDePasse, int credit,
			boolean administrateur) {
		super();
		this.noUtilisateur = noUtilisateur;
		this.pseudo = pseudo;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.telephone = telephone;
		this.noRue = noRue;
		this.rue = rue;
		this.codePostal = codePostal;
		this.ville = ville;
		this.motDePasse = motDePasse;
		this.credit = credit;
		this.administrateur = administrateur;
	}
		//Constructeur inscription
	public Utilisateur(String pseudo, String nom, String prenom, String email, String telephone, int noRue, String rue,
				String codePostal, String ville, String motDePasse) {
			super();
			this.pseudo = pseudo;
			this.nom = nom;
			this.prenom = prenom;
			this.email = email;
			this.telephone = telephone;
			this.noRue = noRue;
			this.rue = rue;
			this.codePostal = codePostal;
			this.ville = ville;
			this.motDePasse = motDePasse;
		}

	public Utilisateur(int noUtilisateur, String pseudo, String nom, String prenom, String email, String telephone,
			int noRue, String rue, String codePostal, String ville, String motDePasse) {
		super();
		this.noUtilisateur = noUtilisateur;
		this.pseudo = pseudo;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.telephone = telephone;
		this.noRue = noRue;
		this.rue = rue;
		this.codePostal = codePostal;
		this.ville = ville;
		this.motDePasse = motDePasse;
	}

	public Utilisateur(String pseudo, String motDePasse) {
		super();
		this.pseudo = pseudo;
		this.motDePasse = motDePasse;
	}

	public Utilisateur() {

	}

	@Override
	public String toString() {
		return "Utilisateur :" + noUtilisateur + pseudo + nom + prenom + email + telephone + noRue + rue + codePostal
				+ ville + motDePasse + credit + administrateur;
	}

}