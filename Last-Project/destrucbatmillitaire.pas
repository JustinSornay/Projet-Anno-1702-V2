unit DestrucBatMillitaire;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,GestionEcran,GestionErreur,SystemeTour,initialisationPrincip;

procedure DestructBatCaserneSol();
procedure DestructBatCaserneOff();
procedure DestructBatCaserneCap();

procedure DestructBatChanEx();
procedure DestructBatChanCon();

procedure DestructBatNavEx();
procedure DestructBatNavCon();


implementation

Var
    nbBat : Integer;
    CurseurRess : coordonnees;

    //Destruction d'une caserne de soldat
        PROCEDURE DestructBatCaserneSol();
        BEGIN
        CurseurRess := positionCurseur();
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
          writeln('Combien de Caserne de soldat voulez-vous détruire ?');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseurXY(59, 21);
          AfficheTour();
          Readln(nbBat);

            IF (ComparRess(getCaserneSoldat(),nbBat)) THEN BEGIN     //Si le joueur a assez de Caserne de soldat a détruire
              setCaserneSoldat(getCaserneSoldat() - nbBat); //Enleve le nombre de caserne de soldat

              CurseurRess.y := CurseurRess.y + 1;
              deplacerCurseur(CurseurRess);

              writeln('Vous avez détruit : ',nbBat,' Caserne de soldat !');
              CurseurRess.y := CurseurRess.y + 1;
              deplacerCurseur(CurseurRess);
              readln();

            END
            ELSE BEGIN  //Si le joueur a assez de Caserne de soldat a détruire
            CurseurRess.y := CurseurRess.y + 1;
            deplacerCurseur(CurseurRess);
              writeln('Vous ne possédé pas assez de caserne de soldat pour en détruire ',nbBat,' !');
              ReadLn();
            END;
        END;

//Destruction d'une caserne d'officier
         PROCEDURE DestructBatCaserneOff();
               BEGIN
               CurseurRess := positionCurseur();
               deplacerCurseurXY(59, 21);
               deplacerCurseur(CurseurRess);
                 writeln('Combien de Caserne d''officier voulez-vous détruire ?');
                 CurseurRess.y := CurseurRess.y + 1;
                 deplacerCurseur(CurseurRess);
                 AfficheTour();
                 Readln(nbBat);

                   IF (ComparRess(getCaserneOfficier(),nbBat)) THEN BEGIN     //Si le joueur a assez de Caserne d'officer a détruire
                     setCaserneOfficier(getCaserneOfficier() - nbBat); //Enleve le nombre de caserne d'officer

                     CurseurRess.y := CurseurRess.y + 1;
                     deplacerCurseur(CurseurRess);

                     writeln('Vous avez détruit : ',nbBat,' Caserne d''officier !');
                     CurseurRess.y := CurseurRess.y + 1;
                     deplacerCurseur(CurseurRess);
                     readln();

                   END
                   ELSE BEGIN  //Si le joueur a assez de Caserne d'officer a détruire
                   CurseurRess.y := CurseurRess.y + 1;
                   deplacerCurseur(CurseurRess);
                     writeln('Vous ne possédé pas assez de caserne d''officier pour en détruire ',nbBat,' !');
                     ReadLn();
                   END;
               END;

         //Destruction d'une caserne de capitaine
                  PROCEDURE DestructBatCaserneCap();
                        BEGIN
                        CurseurRess := positionCurseur();
                        CurseurRess.y := CurseurRess.y + 1;
                        deplacerCurseur(CurseurRess);
                          writeln('Combien de Caserne de capitaine voulez-vous détruire ?');
                           deplacerCurseurXY(59, 21);
                          deplacerCurseur(CurseurRess);
                          AfficheTour();
                          Readln(nbBat);

                            IF (ComparRess(getCaserneCapitaine(),nbBat)) THEN BEGIN     //Si le joueur a assez de caserne de capitaine   a détruire
                              setCaserneCapitaine(getCaserneCapitaine() - nbBat); //Enleve le nombre de caserne de capitaine

                              CurseurRess.y := CurseurRess.y + 1;
                              deplacerCurseur(CurseurRess);

                              writeln('Vous avez détruit : ',nbBat,' Caserne de capitaine !');
                              CurseurRess.y := CurseurRess.y + 1;
                              deplacerCurseur(CurseurRess);
                              readln();

                            END
                            ELSE BEGIN  //Si le joueur a assez de caserne de capitaine   a détruire
                            CurseurRess.y := CurseurRess.y + 1;
                            deplacerCurseur(CurseurRess);
                              writeln('Vous ne possédé pas assez de caserne de capitaine pour en détruire ',nbBat,' !');
                              ReadLn();
                            END;
                        END;

