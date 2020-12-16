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

    // Créer le cadre Dialogue pour le marchand
      Procedure CadreDialogueMarchand();

    // Créer Une ligne dans le dialogue du marchand
      Procedure LigneDialogueMarchand();

implementation

// Créer le cadre Dialogue pour le marchand
  Procedure CadreDialogueMarchand();
  begin
  dessinerCadreXY(4,13,80,40, simple, 15, 0); //Cadre dialogue Marchand
  dessinerCadreXY(29,12,55,14, simple, 15, 0); //Cadre du mot Dialogue
  deplacerCurseurXY(38, 13);  //Ecrire a l'intérieur de l'encadré
  writeln('Dialogue');

  deplacerCurseurXY(7, 15);  //Ecrire dans le cadre dialogue marchnad
  end;

// Créer Une ligne dans le dialogue du marchand
  Procedure LigneDialogueMarchand();
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

     deplacerCurseurXY(7, 4);  //Ecrire dans le cadre dialogue
     end;
end.
