unit CadreInfoBat;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, GestionEcran, initialisationPrincip, CreateBatMaison, CreateBatSociaux, CreateBatIndustries,CreateBatMillitaire; //Changer SystemeBatiments PAR TOUTES LES AUTRES UNITés DE Batiment!!!!  OU REMPLACER PAR initialisationPrincip

  //Affiche le nombre de batiments possédés
  procedure InfoBatiments();

  //Affiche les batiments conçernant l'armée possédés
  procedure InfoBatArmee();

  //Affiche l'armée de l'île
  procedure InfoRecruArmee();

  //Affiche le Cout des batiments
  procedure InfoCoutBatiments();

  //Affiche le Cout des batiments de l'armée
  procedure InfoCoutBatArmee();

  //Affiche le Cout de recrutement d'armee
  procedure InfoCoutRecruArmee();

implementation

//Affiche le nombre de batiments possédés
procedure InfoBatiments();
VAR
  CurseurRess: coordonnees;

BEGIN
  dessinerCadreXY(100,13,146,25, simple, 15, 0); //Cadre des batiments

  dessinerCadreXY(113,12,134,14, simple, 15, 0); //Cadre du mot 'Batiments possédés'
  deplacerCurseurXY(115, 13);  //Ecrire a l'intérieur de l'encadré
  writeln('Batiments possédés');

  deplacerCurseurXY(103, 15);  //Ecrire dans le cadre des batiments possédés
  CurseurRess := positionCurseur();

  writeln('Maison Colon             :           ',getMaisonColon());        // Afficher la quantitées De maison de colon
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Maison Citoyen           :           ',getMaisonCitoyens());   // Affiche la quantitées de Bois
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Cabane de Bucheron       :           ',getCabaneBucheron());   // Affiche la quantitées de Cabane de Bucheron
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Cabane de pêcheur        :           ',getCabanePecheur());   // Affiche la quantitées de Cabane de Pecheur
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Atelier de tisserand     :           ',getAtelierTissus());   // Affiche la quantitées de laines
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Bergerie                 :           ',getBergerie());   // Affiche la quantitées de Bergerie
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Entrepot                 :           ',getEntrepot());   // Affiche la quantitées d'Entrepot
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Centre-Villes            :           ',getCentreVille());   // Affiche la quantitées de Centre-Ville
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Chapelles                :           ',getChapelle());   // Affiche la quantitées de Chapelle
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Terrain millitaire       :           ',getCaserne());   // Affiche la quantitées de Chapelle
END;

//Affiche le Cout des batiments
procedure InfoCoutBatiments();
var
 CurseurRess : coordonnees;
 BEGIN
   dessinerCadreXY(85,27,146,39, simple, 15, 0); //Cadre du Couts des batiments

   dessinerCadreXY(108,26,125,28, simple, 15, 0); //Cadre du mot 'Couts batiments'
   deplacerCurseurXY(109, 27);  //Ecrire a l'intérieur de l'encadré
   writeln(' Coût Batiments');
   deplacerCurseurXY(88, 29);  //Ecrire dans le cadre des batiments possédés
   CurseurRess := positionCurseur();

   writeln('Maison Colon            : ',GetCoutBoisMaisonCol,' Bois');        // Afficher le Cout d'une maison de colon
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Maison Citoyen          : ',GetCoutBoisMaisonCit,' Bois, ',GetCoutOutilsMaisonCit,' Outil, ',GetCoutColMaisonCit,' Maison Colon');   // Affiche le Cout d'une Maison de Citoyen
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Cabane de Bucheron      : ',GetCoutOrBucheron,' Or, ',GetCoutOutilsBucheron,' Outils');   // Affiche le Cout d'une Cabane de Bucheron
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Cabane de Pecheur       : ',GetCoutBoisPecheur,' Bois, ',GetCoutOutilsPecheur,' Outils, ',GetCoutOrPecheur,' Or');   // Affiche le Cout d'uneEntrepot
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Atelier de tisserand    : ',GetCoutBoisAtelierTissus(),' Bois, ',GetCoutOutilsAtelierTissus(),' Outils, ',GetCoutOrAtelierTissus,' Or');   // Affiche le Cout d'une laines
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Bergerie                : ',GetCoutBoisBergerie,' Bois, ',GetCoutOutilsBergerie,' Outils, ',GetCoutOrBergerie,' Or');   // Affiche le Cout d'une Bergerie
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Entrepot                : ',GetCoutBoisEntrepot,' Bois, ',GetCoutOutilsEntrepot,' Outils, ',GetCoutOrEntrepot,' Or');   // Affiche le Cout d'uneEntrepot
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Chapelles               : ',GetCoutBoisChapelle,' Bois, ',GetCoutOutilsChapelle,' Outils, ',GetCoutOrChapelle,' Or');   // Affiche le Cout d'une Chapelle
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Centre-Ville            : ',GetCoutBoisCentreVille,' Bois, ',GetCoutOutilsCentreVille,' Outils, ',GetCoutOrCentreVille,' Or');   // Affiche le Cout d'un CentreVille
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Caserne                 : ',GetCoutBoisCaserne,' Bois, ',GetCoutOutilsCaserne,' Outils, ',GetCoutOrCaserne,' Or');   // Affiche le Cout d'une Caserne
 END;

