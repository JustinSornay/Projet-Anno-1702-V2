unit CreateBatIndustries;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, GestionEcran, GestionErreur, ressources, initialisationPrincip ;

  //Création d'une Cabane de pecheur
  PROCEDURE CreateBatIndustriesPecheur();

  //Création d'une Cabane de Bucheron
  PROCEDURE CreateBatIndustriesBucheron();

  //Création d'un AtelierTissus
  PROCEDURE CreateBatIndustriesAtelierTissus();

  //Création d'une Bergerie
  PROCEDURE CreateBatIndustriesBergerie();

  //Création d'un Entrepot
  PROCEDURE CreateBatIndustriesEntrepot();

  //                           ------------------                                    //
  //                              CoutBatiments                                     //
  //                           ------------------                                  //

//**************Cout Pecheur***************//

//Renvoie le Cout du Bois d'une Cabane de Pecheur
FUNCTION GetCoutBoisPecheur():INTEGER;


//Renvoie le Cout des pieces d'Or d'une Cabane de Pecheur
FUNCTION GetCoutOrPecheur():INTEGER;


//Renvoie le Cout des Outils d'une Cabane de Pecheur
FUNCTION GetCoutOutilsPecheur():INTEGER;


//*************Cout Cabane de Bucheron**********//

//Renvoie le Cout des Outils d'une Cabane de Bucheron
FUNCTION GetCoutOutilsBucheron():INTEGER;


//Renvoie le Cout des pieces d'Or d'une Cabane de Bucheron
FUNCTION GetCoutOrBucheron():INTEGER;

//**************Cout Atelier de Tissus***************//

//Renvoie le Cout du Bois d'un Atelier de Tissus
FUNCTION GetCoutBoisAtelierTissus():INTEGER;


//Renvoie le Cout des pieces d'Or d'un Atelier de Tissus
FUNCTION GetCoutOrAtelierTissus():INTEGER;


//Renvoie le Cout des Outils d'un Atelier de Tissus
FUNCTION GetCoutOutilsAtelierTissus():INTEGER;

//**************Cout Bergerie***************//

//Renvoie le Cout du Bois d'une Bergerie
FUNCTION GetCoutBoisBergerie():INTEGER;

//Renvoie le Cout des pieces d'Or d'une Bergerie
FUNCTION GetCoutOrBergerie():INTEGER;


//Renvoie le Cout des Outils d'une Bergerie
FUNCTION GetCoutOutilsBergerie():INTEGER;

//**************Cout Entrepot***************//

//Renvoie le Cout du Bois d'un Entrepot
FUNCTION GetCoutBoisEntrepot():INTEGER;


//Renvoie le Cout des pieces d'Or d'un Entrepot
FUNCTION GetCoutOrEntrepot():INTEGER;


//Renvoie le Cout des Outils d'un Entrepot
FUNCTION GetCoutOutilsEntrepot():INTEGER;

implementation
CONST

    //                       //
  //     CabanePecheur      //
//                         //
CoutOrPecheur = 100;
CoutBoisPecheur = 5;
CoutOutilsPecheur = 3;

    //                      //
  //     CabaneBucheron   //
//                      //
CoutOrBucheron = 50;
CoutOutilsBucheron = 3;

    //                      //
  //     AtelierTissus    //
//                      //
CoutOrTisserand = 300;
CoutBoisTisserand = 3;
CoutOutilsTisserand = 2;

    //                      //
  //     Bergerie         //
//                      //
CoutOrBergerie = 200;
CoutBoisBergerie = 4;
CoutOutilsBergerie = 2;

  //                      //
 //     Entrepot         //
//                      //
CoutOrEntrepot = 200;
CoutBoisEntrepot = 5;
CoutOutilsEntrepot = 3;
Var
    nbOr, nbBois, nbOutils, nbBat : Integer;

    //********Curseur**********//
    CurseurRess : coordonnees;

//Création d'une Cabane de pecheur
PROCEDURE CreateBatIndustriesPecheur();
BEGIN
CurseurRess := positionCurseur();
CurseurRess.y := CurseurRess.y + 1;
deplacerCurseur(CurseurRess);
  writeln('Combien de Cabane de pecheur voulez-vous construire ?');
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  Readln(nbBat);
  nbBois := nbBat * CoutBoisPecheur;  //Calcule du nombre de Bois qu'il va falloir utiliser
  nbOr := nbBat * CoutOrPecheur; //Calcule du nombre de piece d'or qu'il va falloir utiliser
  nbOutils := nbBat * CoutOutilsPecheur; //Calcule du nombre d'Outils' qu'il va falloir utiliser

    IF (ComparRess(getGold(),nbOr)) and (ComparRess(getBois(),nbBois)) and (ComparRess(getOutils(),nbOutils)) THEN BEGIN     //Si le joueur a assez de ressources  //Enlevé  OR et nbOutils
      setBois(getBois() - nbBois);  //Retrait du cout des batiments sur le bois du joueur
      setGold(getGold() - nbOr);  //Retrait du cout des batiments sur l'or du joueur
      setOutils(getOutils() - nbOutils);  //Retrait du cout des batiments sur les outils du joueur
      setCabanePecheur(getCabanePecheur() + nbBat); //Ajout du nombre de Cabane de Pecheur

      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);

      writeln('Vous avez construit : ',nbBat,' Cabane de pecheur !');
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
      writeln('Vous avez pas assez de ressources pour ',nbBat,' Cabane de pecheur !');
      ReadLn();
    END;
