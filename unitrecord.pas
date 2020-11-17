unit UnitRecord;

{$mode objfpc}{$H+}

interface
uses
  Classes, SysUtils;

type Personnage = record
  PV : Integer;
  nom : String;
end;

//Fonction créant un nouveau personnage dont le nom est donné en paramètre et
//les PV sont fixés par défaut à 100
function nouveauPersonnage(SonNom : String) : Personnage;
//Procedure enlevant infligeant des dégats au personnage donné en parametre
procedure blesser(var perso : personnage; degat : Integer);

implementation

//Fonction créant un nouveau personnage dont le nom est donné en paramètre et
//les PV sont fixés par défaut à 100
function nouveauPersonnage(SonNom : String) : Personnage;
begin
  nouveauPersonnage.nom := SonNom;
  nouveauPersonnage.PV := 100;
end;

//Procedure enlevant infligeant des dégats au personnage donné en parametre
procedure blesser(var perso : personnage; degat : Integer);
begin
  perso.PV := perso.PV - degat;
end;

end.

