unit UnitVariable;

{$mode objfpc}{$H+}

interface
uses
  Classes, SysUtils;
//Cette fonction initialise les variables (au début de la partie par exemple)
procedure initialisation();
//Cette fonction renvoie la valeur de la variable Or
function getGold() : Integer;
//Cette procedure modifie la valeur de la variable Or
procedure setGold(valeur : integer);
//Cette fonction renvoie la valeur de la variable Bois
function getBois() : Integer;
//Cette procedure modifie la valeur de la variable bois
procedure setBois(valeur : integer);


implementation
//Ces variables sont connues de toute l'unité mais pas à l'extérieur
var
   gold : integer;
   bois : integer;

//Cette fonction initialise les variables (au début de la partie par exemple)
procedure initialisation();
begin
  gold := 0;
  bois := 100;
end;

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
end.

