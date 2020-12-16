unit SystemeTour;

interface

uses
  Classes, SysUtils, initialisationPrincip, Ressources, GestionEcran;

  // AFFICHE LE NOMBRE DE TOUR
  procedure InfoTour();

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

    //marchand

end;

procedure InfoTour();
var CurseurRess: coordonnees;
begin
   dessinerCadreXY(5,13,80,24, simple, 15, 0); //Cadre des tours

  dessinerCadreXY(18,12,68,14, simple, 15, 0); //Cadre du mot 'Information'
  deplacerCurseurXY(38, 13);  //Ecrire a l'intérieur de l'encadré
  writeln('Informations');
  deplacerCurseurXY(20, 17);  //Ecrire dans le cadre des Informations
  CurseurRess := positionCurseur();

  writeln('Nom de l''île            :           Kaitora');        // Afficher le nom de l'île
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Nombre de tours         :           ',GetTour());   // Affiche le nombre de tours
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Fertilités              :           houblon,tabac,blé');   // Affiche la fertilité de l'île
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Emplacement             :           83');   // Affiche l'emplacement de l'île


end;

end.
