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
   NO_ACHAT             INT            not null,
   NO_FOURNISSEUR       SMALLINT            not null,
   DATE_ACHAT           TIMESTAMP(0),
   COMMENT_ACHAT        VARCHAR(100),
   constraint PK_ACHAT primary key (NO_ACHAT)
);

/*==============================================================*/
/* Table : CATEGORIE                                            */
/*==============================================================*/
create table CATEGORIE 
(
   NO_CATEGORIE         SMALLINT            not null,
   CAT_NO_CATEGORIE     SMALLINT,
   NOM_CATEGORIE        VARCHAR(50),
   constraint PK_CATEGORIE primary key (NO_CATEGORIE)
);

/*==============================================================*/
/* Table : CLIENT                                               */
/*==============================================================*/
create table CLIENT 
(
   NO_CLIENT            INT            not null,
   NOM_CLIENT           VARCHAR(50),
   NORUE                VARCHAR(10),
   RUE                  VARCHAR(100),
   CPOSTAL              INT,
   VILLE                VARCHAR(100),
   NOTEL                VARCHAR(10),
   EMAIL                VARCHAR(100),
   NOM_CONTACT          VARCHAR(50),
   constraint PK_CLIENT primary key (NO_CLIENT)
);

/*==============================================================*/
/* Table : COMMANDE                                             */
/*==============================================================*/
create table COMMANDE 
(
   NO_COMMANDE          INT            not null,
   NO_CLIENT            INT            not null,
   DATE_COMMANDE        TIMESTAMP(0),
   constraint PK_COMMANDE primary key (NO_COMMANDE)
);

/*==============================================================*/
/* Table : COMPOSER                                             */
/*==============================================================*/
create table COMPOSER 
(
   CODE_PRODUIT         VARCHAR(8)          not null,
   NO_MATIERE           SMALLINT            not null,
   constraint PK_COMPOSER primary key (CODE_PRODUIT, NO_MATIERE)
);

/*==============================================================*/
/* Table : DETAIL_ACHAT                                         */
/*==============================================================*/
create table DETAIL_ACHAT 
(
   CODE_PRODUIT         VARCHAR(8)          not null,
   NO_ACHAT             INT            not null,
   QUANTITE_ACHAT       SMALLINT,
   constraint PK_DETAIL_ACHAT primary key (CODE_PRODUIT, NO_ACHAT)
);

/*==============================================================*/
/* Table : DETAIL_COMMANDE                                      */
/*==============================================================*/
create table DETAIL_COMMANDE 
(
   CODE_PRODUIT         VARCHAR(8)          not null,
   NO_COMMANDE          INT            not null,
   QUANTITE_COMMANDE    SMALLINT,
   constraint PK_DETAIL_COMMANDE primary key (CODE_PRODUIT, NO_COMMANDE)
);

/*==============================================================*/
/* Table : DETAIL_LIVR_C                                        */
/*==============================================================*/
create table DETAIL_LIVR_C 
(
   CODE_PRODUIT         VARCHAR(8)          not null,
   NO_LIVRAISON_C       INT            not null,
   QUANTITE_LIVR_C      SMALLINT,
   constraint PK_DETAIL_LIVR_C primary key (CODE_PRODUIT, NO_LIVRAISON_C)
);

/*==============================================================*/
/* Table : DETAIL_LIVR_F                                        */
/*==============================================================*/
create table DETAIL_LIVR_F 
(
   CODE_PRODUIT         VARCHAR(8)          not null,
   NO_LIVRAISON_F       INT            not null,
   QUANTITE_LIVR_F      SMALLINT,
   constraint PK_DETAIL_LIVR_F primary key (CODE_PRODUIT, NO_LIVRAISON_F)
);

/*==============================================================*/
/* Table : EMPLACEMENT                                          */
/*==============================================================*/
create table EMPLACEMENT 
(
   NO_EMPLACEMENT       SMALLINT            not null,
   HANGAR               SMALLINT,
   ALLEE                SMALLINT,
   constraint PK_EMPLACEMENT primary key (NO_EMPLACEMENT)
);

/*==============================================================*/
/* Table : FOURNISSEUR                                          */
/*==============================================================*/
create table FOURNISSEUR 
(
   NO_FOURNISSEUR       SMALLINT            not null,
   NOM_FOURNISSEUR      VARCHAR(50),
   NORUE                VARCHAR(10),
   RUE                  VARCHAR(100),
   CPOSTAL              INT,
   VILLE                VARCHAR(100),
   NOTEL                VARCHAR(10),
   EMAIL                VARCHAR(100),
   constraint PK_FOURNISSEUR primary key (NO_FOURNISSEUR)
);

/*==============================================================*/
/* Table : LIVRAISON_F                                         */
/*==============================================================*/
create table LIVRAISON_F 
(
   NO_LIVRAISON_F       INT            not null,
   NO_ACHAT             INT            not null,
   DATE_LIVRAISON_F     TIMESTAMP(0),
   constraint PK_LIVRAISON_F primary key (NO_LIVRAISON_F)
);

/*==============================================================*/
/* Table : LIVRAISON_C                                          */
/*==============================================================*/
create table LIVRAISON_C 
(
   NO_LIVRAISON_C       INT            not null,
   NO_COMMANDE          INT            not null,
   DATE_LIVRAISON_C     TIMESTAMP(0),
   constraint PK_LIVRAISON_C primary key (NO_LIVRAISON_C)
);

/*==============================================================*/
/* Table : MATIERE                                              */
/*==============================================================*/
create table MATIERE 
(
   NO_MATIERE           SMALLINT            not null,
   NOM_MATIERE          VARCHAR(70),
   constraint PK_MATIERE primary key (NO_MATIERE)
);

/*==============================================================*/
/* Table : MOUVEMENT_STOCK                                      */
/*==============================================================*/
create table MOUVEMENT_STOCK 
(
   NO_MOUVEMENT         INT            not null,
   CODE_PRODUIT         VARCHAR(8)          not null,
   TYPE_MOUVEMENT       CHAR(1),
   DATE_MOUVEMENT       TIMESTAMP(0),
   QUANTITE_MOUVEMENT   SMALLINT,
   constraint PK_MOUVEMENT_STOCK primary key (NO_MOUVEMENT)
);

/*==============================================================*/
/* Table : PRODUIT                                              */
/*==============================================================*/
create table PRODUIT 
(
   CODE_PRODUIT         VARCHAR(8)          not null,
   NO_CATEGORIE         SMALLINT            not null,
   NO_EMPLACEMENT       SMALLINT            not null,
   UTILISATION          VARCHAR(50),
   DESCRIPTION          VARCHAR(100),
   QUANTITE_STOCK       SMALLINT,
   DATE_STOCK           TIMESTAMP(0),
   COMMENT_PRODUIT      VARCHAR(100),
   LONGEUR              DECIMAL(5,2),
   LARGEUR              DECIMAL(5,2),
   HAUTEUR              DECIMAL(5,2),
   PRIX_PIECE_HT        DECIMAL(5,2),
   constraint PK_PRODUIT primary key (CODE_PRODUIT)
);

/*==============================================================*/
/* Table : PROPOSER                                             */
/*==============================================================*/
create table PROPOSER 
(
   CODE_PRODUIT         VARCHAR(8)          not null,
   NO_FOURNISSEUR       SMALLINT            not null,
   constraint PK_PROPOSER primary key (CODE_PRODUIT, NO_FOURNISSEUR)
);