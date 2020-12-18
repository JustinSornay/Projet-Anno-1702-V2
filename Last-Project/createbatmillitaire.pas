unit CreateBatMillitaire;

{$mode objfpc}{$H+}

interface

uses
initialisationPrincip,GestionEcran,SystemeTour,ressources,GestionErreur;

         //              //
         // Construction //
         //              //

//**************Casernes****************//

//procedure pour creer une caserne de soldat
procedure CreateBatCaserneSoldat();

//procedure pour creer une caserne d'officier
procedure CreateBatCaserneOfficier();

//procedure pour creer une caserne de capitaine
procedure CreateBatCaserneCapitaine();

//**********Chantier Navale************//
procedure CreateBatChantierExploration();

procedure CreateBatChantierConquete();

//**************Recrutement****************//
//procedure pour créer un soldat
procedure CreateSoldat();

//procedure pour créer un officier
procedure CreateOfficier();

//procedure pour créer un capitaine
procedure CreateCapitaine();


//**************Navires***************//
procedure CreateBatNavireExploration();

procedure CreateBatNavireConquete();

          //           //
          //    Cout   //
          //           //

//*************Caserne***************//
//Caserne soldat
FUNCTION GetCoutBoisCaserneSol():INTEGER;
FUNCTION GetCoutGoldCaserneSol():INTEGER;
FUNCTION GetCoutOutilsdCaserneSol():INTEGER;

//Caserne Officier
FUNCTION GetCoutBoisCaserneOffi():INTEGER;
FUNCTION GetCoutGoldCaserneOffi():INTEGER;
FUNCTION GetCoutOutilsCaserneOffi():INTEGER;
FUNCTION GetCoutTissuCaserneOffi():INTEGER;
//Caserne Capitaine
FUNCTION GetCoutBoisCaserneCap():INTEGER;
FUNCTION GetCoutGoldCaserneCap():INTEGER;
FUNCTION GetCoutOutilsCaserneCap():INTEGER;
FUNCTION GetCoutTissuCaserneCap():INTEGER;

//**********Chantier Naval************//
//Chantier Naval Exploration
FUNCTION GetCoutBoisChanEx():INTEGER;
FUNCTION GetCoutGoldChanEx():INTEGER;
FUNCTION GetCoutOutilsChanEx():INTEGER;
//Chantier Naval Conquete
FUNCTION GetCoutBoisChanCon():INTEGER;
FUNCTION GetCoutGoldChanCon():INTEGER;
FUNCTION GetCoutOutilsChanCon():INTEGER;

//************Navires*****************//
//Navire exploration
FUNCTION GetCoutBoisNavEx():INTEGER;
FUNCTION GetCoutGoldNavEx():INTEGER;
FUNCTION GetCoutOutilsNavEx():INTEGER;
FUNCTION GetCoutTissuNavEx():INTEGER;
//Navire Conquete
FUNCTION GetCoutBoisCon():INTEGER;
FUNCTION GetCoutGoldNavCon():INTEGER;
FUNCTION GetCoutOutilsNavCon():INTEGER;
FUNCTION GetCoutTissuNavCon():INTEGER;

//************Recrutement*****************//
function GetCoutGoldSol():INTEGER;
function GetCoutGoldOff():INTEGER;
function GetCoutGoldCap():INTEGER;

function GetCoutPoissonSol():INTEGER;
function GetCoutPoissonOff():INTEGER;
function GetCoutPoissonCap():INTEGER;


var
   nbOr, nbBois, nbOutils,nbTissu, nbBat,nbPoisson : Integer;


implementation
        //                //
        //     CONST      //
        //                //
 const
//**********Cout Bois*************//
CoutBoisCaserneSol = 4;
CoutBoisCaserneOff = 6;
CoutBoisCaserneCap = 10;

CoutBoisChanEx = 10;
CoutBoisChanCon= 20;

CoutBoisNavEx = 10;
CoutBoisNavCon = 20;

//**********Cout Gold*************//
CoutGoldCaserneSol = 500;
CoutGoldCaserneOff = 750;
CoutGoldCaserneCap = 1000;

CoutGoldChanEx = 1500;
CoutGoldChanCon = 2500;