END;

//Création d'une Cabane de Bucheron
PROCEDURE CreateBatIndustriesBucheron();
BEGIN
CurseurRess := positionCurseur();
CurseurRess.y := CurseurRess.y + 1;
deplacerCurseur(CurseurRess);
  writeln('Combien de Cabane de bucheron voulez-vous construire ?');
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  Readln(nbBat);
  nbOr := nbBat * CoutOrBucheron; //Calcule du nombre de piece d'or qu'il va falloir utiliser
  nbOutils := nbBat * CoutOutilsBucheron; //Calcule du nombre d'Outils' qu'il va falloir utiliser

      IF (ComparRess(getBois(),nbBois)) and (ComparRess(getOutils(),nbOutils)) THEN BEGIN     //Si le joueur a assez de ressources
        setGold(getGold() - nbOr);  //Retrait du cout des batiments sur le bois du joueur
        setOutils(getOutils() - nbOutils);  //Retrait du cout des batiments sur les outils du joueur
        setCabaneBucheron(getCabaneBucheron() + nbBat); //Ajout du nombre de Cabane de bucheron
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
        writeln('Vous avez construit : ',nbBat,' Cabane de bucheron !');
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
        WriteLn('(',nbOr,' Or, ',nbOutils,' Outils)');
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
        readln();

        END
        ELSE BEGIN  //Si le joueur n'a pas assez de Ressources
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Vous avez pas assez de ressources pour ',nbBat,' Cabane de bucheron !');
          ReadLn();
        END;
END;

//Création d'un AtelierTissus
PROCEDURE CreateBatIndustriesAtelierTissus();
BEGIN
CurseurRess := positionCurseur();
CurseurRess.y := CurseurRess.y + 1;
deplacerCurseur(CurseurRess);
  writeln('Combien d''atelier de tisserand voulez-vous construire ?');
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  Readln(nbBat);
  nbBois := nbBat * CoutBoisTisserand;  //Calcule du nombre de Bois qu'il va falloir utiliser
  nbOr := nbBat * CoutOrTisserand; //Calcule du nombre de piece d'or qu'il va falloir utiliser
  nbOutils := nbBat * CoutOutilsTisserand; //Calcule du nombre d'Outils' qu'il va falloir utiliser

    IF (ComparRess(getGold(),nbOr)) and (ComparRess(getBois(),nbBois)) and (ComparRess(getOutils(),nbOutils)) THEN BEGIN     //Si le joueur a assez de ressources
      setBois(getBois() - nbBois);  //Retrait du cout des batiments sur le bois du joueur
      setGold(getGold() - nbOr);  //Retrait du cout des batiments sur l'or du joueur
      setOutils(getOutils() - nbOutils);  //Retrait du cout des batiments sur les outils du joueur
      setAtelierTissus(getAtelierTissus() + nbBat); //Ajout du nombre d'atelier de tisserand

      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);

      writeln('Vous avez construit : ',nbBat,' atelier de tisserand !');
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
      writeln('Vous avez pas assez de ressources pour ',nbBat,' atelier de tisserand !');
      ReadLn();
    END;
END;

//Création d'une Bergerie
PROCEDURE CreateBatIndustriesBergerie();
BEGIN
CurseurRess := positionCurseur();
CurseurRess.y := CurseurRess.y + 1;
deplacerCurseur(CurseurRess);
  writeln('Combien de Bergerie voulez-vous construire ?');
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  Readln(nbBat);
  nbBois := nbBat * CoutBoisBergerie;  //Calcule du nombre de Bois qu'il va falloir utiliser
  nbOr := nbBat * CoutOrBergerie; //Calcule du nombre de piece d'or qu'il va falloir utiliser
  nbOutils := nbBat * CoutOutilsBergerie; //Calcule du nombre d'Outils' qu'il va falloir utiliser

    IF (ComparRess(getGold(),nbOr)) and (ComparRess(getBois(),nbBois)) and (ComparRess(getOutils(),nbOutils)) THEN BEGIN     //Si le joueur a assez de ressources
      setBois(getBois() - nbBois);  //Retrait du cout des batiments sur le bois du joueur
      setGold(getGold() - nbOr);  //Retrait du cout des batiments sur l'or du joueur
      setOutils(getOutils() - nbOutils);  //Retrait du cout des batiments sur les outils du joueur
      setBergerie(getBergerie() + nbBat); //Ajout du nombre de Bergerie

      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);

      writeln('Vous avez construit : ',nbBat,' Bergerie !');
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
      writeln('Vous avez pas assez de ressources pour ',nbBat,' Bergerie !');
      ReadLn();
    END;
END;

