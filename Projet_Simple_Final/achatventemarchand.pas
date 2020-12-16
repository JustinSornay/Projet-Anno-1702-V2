unit AchatVenteMarchand;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, GestionEcran, GestionErreur, ressources, initialisationPrincip;

{****************Acheter***********************}
  //Achat de Bois avec le marchand
    PROCEDURE AchatBois();
  //Achat de Poissons avec le marchand
    PROCEDURE AchatPoissons();
  //Achat de Poissons avec le marchand
    PROCEDURE AchatOutils();
  //Achat de Poissons avec le marchand
   PROCEDURE AchatLaines();
  //Achat de Poissons avec le marchand
   PROCEDURE AchatTissus();

{****************Vendre***********************}
   //Vendre de Bois avec le marchand
     PROCEDURE VendreBois();
   //Vendre de Poissons avec le marchand
     PROCEDURE VendrePoissons();
   //Vendre de Poissons avec le marchand
     PROCEDURE VendreOutils();
   //Vendre de Poissons avec le marchand
    PROCEDURE VendreLaines();
   //Vendre de Poissons avec le marchand
    PROCEDURE VendreTissus();

implementation
var
    NbRessources : INTEGER;
    CurseurRess: coordonnees;



{*************************ACHAT DE RESSOURCES**********************************}

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

  //Achat de Poissons avec le marchand
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

    //Achat de Outils avec le marchand
      PROCEDURE AchatOutils();
      BEGIN

      CurseurRess := positionCurseur();
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
        writeln('Combien d''Outils''s voulez-vous acheter ?');
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
        Readln(NbRessources);

          IF (ComparRess(getGold(),MarchandCoutOutils())) THEN BEGIN     //Si le joueur a assez d'or
            setGold(getGold() - (NbRessources * MarchandCoutOutils()));  //Retrait de l'or
            setOutils(getOutils() + NbRessources); //Ajout des ressoures
            deplacerCurseur(CurseurRess);
            writeln('Vous avez acheter : ',NbRessources,' Outils !');
            CurseurRess.y := CurseurRess.y + 1;
            deplacerCurseur(CurseurRess);
            readln();

          END
          ELSE BEGIN  //Si le joueur n'a pas assez d'or'
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
            writeln('Vous ne possédé pas assez d''Or pour acheter ',NbRessources,' Outils !');
            ReadLn();
          END;
      END;

      //Achat de Laines avec le marchand
        PROCEDURE AchatLaines();
        BEGIN

        CurseurRess := positionCurseur();
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
          writeln('Combien de Laines voulez-vous acheter ?');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          Readln(NbRessources);

            IF (ComparRess(getGold(),MarchandCoutLaine()))THEN BEGIN     //Si le joueur a assez d'or
              setGold(getGold() - (NbRessources * MarchandCoutLaine()));  //Retrait de l'or
              setLaines(getLaines() + NbRessources); //Ajout des ressoures
              deplacerCurseur(CurseurRess);
              writeln('Vous avez acheter : ',NbRessources,' Laines !');
              CurseurRess.y := CurseurRess.y + 1;
              deplacerCurseur(CurseurRess);
              readln();

            END
            ELSE BEGIN  //Si le joueur n'a pas assez d'or'
            CurseurRess.y := CurseurRess.y + 1;
            deplacerCurseur(CurseurRess);
              writeln('Vous ne possédé pas assez d''Or pour acheter ',NbRessources,' Laines !');
              ReadLn();
            END;
        END;

        //Achat de Tissus avec le marchand
          PROCEDURE AchatTissus();
          BEGIN

          CurseurRess := positionCurseur();
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
            writeln('Combien de Tissus voulez-vous acheter ?');
            CurseurRess.y := CurseurRess.y + 1;
            deplacerCurseur(CurseurRess);
            Readln(NbRessources);

              IF (ComparRess(getGold(),MarchandCoutTissus())) THEN BEGIN     //Si le joueur a assez d'or
                setGold(getGold() - (NbRessources * MarchandCoutTissus()));  //Retrait de l'or
                setTissus(getTissus() + NbRessources); //Ajout des ressoures
                deplacerCurseur(CurseurRess);
                writeln('Vous avez acheter : ',NbRessources,' Tissus !');
                CurseurRess.y := CurseurRess.y + 1;
                deplacerCurseur(CurseurRess);
                readln();

              END
              ELSE BEGIN  //Si le joueur n'a pas assez d'or'
              CurseurRess.y := CurseurRess.y + 1;
              deplacerCurseur(CurseurRess);
                writeln('Vous ne possédé pas assez d''Or pour acheter ',NbRessources,' Tissus !');
                ReadLn();
              END;
          END;

{*************************VENDRE RESSOURCES*********************************}

