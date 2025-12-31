Create Database IF NOT EXISTS Sql_Blog character set utf8mb4 collate utf8mb4_general_ci;
use sql_blog;
create table IF NOT EXISTS Utilisateur (
	idUtilisateur INT auto_increment primary key,
    nom varchar(45) not null,
    email varchar(100) unique not null, 
    mot_de_passe varchar(255) not null
);
create table categorie (
	idCategorie INT auto_increment primary key,
    nom_categorie varchar(45) not null,
    decription text not null
);
create table article (
	idArticle INT auto_increment primary key,
    titre varchar(100) not null,
    contenu text not null,
    date_publication date,
    statut boolean default true,
    idUtilisateur INT not null,
    idCategorie INT not null,
    foreign key (idUtilisateur) references Utilisateur(idUtilisateur),
    foreign key (idCategorie) references categorie(idCategorie)
    );
create table commentaire (
	idCommentaire INT auto_increment primary key,
    contenu text not null,
    date_publication date,
    idArticle INT not null,
    idUtilisateur INT not null,
    foreign key (idArticle) references article(idArticle),
    foreign key (idUtilisateur) references Utilisateur(idUtilisateur)
    );
alter table Utilisateur ADD INDEX index_nom (nom);
alter table article ADD INDEX index_titre (titre);

INSERT INTO Utilisateur (nom, email, mot_de_passe) VALUES
('Ahmed Benali', 'ahmed@gmail.com', 'pass123'),
('Sara El Amrani', 'sara@gmail.com', 'pass456'),
('Youssef Haddad', 'youssef@gmail.com', 'pass789');
INSERT INTO categorie (nom_categorie, decription) VALUES
('Technologie', 'Articles liés à la technologie et au développement'),
('Education', 'Contenus éducatifs et pédagogiques'),
('Lifestyle', 'Articles sur la vie quotidienne');
INSERT INTO categorie (nom_categorie, decription) VALUES
('Technologie', 'Articles liés à la technologie et au développement'),
('Education', 'Contenus éducatifs et pédagogiques'),
('Lifestyle', 'Articles sur la vie quotidienne');
INSERT INTO article (titre, contenu, date_publication, statut, idUtilisateur, idCategorie) VALUES
(
  'Introduction au HTML',
  'Le HTML est le langage de base pour créer des pages web.',
  '2025-01-10',
  true,
  1,
  1
),
(
  'Apprendre le SQL',
  'Le SQL permet de gérer les bases de données relationnelles.',
  '2025-01-12',
  true,
  2,
  2
),
(
  'Organisation du temps',
  'Bien organiser son temps améliore la productivité.',
  '2025-01-15',
  true,
  3,
  3
);
INSERT INTO commentaire (contenu, date_publication, idArticle, idUtilisateur) VALUES
(
  'Article très intéressant, merci !',
  '2025-01-16',
  1,
  2
),
(
  'Explication claire et simple.',
  '2025-01-17',
  2,
  1
),
(
  'J’ai beaucoup appris avec cet article.',
  '2025-01-18',
  3,
  3
);