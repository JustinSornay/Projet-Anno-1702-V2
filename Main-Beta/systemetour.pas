unit SystemeTour;

interface

uses
  Classes, SysUtils, initialisationPrincip, Ressources;

// INITIALISE LE SYSTEME DE TOUR
procedure StartTour();

// RECUPERER LE NUMERO DU TOUR ACTUEL
function GetTour() : integer;

// PASSER AU TOUR SUIVANT
procedure TourSuivant();

implementation
var
  NumTour : integer;

// INITIALISE LE SYSTEME DE TOUR
procedure StartTour();
  begin
    NumTour := 0;
  end;

// RECUPERER LE NUMERO DU TOUR ACTUEL
function GetTour() : integer;
begin
  GetTour := NumTour;
end;

// PASSER AU TOUR SUIVANT
procedure TourSuivant();
begin
  NumTour := NumTour + 1;
  setBois(GetBois() + (getCabaneBucheron() * 1));   //Modifie la quantité de bois en fonction des cabane de bucheron possédé
  setPoissons(GetPoissons() + (GetCabanePecheur() * 2));  //Modifie la quantité de Poissons en fonction des cabane de Poissons possédé
  setPoissons(GetPoissons() - getMaisonColon() - getMaisonCitoyens());  //Modifie la quantité de Poissons en fonction des Colons et des Cotoyens possédé
  setGold(GetGold() + (getMaisonColon() * 2));  //Modifie la quantité d'Or en fonction des Colons possédé
end;


