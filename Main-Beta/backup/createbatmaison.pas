unit CreateBatMaison;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, GestionEcran, GestionErreur, ressources, initialisationPrincip;

PROCEDURE CreateMaisonCol();

implementation
CONST
    //                      //
  //     Maison Col       //
//                      //
    CoutBoisMaisonCol = 2;
    CoutColMaisonCit = 1;

    //                      //
  //     Maison Cit       //
//                      //
    CoutBoisMaisonCit = 1;
    CoutOutilsMaisonCit = 1;
    CoutColMaisonCit = 1;

Var
    nbBois,nbOutils, nbBat : Integer;

    //********Maison Citoyen**********//
    MaisonCitoyens : INTEGER;

    //********Maison Colon**********//
    nbMaisonCol, MaisonColon : INTEGER;

    //********Curseur**********//
    CurseurRess : coordonnees;

  PROCEDURE CreateMaisonCol();
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
end.
