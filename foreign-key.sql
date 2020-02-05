/*
* A VOIR
*/

alter table ACHAT
   add constraint FK_ACHAT_ENVOYER_FOURNISS foreign key (NO_FOURNISSEUR)
      references FOURNISSEUR (NO_FOURNISSEUR);

alter table CATEGORIE
   add constraint FK_CATEGORI_EST_CONTE_CATEGORI foreign key (CAT_NO_CATEGORIE)
      references CATEGORIE (NO_CATEGORIE);

alter table COMMANDE
   add constraint FK_COMMANDE_PASSER_CLIENT foreign key (NO_CLIENT)
      references CLIENT (NO_CLIENT);

alter table COMPOSER
   add constraint FK_COMPOSER_COMPOSER_PRODUIT foreign key (CODE_PRODUIT)
      references PRODUIT (CODE_PRODUIT);

alter table COMPOSER
   add constraint FK_COMPOSER_COMPOSER2_MATIERE foreign key (NO_MATIERE)
      references MATIERE (NO_MATIERE);

alter table DETAIL_ACHAT
   add constraint FK_DETAIL_A_DETAIL_AC_PRODUIT foreign key (CODE_PRODUIT)
      references PRODUIT (CODE_PRODUIT);

alter table DETAIL_ACHAT
   add constraint FK_DETAIL_A_DETAIL_AC_ACHAT foreign key (NO_ACHAT)
      references ACHAT (NO_ACHAT);

alter table DETAIL_COMMANDE
   add constraint FK_DETAIL_C_DETAIL_CO_PRODUIT foreign key (CODE_PRODUIT)
      references PRODUIT (CODE_PRODUIT);

alter table DETAIL_COMMANDE
   add constraint FK_DETAIL_C_DETAIL_CO_COMMANDE foreign key (NO_COMMANDE)
      references COMMANDE (NO_COMMANDE);

alter table DETAIL_LIVR_C
   add constraint FK_DETAIL_L_DETAIL_LI_PRODUIT foreign key (CODE_PRODUIT)
      references PRODUIT (CODE_PRODUIT);

alter table DETAIL_LIVR_C
   add constraint FK_DETAIL_L_DETAIL_LI_LIVRAISO foreign key (NO_LIVRAISON_C)
      references LIVRAISON_C (NO_LIVRAISON_C);

alter table DETAIL_LIVR_F
   add constraint FK_DETAIL_L_DETAIL_LI_PRODUIT foreign key (CODE_PRODUIT)
      references PRODUIT (CODE_PRODUIT);

alter table DETAIL_LIVR_F
   add constraint FK_DETAIL_L_DETAIL_LI_LIVRAISI foreign key (NO_LIVRAISON_F)
      references LIVRAISON_F (NO_LIVRAISON_F);

alter table LIVRAISON_F
   add constraint FK_LIVRAISI_SUIVRE_ACHAT foreign key (NO_ACHAT)
      references ACHAT (NO_ACHAT);

alter table LIVRAISON_C
   add constraint FK_LIVRAISO_TRAITER_COMMANDE foreign key (NO_COMMANDE)
      references COMMANDE (NO_COMMANDE);

alter table MOUVEMENT_STOCK
   add constraint FK_MOUVEMEN_GENERER_PRODUIT foreign key (CODE_PRODUIT)
      references PRODUIT (CODE_PRODUIT);

alter table PRODUIT
   add constraint FK_PRODUIT_APPARTENI_CATEGORI foreign key (NO_CATEGORIE)
      references CATEGORIE (NO_CATEGORIE);

alter table PRODUIT
   add constraint FK_PRODUIT_STOCKER_EMPLACEM foreign key (NO_EMPLACEMENT)
      references EMPLACEMENT (NO_EMPLACEMENT);

alter table PROPOSER
   add constraint FK_PROPOSER_PROPOSER_PRODUIT foreign key (CODE_PRODUIT)
      references PRODUIT (CODE_PRODUIT);

alter table PROPOSER
   add constraint FK_PROPOSER_PROPOSER2_FOURNISS foreign key (NO_FOURNISSEUR)
      references FOURNISSEUR (NO_FOURNISSEUR);