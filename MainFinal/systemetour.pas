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
procedure StartTour();  //Initialisation du nombre de tour a 0
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

  //*************************Consomation/Impots poissons**********************************//

  setPoissons(GetPoissons() - (getColons() + getCitoyens()));  //Modifie la quantité de Poissons en fonction des Colons et des Citoyens possédé
  setGold(GetGold() + (getColons()+getCitoyens()) * 2);  //Modifie la quantité d'Or en fonction des Colons possédé


//************************Social************************************//

   if getMaisonColon() > GetColons() then setColons(GetColons() + 1);

   if getMaisonCitoyens() > GetCitoyens() then setCitoyens(GetCitoyens() + 1);


//*************************Industries********************************************//

  if getBois() < getValEntrepot() then  //si le joueur n'a pas déja la quantité maximal de bois
    begin
        setBois(GetBois() + (getCabaneBucheron() * 1));   //Modifie la quantité de bois en fonction des cabane de bucheron possédé
    end;

  if getLaines() < getValEntrepot() then  //si le joueur n'a pas déja la quantité maximal de Laine
    begin
        setLaines(getLaines() + (getBergerie() * 1)); //Modifie la quantité de laines en fonction des bergeries possédé
    end;

  if getTissus() < getValEntrepot() then  //si le joueur n'a pas déja la quantité maximal de Tissus
    begin
        setTissus(getTissus() + (getAtelierTissus() * 1)) //modifie la quantité de tissus en fonction des Ateliers de tissus
    end;

  if getPoissons() < getValEntrepot() then  //si le joueur n'a pas déja la quantité maximal de Poissons
    begin
        setPoissons(GetPoissons() + (GetCabanePecheur() * 2));  //Modifie la quantité de Poissons en fonction des cabane de Poissons possédé
    end;

end;

end.