CoutGoldNavEx = 5000;
CoutGoldNavCon = 10000;

CoutGoldSol = 200;
CoutGoldOff = 500;
CoutGoldCap = 1000;

//**********Cout Outils*************//
CoutOutilsCaserneSol = 2;
CoutOutilsCaserneOff = 4;
CoutOutilsCaserneCap = 6;

CoutOutilsChanEx = 6;
CoutOutilsChanCon = 8;

CoutOutilsNavEx= 4;
CoutOutilsNavCon = 6;

//**********Cout Tissus*************//
CoutTissuCaserneOff = 2;
CoutTissuCaserneCap = 4;

CoutTissuNavEx = 2;
CoutTissuNavCon = 8;

//**********Cout Poisson*************//

CoutPoissonSol = 1;
CoutPoissonOff = 2;
CoutPoissonCap = 3;

//************************************************************ CREATION DES CASERNES ****************************************************************//

//Creation d'une caserne de Soldat
procedure CreateBatCaserneSoldat();
var CurseurRess: coordonnees;
BEGIN

CurseurRess := positionCurseur();
CurseurRess.y := CurseurRess.y + 1;
deplacerCurseur(CurseurRess);
  writeln('Combien de Caserne de soldat voulez-vous construire ?');
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  AfficheTour();
  deplacerCurseurXY(60, 22);
  Readln(nbBat);
  nbBois := nbBat * CoutBoisCaserneSol;  //Calcule du nombre de Bois qu'il va falloir utiliser
  nbOr := nbBat * CoutGoldCaserneSol; //Calcule du nombre de piece d'or qu'il va falloir utiliser
  nbOutils := nbBat * CoutOutilsCaserneSol; //Calcule du nombre d'Outils' qu'il va falloir utiliser

    IF (ComparRess(getGold(),nbOr)) and (ComparRess(getBois(),nbBois)) and (ComparRess(getOutils(),nbOutils)) THEN BEGIN     //Si le joueur a assez de ressources  //Enlevé  OR et nbOutils
      setBois(getBois() - nbBois);  //Retrait du cout des caserne sur le bois du joueur
      setGold(getGold() - nbOr);  //Retrait du cout des caserne sur l'or du joueur
      setOutils(getOutils() - nbOutils);  //Retrait du cout des caserne sur les outils du joueur
      setCaserneSoldat(getCaserneSoldat() + nbBat); //Ajout du nombre de caserne de soldat

      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);

      writeln('Vous avez construit : ',nbBat,' Caserne de soldat !');
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
      writeln('Vous avez pas assez de ressources pour ',nbBat,' Caserne de soldat!');
      ReadLn();
    END;
END;

//Creation d'une caserne d'officier
procedure CreateBatCaserneOfficier();
var CurseurRess: coordonnees;
BEGIN

CurseurRess := positionCurseur();
CurseurRess.y := CurseurRess.y + 1;
deplacerCurseur(CurseurRess);
  writeln('Combien de Caserne d''officier voulez-vous construire ?');
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  AfficheTour();
  deplacerCurseurXY(61, 22);
  Readln(nbBat);
  nbBois := nbBat * CoutBoisCaserneOff;  //Calcule du nombre de Bois qu'il va falloir utiliser
  nbOr := nbBat * CoutGoldCaserneOff; //Calcule du nombre de piece d'or qu'il va falloir utiliser
  nbOutils := nbBat * CoutOutilsCaserneOff; //Calcule du nombre d'Outils' qu'il va falloir utiliser
  nbTissu := nbBat * CoutTissuCaserneOff; // Calcule du nombre de tissu qu'il va falloir utiliser

    IF (ComparRess(getGold(),nbOr)) and (ComparRess(getBois(),nbBois)) and (ComparRess(getOutils(),nbOutils)) and (ComparRess (getTissus(),nbTissu) )THEN BEGIN     //Si le joueur a assez de ressources  //Enlevé  OR et nbOutils
      setBois(getBois() - nbBois);  //Retrait du cout des caserne sur le bois du joueur
      setGold(getGold() - nbOr);  //Retrait du cout des caserne sur l'or du joueur
      setOutils(getOutils() - nbOutils);  //Retrait du cout des caserne sur les outils du joueur
      setCaserneOfficier(getCaserneOfficier() + nbBat); //Ajout du nombre de caserne d'officier

      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);

      writeln('Vous avez construit : ',nbBat,' caserne d''officer !');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      WriteLn('(',nbBois,' Bois, ',nbOr,' Or, ',nbOutils,' Outils ',nbTissu,' Tissu)');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      readln();

    END
    ELSE BEGIN  //Si le joueur n'a pas assez de Ressources
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
      writeln('Vous avez pas assez de ressources pour ',nbBat,' Caserne d''officier!');
      ReadLn();
    END;