procedure InfoBatArmee();
var CurseurRess:coordonnees;
begin
   dessinerCadreXY(100,13,146,25, simple, 15, 0); //Cadre des Batiments militaires
  dessinerCadreXY(109,12,139,14, simple, 15, 0); //Cadre du mot 'Batiments militaires'
  deplacerCurseurXY(110, 13); //Ecrire a l'intérieur de l'encadré
  writeln('Batiments militaires possédés');
  deplacerCurseurXY(103, 15);  //Ecrire dans le cadre des Batiments militaires
  writeln('Nombre de caserne de soldat            :',getCaserneSoldat);
  deplacerCurseurXY(103, 16);
  writeln('Nombre de caserne d''officier           :',getCaserneOfficier);
  deplacerCurseurXY(103, 17);
  writeln('Nombre de caserne de capitaine         :',getCaserneCapitaine);
  deplacerCurseurXY(103, 18);
  writeln('Nombre de chantier naval d''exploration :',getChantierExploration);
  deplacerCurseurXY(103, 19);
  writeln('Nombre de chantier naval de conquete   :',getChantierConquete);
  deplacerCurseurXY(103, 20);
  writeln('Nombres de navires d''exploration       :',getNavireExploration);
  deplacerCurseurXY(103, 21);
  writeln('Nombre de navires de conquete          :',getNavireConquete);

end;

procedure InfoCoutBatArmee();
var CurseurRess : coordonnees;
 BEGIN
   dessinerCadreXY(85,27,146,39, simple, 15, 0); //Cadre du Couts des batiments millitaires

   dessinerCadreXY(100,26,131,28, simple, 15, 0); //Cadre du mot 'Couts batiments millitaires'
   deplacerCurseurXY(102, 27);  //Ecrire a l'intérieur de l'encadré
   writeln('Couts batiments millitaires');
   deplacerCurseurXY(88, 29);  //Ecrire dans le cadre des batiments possédés
   CurseurRess := positionCurseur();

   writeln('Caserne soldat      : ',GetCoutBoisCaserneSol,' Bois, ',GetCoutOutilsdCaserneSol,' Outils, ',GetCoutGoldCaserneSol,' Or');   // Affiche le Cout d'une Caserne
   deplacerCurseurXY(88, 30);
   writeln('Caserne Officier    : ',GetCoutBoisCaserneOffi,' Bois, ',GetCoutOutilsCaserneOffi,' Outils, ',GetCoutGoldCaserneOffi,' Or, ',GetCoutTissuCaserneOffi,' Tissu');   // Affiche le Cout d'une Caserne
   deplacerCurseurXY(88, 31);
   writeln('Caserne Capitaine   : ',GetCoutBoisCaserneCap,' Bois, ',GetCoutOutilsCaserneCap,' Outils, ',GetCoutGoldCaserneCap,' Or, ',GetCoutTissuCaserneCap,' Tissu');   // Affiche le Cout d'une Caserne
   deplacerCurseurXY(88, 32);
   writeln('Chantier navale ex  : ',GetCoutBoisChanEx,' Bois, ',GetCoutOutilsChanEx,' Outils, ',GetCoutGoldChanEx,' Or');   // Affiche le Cout d'une Caserne
   deplacerCurseurXY(88, 33);
   writeln('Chantier navale con : ',GetCoutBoisChanCon,' Bois, ',GetCoutOutilsChanCon,' Outils, ',GetCoutGoldChanCon,' Or');   // Affiche le Cout d'une Caserne
   deplacerCurseurXY(88, 34);
   writeln('Navire d''ex         : ',GetCoutBoisNavEx,' Bois, ',GetCoutOutilsNavEx,' Outils, ',GetCoutGoldNavEx,' Or, ',GetCoutTissuNavEx,' Tissu');   // Affiche le Cout d'une Caserne
   deplacerCurseurXY(88, 35);
   writeln('Navire de con       : ',GetCoutBoisCon,' Bois, ',GetCoutOutilsNavCon,' Outils, ',GetCoutGoldNavCon,' Or, ',GetCoutTissuNavCon,' Tissu');   // Affiche le Cout d'une Caserne
   deplacerCurseurXY(88, 36);

 END;

//Affiche l'armée de l'île
procedure InfoRecruArmee();
var CurseurRess:coordonnees;
begin
   dessinerCadreXY(100,13,146,25, simple, 15, 0); //Cadre des Batiments militaires
  dessinerCadreXY(109,12,139,14, simple, 15, 0); //Cadre du mot 'Batiments militaires'
  deplacerCurseurXY(110, 13); //Ecrire a l'intérieur de l'encadré
  writeln('Batiments militaires possédés');
  deplacerCurseurXY(103, 15);  //Ecrire dans le cadre des Batiments militaires
  writeln('Nombre de soldat            :',getSoldats);
  deplacerCurseurXY(103, 16);
  writeln('Nombre d''officier           :',getOfficier);
  deplacerCurseurXY(103, 17);
  writeln('Nombre de capitaine         :',getCapitaines);

end;

//Affiche le Cout de recrutement d'armee
procedure InfoCoutRecruArmee();
var CurseurRess:coordonnees;
begin
dessinerCadreXY(85,27,146,33, simple, 15, 0); //Cadre du Couts du recrutement

   dessinerCadreXY(100,26,131,28, simple, 15, 0); //Cadre du mot 'Recrutement'
   deplacerCurseurXY(108, 27);  //Ecrire a l'intérieur de l'encadré
   writeln('Couts Recrutement');
   deplacerCurseurXY(88, 29);  //Ecrire dans le cadre Recrutement
   CurseurRess := positionCurseur();

   writeln('soldat      : ',GetCoutGoldSol,' Or, ',GetCoutPoissonSol,' Poisson');   // Affiche le Cout d'un soldat
   deplacerCurseurXY(88, 30);
   writeln('Officier    : ',GetCoutGoldOff,' Or, ',GetCoutPoissonOff,' Poisson');   // Affiche le Cout d'un officier
   deplacerCurseurXY(88, 31);
   writeln('Capitaine   : ',GetCoutGoldCap,' Or, ',GetCoutPoissonCap,' Poisson');   // Affiche le Cout d'un capitaine
end;
end.
