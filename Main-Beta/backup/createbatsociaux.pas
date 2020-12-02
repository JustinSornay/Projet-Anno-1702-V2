unit CreateBatSociaux;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, GestionEcran, GestionErreur, ressources, initialisationPrincip;

  //Création d'un CentreVille
  PROCEDURE CreateBatSociauxCentreVille();

  //Création d'une Chapelle
  PROCEDURE CreateBatSociauxChapelle();

implementation
CONST
    //                      //
  //     Maison Col       //
//                      //
    CoutBoisMaisonCol = 2;

    //                      //
  //     CentreVille      //
//                      //
CoutOrCentreVille = 200;
CoutBoisCentreVille= 8;
CoutOutilsCentreVille = 4;

    //                      //
  //     Chapelle         //
//                      //
CoutOrChapelle = 300;
CoutBoisChapelle = 6;
CoutOutilsChapelle = 3;

Var
    nbOr, nbBois,nbOutils, nbBat : Integer;

    //********Curseur**********//
    CurseurRess : coordonnees;


PROCEDURE CreateBatSociauxCentreVille();
  BEGIN
  CurseurRess := positionCurseur();
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
    writeln('Combien de Centre-Ville voulez-vous construire ?');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    Readln(nbBat);
    nbBois := nbBat * CoutBoisCentreVille;  //Calcule du nombre de Bois qu'il va falloir utiliser
    nbOr := nbBat * CoutOrCentreVille; //Calcule du nombre de piece d'or qu'il va falloir utiliser
    nbOutils := nbBat * CoutOutilsCentreVille; //Calcule du nombre d'Outils' qu'il va falloir utiliser

    IF (ComparRess(getGold(),nbOr)) and (ComparRess(getBois(),nbBois)) and (ComparRess(getOutils(),nbOutils)) THEN BEGIN     //Si le joueur a assez de ressources  //Enlevé  OR et nbOutils
      setBois(getBois() - nbBois);  //Retrait du cout des batiments sur le bois du joueur
      setGold(getGold() - nbOr);  //Retrait du cout des batiments sur l'or du joueur
      setOutils(getOutils() - nbOutils);  //Retrait du cout des batiments sur les outils du joueur
      setCentreVille(getCentreVille() + nbBat); //Ajout du nombre de CentreVille

      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);

      writeln('Vous avez construit : ',nbBat,' Centre-Ville !');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      WriteLn('(',nbBois,' Bois, ',nbOr,' Or, ',nbOutils,' Outils)');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      readln();

    END
    ELSE BEGIN  //Si le joueur n'a pas assez de Ressources
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      writeln('Vous avez pas assez de ressources pour ',nbBat,' Centre-Ville!');
      ReadLn();
    END;
  END;

  //Création d'une Chapelle
  PROCEDURE CreateBatSociauxChapelle();
  BEGIN
  CurseurRess := positionCurseur();
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
    writeln('Combien de Chapelle voulez-vous construire ?');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    Readln(nbBat);
    nbBois := nbBat * CoutBoisChapelle;  //Calcule du nombre de Bois qu'il va falloir utiliser
    nbOr := nbBat * CoutOrChapelle; //Calcule du nombre de piece d'or qu'il va falloir utiliser
    nbOutils := nbBat * CoutOutilsChapelle; //Calcule du nombre d'Outils' qu'il va falloir utiliser

        IF (ComparRess(getGold(),nbOr)) and (ComparRess(getBois(),nbBois)) and (ComparRess(getOutils(),nbOutils)) THEN BEGIN     //Si le joueur a assez de ressources  //Enlevé  OR et nbOutils
          setBois(getBois() - nbBois);  //Retrait du cout des batiments sur le bois du joueur
          setGold(getGold() - nbOr);  //Retrait du cout des batiments sur l'or du joueur
          setOutils(getOutils() - nbOutils);  //Retrait du cout des batiments sur les outils du joueur
          setChapelle(getChapelle() + nbBat); //Ajout du nombre de Chapelle
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Vous avez construit : ',nbBat,' Chapelles !');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          WriteLn('(',nbBois,' Bois, ',nbOr,' Or, ',nbOutils,' Outils)');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          readln();

          END
          ELSE BEGIN  //Si le joueur n'a pas assez de Ressources
            CurseurRess.y := CurseurRess.y + 1;
            deplacerCurseur(CurseurRess);
            writeln('Vous avez pas assez de ressources pour ',nbBat,' Chapelles !');
            ReadLn();
          END;
  END;

end.