END;

//Creation d'une caserne de capitaine
procedure CreateBatCaserneCapitaine();
var CurseurRess: coordonnees;
BEGIN

CurseurRess := positionCurseur();
CurseurRess.y := CurseurRess.y + 1;
deplacerCurseur(CurseurRess);
  writeln('Combien de caserne de capitaine voulez-vous construire ?');
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  AfficheTour();
  deplacerCurseurXY(63, 22);
  Readln(nbBat);
  nbBois := nbBat * CoutBoisCaserneCap;  //Calcule du nombre de Bois qu'il va falloir utiliser
  nbOr := nbBat * CoutGoldCaserneCap; //Calcule du nombre de piece d'or qu'il va falloir utiliser
  nbOutils := nbBat * CoutOutilsCaserneCap; //Calcule du nombre d'Outils' qu'il va falloir utiliser
  nbTissu := nbBat * CoutTissuCaserneCap;

    IF (ComparRess(getGold(),nbOr)) and (ComparRess(getBois(),nbBois)) and (ComparRess(getOutils(),nbOutils)) and (ComparRess (getTissus(),nbTissu) )THEN BEGIN     //Si le joueur a assez de ressources  //Enlevé  OR et nbOutils
      setBois(getBois() - nbBois);  //Retrait du cout des batiments sur le bois du joueur
      setGold(getGold() - nbOr);  //Retrait du cout des batiments sur l'or du joueur
      setOutils(getOutils() - nbOutils);  //Retrait du cout des batiments sur les outils du joueur
      setCaserneCapitaine(getCaserneCapitaine() + nbBat); //Ajout du nombre de caserne de capitaine

      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);

      writeln('Vous avez construit : ',nbBat,' caserne de capitaine !');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      WriteLn('(',nbBois,' Bois, ',nbOr,' Or, ',nbOutils,' Outils, ',nbTissu,' Tissu)');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      readln();

    END
    ELSE BEGIN  //Si le joueur n'a pas assez de Ressources
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
      writeln('Vous avez pas assez de ressources pour ',nbBat,' caserne de capitaine!');
      ReadLn();
    END;
END;

//procedure pour créer un soldat
procedure CreateSoldat();
var CurseurRess: coordonnees;
BEGIN

CurseurRess := positionCurseur();
CurseurRess.y := CurseurRess.y + 1;
deplacerCurseur(CurseurRess);
  writeln('Combien de soldat voulez-vous recruter ?');
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  AfficheTour();
  deplacerCurseurXY(47, 14);
  Readln(nbBat);
  nbOr := nbBat * CoutGoldSol; //Calcule du nombre de piece d'or qu'il va falloir utiliser
  nbPoisson := nbBat * CoutPoissonSol;//Calcul du nombre de poisson qu'il va falloir utiliser

    IF (ComparRess(getGold(),nbOr)) and (ComparRess(getPoissons(),nbPoisson))  THEN BEGIN     //Si le joueur a assez de ressources  //Enlevé  OR et nbOutils
      setGold(getGold() - nbOr);  //Retrait du cout du soldat sur l'or du joueur
      setPoissons(getPoissons() - nbPoisson); //Retrait du cout du soldat sur le poisson

      setSoldats(getSoldats() + nbBat); //Ajout du nombre de soldat

      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);

      writeln('Vous avez recruté : ',nbBat,' soldat !');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      WriteLn('(',nbOr,' Or, ',nbPoisson,' Poisson)');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      readln();

    END
    ELSE BEGIN  //Si le joueur n'a pas assez de Ressources
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
      writeln('Vous avez pas assez de ressources pour ',nbBat,' soldat!');
      ReadLn();
    END;
