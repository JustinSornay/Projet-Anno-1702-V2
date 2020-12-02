unit Ressources;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, SystemeBatiments, GestionEcran;

  //Cette procedure affiche le cadre des ressources
  procedure InfoRessource();

//Cette fonction initialise les variables (au début de la partie par exemple)
procedure initRessources();

  //                          //
 //            GOLD          //
//                          //

//Cette fonction renvoie la valeur de la variable Or
function getGold() : Integer;
//Cette procedure modifie la valeur de la variable Or
procedure setGold(valeur : integer);

  //                          //
 //            BOIS          //
//                          //

//Cette fonction renvoie la valeur de la variable Bois
function getBois() : Integer;
//Cette procedure modifie la valeur de la variable bois
procedure setBois(valeur : integer);

  //                          //
 //          POISSONS        //
//                          //

//Cette fonction renvoie la valeur de la variable Poissons
function getPoissons() : Integer;
//Cette procedure modifie la valeur de la variable Poissons
procedure setPoissons(valeur : integer);

  //                        //
 //          OUTILS        //
//                        //

//Cette fonction renvoie la valeur de la variable outils
function getOutils() : Integer;
//Cette procedure modifie la valeur de la variable Outils
procedure setOutils(valeur : integer);

  //                        //
 //          Laines        //
//                        //

//Cette fonction renvoie la valeur de la variable Laines
function getLaines() : Integer;
//Cette procedure modifie la valeur de la variable Laines
procedure setLaines(valeur : integer);

  //                       //
 //          Tissus       //
//                       //

//Cette fonction renvoie la valeur de la variable Tissus
function getTissus() : Integer;
//Cette procedure modifie la valeur de la variable Tissus
procedure setTissus(valeur : integer);

implementation
// déclaration des ressources
var
  gold : integer;
  bois : integer;
  poissons : integer;
  outils : integer;
  laines : integer;
  tissus : integer;

// initialisation des quantitées de ressource
procedure initRessources();
begin
  gold := 40;
  bois := 40;
  poissons := 40;
  outils := 40;
  laines := 0;
  tissus := 0;
end;

//Cette procedure affiche le cadre des ressources
procedure InfoRessource();
VAR
  CurseurRess: coordonnees;
BEGIN
  dessinerCadreXY(100,2,146,20, simple, 15, 0); //Cadre ressources

  dessinerCadreXY(115,1,132,3, simple, 15, 0); //Cadre du mot ressources
  deplacerCurseurXY(116, 2);  //Ecrire a l'intérieur de l'encadré
  writeln('   Ressources');

  deplacerCurseurXY(103, 4);  //Ecrire dans le cadre des Ressource
  CurseurRess := positionCurseur();

  writeln('Quantité d''Or            :         ',getGold(),'/', entrepot);        // Afficher la quantitées D'or
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Quantité de Bois         :         ',getBois(),'/', entrepot);   // Affiche la quantitées de Bois
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Quantité d''Outils        :         ',getOutils(),'/', entrepot);   // Affiche la quantitées d'Outils
END;

  //                          //
 //            GOLD          //
//                          //

//Cette fonction renvoie la valeur de la variable Gold
function getGold() : Integer;
begin
     getGold := gold;
end;

//Cette procedure modifie la valeur de la variable Or
procedure setGold(valeur : integer);
begin
     gold := valeur;
end;

  //                          //
 //            BOIS          //
//                          //

//Cette fonction renvoie la valeur de la variable Bois
function getBois() : Integer;
begin
     getBois := bois;
end;

//Cette procedure modifie la valeur de la variable bois
procedure setBois(valeur : integer);
begin
     bois := valeur;
end;

  //                          //
 //          POISSONS        //
//                          //

//Cette fonction renvoie la valeur de la variable Poissons
function getPoissons() : Integer;
begin
     getPoissons := poissons;
end;

//Cette procedure modifie la valeur de la variable Poissons
procedure setPoissons(valeur : integer);
begin
     poissons := valeur;
end;

  //                        //
 //          OUTILS        //
//                        //

//Cette fonction renvoie la valeur de la variable outils
function getOutils() : Integer;
begin
     getOutils := outils;
end;

//Cette procedure modifie la valeur de la variable Outils
procedure setOutils(valeur : integer);
begin
     outils := valeur;
end;

  //                        //
 //          Laines        //
//                        //

//Cette fonction renvoie la valeur de la variable Laines
function getLaines() : Integer;
begin
   getLaines := laines;
end;

//Cette procedure modifie la valeur de la variable Laines
procedure setLaines(valeur : integer);
begin
   laines := valeur;
end;

  //                       //
 //          Tissus       //
//                       //

//Cette fonction renvoie la valeur de la variable Tissus
function getTissus() : Integer;
begin
 getTissus := tissus;
end;

//Cette procedure modifie la valeur de la variable Tissus
procedure setTissus(valeur : integer);
begin
 tissus := valeur;
end;
end.
