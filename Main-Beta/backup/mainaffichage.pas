unit MainAffichage;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Ressources, SystemeBatiments, GestionEcran;

  //Cette procedure affiche le cadre des ressources
  procedure InfoRessource(ValEntrepot : integer);

implementation
//Cette procedure affiche le cadre des ressources
procedure InfoRessource(ValEntreport : integer);
VAR
  CurseurRess: coordonnees;

BEGIN
  dessinerCadreXY(100,2,146,20, simple, 15, 0); //Cadre ressources

  dessinerCadreXY(115,1,132,3, simple, 15, 0); //Cadre du mot ressources
  deplacerCurseurXY(116, 2);  //Ecrire a l'intérieur de l'encadré
  writeln('   Ressources');

  deplacerCurseurXY(103, 4);  //Ecrire dans le cadre des Ressource
  CurseurRess := positionCurseur();

  writeln('Quantité d''Or            :         ',getGold(),'/', ValEntrepot);        // Afficher la quantitées D'or
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Quantité de Bois         :         ',getBois(),'/', ValEntrepot);   // Affiche la quantitées de Bois
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Quantité d''Outils        :         ',getOutils(),'/', ValEntrepot);   // Affiche la quantitées d'Outils
END;
end.
