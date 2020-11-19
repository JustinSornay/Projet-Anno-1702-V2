unit SystemeBatiments;


{$mode objfpc}{$H+}
{$codepage utf8}

interface

 uses ressources, GestionErreur;

type NewTypeBatiment = (Maisons,Batimensociaux,Industries);

//Fonction qui class les types de batiments
Procedure PTypeBatiment();

//Procedure de construction de Batiment
Procedure ConstructionsBatiments();

//Procedure d'Inisialisation des Variables
Procedure InisialisationVariable();
//-----------------------------------------------------------------//
//Procedure et fonction de modification et d'affichage de variable

            //     MaisonColon     //
//Cette fonction renvoie la valeur de la variable MaisonColon
 function getMaisonColon() : Integer;

//Cette procedure modifie la valeur de la variable MaisonColon
 procedure setMaisonColon(valeur : integer);

            //     MaisonColon     //
//Cette fonction renvoie la valeur de la variable MaisonColon
 function getMaisonCitoyens() : Integer;

//Cette procedure modifie la valeur de la variable MaisonCitoyens
 procedure setMaisonCitoyens(valeur : integer);

            //     CentreVille     //
//Cette fonction renvoie la valeur de la variable CentreVille
 function getCentreVille() : Integer;

//Cette procedure modifie la valeur de la variable CentreVille
 procedure setCentreVille(valeur : integer);

            //     Chapelle     //
//Cette fonction renvoie la valeur de la variable Chapelle
 function getChapelle() : Integer;

//Cette procedure modifie la valeur de la variable Chapelle
 procedure setChapelle(valeur : integer);

            //     Cabane Pecheur     //
//Cette fonction renvoie la valeur de la variable CabanePecheur
 function getCabanePecheur() : Integer;

//Cette procedure modifie la valeur de la variable CabanePecheur
 procedure setCabanePecheur(valeur : integer);

            //      Cabane Bucheron     //
//Cette fonction renvoie la valeur de la variable CabaneBucheron
 function getCabaneBucheron() : Integer;

//Cette procedure modifie la valeur de la variable CabaneBucheron
 procedure setCabaneBucheron(valeur : integer);

            //      Bergerie        //
//Cette fonction renvoie la valeur de la variable Bergerie
 function getBergerie() : Integer;

//Cette procedure modifie la valeur de la variable Bergerie
 procedure setBergerie(valeur : integer);

            //      Atelier Laine       //
//Cette fonction renvoie la valeur de la variable AtelierLaine
 function getAtelierLaine() : Integer;

//Cette procedure modifie la valeur de la variable AtelierLaine
 procedure setAtelierLaine(valeur : integer);

//----------------------------------------------------------------//
implementation

