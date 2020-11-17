unit Personnage;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

//Initialise la variable nom
procedure InitCreationPersonnage();
//Saisir la variable nom
function SetCreationPersonnage(): string;
//Afficher le nom du personnage
function GetCreationPersonnage(): string;

implementation
var
  nom : string;

  procedure InitCreationPersonnage();
  begin
    nom :='Steve';
  end;

function SetCreationPersonnage(): string;
begin
  writeln('--Création du personnage--');

  write('Donnez votre nom : ');
  readln(nom);
end;

function GetCreationPersonnage(): string;
begin
  write('Votre nom est : ', nom);
  readln();
end;

end.




