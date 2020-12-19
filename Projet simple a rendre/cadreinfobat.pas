unit CadreInfoBat;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, GestionEcran, initialisationPrincip, CreateBatMaison, CreateBatSociaux, CreateBatIndustries;

  //Affiche le nombre de batiments possédés
  procedure InfoBatiments();

  //Affiche le Cout des batiments
  procedure InfoCoutBatiments();

implementation

//Affiche le nombre de batiments possédés
procedure InfoBatiments();
VAR
  CurseurRess: coordonnees;

BEGIN
  dessinerCadreXY(100,13,146,23, simple, 15, 0); //Cadre des batiments

  dessinerCadreXY(113,12,134,14, simple, 15, 0); //Cadre du mot 'Batiments possédés'
  deplacerCurseurXY(115, 13);  //Ecrire a l'intérieur de l'encadré
  writeln('Batiments possédés');

  deplacerCurseurXY(103, 15);  //Ecrire dans le cadre des batiments possédés
  CurseurRess := positionCurseur();

  writeln('Maison Colon             :           ',getMaisonColon());        // Afficher la quantitées De maison de colon
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Cabane de Bucheron       :           ',getCabaneBucheron());   // Affiche la quantitées de Cabane de Bucheron
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Cabane de pêcheur        :           ',getCabanePecheur());   // Affiche la quantitées de Cabane de Pecheur
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Atelier de tisserand     :           ',getAtelierTissus());   // Affiche la quantitées de d'atelier de tissus
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Bergerie                 :           ',getBergerie());   // Affiche la quantitées de Bergerie
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Centre-Villes            :           ',getCentreVille());   // Affiche la quantitées de Centre-Ville
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Chapelles                :           ',getChapelle());   // Affiche la quantitées de Chapelle
END;

//Affiche le Cout des batiments
procedure InfoCoutBatiments();
var
 CurseurRess : coordonnees;
 BEGIN
   dessinerCadreXY(85,27,146,37, simple, 15, 0); //Cadre du Couts des batiments

   dessinerCadreXY(108,26,125,28, simple, 15, 0); //Cadre du mot 'Couts batiments'
   deplacerCurseurXY(109, 27);  //Ecrire a l'intérieur de l'encadré
   writeln(' Coût Batiments');
   deplacerCurseurXY(88, 29);  //Ecrire dans le cadre des batiments possédés
   CurseurRess := positionCurseur();

   writeln('Maison Colon            : ',GetCoutBoisMaisonCol,' Bois');        // Afficher le Cout d'une maison de colon
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Cabane de Bucheron      : ',GetCoutOrBucheron,' Or, ',GetCoutOutilsBucheron,' Outils');   // Affiche le Cout d'une Cabane de Bucheron
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Cabane de Pecheur       : ',GetCoutBoisPecheur,' Bois, ',GetCoutOutilsPecheur,' Outils, ',GetCoutOrPecheur,' Or');   // Affiche le Cout d'une Cabane de Pecheur
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Atelier de tisserand    : ',GetCoutBoisAtelierTissus(),' Bois, ',GetCoutOutilsAtelierTissus(),' Outils, ',GetCoutOrAtelierTissus,' Or');   // Affiche le Cout d'un atelier de tissus
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Bergerie                : ',GetCoutBoisBergerie,' Bois, ',GetCoutOutilsBergerie,' Outils, ',GetCoutOrBergerie,' Or');   // Affiche le Cout d'une Bergerie
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Chapelles               : ',GetCoutBoisChapelle,' Bois, ',GetCoutOutilsChapelle,' Outils, ',GetCoutOrChapelle,' Or');   // Affiche le Cout d'une Chapelle
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Centre-Ville            : ',GetCoutBoisCentreVille,' Bois, ',GetCoutOutilsCentreVille,' Outils, ',GetCoutOrCentreVille,' Or');   // Affiche le Cout d'un CentreVille
 END;

end.