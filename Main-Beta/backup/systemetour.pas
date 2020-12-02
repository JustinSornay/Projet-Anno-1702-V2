unit SystemeTour;

interface

uses
  Classes, SysUtils, initialisationPrincip, Ressources;

procedure StartTour();
function GetTour() : integer;
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
  setBois(GetBois() + (GetCabaneBucherons() * 1));
  setPoissons(GetPoissons() + (GetCabanePecheur() * 2));
  setPoissons(GetPoissons() - GetColons() - GetCitoyens());
  setGold(GetGold() + (GetColons() * 2));
end;

begin
end.

