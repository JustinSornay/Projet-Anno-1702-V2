unit CreateBatSociaux;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, GestionEcran, GestionErreur, ressources, initialisationPrincip ;

  //Création d'un CentreVille
  PROCEDURE CreateBatSociauxCentreVille();

  //Création d'une Chapelle
  PROCEDURE CreateBatSociauxChapelle();

  //                 //
 //  CoutBatiments //
//                //

  //**************Cout Chapelle***************//

  //Renvoie le Cout du Bois d'une Chapelle
  FUNCTION GetCoutBoisChapelle():INTEGER;

  //Renvoie le Cout des pieces d'Or d'une Chapelle
  FUNCTION GetCoutOrChapelle():INTEGER;

  //Renvoie le Cout des Outils d'une Chapelle
  FUNCTION GetCoutOutilsChapelle():INTEGER;

  //*************Cout CentreVille**********//

  //Renvoie le Cout du Bois d'un CentreVille
  FUNCTION GetCoutBoisCentreVille():INTEGER;

  //Renvoie le Cout des Outils d'un CentreVille
  FUNCTION GetCoutOutilsCentreVille():INTEGER;

  //Renvoie le Cout des pieces d'Or d'un CentreVille
  FUNCTION GetCoutOrCentreVille():INTEGER;

implementation
CONST

    //                      //
  //     CentreVille      //
//                      //
CoutOrCentreVille = 200;
CoutBoisCentreVille = 8;
CoutOutilsCentreVille = 4;

    //                      //
  //     Chapelle         //
//                      //
CoutOrChapelle = 300;
CoutBoisChapelle = 6;
CoutOutilsChapelle = 3;

Var
    nbOr, nbBois, nbOutils, nbBat : Integer;

    //********Curseur**********//
    CurseurRess : coordonnees;

//Création d'un CentreVille
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

    IF (ComparRess(getGold(),nbOr)) and (ComparRess(getBois(),nbBois)) and (ComparRess(getOutils(),nbOutils)) THEN BEGIN     //Si le joueur a assez de ressources
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

        IF (ComparRess(getGold(),nbOr)) and (ComparRess(getBois(),nbBois)) and (ComparRess(getOutils(),nbOutils)) THEN BEGIN     //Si le joueur a assez de ressources
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

      //                 //
     //  CoutBatiments //
    //                //

  //**************Cout Chapelle***************//

  //Renvoie le Cout du Bois d'une Chapelle
  FUNCTION GetCoutBoisChapelle():INTEGER;
  BEGIN
    GetCoutBoisChapelle := CoutBoisChapelle;
  END;

  //Renvoie le Cout des pieces d'Or d'une Chapelle
  FUNCTION GetCoutOrChapelle():INTEGER;
  BEGIN
    GetCoutOrChapelle := CoutOrChapelle;
  END;

  //Renvoie le Cout des Outils d'une Chapelle
  FUNCTION GetCoutOutilsChapelle():INTEGER;
  BEGIN
    GetCoutOutilsChapelle := CoutOutilsChapelle;
  END;

  //*************Cout CentreVille**********//

  //Renvoie le Cout du Bois d'un CentreVille
  FUNCTION GetCoutBoisCentreVille():INTEGER;
  BEGIN
    GetCoutBoisCentreVille := CoutBoisCentreVille;
  END;

  //Renvoie le Cout des Outils d'un CentreVille
  FUNCTION GetCoutOutilsCentreVille():INTEGER;
  BEGIN
    GetCoutOutilsCentreVille := CoutOutilsCentreVille;
  END;

  //Renvoie le Cout des pieces d'Or d'un CentreVille
  FUNCTION GetCoutOrCentreVille():INTEGER;
  BEGIN
    GetCoutOrCentreVille := CoutOrCentreVille;
  END;

end.
