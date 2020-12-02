unit CadreInfoBat;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, GestionEcran, SystemeBatiments; //CHanger SystemeBatiments PAR TOUTES LES AUTRES UNITés DE Batiment!!!!

  //Affiche le nombre de batiments possédés
  procedure InfoBatiments();

implementation

//Affiche le nombre de batiments possédés
procedure InfoBatiments();
VAR
  CurseurRess: coordonnees;

BEGIN
  dessinerCadreXY(100,13,146,24, simple, 15, 0); //Cadre des batiments

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
END;

end.
