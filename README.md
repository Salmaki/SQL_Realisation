 Description
Ce projet consiste à créer une base de données relationnelle pour un blog.
Elle permet de gérer les utilisateurs, les catégories, les articles et les commentaires
tout en respectant les contraintes d’intégrité et les bonnes pratiques SQL.

Tables de la base
- **Utilisateur** : stocke les informations des utilisateurs
- **categorie** : contient les catégories des articles
- **article** : gère les articles publiés par les utilisateurs
- **commentaire** : stocke les commentaires liés aux articles

 Relations
- Un utilisateur peut publier plusieurs articles
- Un article appartient à une seule catégorie
- Un article peut avoir plusieurs commentaires
- Un utilisateur peut écrire plusieurs commentaires

Contraintes
- Clés primaires sur chaque table
- Clés étrangères pour assurer l’intégrité des données
- Index ajoutés sur :
  - `Utilisateur.nom`
  - `article.titre`

 Technologies utilisées
- MySQL
- VS Code