//listes des variables globale de notre unités
Var MaisonColon,CoutOrMaisonCit,MaisonCitoyens,CentreVille,Chapelle,CabanePecheur,CabaneBucheron,Bergerie,AtelierLaine,TestTypeBatiment,TestIndustrie,TestBatimentSociaux,nbBat,nbOr,CoutOrMaisonCol:Integer;
CoutBoisMaisonCit, CoutOutilsMaisonCol, CoutBoisMaisonCol, CoutOutilsMaisonCit, nbBois,nbOutils : Integer;
TypeBatiment:NewTypeBatiment;

 Procedure PTypeBatiment();
 Begin
    writeln('Qu''elle type de batiment voulez-vous construire');
    writeln('Maisons : 1');
    writeln('Batiments sociaux : 2');
    writeln('Industries : 3');
    readln(TestTypeBatiment);

     if(TestTypeBatiment=1)then
     Begin
         TypeBatiment:=Maisons;
     end
     else if (TestTypeBatiment=2)then
     Begin
         TypeBatiment:=Batimensociaux;
     end
     else if (TestTypeBatiment=3)then
     Begin
          TypeBatiment:=Industries;
     end;
 end;

 Procedure ConstructionsBatiments();
 Begin


    CASE TypeBatiment OF

      Maisons :
      BEGIN
        writeln('Qu''elle Maison voulez-vous construire');
        IF (ComparRess(getGold(),CoutOrMaisonCol)) and (ComparRess(getBois(),CoutBoisMaisonCol)) and (ComparRess(getOutils(),CoutOutilsMaisonCol)) THEN BEGIN
          writeln('Maisons pour les Colons : 1');
        END
        ELSE BEGIN
          writeln('Pas assez de ressource pour une maison de Colons');
        END;
        IF (ComparRess(getGold(),CoutOrMaisonCit)) and (ComparRess(getBois(),CoutBoisMaisonCit)) and (ComparRess(getOutils(),CoutOutilsMaisonCit)) THEN BEGIN
          writeln('Maisons pour les Citoyens : 2');
        END
        ELSE BEGIN
          writeln('Pas assez de ressource pour une maison de Citoyen');
        END;
        writeln('Retour : 3');  ////////////////////////////////////////////////////////////// PAS ENCORE CODE ////////////////////////////////////////////////////////////////////////////////////////////
        readln(TestTypeBatiment);
        CASE TestTypeBatiment OF
        1 :  BEGIN  //Pour les Maisons des Colons
              writeln('combien de Maison pour les Colons voulez-vous construire');
              Readln(nbBat);
              nbOr := nbBat * CoutOrMaisonCol;  //Calcule du nombre de pièces d'or qu'il va falloir dépenser
              nbBois := nbBat * CoutBoisMaisonCol;  //Calcule du nombre de Bois qu'il va falloir utiliser
              nbOutils := nbBat * CoutOutilsMaisonCol;  //Calcule du nombre d'outils qu'il va falloir utiliser

                IF (ComparRess(getGold(),nbOr)) and (ComparRess(getBois(),nbBois)) and (ComparRess(getOutils(),nbOutils))THEN BEGIN     //Si le joueur a assez de ressources
                  writeln('Vous allez construire : ',nbBat,' Maison(s) pour les Colons (',nbOr,' pieces d''or)');
                  writeln('Vous allez construire : ',nbBat,' Maison(s) pour les Citoyens (',nbBois,' Bois)');
                  writeln('Vous allez construire : ',nbBat,' Maison(s) pour les Citoyens (',nbOutils,' Outils)');
                  ReadLn();
                  setGold(getGold() - nbOr);  //Retrait du cout des batiments sur l'or du joueur
                  setBois(getBois() - nbBois);  //Retrait du cout des batiments sur le bois du joueur
                  setOutils(getOutils() - nbOutils);  //Retrait du cout des batiments sur les outils du joueur
                  setMaisonColon(getMaisonColon() + nbBat); //Ajout du nombre de Maisons de Colons
                  writeln('Vous avez ',getMaisonColon,' maisons de Colons');
                  writeln('Il vous reste : ',getGold(),' piece(s) d''or');
                  writeln('Il vous reste : ',getBois(),' Bois');
                  writeln('Il vous reste : ',getOutils(),' Outils');
                  readln();
                END
                ELSE BEGIN  //Si le joueur n'a pas assez de Ressources
                  writeln('Vous avez pas assez de reoussources pour ',nbBat,' Maison(s) de Colons!');
                  ReadLn();
                END;
              END;

          2 : BEGIN //Pour les Maisons des Citoyens
                writeln('combien de Maison pour les Citoyens voulez-vous construire');
                Readln(nbBat);              //Il faudrait initialiser nbBat dans l'unité
                nbOr := nbBat * CoutOrMaisonCit;  //Calcule du nombre de pièces d'or qu'il va falloir dépenser
                nbBois := nbBat * CoutBoisMaisonCit;  //Calcule du nombre de Bois qu'il va falloir utiliser
                nbOutils := nbBat * CoutOutilsMaisonCit;  //Calcule du nombre d'outils qu'il va falloir utiliser

                  IF (ComparRess(getGold(),nbOr)) and (ComparRess(getBois(),nbBois)) and (ComparRess(getOutils(),nbOutils))THEN BEGIN     //Si le joueur a assez de ressources
                    writeln('Vous allez construire : ',nbBat,' Maison(s) pour les Citoyens (',nbOr,' pieces d''or)');
                    writeln('Vous allez construire : ',nbBat,' Maison(s) pour les Citoyens (',nbBois,' Bois)');
                    writeln('Vous allez construire : ',nbBat,' Maison(s) pour les Citoyens (',nbOutils,' Outils)');
                    ReadLn();
                    setGold(getGold() - nbOr);  //Retrait du cout des batiments sur l'or du joueur
                    setBois(getBois() - nbBois);  //Retrait du cout des batiments sur le bois du joueur
                    setOutils(getOutils() - nbOutils);  //Retrait du cout des batiments sur les outils du joueur
                    setMaisonCitoyens(getMaisonCitoyens() + nbBat); //Ajout du nombre de Maisons de Citoyen
                    writeln('Vous avez ',getMaisonCitoyens,' maisons de Citoyen');
                    writeln('Il vous reste : ',getGold(),' piece(s) d''or');
                    writeln('Il vous reste : ',getBois(),' Bois');
                    writeln('Il vous reste : ',getOutils(),' Outils');
                    readln();
                  END
                  ELSE BEGIN  //Si le joueur n'a pas assez de Ressources
                    writeln('Vous avez pas assez de reoussources pour ',nbBat,' Maison(s) de Citoyen!');
                    ReadLn();
                  END;
                END;
                    //Si 1 envoyer la procédure colons si 2 envoyer la procédure Citoyens
                    //Dans les procédure modifier l'argent
              END;
