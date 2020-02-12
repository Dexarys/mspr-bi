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
();

create table PRODUIT
();

create table EMPLACEMENT
();

create table CATEGORIE
();

create table DEPOT
(
    nom_depot VARCHAR(100),
    norue VARCHAR(10),
    rue VARCHAR(100),
    cpostal INT,
    ville VARCHAR(100)
);

create table CRITERES
();


create table TENDANCES
();


