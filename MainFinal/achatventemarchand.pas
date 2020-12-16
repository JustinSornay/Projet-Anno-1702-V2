unit AchatVenteMarchand;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, GestionEcran, GestionErreur, ressources, initialisationPrincip;

  //Achat de Bois avec le marchand
    PROCEDURE AchatBois();

  //Achat de Poissons avec le marchand
    PROCEDURE AchatPoissons();

implementation
var
    NbRessources : INTEGER;
    CurseurRess: coordonnees;
//Achat de Bois avec le marchand
  PROCEDURE AchatBois();
  BEGIN

  CurseurRess := positionCurseur();
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
    writeln('Combien de bois voulez-vous acheter ?');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    Readln(NbRessources);

      IF (ComparRess(getGold(),MarchandCoutBois())) THEN BEGIN     //Si le joueur a assez d'or
        setGold(getGold() - (NbRessources * MarchandCoutBois()));  //Retrait de l'or
        setBois(getBois() + NbRessources); //Ajout des ressoures
        deplacerCurseur(CurseurRess);
        writeln('Vous avez acheter : ',NbRessources,' Bois !');
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
        readln();

      END
      ELSE BEGIN  //Si le joueur n'a pas assez d'or'
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
        writeln('Vous ne possédé pas assez d''Or pour acheter ',NbRessources,' bois !');
        ReadLn();
      END;
  END;

  //Achat de Bois avec le marchand
    PROCEDURE AchatPoissons();
    BEGIN

    CurseurRess := positionCurseur();
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
      writeln('Combien de Poissons voulez-vous acheter ?');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      Readln(NbRessources);

        IF (ComparRess(getGold(),MarchandCoutpoissons())) THEN BEGIN     //Si le joueur a assez d'or
          setGold(getGold() - (NbRessources * MarchandCoutpoissons()));  //Retrait de l'or
          setPoissons(getPoissons() + NbRessources); //Ajout des ressoures
          deplacerCurseur(CurseurRess);
          writeln('Vous avez acheter : ',NbRessources,' Poissons !');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          readln();

        END
        ELSE BEGIN  //Si le joueur n'a pas assez d'or'
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
          writeln('Vous ne possédé pas assez d''Or pour acheter ',NbRessources,' Poissons !');
          ReadLn();
        END;
    END;

end.
