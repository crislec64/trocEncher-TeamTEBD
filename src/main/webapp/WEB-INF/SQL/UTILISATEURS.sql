
-------- CREATION DE LA TABLE UTILISATEURS - TROCENCHERES --------

CREATE TABLE UTILISATEURS(
	noUtilisateur	INT		not null		IDENTITY(1,1),
	pseudo VARCHAR(50)		not null,
	nom		VARCHAR(50)		not null,
	prenom		VARCHAR(50)		not null,
	email	VARCHAR(50)		not null CONSTRAINT CK_email CHECK (email LIKE '%___@___%'),
	telephone CHAR(10) not null CHECK (telephone LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	noRue int not null,
	rue VARCHAR(100) not null,
	codePostal VARCHAR(5)  not null,
	ville VARCHAR(50) not null,
	motDePasse VARCHAR(50) not null,
	credit int not null DEFAULT 0,
	administrateur bit not null DEFAULT 0
	CONSTRAINT PK_utilisateurs	PRIMARY KEY(noUtilisateur)
);

	-- SELECTION DE LA TABLE UTILISATEURS - TROCENCHERES --
	SELECT * FROM UTILISATEURS;
	SELECT * FROM ARTICLES;

	-- AJOUT D'UN NOUVEL UTILISATEUR --
	insert INTO UTILISATEURS (pseudo,nom,prenom,email,telephone,noRue,rue,codePostal,ville,motDePasse) VALUES ('Schwarzi','SCHWARZOLD','Arnold','arnold.swharzi@outlook.com','0622436799','24','RUE DES OLIVIERS','34000','MONTPELLIER','azerty');
	insert INTO UTILISATEURS (pseudo,nom,prenom,email,telephone,noRue,rue,codePostal,ville,motDePasse) VALUES ('JackiChan','LEE','BRUCE','bruce_lee22@gmail.Com','0624752344','12','RUE DES EMBRUNS','13008','MARSEILLE','password');
	
	-- AJOUT D'UNE FOREIGN KEY VERS LA TABLE ARTICLES --
	ALTER TABLE COMMANDE ADD CONSTRAINT FK_UTILISATEURS_OBJETS FOREIGN KEY(noUtilisateur) REFERENCES OBJETS(noUtilisateur)

	

SELECT noUtilisateur,pseudo,nom,prenom,email,telephone,noRue,rue,codePostal,ville,motDePasse,credit,administrateur from UTILISATEURS where pseudo='Schwarzi'

update UTILISATEURS set pseudo='Swharzi',nom='SCHWARZOLD',prenom='Jean',email='arnold.swharzi@outlook.com',telephone='0622436799',noRue='24',rue='RUE DES OLIVIERS',codePostal='34000',ville='MONTPELLIER',motDePasse='azerty' where noUtilisateur=1





-------- CREATION DE LA TABLE CATEGORIES - TROCENCHERES --------
CREATE TABLE CATEGORIES (
	noCategorie int IDENTITY(1,1) NOT NULL constraint categorie_pk PRIMARY KEY ,
	libelle VARCHAR(30) NOT NULL CONSTRAINT CK_CATEGORIES_LIBELLE CHECK (libelle in( 'informatique', 'ammeublement','vetement','sport'))

);

--------AJOUT DES CATEGORIES-----------------
INSERT INTO CATEGORIES (libelle) VALUES ('informatique');
INSERT INTO CATEGORIES (libelle) VALUES ('ammeublement');
INSERT INTO CATEGORIES (libelle) VALUES ('vetement');
INSERT INTO CATEGORIES (libelle) VALUES ('sport');






-------- CREATION DE LA TABLE ARTICLES - TROCENCHERES --------

CREATE TABLE ARTICLES(
	noArticles	INT		not null		IDENTITY(1,1),
	noUtilisateur INT not null CONSTRAINT FK_ARTICLES_UTILISATEURS FOREIGN KEY(noUtilisateur) REFERENCES UTILISATEURS(noUtilisateur) ,
	nomArticles		VARCHAR(50)		not null,	
	descriptionArticles		VARCHAR(255)		not null,
	noCategorie INT not null CONSTRAINT FK_ARTICLES_CATEGORIES FOREIGN KEY (noCategorie) REFERENCES categories(noCategorie),
	urlArticles u(150) not null,
	prixArticles int not null,
	debutEncheres date not null,
	finEncheres date not null,
	rue VARCHAR(100) not null,
	codePostal CHAR(5)  not null CHECK (codePostal LIKE '[0-9][0-9][0-9][0-9][0-9]'),
	ville VARCHAR(50) not null,
	CONSTRAINT PK_ARTICLES	PRIMARY KEY(noArticles)
	);

INSERT INTO ARTICLES (noUtilisateur,nomArticles,descriptionArticles,noCategorie,urlArticles,prixArticles,debutEncheres,finEncheres,rue,codePostal,ville) VALUES (2,'PC Gamer','Un super Ordinateur','1','http://monpc.jpg','255','2022-08-03','2022-08-15',(SELECT rue FROM UTILISATEURS WHERE noUtilisateur=2),(SELECT codePostal FROM UTILISATEURS WHERE noUtilisateur=2),(SELECT ville FROM UTILISATEURS WHERE noUtilisateur=2))




-------- CREATION DE LA TABLE RETRAITS - TROCENCHERES --------

CREATE TABLE RETRAITS (
	noArticles INT not null,
	rue VARCHAR(30) NOT NULL,
	codePostal CHAR(5)  not null CHECK (codePostal LIKE '[0-9][0-9][0-9][0-9][0-9]'),
	ville VARCHAR(50) not null
);




-------- CREATION DE LA TABLE ENCHERES - TROCENCHERES --------

CREATE TABLE ENCHERES(
	noUtilisateur INT not null CONSTRAINT FK_ENCHERES_UTILISATEURS FOREIGN KEY(noUtilisateur) REFERENCES UTILISATEURS(noUtilisateur),
	noArticles	INT		not null CONSTRAINT FK_ENCHERES_ARTICLES FOREIGN KEY(noArticles) REFERENCES ARTICLES(noArticles),
	date_enchere DATETIME not null,
	montant_enchere INT NOT NULL
);




-- SUPPRESSION DES TABLES - TROCENCHERES --
	DROP TABLE UTILISATEURS;
	DROP TABLE CATEGORIES;
	DROP TABLE ARTICLES;
	DROP TABLE RETRAITS;
	DROP TABLE ENCHERES;


SELECT * FROM CATEGORIES;