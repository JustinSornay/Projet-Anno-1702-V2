unit CreateBatMaison;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, GestionEcran, GestionErreur, ressources, initialisationPrincip;

//Création d'une maison de Colon
PROCEDURE CreateBatMaisonCol();

//Création d'une maison de Citoyens
PROCEDURE CreateBatMaisonCit();

   //                 //
  //  CoutBatiments //
//                //

//****Cout Maison de Colon****//
//Renvoie le Cout du Bois d'une Maison de Colon
FUNCTION GetCoutBoisMaisonCol():INTEGER;

//****Cout Maison de Citoyen****//
//Renvoie le Cout du Bois d'une Maison de Citoyen
FUNCTION GetCoutBoisMaisonCit():INTEGER;

//Renvoie le Cout des Outils d'une Maison de Citoyen
FUNCTION GetCoutOutilsMaisonCit():INTEGER;

//Renvoie le Cout en Maison de Colon d'une Maison de Citoyen
FUNCTION GetCoutColMaisonCit():INTEGER;


implementation
CONST
    //                      //
  //     Maison Col       //
//                      //
    CoutBoisMaisonCol = 2;

    //                      //
  //     Maison Cit       //
//                      //
    CoutBoisMaisonCit = 1;
    CoutOutilsMaisonCit = 1;
    CoutColMaisonCit = 1;

Var
    nbBois, nbOutils, nbBat : Integer;


    //********Maison Colon**********//
    nbMaisonCol: INTEGER;

    //********Curseur**********//
    CurseurRess : coordonnees;

//Création d'une maison de Colon
  PROCEDURE CreateBatMaisonCol();
  BEGIN
  CurseurRess := positionCurseur();
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
    writeln('Combien de Maison pour les Colons voulez-vous construire ?');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    Readln(nbBat);
    nbBois := nbBat * CoutBoisMaisonCol;  //Calcule du nombre de Bois qu'il va falloir utiliser

      IF (ComparRess(getBois(),nbBois)) THEN BEGIN     //Si le joueur a assez de ressources  //Enlevé  OR et nbOutils
        setBois(getBois() - nbBois);  //Retrait du cout des batiments sur le bois du joueur
        setMaisonColon(getMaisonColon() + nbBat); //Ajout du nombre de Maisons de Colons
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
        writeln('Vous avez construit : ',nbBat,' Maison(s) pour les Citoyens !');
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
        WriteLn('(',nbBois,' Bois)');
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
        readln();

      END
      ELSE BEGIN  //Si le joueur n'a pas assez de Ressources
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
        writeln('Vous avez pas assez de ressources pour ',nbBat,' Maison(s) de Colons!');
        ReadLn();
      END;
  END;



//Création d'une maison de Citoyens
  PROCEDURE CreateBatMaisonCit();
  BEGIN
  CurseurRess := positionCurseur();
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
    writeln('Combien de Maison pour les Citoyens voulez-vous construire ?');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    Readln(nbBat);              //Il faudrait initialiser nbBat dans l'unité
    nbMaisonCol := nbBat * CoutColMaisonCit;  //Calcule du nombre de maison de colons qu'il va falloir dépenser
    nbBois := nbBat * CoutBoisMaisonCit;  //Calcule du nombre de Bois qu'il va falloir utiliser
    nbOutils := nbBat * CoutOutilsMaisonCit;  //Calcule du nombre d'outils qu'il va falloir utiliser

      IF (ComparRess(getMaisonColon(),nbMaisonCol)) and (ComparRess(getBois(),nbBois)) and (ComparRess(getOutils(),nbOutils))THEN BEGIN     //Si le joueur a assez de ressources

        setMaisonColon(getMaisonColon() - nbMaisonCol);  //Retrait du cout des batiments sur le nombre de Maison de colons
        setBois(getBois() - nbBois);  //Retrait du cout des batiments sur le bois du joueur
        setOutils(getOutils() - nbOutils);  //Retrait du cout des batiments sur les outils du joueur
        setMaisonCitoyens(getMaisonCitoyens() + nbBat); //Ajout du nombre de Maisons de Citoyen

        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
        writeln('Vous avez construit : ',nbBat,' Maison(s) pour les Citoyens !');
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
        writeln('(',nbOutils,' Outils,',nbBois,' Bois,',nbMaisonCol,' Maisons de Colons)');
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
        readln();
      END
      ELSE BEGIN  //Si le joueur n'a pas assez de Ressources
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
        writeln('Vous avez pas assez de ressources pour ',nbBat,' Maison(s) de Citoyen!');
        ReadLn();
      END;
  END;

  //****Maison de Colon****/
  //Renvoie le Cout du Bois d'une Maison de Colon
  FUNCTION GetCoutBoisMaisonCol():INTEGER;
  BEGIN
    GetCoutBoisMaisonCol := CoutBoisMaisonCol;
  END;

  //****Maison de Citoyen****//
  //Renvoie le Cout du Bois d'une Maison de Citoyen
  FUNCTION GetCoutBoisMaisonCit():INTEGER;
  BEGIN
    GetCoutBoisMaisonCit := CoutBoisMaisonCit;
  END;

  //Renvoie le Cout des Outils d'une Maison de Citoyen
  FUNCTION GetCoutOutilsMaisonCit():INTEGER;
  BEGIN
    GetCoutOutilsMaisonCit := CoutOutilsMaisonCit;
  END;
  //Renvoie le Cout en Maison de Colon d'une Maison de Citoyen
  FUNCTION GetCoutColMaisonCit():INTEGER;
  BEGIN
    GetCoutColMaisonCit := CoutColMaisonCit;
  END;
end.