//Destruction d'un chantier navale d'exploration
PROCEDURE DestructBatChanEx();
BEGIN
CurseurRess := positionCurseur();
CurseurRess.y := CurseurRess.y + 1;
deplacerCurseur(CurseurRess);
writeln('Combien de chantier navale d''exploration voulez-vous détruire ?');
deplacerCurseurXY(59, 21);
deplacerCurseur(CurseurRess);
AfficheTour();
Readln(nbBat);

IF (ComparRess(getChantierExploration(),nbBat)) THEN
   BEGIN     //Si le joueur a assez de chantier navale d'exploration a détruire
             setChantierExploration(getChantierExploration() - nbBat); //Enleve le nombre de caserne de capitaine

             CurseurRess.y := CurseurRess.y + 1;
             deplacerCurseur(CurseurRess);

             writeln('Vous avez détruit : ',nbBat,' Caserne de capitaine !');
             CurseurRess.y := CurseurRess.y + 1;
             deplacerCurseur(CurseurRess);
             readln();

   END
   ELSE BEGIN  //Si le joueur a assez de chantier naval d'exploration   a détruire
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
        writeln('Vous ne possédé pas assez de chantier navale d''exploration pour en détruire ',nbBat,' !');
        ReadLn();
   END;
END;

//Destruction d'un chantier navale de conquete
PROCEDURE DestructBatChanCon();
BEGIN
CurseurRess := positionCurseur();
CurseurRess.y := CurseurRess.y + 1;
deplacerCurseur(CurseurRess);
writeln('Combien de chantier navale d''exploration voulez-vous détruire ?');
CurseurRess.y := CurseurRess.y + 1;
deplacerCurseurXY(59, 21);
AfficheTour();
Readln(nbBat);

IF (ComparRess(getChantierConquete(),nbBat)) THEN
   BEGIN     //Si le joueur a assez de chantier navale  navale de conquete  a détruire
             setChantierConquete(getChantierConquete() - nbBat); //Enleve le nombre de chantier navale de conquete

             CurseurRess.y := CurseurRess.y + 1;
             deplacerCurseur(CurseurRess);

             writeln('Vous avez détruit : ',nbBat,' chantier navale de conquete  !');
             CurseurRess.y := CurseurRess.y + 1;
             deplacerCurseur(CurseurRess);
             readln();

   END
   ELSE BEGIN  //Si le joueur a assez de chantier  navale de conquete   a détruire
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
        writeln('Vous ne possédé pas assez de chantier navale de conquete pour en détruire ',nbBat,' !');
        ReadLn();
   END;
END;

//Destruction d'un navire d'exploration
PROCEDURE DestructBatNavEx();
BEGIN
CurseurRess := positionCurseur();
CurseurRess.y := CurseurRess.y + 1;
deplacerCurseur(CurseurRess);
writeln('Combien de navire d''exploration voulez-vous détruire ?');
CurseurRess.y := CurseurRess.y + 1;
deplacerCurseurXY(59, 21);
AfficheTour();
Readln(nbBat);

IF (ComparRess(getNavireExploration(),nbBat)) THEN
   BEGIN     //Si le joueur a assez de navire d'exploration  a détruire
             setNavireExploration(getNavireExploration() - nbBat); //Enleve le nombre navire d'exploration

             CurseurRess.y := CurseurRess.y + 1;
             deplacerCurseur(CurseurRess);

             writeln('Vous avez détruit : ',nbBat,' navire d''exploration  !');
             CurseurRess.y := CurseurRess.y + 1;
             deplacerCurseur(CurseurRess);
             readln();

   END
   ELSE BEGIN  //Si le joueur a assez de chantier  navale de conquete   a détruire
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
        writeln('Vous ne possédé pas assez de navire d''exploration pour en détruire ',nbBat,' !');
        ReadLn();
   END;
END;

//Destruction d'un navire d'exploration
PROCEDURE DestructBatNavCon();
BEGIN
CurseurRess := positionCurseur();
CurseurRess.y := CurseurRess.y + 1;
deplacerCurseur(CurseurRess);
writeln('Combien de navire de conquete voulez-vous détruire ?');
CurseurRess.y := CurseurRess.y + 1;
deplacerCurseurXY(59, 21);
AfficheTour();
Readln(nbBat);

IF (ComparRess(getNavireConquete(),nbBat)) THEN
   BEGIN     //Si le joueur a assez de navire de conquete  a détruire
             setNavireConquete(getNavireConquete() - nbBat); //Enleve le nombre navire de conquete

             CurseurRess.y := CurseurRess.y + 1;
             deplacerCurseur(CurseurRess);

             writeln('Vous avez détruit : ',nbBat,' navire d''exploration  !');
             CurseurRess.y := CurseurRess.y + 1;
             deplacerCurseur(CurseurRess);
             readln();

   END
   ELSE BEGIN  //Si le joueur a assez de navire de conquete a détruire
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
        writeln('Vous ne possédé pas assez de navire de conquete pour en détruire ',nbBat,' !');
        ReadLn();
   END;
END;

end.

