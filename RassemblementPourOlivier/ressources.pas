unit Ressources;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

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
  gold := 500;
  bois := 200;
  poissons := 20;
  outils := 10;
  laines := 0;
  tissus := 0;
end;

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