END;

//procedure pour créer un officier
procedure CreateOfficier();
var CurseurRess: coordonnees;
BEGIN

CurseurRess := positionCurseur();
CurseurRess.y := CurseurRess.y + 1;
deplacerCurseur(CurseurRess);
  writeln('Combien d''officier voulez-vous recruter ?');
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  AfficheTour();
  deplacerCurseurXY(48, 14);
  Readln(nbBat);
  nbOr := nbBat * CoutGoldOff; //Calcule du nombre de piece d'or qu'il va falloir utiliser
  nbPoisson := nbBat * CoutPoissonOff;//Calcul du nombre de poisson qu'il va falloir utiliser

    IF (ComparRess(getGold(),nbOr)) and (ComparRess(getPoissons(),nbPoisson))  THEN BEGIN     //Si le joueur a assez de ressources  //Enlevé  OR et nbOutils
      setGold(getGold() - nbOr);  //Retrait du cout de l'officer sur l'or du joueur
      setPoissons(getPoissons() - nbPoisson); //Retrait du cout de l'officer sur le poisson

      setOfficier(getOfficier() + nbBat); //Ajout du nombre d'officier

      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);

      writeln('Vous avez recruté : ',nbBat,' officier !');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      WriteLn('(',nbOr,' Or, ',nbPoisson,' Poisson)');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      readln();

    END
    ELSE BEGIN  //Si le joueur n'a pas assez de Ressources
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
      writeln('Vous avez pas assez de ressources pour ',nbBat,' officer!');
      ReadLn();
    END;
END;

//procedure pour créer un capitaine
procedure CreateCapitaine();
var CurseurRess: coordonnees;
BEGIN

CurseurRess := positionCurseur();
CurseurRess.y := CurseurRess.y + 1;
deplacerCurseur(CurseurRess);
  writeln('Combien de capitaine voulez-vous recruter ?');
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  AfficheTour();
  deplacerCurseurXY(50, 14);
  Readln(nbBat);
  nbOr := nbBat * CoutGoldCap; //Calcule du nombre de piece d'or qu'il va falloir utiliser
  nbPoisson := nbBat * CoutPoissonCap;//Calcul du nombre de poisson qu'il va falloir utiliser

    IF (ComparRess(getGold(),nbOr)) and (ComparRess(getPoissons(),nbPoisson))  THEN BEGIN     //Si le joueur a assez de ressources  //Enlevé  OR et nbOutils
      setGold(getGold() - nbOr);  //Retrait du cout du capitaine sur l'or du joueur
      setPoissons(getPoissons() - nbPoisson); //Retrait du cout du capitaine sur le poisson

      setCapitaines(getCapitaines() + nbBat); //Ajout du nombre de capitaine

      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);

      writeln('Vous avez recruté : ',nbBat,' soldat !');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      WriteLn('(',nbOr,' Or, ',nbPoisson,' Poisson)');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      readln();

    END
    ELSE BEGIN  //Si le joueur n'a pas assez de Ressources
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
      writeln('Vous avez pas assez de ressources pour ',nbBat,' capitaine!');
      ReadLn();
    END;
END;

//************************************************************ CREATION DES CHANTIERS ****************************************************************//

//Creation d'un chantier naval pour l'exploration
procedure CreateBatChantierExploration();
var CurseurRess: coordonnees;
BEGIN

