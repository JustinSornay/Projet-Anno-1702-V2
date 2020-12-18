unit DestructBatMaison;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, GestionEcran, GestionErreur, initialisationPrincip;

  //Destruction d'une maison de Colon
    PROCEDURE DestructBatMaisonCol();

implementation

Var
    nbBat : Integer;

    //********Curseur**********//
    CurseurRess : coordonnees;

//Destruction d'une maison de Colon
  PROCEDURE DestructBatMaisonCol();
  BEGIN
  CurseurRess := positionCurseur();
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
    writeln('Combien de Maison pour les Colons voulez-vous détruire ?');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    Readln(nbBat);

      IF (ComparRess(getMaisonColon(),nbBat)) THEN BEGIN     //Si le joueur a assez de batiment à détruire
        setMaisonColon(getMaisonColon() - nbBat);  //Retrait du batiment
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
        writeln('Vous avez détruit : ',nbBat,' Maison(s) pour les Colons !');
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
        readln();

      END
      ELSE BEGIN  //Si le joueur n'a pas assez de batiment à détruire
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
        writeln('Vous ne possédé pas assez de Maison(s) de Colons pour en détruire ',nbBat,' !');
        ReadLn();
      END;
  END;

end.
