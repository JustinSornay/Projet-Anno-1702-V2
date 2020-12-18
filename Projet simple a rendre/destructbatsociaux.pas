unit destructbatsociaux;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, GestionEcran, GestionErreur, initialisationPrincip;

  //Destruction d'un CentreVille
  procedure DestructBatSociauxCentreVille();
  //Destruction d'une Chapelle
  procedure DestructBatSociauxChapelle();

implementation
Var
    nbBat : Integer;

    //********Curseur**********//
    CurseurRess : coordonnees;

    //Destruction d'un CentreVille
    PROCEDURE DestructBatSociauxCentreVille();
      BEGIN
      CurseurRess := positionCurseur();
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
        writeln('Combien de Centre-Ville voulez-vous détruire ?');
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
        Readln(nbBat);

        IF (ComparRess(getCentreVille(),nbBat)) THEN BEGIN     //Si le joueur a assez de centre-ville à détruire
          setCentreVille(getCentreVille() - nbBat); //Enlève le nombre de CentreVille

          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);

          writeln('Vous avez détruit : ',nbBat,' Centre-Ville !');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          readln();

        END
        ELSE BEGIN  //Si le joueur n'a pas assez de CentreVille à détruire
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Vous ne possédé pas assez de Centre-Ville pour en détruire ',nbBat,' !');
          ReadLn();
        END;
      END;

      //Destruction d'une Chapelle
      PROCEDURE DestructBatSociauxChapelle();
      BEGIN
      CurseurRess := positionCurseur();
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
        writeln('Combien de Chapelle voulez-vous détruire ?');
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
        Readln(nbBat);

            IF (ComparRess(getChapelle(),nbBat)) THEN BEGIN     //Si le joueur n'a pas assez de chapelle à détruire
              setChapelle(getChapelle() - nbBat); //Enleve le nombre de Chapelle
              CurseurRess.y := CurseurRess.y + 1;
              deplacerCurseur(CurseurRess);
              writeln('Vous avez détruit : ',nbBat,' Chapelles !');
              CurseurRess.y := CurseurRess.y + 1;
              deplacerCurseur(CurseurRess);
              readln();

              END
              ELSE BEGIN  //Si le joueur n'a pas assez de chapelle à détruire
                CurseurRess.y := CurseurRess.y + 1;
                deplacerCurseur(CurseurRess);
                writeln('Vous ne possédé pas assez de Chapelle pour en détruire ',nbBat,' !');
                ReadLn();
              END;
      END;

end.
