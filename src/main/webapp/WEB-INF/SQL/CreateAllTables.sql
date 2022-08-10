CREATE TABLE UTILISATEURS(
    noUtilisateur    INT        not null        IDENTITY(1,1),
    pseudo VARCHAR(50)        not null,
    nom        VARCHAR(50)        not null,
    prenom        VARCHAR(50)        not null,
    email    VARCHAR(50)        not null CONSTRAINT CK_email CHECK (email LIKE '%___@___%'),
    telephone VARCHAR(10) not null,
    noRue int not null,
    rue VARCHAR(100) not null,
    codePostal VARCHAR(5)  not null,
    ville VARCHAR(50) not null,
    motDePasse VARCHAR(50) not null,
    credit int not null DEFAULT 0,
    administrateur bit not null DEFAULT 0
    CONSTRAINT PK_utilisateurs    PRIMARY KEY(noUtilisateur)
);

CREATE TABLE CATEGORIES (
    noCategorie int IDENTITY(1,1) NOT NULL constraint categorie_pk PRIMARY KEY ,
    libelle VARCHAR(30) NOT NULL CONSTRAINT CK_CATEGORIES_LIBELLE CHECK (libelle in( 'informatique', 'ameublement','vetement','sport'))

);

CREATE TABLE ARTICLES(
    noArticles    INT        not null        IDENTITY(1,1),
    noUtilisateur INT not null CONSTRAINT FK_ARTICLES_UTILISATEURS FOREIGN KEY(noUtilisateur) REFERENCES UTILISATEURS(noUtilisateur) ,
    nomArticles        VARCHAR(50)        not null,    
    descriptionArticles        VARCHAR(255)        not null,
    noCategorie INT not null CONSTRAINT FK_ARTICLES_CATEGORIES FOREIGN KEY (noCategorie) REFERENCES categories(noCategorie),
    prixArticles INT not null,
    debutEncheres DATE not null,
    finEncheres DATE not null,
	noRue INT not null,
    rue VARCHAR(100) not null,
    codePostal VARCHAR(5)  not null,
    ville VARCHAR(50) not null,
	statutArticles INT not null,
    CONSTRAINT PK_ARTICLES    PRIMARY KEY(noArticles)
);

CREATE TABLE RETRAITS (
    noArticles INT not null,
    rue VARCHAR(30) NOT NULL,
    codePostal VARCHAR(5)  not null,
    ville VARCHAR(50) not null
);

CREATE TABLE ENCHERES(
    noUtilisateur INT not null CONSTRAINT FK_ENCHERES_UTILISATEURS FOREIGN KEY(noUtilisateur) REFERENCES UTILISATEURS(noUtilisateur),
    noArticles    INT        not null CONSTRAINT FK_ENCHERES_ARTICLES FOREIGN KEY(noArticles) REFERENCES ARTICLES(noArticles),
    date_enchere DATETIME not null,
    montant_enchere INT NOT NULL
);