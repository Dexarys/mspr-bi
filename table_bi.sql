/*
Création des tables BI
Pas de gestion des droits
*/

/* TABLE DE FAIT */
create table ACHAT
();

create table VENTE
();


/* DIMENSION */
create table FOURNISSEUR
(
    no_fournisseur int not null,
    nom_fournisseur VARCHAR(50),
    norue VARCHAR(10),
    rue VARCHAR(100),
    cpostal INT,
    ville VARCHAR(100),
    notel VARCHAR(10),
    email VARCHAR(100)
);

create table CLIENT
(
    no_client int not null,
    nom_client VARCHAR(50),
    norue VARCHAR(10),
    rue VARCHAR(100),
    cpostal int,
    ville VARCHAR(100),
    notel VARCHAR(10),
    email VARCHAR(100),
    nom_contact VARCHAR(50)
);

create table TEMPS
(
    id_date int not null,
    jour int,
    mois int,
    annee int,
    trimestre int,
    saison int
);

create table PRODUIT
(
    code_produit VARCHAR(8) not null,
    no_categorie int not null,
    no_emplacement int not null,
    utilisation VARCHAR(50),
    description VARCHAR(100),
    quantite_stock int,
    date_stock TIMESTAMP,
    comment_produit VARCHAR(100),
    longeur NUMERIC,
    hauteur NUMERIC,
    prix_piece_ht numeric
);

create table EMPLACEMENT
(
    no_emplacement int not null,
    hangar int,
    allee int
);

create table CATEGORIE
(
    no_categorie int not null,
    cat_no_categorie int,
    nom_categorie VARCHAR(50)
);

create table DEPOT
(
    no_depot int not null,
    nom_depot VARCHAR(100),
    norue VARCHAR(10),
    rue VARCHAR(100),
    cpostal INT,
    ville VARCHAR(100)
);


