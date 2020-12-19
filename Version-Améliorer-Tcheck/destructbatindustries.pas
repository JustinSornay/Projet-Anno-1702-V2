unit DestructBatIndustries;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, GestionEcran, GestionErreur, initialisationPrincip,SystemeTour;

  //Création d'une Cabane de pecheur
  PROCEDURE DestructBatIndustriesPecheur();

  //Création d'une Cabane de Bucheron
  PROCEDURE DestructBatIndustriesBucheron();

  //Création d'un AtelierTissus
  PROCEDURE DestructBatIndustriesAtelierTissus();

  //Création d'une Bergerie
  PROCEDURE DestructBatIndustriesBergerie();

  //Création d'un Entrepot
  PROCEDURE DestructBatIndustriesEntrepot();

implementation
Var
    nbBat : Integer;

    //********Curseur**********//
    CurseurRess : coordonnees;

    //Destruction d'une Cabane de pecheur
    PROCEDURE DestructBatIndustriesPecheur();
    BEGIN
    CurseurRess := positionCurseur();
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
      writeln('Combien de Cabane de pecheur voulez-vous détruire ?');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      AfficheTour();
      Readln(nbBat);

        IF (ComparRess(getCabanePecheur(),nbBat)) THEN BEGIN     //Si le joueur a assez de Cabane de pecheur a détruire
          setCabanePecheur(getCabanePecheur() - nbBat); //Enleve le nombre de Cabane de Pecheur

          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);

          writeln('Vous avez détruit : ',nbBat,' Cabane de pecheur !');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          readln();

        END
        ELSE BEGIN  //Si le joueur a assez de Cabane de pecheur a détruire
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
          writeln('Vous ne possédé pas assez de cabane de pecheur pour en détruire ',nbBat,' !');
          ReadLn();
        END;
    END;

    //Destruction d'une Cabane de Bucheron
    PROCEDURE DestructBatIndustriesBucheron();
    BEGIN
    CurseurRess := positionCurseur();
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
      writeln('Combien de Cabane de bucheron voulez-vous détruire ?');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      AfficheTour();
      Readln(nbBat);

          IF (ComparRess(getCabaneBucheron(),nbBat)) THEN BEGIN     //Si le joueur a assez de Cabane de Bucheron
            setCabaneBucheron(getCabaneBucheron() - nbBat); //Enleve le nombre de Cabane de bucheron
            CurseurRess.y := CurseurRess.y + 1;
            deplacerCurseur(CurseurRess);
            writeln('Vous avez détruit : ',nbBat,' Cabane de bucheron !');
            CurseurRess.y := CurseurRess.y + 1;
            deplacerCurseur(CurseurRess);
            readln();

            END
            ELSE BEGIN  //Si le joueur a assez de Cabane de Bucheron
              CurseurRess.y := CurseurRess.y + 1;
              deplacerCurseur(CurseurRess);
              writeln('Vous ne possédé pas assez de cabane de bucheron pour en détruire ',nbBat,' !');
              ReadLn();
            END;
    END;

    //Destruction d'un AtelierTissus
    PROCEDURE DestructBatIndustriesAtelierTissus();
    BEGIN
    CurseurRess := positionCurseur();
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
      writeln('Combien d''atelier de tisserand voulez-vous détruire ?');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      AfficheTour();
      Readln(nbBat);

        IF (ComparRess(getAtelierTissus(),nbBat))THEN BEGIN     //Si le joueur a assez d'atelier de Tissus
          setAtelierTissus(getAtelierTissus() - nbBat); //Enleve le nombre d'atelier de tisserand

          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);

          writeln('Vous avez détruit : ',nbBat,' atelier de tisserand !');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          readln();

        END
        ELSE BEGIN   //Si le joueur a assez d'atelier de Tissus
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
          writeln('Vous ne possédé pas assez de d''atelier de tissus pour en détruire ',nbBat,' !');
          ReadLn();
        END;
    END;

    //Destruction d'une Bergerie
    PROCEDURE DestructBatIndustriesBergerie();
    BEGIN
    CurseurRess := positionCurseur();
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
      writeln('Combien de Bergerie voulez-vous détruire ?');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      AfficheTour();
      Readln(nbBat);

        IF (ComparRess(getBergerie(),nbBat))THEN BEGIN     //Si le joueur a assez de Bergerie
          setBergerie(getBergerie() - nbBat); //Enleve le nombre de Bergerie

          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);

          writeln('Vous avez détruit : ',nbBat,' Bergerie !');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          readln();

        END
        ELSE BEGIN  //Si le joueur n'a pas assez de Bergerie
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
          writeln('Vous ne possédé pas assez de Bergerie pour en détruire ',nbBat,' !');
          ReadLn();
        END;
    END;

    //Destruction d'un Entrepot
    PROCEDURE DestructBatIndustriesEntrepot();
    BEGIN
    CurseurRess := positionCurseur();
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
      writeln('Combien d''Entrepot voulez-vous détruire ?');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      AfficheTour();
      Readln(nbBat);

        IF (ComparRess(getEntrepot(),nbBat)) THEN BEGIN     //Si le joueur a assez d'entrepot a détruire
          setEntrepot(getEntrepot() - nbBat); //Enleve le nombre de Entrepot

          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);

          writeln('Vous avez détruit : ',nbBat,' Entrepot !');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          readln();

        END
        ELSE BEGIN  //Si le joueur n'a pas assez d'entrepot a détruire
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
          writeln('Vous ne possédé pas assez d''entrepot pour en détruire ',nbBat,' !');
          ReadLn();
        END;
    END;

end.
