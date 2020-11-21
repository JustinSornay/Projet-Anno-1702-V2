unit SystemeBatiments;


{$mode objfpc}{$H+}
{$codepage utf8}

interface

 uses ressources, GestionErreur, GestionEcran;

type NewTypeBatiment = (Maisons,Batimensociaux,Industries);

//Fonction qui class les types de batiments
Procedure PTypeBatiment();

//Procedure de construction de Batiment
Procedure ConstructionsBatiments();

//Procedure d'Inisialisation des Variables
Procedure InisialisationVariable();
//-----------------------------------------------------------------//
//Procedure et fonction de modification et d'affichage de variable

            //     Nombre d'Entrepot     //
//Cette fonction renvoie la valeur de la variable nbEntrepot
function getEntrepot() : Integer;
//Cette procedure modifie la valeur de la variable nbEntrepot
procedure setEntrepot(valeur : integer);

            //     Valeur Entrepot     //
//Cette fonction renvoie la capacité de stockage
FUNCTION getValEntrepot(): Integer;
//Cette procedure modifie la valeur de la variable ValEntrepot
 procedure setValEntrepot(valeur : integer);

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
//Cette fonction renvoie la valeur de la variable AtelierTissus
 function getAtelierTissus() : Integer;

//Cette procedure modifie la valeur de la variable AtelierTissus
 procedure setAtelierTissus(valeur : integer);

 //Affiche le nombre de batiments possédés
 procedure InfoBatiments();

//Fonction qui renvoie la valeur de retour
 FUNCTION getRetourBat(): BOOLEAN;

 //Procedure qui modifie la valeur RetourCreeBat
 Procedure setRetourBat(valeur : BOOLEAN);
 
//----------------------------------------------------------------//
implementation

//listes des variables globale de notre unités
Var MaisonColon,CoutOrMaisonCit,MaisonCitoyens,CentreVille,Chapelle,CabanePecheur,CabaneBucheron,Bergerie,AtelierTissus,TestTypeBatiment,TestIndustrie,TestBatimentSociaux,nbBat,nbOr,CoutOrMaisonCol:Integer;
CoutBoisMaisonCit, CoutOutilsMaisonCol, CoutBoisMaisonCol, CoutOutilsMaisonCit, nbBois,nbOutils, ValEntrepot, nbEntrepot : Integer;
TypeBatiment:NewTypeBatiment;
RetourCreeBat : BOOLEAN;

//Procedure qui modifie la valeur RetourCreeBat
Procedure setRetourBat(valeur : BOOLEAN);
BEGIN
  RetourCreeBat := valeur;
END;

//Fonction qui renvoie la valeur de retour
 FUNCTION getRetourBat(): BOOLEAN;
 BEGIN
   getRetourBat := RetourCreeBat;
 END;
//Affiche le nombre de batiments possédés
procedure InfoBatiments();
VAR
  CurseurRess: coordonnees;

