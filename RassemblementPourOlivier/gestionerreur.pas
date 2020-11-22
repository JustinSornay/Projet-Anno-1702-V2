unit GestionErreur;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, GestionEcran;
// Compare 2 valeur dit si la valeur1 > 0
function ComparRess(valeurUser : integer; valeur2 : integer) : BOOLEAN;

// Créer le cadre Dialogue
  Procedure CadreDialogue();

  // Créer Une ligne dans dialogue
    Procedure LigneDialogue();

implementation

// Créer Une ligne dans dialogue
  Procedure LigneDialogue();
  VAR
    CurseurDebut: coordonnees;
  BEGIN
    CurseurDebut := positionCurseur();
    CurseurDebut.y := CurseurDebut.y + 1;
    deplacerCurseur(CurseurDebut);
    writeln('              ──────────────────────────────────────────────');
      //dessinerCadre(CurseurDebut, CurseurFin, simple, 15, 0);
    CurseurDebut.y := CurseurDebut.y + 1;
    deplacerCurseur(CurseurDebut);
  END;


// Compare 2 valeur dit si la valeur1 > 0 Renvoie True si > 0 Renvoie False Si < 0
function ComparRess(valeurUser : integer; valeur2 : integer) : BOOLEAN;
var
  ResCompar : Integer;
  BEGIN
    ResCompar := valeurUser - valeur2;
    IF ResCompar >= 0 THEN BEGIN
      ComparRess := TRUE;
    END
    ELSE BEGIN
      ComparRess := FALSE;
    END;
  END;

// Créer le cadre Dialogue
  Procedure CadreDialogue();
  Begin
     dessinerCadreXY(4,2,80,47, simple, 15, 0); //Cadre dialogue
     dessinerCadreXY(29,1,55,3, simple, 15, 0); //Cadre du mot Dialogue
     deplacerCurseurXY(38, 2);  //Ecrire a l'intérieur de l'encadré
     writeln('Dialogue');

     deplacerCurseurXY(7, 4);  //Ecrire dans le cadre des Ressource
     end;
end.
