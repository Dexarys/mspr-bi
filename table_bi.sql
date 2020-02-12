/*
Création des tables BI
Pas de gestion des droits
*/

/* TABLE DE FAIT */
create table ACHAT
();

create table VENTE
();

create table FOURNISSEUR
(
    id int not null,
    nom_fournisseur VARCHAR(50),
    norue VARCHAR(10),
    rue VARCHAR(100),
    cpostal INT,
    ville VARCHAR(100),
    notel VARCHAR(10),
    email VARCHAR(100)
);

create table CLIENT
();

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


