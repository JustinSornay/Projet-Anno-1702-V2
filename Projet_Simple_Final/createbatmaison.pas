unit CreateBatMaison;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, GestionEcran, GestionErreur, ressources, initialisationPrincip;

//Création d'une maison de Colon
PROCEDURE CreateBatMaisonCol();


   //                 //
  //  CoutBatiments //
//                //

//****Cout Maison de Colon****//
//Renvoie le Cout du Bois d'une Maison de Colon
FUNCTION GetCoutBoisMaisonCol():INTEGER;


implementation
CONST
    //                      //
  //     Maison Col       //
//                      //
    CoutBoisMaisonCol = 2;

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
        writeln('Vous avez construit : ',nbBat,' Maison(s) pour les Colons !');
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

  //****Maison de Colon****/
  //Renvoie le Cout du Bois d'une Maison de Colon
  FUNCTION GetCoutBoisMaisonCol():INTEGER;
  BEGIN
    GetCoutBoisMaisonCol := CoutBoisMaisonCol;
  END;
end.