CurseurRess := positionCurseur();
CurseurRess.y := CurseurRess.y + 1;
deplacerCurseur(CurseurRess);
  writeln('Combien de chantier d''exploration voulez-vous construire ?');
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  AfficheTour();
  deplacerCurseurXY(65, 22);
  Readln(nbBat);
  nbBois := nbBat * CoutBoisChanEx;  //Calcule du nombre de Bois qu'il va falloir utiliser
  nbOr := nbBat * CoutGoldChanEx; //Calcule du nombre de piece d'or qu'il va falloir utiliser
  nbOutils := nbBat * CoutOutilsChanEx; //Calcule du nombre d'Outils' qu'il va falloir utiliser

    IF (ComparRess(getGold(),nbOr)) and (ComparRess(getBois(),nbBois)) and (ComparRess(getOutils(),nbOutils)) THEN BEGIN     //Si le joueur a assez de ressources  //Enlevé  OR et nbOutils
      setBois(getBois() - nbBois);  //Retrait du cout des chantier sur le bois du joueur
      setGold(getGold() - nbOr);  //Retrait du cout des chantier sur l'or du joueur
      setOutils(getOutils() - nbOutils);  //Retrait du cout des chantier sur les outils du joueur
      setChantierExploration(getChantierExploration() + nbBat); //Ajout du nombre de chantie d'exploration

      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);

      writeln('Vous avez construit : ',nbBat,' chantier d''exploration !');
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
      writeln('Vous avez pas assez de ressources pour ',nbBat,' chantier d''exploration!');
      ReadLn();
    END;
END;

//Creation d'un chantier naval pour la conquete
procedure CreateBatChantierConquete();
var CurseurRess: coordonnees;
BEGIN

CurseurRess := positionCurseur();
CurseurRess.y := CurseurRess.y + 1;
deplacerCurseur(CurseurRess);
  writeln('Combien de chantier de conquete voulez-vous construire ?');
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  AfficheTour();
  deplacerCurseurXY(63, 22);
  Readln(nbBat);
  nbBois := nbBat * CoutBoisChanCon;  //Calcule du nombre de Bois qu'il va falloir utiliser
  nbOr := nbBat * CoutGoldChanCon; //Calcule du nombre de piece d'or qu'il va falloir utiliser
  nbOutils := nbBat * CoutOutilsChanCon; //Calcule du nombre d'Outils' qu'il va falloir utiliser

    IF (ComparRess(getGold(),nbOr)) and (ComparRess(getBois(),nbBois)) and (ComparRess(getOutils(),nbOutils)) THEN BEGIN     //Si le joueur a assez de ressources  //Enlevé  OR et nbOutils
      setBois(getBois() - nbBois);  //Retrait du cout des batiments sur le bois du joueur
      setGold(getGold() - nbOr);  //Retrait du cout des batiments sur l'or du joueur
      setOutils(getOutils() - nbOutils);  //Retrait du cout des batiments sur les outils du joueur
      setTissus(getTissus() - nbTissu); //Retrait du cout des chantier sur les tissus du joeur
      setChantierConquete(getChantierConquete() + nbBat); //Ajout du nombre de chantier de conquete

      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);

      writeln('Vous avez construit : ',nbBat,' chantier d''exploration !');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      WriteLn('(',nbBois,' Bois, ',nbOr,' Or, ',nbOutils,' Outils ');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      readln();

    END
    ELSE BEGIN  //Si le joueur n'a pas assez de Ressources
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
      writeln('Vous avez pas assez de ressources pour ',nbBat,' chantier de conquete!');
      ReadLn();
    END;
END;

//************************************************************ CREATION DES NAVIRES ****************************************************************//

//Creation d'un navire d'exploration
procedure CreateBatNavireExploration();
var CurseurRess: coordonnees;
BEGIN

CurseurRess := positionCurseur();
CurseurRess.y := CurseurRess.y + 1;
deplacerCurseur(CurseurRess);
  writeln('Combien de navire d''exploration voulez-vous construire ?');
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  AfficheTour();
  deplacerCurseurXY(63, 22);
  Readln(nbBat);
  nbBois := nbBat * CoutBoisNavEx;  //Calcule du nombre de Bois qu'il va falloir utiliser
  nbOr := nbBat * CoutGoldNavEx; //Calcule du nombre de piece d'or qu'il va falloir utiliser
  nbOutils := nbBat * CoutOutilsNavEx; //Calcule du nombre d'Outils' qu'il va falloir utiliser
  nbTissu := nbBat * CoutTissuNavEx; //Calcule du nombre de tissu qu'il va falloir utiliser

    IF (ComparRess(getGold(),nbOr)) and (ComparRess(getBois(),nbBois)) and (ComparRess(getOutils(),nbOutils)) and (ComparRess (getTissus(),nbTissu) )THEN BEGIN     //Si le joueur a assez de ressources  //Enlevé  OR et nbOutils
      setBois(getBois() - nbBois);  //Retrait du cout des navires sur le bois du joueur
      setGold(getGold() - nbOr);  //Retrait du cout des navires sur l'or du joueur
      setOutils(getOutils() - nbOutils);  //Retrait du cout des navires sur les outils du joueur
      setTissus(getTissus() - nbTissu); //Retrait du cout des navires sur les tissus du joeur
      setNavireExploration(getNavireExploration() + nbBat); //Ajout du nombre de navire d'exploration

      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);

      writeln('Vous avez construit : ',nbBat,' navire d''exploration !');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      WriteLn('(',nbBois,' Bois, ',nbOr,' Or, ',nbOutils,' Outils ',nbTissu,' Tissu)');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      readln();

    END
    ELSE BEGIN  //Si le joueur n'a pas assez de Ressources
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
      writeln('Vous avez pas assez de ressources pour ',nbBat,' navire d''exploration!');
      ReadLn();
    END;