//            3 : BEGIN
                  ///////////////////////////////////////////////////////// FAIRE LA FONCTION RETOUR ///////////////////////////////////////////////////////////////////
//                END;
            END;


      Batimensociaux :
        BEGIN
          writeln('Qu''elle batiment sociaux voulez-vous construire');
          writeln('Centre-Ville : 1');
          writeln('Chapelle : 2');
          readln(TestBatimentSociaux);
        END;

      Industries :
        BEGIN
          writeln('Qu''elles d''industriue voulez-vous construire');
          writeln('Cabane de pecheur : 1');
          writeln('Cabane de bucheron : 2');
          writeln('Bergerie de mouton : 3');
          writeln('Atelier de tisserand : 4');
          readln(TestIndustrie);
          END;
      END;
 end;

 Procedure InisialisationVariable();
 Begin
 //inisialisations à 0 de nos variables
  MaisonColon:=0;
  MaisonCitoyens:=0;
  CentreVille:=0;
  Chapelle:=0;
  CabanePecheur:=0;
  CabaneBucheron:=0;
  Bergerie:=0;
  AtelierLaine:=0;
  CoutOrMaisonCol := 25;
  CoutBoisMaisonCol := 20;
  CoutOrMaisonCit := 25;
  CoutBoisMaisonCit := 20;
  CoutOutilsMaisonCit := 1;
  CoutOutilsMaisonCol := 1;
 end;

   //                     //
  //     MaisonColon     //
 //                     //

//Cette fonction renvoie la valeur de la variable MaisonColon
 function getMaisonColon() : Integer;
 begin
  getMaisonColon := MaisonColon;
 end;

//Cette procedure modifie la valeur de la variable MaisonColon
 procedure setMaisonColon(valeur : integer);
 begin
  MaisonColon := valeur;
 end;

   //                    //
  //    MaisonCitoyens  //
 //                    //

//Cette fonction renvoie la valeur de la variable MaisonColon
 function getMaisonCitoyens() : Integer;
 begin
  getMaisonCitoyens := MaisonCitoyens;
 end;

//Cette procedure modifie la valeur de la variable MaisonCitoyens
 procedure setMaisonCitoyens(valeur : integer);
 begin
  MaisonCitoyens := valeur;
 end;

   //                     //
  //     CentreVille     //
 //                     //

//Cette fonction renvoie la valeur de la variable CentreVille
 function getCentreVille() : Integer;
 begin
  getCentreVille := CentreVille;
 end;

//Cette procedure modifie la valeur de la variable CentreVille
 procedure setCentreVille(valeur : integer);
 begin
  CentreVille := valeur;
 end;

   //                     //
  //     Chapelle        //
 //                     //

//Cette fonction renvoie la valeur de la variable Chapelle
 function getChapelle() : Integer;
 begin
  getChapelle := Chapelle;
 end;

//Cette procedure modifie la valeur de la variable Chapelle
 procedure setChapelle(valeur : integer);
 begin
  Chapelle := valeur;
 end;

   //                     //
  //     CabanePecheur   //
 //                     //

//Cette fonction renvoie la valeur de la variable CabanePecheur
 function getCabanePecheur() : Integer;
 begin
  getCabanePecheur := CabanePecheur;
 end;

//Cette procedure modifie la valeur de la variable CabanePecheur
 procedure setCabanePecheur(valeur : integer);
 begin
  CabanePecheur := valeur;
 end;

   //                   //
  //   CabaneBucheron  //
 //                   //

//Cette fonction renvoie la valeur de la variable CabaneBucheron
 function getCabaneBucheron() : Integer;
 begin
  getCabaneBucheron := CabaneBucheron;
 end;

//Cette procedure modifie la valeur de la variable CabaneBucheron
 procedure setCabaneBucheron(valeur : integer);
 begin
  CabaneBucheron := valeur;
 end;

   //                     //
  //     Bergerie        //
 //                     //

//Cette fonction renvoie la valeur de la variable Bergerie
 function getBergerie() : Integer;
 begin
  getBergerie := Bergerie;
 end;

//Cette procedure modifie la valeur de la variable Bergerie
 procedure setBergerie(valeur : integer);
 begin
  Bergerie := valeur;
 end;

   //                     //
  //     AtelierLaine    //
 //                     //

//Cette fonction renvoie la valeur de la variable AtelierLaine
 function getAtelierLaine() : Integer;
 begin
  getAtelierLaine := AtelierLaine;
 end;

//Cette procedure modifie la valeur de la variable AtelierLaine
 procedure setAtelierLaine(valeur : integer);
 begin
  AtelierLaine := valeur;
 end;

end.