//Création d'un Entrepot
PROCEDURE CreateBatIndustriesEntrepot();
BEGIN
CurseurRess := positionCurseur();
CurseurRess.y := CurseurRess.y + 1;
deplacerCurseur(CurseurRess);
  writeln('Combien d''Entrepot voulez-vous construire ?');
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  Readln(nbBat);
  nbBois := nbBat * CoutBoisEntrepot;  //Calcule du nombre de Bois qu'il va falloir utiliser
  nbOr := nbBat * CoutOrEntrepot; //Calcule du nombre de piece d'or qu'il va falloir utiliser
  nbOutils := nbBat * CoutOutilsEntrepot; //Calcule du nombre d'Outils' qu'il va falloir utiliser

    IF (ComparRess(getGold(),nbOr)) and (ComparRess(getBois(),nbBois)) and (ComparRess(getOutils(),nbOutils)) THEN BEGIN     //Si le joueur a assez de ressources
      setBois(getBois() - nbBois);  //Retrait du cout des batiments sur le bois du joueur
      setGold(getGold() - nbOr);  //Retrait du cout des batiments sur l'or du joueur
      setOutils(getOutils() - nbOutils);  //Retrait du cout des batiments sur les outils du joueur
      setEntrepot(getEntrepot() + nbBat); //Ajout du nombre de Entrepot

      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);

      writeln('Vous avez construit : ',nbBat,' Entrepot !');
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
      writeln('Vous avez pas assez de ressources pour ',nbBat,' Entrepot !');
      ReadLn();
    END;
END;

  //                           ------------------                                    //
 //                              CoutBatiments                                     //
//                           ------------------                                  //

//**************Cout Pecheur***************//

//Renvoie le Cout du Bois d'une Cabane de Pecheur
FUNCTION GetCoutBoisPecheur():INTEGER;
BEGIN
  GetCoutBoisPecheur := CoutBoisPecheur;
END;

//Renvoie le Cout des pieces d'Or d'une Cabane de Pecheur
FUNCTION GetCoutOrPecheur():INTEGER;
BEGIN
  GetCoutOrPecheur := CoutOrPecheur;
END;

//Renvoie le Cout des Outils d'une Cabane de Pecheur
FUNCTION GetCoutOutilsPecheur():INTEGER;
BEGIN
  GetCoutOutilsPecheur := CoutOutilsPecheur;
END;

//*************Cout Cabane de Bucheron**********//

//Renvoie le Cout des Outils d'une Cabane de Bucheron
FUNCTION GetCoutOutilsBucheron():INTEGER;
BEGIN
  GetCoutOutilsBucheron := CoutOutilsBucheron;
END;

//Renvoie le Cout des pieces d'Or d'une Cabane de Bucheron
FUNCTION GetCoutOrBucheron():INTEGER;
BEGIN
  GetCoutOrBucheron := CoutOrBucheron;
END;

//**************Cout Atelier de Tissus***************//

//Renvoie le Cout du Bois d'un Atelier de Tissus
FUNCTION GetCoutBoisAtelierTissus():INTEGER;
BEGIN
  GetCoutBoisAtelierTissus := CoutBoisTisserand;
END;

//Renvoie le Cout des pieces d'Or d'un Atelier de Tissus
FUNCTION GetCoutOrAtelierTissus():INTEGER;
BEGIN
  GetCoutOrAtelierTissus := CoutOrTisserand;
END;

//Renvoie le Cout des Outils d'un Atelier de Tissus
FUNCTION GetCoutOutilsAtelierTissus():INTEGER;
BEGIN
  GetCoutOutilsAtelierTissus := CoutOutilsTisserand;
END;

//**************Cout Bergerie***************//

//Renvoie le Cout du Bois d'une Bergerie
FUNCTION GetCoutBoisBergerie():INTEGER;
BEGIN
  GetCoutBoisBergerie := CoutBoisBergerie;
END;

//Renvoie le Cout des pieces d'Or d'une Bergerie
FUNCTION GetCoutOrBergerie():INTEGER;
BEGIN
  GetCoutOrBergerie := CoutOrBergerie;
END;

//Renvoie le Cout des Outils d'une Bergerie
FUNCTION GetCoutOutilsBergerie():INTEGER;
BEGIN
  GetCoutOutilsBergerie := CoutOutilsBergerie;
END;

//**************Cout Entrepot***************//

//Renvoie le Cout du Bois d'un Entrepot
FUNCTION GetCoutBoisEntrepot():INTEGER;
BEGIN
  GetCoutBoisEntrepot := CoutBoisEntrepot;
END;

//Renvoie le Cout des pieces d'Or d'un Entrepot
FUNCTION GetCoutOrEntrepot():INTEGER;
BEGIN
  GetCoutOrEntrepot := CoutOrEntrepot;
END;

//Renvoie le Cout des Outils d'un Entrepot
FUNCTION GetCoutOutilsEntrepot():INTEGER;
BEGIN
  GetCoutOutilsEntrepot := CoutOutilsEntrepot;
END;

end.

//Faire la condition si Entrepot contruit modifier valeur de ValEntrepot en ValEntrepot * nbBat
