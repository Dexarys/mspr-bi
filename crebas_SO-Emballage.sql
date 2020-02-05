/* ============================================================= */
/* suppression du compte utilisateur so_emballage		 */
/*      ignorez l'ereur si celui-ci n'existait pas 		 */
/* cr�ation du compte utilisateur so_emballage			 */
/* attribution de droits au compte utilisateur so_emballage	 */
/* connexion avec le compte utilisateur so_emballage		 */
/* ============================================================= */


/*==============================================================*/
/* Table : ACHAT                                                */
/*==============================================================*/
create table ACHAT 
(
   NO_ACHAT             NUMBER(6)            not null,
   NO_FOURNISSEUR       NUMBER(3)            not null,
   DATE_ACHAT           DATE,
   COMMENT_ACHAT        VARCHAR2(100),
   constraint PK_ACHAT primary key (NO_ACHAT)
);

/*==============================================================*/
/* Table : CATEGORIE                                            */
/*==============================================================*/
create table CATEGORIE 
(
   NO_CATEGORIE         NUMBER(2)            not null,
   CAT_NO_CATEGORIE     NUMBER(2),
   NOM_CATEGORIE        VARCHAR2(50),
   constraint PK_CATEGORIE primary key (NO_CATEGORIE)
);

/*==============================================================*/
/* Table : CLIENT                                               */
/*==============================================================*/
create table CLIENT 
(
   NO_CLIENT            NUMBER(6)            not null,
   NOM_CLIENT           VARCHAR2(50),
   NORUE                VARCHAR2(10),
   RUE                  VARCHAR2(100),
   CPOSTAL              NUMBER(5),
   VILLE                VARCHAR2(100),
   NOTEL                VARCHAR2(10),
   EMAIL                VARCHAR2(100),
   NOM_CONTACT          VARCHAR2(50),
   constraint PK_CLIENT primary key (NO_CLIENT)
);

/*==============================================================*/
/* Table : COMMANDE                                             */
/*==============================================================*/
create table COMMANDE 
(
   NO_COMMANDE          NUMBER(6)            not null,
   NO_CLIENT            NUMBER(6)            not null,
   DATE_COMMANDE        DATE,
   constraint PK_COMMANDE primary key (NO_COMMANDE)
);

/*==============================================================*/
/* Table : COMPOSER                                             */
/*==============================================================*/
create table COMPOSER 
(
   CODE_PRODUIT         VARCHAR2(8)          not null,
   NO_MATIERE           NUMBER(3)            not null,
   constraint PK_COMPOSER primary key (CODE_PRODUIT, NO_MATIERE)
);

/*==============================================================*/
/* Table : DETAIL_ACHAT                                         */
/*==============================================================*/
create table DETAIL_ACHAT 
(
   CODE_PRODUIT         VARCHAR2(8)          not null,
   NO_ACHAT             NUMBER(6)            not null,
   QUANTITE_ACHAT       NUMBER(4),
   constraint PK_DETAIL_ACHAT primary key (CODE_PRODUIT, NO_ACHAT)
);

/*==============================================================*/
/* Table : DETAIL_COMMANDE                                      */
/*==============================================================*/
create table DETAIL_COMMANDE 
(
   CODE_PRODUIT         VARCHAR2(8)          not null,
   NO_COMMANDE          NUMBER(6)            not null,
   QUANTITE_COMMANDE    NUMBER(4),
   constraint PK_DETAIL_COMMANDE primary key (CODE_PRODUIT, NO_COMMANDE)
);

/*==============================================================*/
/* Table : DETAIL_LIVR_C                                        */
/*==============================================================*/
create table DETAIL_LIVR_C 
(
   CODE_PRODUIT         VARCHAR2(8)          not null,
   NO_LIVRAISON_C       NUMBER(6)            not null,
   QUANTITE_LIVR_C      NUMBER(4),
   constraint PK_DETAIL_LIVR_C primary key (CODE_PRODUIT, NO_LIVRAISON_C)
);

