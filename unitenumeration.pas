unit UnitEnumeration;

{$mode objfpc}{$H+}

interface
uses
  Classes, SysUtils;

//Enumération : un jour est soit un lundi, soit un mardi...
type Jour = (lundi,mardi,mercredi,jeudi,vendredi,samedi,dimanche);
//Passe au jour suivant
function jourSuivant(j : Jour) : Jour;
//Renvoie le numéro du jour dans la semaine (1 pour lundi, 7 pour dimanche)
function numeroDuJourDansLaSemaine(j : Jour) : integer;

implementation

//Ord renvoie le numéro de l'élément dans l'énumération (commence à 0)
function numeroDuJourDansLaSemaine(j : Jour) : integer;
begin
     numeroDuJourDansLaSemaine := Ord(j)+1;
end;

//Jour(i) renvoie i-ème élément de l'énumération, cela permet par exemple
//de passer au jour suivant
function jourSuivant(j : Jour) : Jour;
begin
  if j = dimanche then jourSuivant := lundi
  else jourSuivant:= Jour(Ord(j)+1);
end;

end.