END;

//Creation d'un navire de conquete
procedure CreateBatNavireConquete();
var CurseurRess: coordonnees;
BEGIN

CurseurRess := positionCurseur();
CurseurRess.y := CurseurRess.y + 1;
deplacerCurseur(CurseurRess);
  writeln('Combien de navire de conquete voulez-vous construire ?');
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  AfficheTour();
  deplacerCurseurXY(65, 22);
  Readln(nbBat);
  nbBois := nbBat * CoutBoisNavCon;  //Calcule du nombre de Bois qu'il va falloir utiliser
  nbOr := nbBat * CoutGoldNavCon; //Calcule du nombre de piece d'or qu'il va falloir utiliser
  nbOutils := nbBat * CoutOutilsNavCon; //Calcule du nombre d'Outils' qu'il va falloir utiliser
  nbTissu := nbBat * CoutTissuNavCon;//Calcule du nombre de tissu qu'il va falloir utiliser

    IF (ComparRess(getGold(),nbOr)) and (ComparRess(getBois(),nbBois)) and (ComparRess(getOutils(),nbOutils)) and (ComparRess (getTissus(),nbTissu) )THEN BEGIN     //Si le joueur a assez de ressources  //Enlevé  OR et nbOutils
      setBois(getBois() - nbBois);  //Retrait du cout des batiments sur le bois du joueur
      setGold(getGold() - nbOr);  //Retrait du cout des batiments sur l'or du joueur
      setOutils(getOutils() - nbOutils);  //Retrait du cout des batiments sur les outils du joueur
      setTissus(getTissus() - nbTissu); //Retrait du cout des chantier sur les tissus du joeur
      setNavireConquete(getNavireConquete() + nbBat); //Ajout du nombre de navire de conquete

      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);

      writeln('Vous avez construit : ',nbBat,' navire de conquete !');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      WriteLn('(',nbBois,' Bois, ',nbOr,' Or, ',nbOutils,' Outils ',nbTissu,' Tissu)');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      readln();

    END
    ELSE BEGIN  //Si le joueur n'a pas assez de Ressources
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
      writeln('Vous avez pas assez de ressources pour ',nbBat,' chantier de conquete!');
      deplacerCurseurXY(65, 22);
      ReadLn();
    END;
END;

//************************************************************ COUT DES CASERNES ****************************************************************//


//Caserne de Soldat
FUNCTION GetCoutBoisCaserneSol():INTEGER;
begin
    GetCoutBoisCaserneSol:=CoutBoisCaserneSol;
end;
FUNCTION GetCoutGoldCaserneSol():INTEGER;
begin
    GetCoutGoldCaserneSol:=CoutGoldCaserneSol;
end;
FUNCTION GetCoutOutilsdCaserneSol():INTEGER;
begin
    GetCoutOutilsdCaserneSol:=CoutOutilsCaserneSol;
end;

//Caserne d'officier
FUNCTION GetCoutBoisCaserneOffi():INTEGER;
begin
    GetCoutBoisCaserneOffi:=CoutBoisCaserneOff;
end;
FUNCTION GetCoutGoldCaserneOffi():INTEGER;
begin
    GetCoutGoldCaserneOffi:=CoutGoldCaserneOff;