/*==============================================================*/
/* Table : DETAIL_LIVR_F                                        */
/*==============================================================*/
create table DETAIL_LIVR_F 
(
   CODE_PRODUIT         VARCHAR2(8)          not null,
   NO_LIVRAISON_F       NUMBER(6)            not null,
   QUANTITE_LIVR_F      NUMBER(4),
   constraint PK_DETAIL_LIVR_F primary key (CODE_PRODUIT, NO_LIVRAISON_F)
);

/*==============================================================*/
/* Table : EMPLACEMENT                                          */
/*==============================================================*/
create table EMPLACEMENT 
(
   NO_EMPLACEMENT       NUMBER(3)            not null,
   HANGAR               NUMBER(1),
   ALLEE                NUMBER(2),
   constraint PK_EMPLACEMENT primary key (NO_EMPLACEMENT)
);

/*==============================================================*/
/* Table : FOURNISSEUR                                          */
/*==============================================================*/
create table FOURNISSEUR 
(
   NO_FOURNISSEUR       NUMBER(3)            not null,
   NOM_FOURNISSEUR      VARCHAR2(50),
   NORUE                VARCHAR2(10),
   RUE                  VARCHAR2(100),
   CPOSTAL              NUMBER(5),
   VILLE                VARCHAR2(100),
   NOTEL                VARCHAR2(10),
   EMAIL                VARCHAR2(100),
   constraint PK_FOURNISSEUR primary key (NO_FOURNISSEUR)
);

/*==============================================================*/
/* Table : LIVRAISON_F                                         */
/*==============================================================*/
create table LIVRAISON_F 
(
   NO_LIVRAISON_F       NUMBER(6)            not null,
   NO_ACHAT             NUMBER(6)            not null,
   DATE_LIVRAISON_F     DATE,
   constraint PK_LIVRAISON_F primary key (NO_LIVRAISON_F)
);

/*==============================================================*/
/* Table : LIVRAISON_C                                          */
/*==============================================================*/
create table LIVRAISON_C 
(
   NO_LIVRAISON_C       NUMBER(6)            not null,
   NO_COMMANDE          NUMBER(6)            not null,
   DATE_LIVRAISON_C     DATE,
   constraint PK_LIVRAISON_C primary key (NO_LIVRAISON_C)
);

/*==============================================================*/
/* Table : MATIERE                                              */
/*==============================================================*/
create table MATIERE 
(
   NO_MATIERE           NUMBER(3)            not null,
   NOM_MATIERE          VARCHAR2(70),
   constraint PK_MATIERE primary key (NO_MATIERE)
);

/*==============================================================*/
/* Table : MOUVEMENT_STOCK                                      */
/*==============================================================*/
create table MOUVEMENT_STOCK 
(
   NO_MOUVEMENT         NUMBER(6)            not null,
   CODE_PRODUIT         VARCHAR2(8)          not null,
   TYPE_MOUVEMENT       CHAR(1),
   DATE_MOUVEMENT       DATE,
   QUANTITE_MOUVEMENT   NUMBER(4),
   constraint PK_MOUVEMENT_STOCK primary key (NO_MOUVEMENT)
);

/*==============================================================*/
/* Table : PRODUIT                                              */
/*==============================================================*/
create table PRODUIT 
(
   CODE_PRODUIT         VARCHAR2(8)          not null,
   NO_CATEGORIE         NUMBER(2)            not null,
   NO_EMPLACEMENT       NUMBER(3)            not null,
   UTILISATION          VARCHAR2(50),
   DESCRIPTION          VARCHAR2(100),
   QUANTITE_STOCK       NUMBER(4),
   DATE_STOCK           DATE,
   COMMENT_PRODUIT      VARCHAR2(100),
   LONGEUR              NUMBER(5,2),
   LARGEUR              NUMBER(5,2),
   HAUTEUR              NUMBER(5,2),
   PRIX_PIECE_HT        NUMBER(5,2),
   constraint PK_PRODUIT primary key (CODE_PRODUIT)
);

/*==============================================================*/
/* Table : PROPOSER                                             */
/*==============================================================*/
create table PROPOSER 
(
   CODE_PRODUIT         VARCHAR2(8)          not null,
   NO_FOURNISSEUR       NUMBER(3)            not null,
   constraint PK_PROPOSER primary key (CODE_PRODUIT, NO_FOURNISSEUR)
);