BEGIN
  dessinerCadreXY(100,13,146,22, simple, 15, 0); //Cadre des batiments

  dessinerCadreXY(113,12,134,14, simple, 15, 0); //Cadre du mot 'Batiments possédés'
  deplacerCurseurXY(115, 13);  //Ecrire a l'intérieur de l'encadré
  writeln('Batiments possédés');

  deplacerCurseurXY(103, 15);  //Ecrire dans le cadre des batiments possédés
  CurseurRess := positionCurseur();

  writeln('Maison Colon             :           ',getMaisonColon());        // Afficher la quantitées De maison de colon
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Maison Citoyen           :           ',getMaisonCitoyens());   // Affiche la quantitées de Bois
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Cabane de Bucheron       :           ',getCabaneBucheron());   // Affiche la quantitées de Cabane de Bucheron
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Atelier de tisserand     :           ',getAtelierTissus());   // Affiche la quantitées de laines
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Bergerie                 :           ',getBergerie());   // Affiche la quantitées de Bergerie
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Entrepot                 :           ',getEntrepot());   // Affiche la quantitées d'Entrepot
END;

 Procedure PTypeBatiment();
 Begin
    deplacerCurseurXY(1,1); // déplace le curseur dans le cadre
    writeln('Qu''elle type de batiment voulez-vous construire');
    changerColonneCurseur(1);
    writeln('Maisons : 1');
    changerColonneCurseur(1);
    writeln('Batiments sociaux : 2');
    changerColonneCurseur(1);
    writeln('Industries : 3');
    changerColonneCurseur(1);
    writeln('Retour : 4');
    changerColonneCurseur(1);
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
     end
     else if (TestTypeBatiment=4)then
     Begin
          RetourCreeBat := TRUE;
     end;
 end;

 Procedure ConstructionsBatiments();
 Begin


    CASE TypeBatiment OF

      Maisons :
      BEGIN
        changerColonneCurseur(1);
        writeln('Qu''elle Maison voulez-vous construire');
        IF (ComparRess(getGold(),CoutOrMaisonCol)) and (ComparRess(getBois(),CoutBoisMaisonCol)) and (ComparRess(getOutils(),CoutOutilsMaisonCol)) THEN BEGIN
          changerColonneCurseur(1);
          writeln('Maisons pour les Colons : 1');
        END
        ELSE BEGIN
          changerColonneCurseur(1);
          writeln('Pas assez de ressource pour une maison de Colons');
        END;
        IF (ComparRess(getGold(),CoutOrMaisonCit)) and (ComparRess(getBois(),CoutBoisMaisonCit)) and (ComparRess(getOutils(),CoutOutilsMaisonCit)) THEN BEGIN
          changerColonneCurseur(1);
          writeln('Maisons pour les Citoyens : 2');
        END
        ELSE BEGIN
          changerColonneCurseur(1);
          writeln('Pas assez de ressource pour une maison de Citoyen');
        END;
        changerColonneCurseur(1);
        writeln('Retour : 3');  ////////////////////////////////////////////////////////////// PAS ENCORE CODE ////////////////////////////////////////////////////////////////////////////////////////////
        readln(TestTypeBatiment);
        CASE TestTypeBatiment OF
        1 :  BEGIN  //Pour les Maisons des Colons
              writeln('combien de Maison pour les Colons voulez-vous construire');
              Readln(nbBat);
              nbOr := nbBat * CoutOrMaisonCol;  //Calcule du nombre de pièces d'or qu'il va falloir dépenser    //A enlevé
              nbBois := nbBat * CoutBoisMaisonCol;  //Calcule du nombre de Bois qu'il va falloir utiliser
              nbOutils := nbBat * CoutOutilsMaisonCol;  //Calcule du nombre d'outils qu'il va falloir utiliser    //A enlevé

                IF (ComparRess(getGold(),nbOr)) and (ComparRess(getBois(),nbBois)) and (ComparRess(getOutils(),nbOutils))THEN BEGIN     //Si le joueur a assez de ressources  //Enlevé  OR et nbOutils
                  writeln('Vous allez construire : ',nbBat,' Maison(s) pour les Colons (',nbOr,' pieces d''or)');
                  writeln('Vous allez construire : ',nbBat,' Maison(s) pour les Citoyens (',nbBois,' Bois)');
                  writeln('Vous allez construire : ',nbBat,' Maison(s) pour les Citoyens (',nbOutils,' Outils)');
                  ReadLn();
                  setGold(getGold() - nbOr);  //Retrait du cout des batiments sur l'or du joueur
                  setBois(getBois() - nbBois);  //Retrait du cout des batiments sur le bois du joueur
                  setOutils(getOutils() - nbOutils);  //Retrait du cout des batiments sur les outils du joueur
                  setMaisonColon(getMaisonColon() + nbBat); //Ajout du nombre de Maisons de Colons
                  writeln('Vous avez construit ',nbBat,' maisons de Colons');
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
                    writeln('Vous avez construit ',nbBat,' maisons de Citoyen');
                    readln();
                  END
                  ELSE BEGIN  //Si le joueur n'a pas assez de Ressources
                    writeln('Vous avez pas assez de reoussources pour ',nbBat,' Maison(s) de Citoyen!');
                    ReadLn();
                  END;
                END;
                    //Si 1 envoyer la procédure colons si 2 envoyer la procédure Citoyens
                    //Dans les procédure modifier l'argent

            3 : BEGIN
                    RetourCreeBat := TRUE;
                END;
            END;
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
  ValEntrepot := 40;
  MaisonColon:=0;
  MaisonCitoyens:=0;
  CentreVille:=0;
  Chapelle:=0;
  CabanePecheur:=0;
  CabaneBucheron:=0;
  Bergerie:=0;
  AtelierTissus:=0;
  CoutOrMaisonCol := 0;  //A enlevé
  CoutBoisMaisonCol := 2;
  CoutOrMaisonCit := 25;
  CoutBoisMaisonCit := 20;
  CoutOutilsMaisonCit := 1;
  CoutOutilsMaisonCol := 0; //A enlevé
  nbEntrepot := 0;
  RetourCreeBat := FALSE;
 end;

  //                     //
 //  Quantité Entrepot  //
//                    //

//Cette fonction renvoie la valeur de la variable nbEntrepot
function getEntrepot() : Integer;
  begin
    getEntrepot := nbEntrepot;
  end;

//Cette procedure modifie la valeur de la variable nbEntrepot
procedure setEntrepot(valeur : integer);
  begin
    nbEntrepot := valeur;
  end;

  //                     //
 //   Valeur Entrepot   //
//                     //
//Cette fonction renvoie la valeur de la variable ValEntrepot
FUNCTION getValEntrepot(): Integer;
  begin
    getValEntrepot := ValEntrepot;
  end;

//Cette procedure modifie la valeur de la variable ValEntrepot
  procedure setValEntrepot(valeur : integer);
  begin
      ValEntrepot:= valeur;
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
  //     AtelierTissus    //
 //                     //

//Cette fonction renvoie la valeur de la variable AtelierTissus
 function getAtelierTissus() : Integer;
 begin
  getAtelierTissus := AtelierTissus;
 end;

//Cette procedure modifie la valeur de la variable AtelierTissus
 procedure setAtelierTissus(valeur : integer);
 begin
  AtelierTissus := valeur;
 end;

end.