end;
FUNCTION GetCoutOutilsCaserneOffi():INTEGER;
begin
    GetCoutOutilsCaserneOffi:=CoutOutilsCaserneOff;
end;
FUNCTION GetCoutTissuCaserneOffi():INTEGER;
begin
    GetCoutTissuCaserneOffi:=CoutTissuCaserneOff;
end;

//Caserne de capitaine
FUNCTION GetCoutBoisCaserneCap():INTEGER;
begin
    GetCoutBoisCaserneCap:=CoutBoisCaserneCap;
end;
FUNCTION GetCoutGoldCaserneCap():INTEGER;
begin
    GetCoutGoldCaserneCap:=CoutGoldCaserneCap;
end;
FUNCTION GetCoutOutilsCaserneCap():INTEGER;
begin
    GetCoutOutilsCaserneCap:=CoutOutilsCaserneCap;
end;
FUNCTION GetCoutTissuCaserneCap():INTEGER;
begin
    GetCoutTissuCaserneCap:=CoutTissuCaserneCap;
end;
//************************************************************ COUT DES CHANTIERS ****************************************************************//

//Chantier d'exploration
FUNCTION GetCoutBoisChanEx():INTEGER;
begin
    GetCoutBoisChanEx:=CoutBoisChanEx;
end;
FUNCTION GetCoutGoldChanEx():INTEGER;
begin
    GetCoutGoldChanEx:=CoutGoldChanEx;
end;
FUNCTION GetCoutOutilsChanEx():INTEGER;
begin
    GetCoutOutilsChanEx:=CoutOutilsChanEx;
end;

//Chantier de conquete
FUNCTION GetCoutBoisChanCon():INTEGER;
begin
    GetCoutBoisChanCon:=CoutBoisChanCon;
end;
FUNCTION GetCoutGoldChanCon():INTEGER;
begin
    GetCoutGoldChanCon:=CoutGoldChanCon;
end;
FUNCTION GetCoutOutilsChanCon():INTEGER;
begin
    GetCoutOutilsChanCon:=CoutOutilsChanCon;
end;

//************************************************************ COUT DES NAVIRES ****************************************************************//

//Navire exploration
FUNCTION GetCoutBoisNavEx():INTEGER;
begin
    GetCoutBoisNavEx:=CoutBoisNavEx;
end;
FUNCTION GetCoutGoldNavEx():INTEGER;
begin
    GetCoutGoldNavEx:=CoutGoldNavEx;
end;
FUNCTION GetCoutOutilsNavEx():INTEGER;
begin
    GetCoutOutilsNavEx:= CoutOutilsNavEx;
end;
FUNCTION GetCoutTissuNavEx():INTEGER;
begin
    GetCoutTissuNavEx:=CoutTissuNavEx;
end;

//Navire Conquete
FUNCTION GetCoutBoisCon():INTEGER;
begin
    GetCoutBoisCon:=CoutBoisNavCon;
end;
FUNCTION GetCoutGoldNavCon():INTEGER;
begin
    GetCoutGoldNavCon:=CoutGoldNavCon;
end;
FUNCTION GetCoutOutilsNavCon():INTEGER;
begin
    GetCoutOutilsNavCon:=CoutOutilsNavCon;
end;
FUNCTION GetCoutTissuNavCon():INTEGER;
begin
    GetCoutTissuNavCon:=CoutTissuNavCon;
end;

//************************************************************ COUT DU RECRUTEMENT ****************************************************************//

function GetCoutGoldSol():INTEGER;
begin
   GetCoutGoldSol:= CoutGoldSol;
end;
function GetCoutGoldOff():INTEGER;
begin
   GetCoutGoldOff:= CoutGoldOff;
end;
function GetCoutGoldCap():INTEGER;
begin
   GetCoutGoldCap:= CoutGoldCap;
end;

function GetCoutPoissonSol():INTEGER;
begin
   GetCoutPoissonSol:= CoutPoissonSol;
end;
function GetCoutPoissonOff():INTEGER;
begin
   GetCoutPoissonOff:= CoutPoissonOff;
end;
function GetCoutPoissonCap():INTEGER;
begin
   GetCoutPoissonCap:= CoutPoissonCap;
end;

end.