//Vente de Bois avec le marchand
  PROCEDURE VendreBois();
  BEGIN

  CurseurRess := positionCurseur();
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
    writeln('Combien de bois voulez-vous vendre ?');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    Readln(NbRessources);

      IF (ComparRess(getBois(),NbRessources)) THEN BEGIN     //Si le joueur a assez de ressource a vendre
        setGold(getGold() + (NbRessources * MarchandCoutBois()));  //ajout de l'or
        setBois(getBois() - NbRessources); //retrait des ressoures
        deplacerCurseur(CurseurRess);
        writeln('Vous avez vendu : ',NbRessources,' Bois !');
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
        readln();

      END
      ELSE BEGIN  //Si le joueur n'a pas assez de bois
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
        writeln('Vous ne possédé pas ',NbRessources,' bois !');
        ReadLn();
      END;
  END;

  //Vente de Poissons avec le marchand
    PROCEDURE VendrePoissons();
    BEGIN

    CurseurRess := positionCurseur();
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
      writeln('Combien de Poissons voulez-vous vendre ?');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      Readln(NbRessources);

        IF (ComparRess(getPoissons(),NbRessources)) THEN BEGIN     //Si le joueur a assez de poissons
          setGold(getGold() + (NbRessources * MarchandCoutpoissons()));  //ajout de l'or
          setPoissons(getPoissons() - NbRessources); //Retrait des ressoures
          deplacerCurseur(CurseurRess);
          writeln('Vous avez vendu : ',NbRessources,' Poissons !');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          readln();

        END
        ELSE BEGIN  //Si le joueur n'a pas assez de poissons
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
          writeln('Vous ne possédé pas ',NbRessources,' Poissons !');
          ReadLn();
        END;
    END;

    //Vente d'Outils avec le marchand
      PROCEDURE VendreOutils();
      BEGIN

      CurseurRess := positionCurseur();
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
        writeln('Combien d''Outils voulez-vous vendre ?');
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
        Readln(NbRessources);

          IF (ComparRess(getOutils(),NbRessources)) THEN BEGIN     //Si le joueur a assez d'Outils
            setGold(getGold() + (NbRessources * MarchandCoutOutils()));  //ajout de l'or
            setOutils(getOutils() - NbRessources); //Retrait des Outils
            deplacerCurseur(CurseurRess);
            writeln('Vous avez vendu : ',NbRessources,' Outils !');
            CurseurRess.y := CurseurRess.y + 1;
            deplacerCurseur(CurseurRess);
            readln();

          END
          ELSE BEGIN  //Si le joueur n'a pas assez d'Outils
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
            writeln('Vous ne possédé pas ',NbRessources,' Outils !');
            ReadLn();
          END;
      END;

      //Vente de Laines avec le marchand
        PROCEDURE VendreLaines();
        BEGIN

        CurseurRess := positionCurseur();
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
          writeln('Combien de Laines voulez-vous vendre ?');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          Readln(NbRessources);

            IF (ComparRess(getLaines(),NbRessources)) THEN BEGIN     //Si le joueur a assez de Laines
              setGold(getGold() + (NbRessources * MarchandCoutLaine()));  //ajout de l'or
              setLaines(getLaines() - NbRessources); //Retrait de la laines
              deplacerCurseur(CurseurRess);
              writeln('Vous avez vendu : ',NbRessources,' Laines !');
              CurseurRess.y := CurseurRess.y + 1;
              deplacerCurseur(CurseurRess);
              readln();

            END
            ELSE BEGIN  //Si le joueur n'a pas assez de Laines
            CurseurRess.y := CurseurRess.y + 1;
            deplacerCurseur(CurseurRess);
              writeln('Vous ne possédé pas ',NbRessources,' Laines !');
              ReadLn();
            END;
        END;

        //Vente de Tissus avec le marchand
          PROCEDURE VendreTissus();
          BEGIN

          CurseurRess := positionCurseur();
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
            writeln('Combien de Tissus voulez-vous vendre ?');
            CurseurRess.y := CurseurRess.y + 1;
            deplacerCurseur(CurseurRess);
            Readln(NbRessources);

              IF (ComparRess(getTissus(),NbRessources)) THEN BEGIN     //Si le joueur a assez de Tissus
                setGold(getGold() + (NbRessources * MarchandCoutTissus()));  //Ajout de l'or
                deplacerCurseur(CurseurRess);
                writeln('Vous avez vendu : ',NbRessources,' Tissus !');
                CurseurRess.y := CurseurRess.y + 1;
                deplacerCurseur(CurseurRess);
                readln();

              END
              ELSE BEGIN  //Si le joueur n'a pas assez de Tissus
              CurseurRess.y := CurseurRess.y + 1;
              deplacerCurseur(CurseurRess);
                writeln('Vous ne possédé pas ',NbRessources,' Tissus !');
                ReadLn();
              END;
          END;

end.
