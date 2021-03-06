unit SystemeTour;

interface

uses
  Classes, SysUtils, initialisationPrincip, Ressources, GestionEcran,GestionMarchand, GestionErreur;

  // AFFICHE LE NOMBRE DE TOUR
  procedure InfoTour();

// INITIALISE LE SYSTEME DE TOUR
procedure StartTour();

// RECUPERER LE NUMERO DU TOUR ACTUEL
function GetTour() : integer;

// PASSER AU TOUR SUIVANT
procedure TourSuivant();

// Procedure finale pour le marchand
procedure MarchandFinal();

// Procedure pour savoir si acheter ou vendre
procedure FinalAcheterOuVendre();

implementation
var
  NumTour : integer;

  // Procedure pour savoir si acheter ou vendre
  procedure FinalAcheterOuVendre();                             //A FINIR FAIRE LA MEME CHOSE QUE POUR LES BATIMENTS DANS SYSTEMEBATIMENT

  var
    CurseurRess: coordonnees;
    AcheterOuVendre : INTEGER;
     BEGIN
     effacerEcran();
     MarchandFinal();

     CurseurRess := positionCurseur();
     writeln('Acheter : 1');
     CurseurRess.y := CurseurRess.y + 1;
     deplacerCurseur(CurseurRess);
     writeln('Vendre : 2');
     CurseurRess.y := CurseurRess.y + 1;
     deplacerCurseur(CurseurRess);
     writeln('Retour : 0');
     CurseurRess.y := CurseurRess.y + 1;
     deplacerCurseur(CurseurRess);
     readln(AcheterOuVendre);

     CASE AcheterOuVendre OF
       1 : BEGIN
            WHILE getRetourMarchand() = FALSE DO BEGIN
                AcheterRessources();
              IF getRetourMarchand() = FALSE THEN BEGIN
                FinalAcheterOuVendre();
              END;
            END;
           END;

       2 : BEGIN
            WHILE getRetourMarchand() = FALSE DO BEGIN
                VendreRessources();
              IF getRetourMarchand() = FALSE THEN BEGIN
                FinalAcheterOuVendre();
              END;
            END;
           END;

       0 : BEGIN
             setRetourMarchand(True);  // modifie la valeur de retour a True
             CurseurRess.y := CurseurRess.y + 1;
             deplacerCurseur(CurseurRess);
             ReadLn();
           END;
     END;
  END;

  // Procedure finale pour le marchand
  procedure MarchandFinal();
  begin
      Marchand();
      // Cr??er le cadre Dialogue pour le marchand
      CadreDialogueMarchand();

      // Cr??er Une ligne dans le dialogue du marchand
      LigneDialogueMarchand();
  end;

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
var x : integer;
begin
  NumTour := NumTour + 1;
  x := Random(4);



  //*************************Consomation/Impots poissons**********************************//

  setPoissons(GetPoissons() - (getColons() + getCitoyens()));  //Modifie la quantit?? de Poissons en fonction des Colons et des Citoyens poss??d??
  setGold(GetGold() + (getColons()+getCitoyens()) * 2);  //Modifie la quantit?? d'Or en fonction des Colons poss??d??


//************************Social************************************//

   if getMaisonColon() > GetColons() then setColons(GetColons() + 1);

   if getMaisonCitoyens() > GetCitoyens() then setCitoyens(GetCitoyens() + 1);


//*************************Industries********************************************//

  if getBois() < getValEntrepot() then  //si le joueur n'a pas d??ja la quantit?? maximal de bois
    begin
        setBois(GetBois() + (getCabaneBucheron() * 1));   //Modifie la quantit?? de bois en fonction des cabane de bucheron poss??d??
    end;

  if getLaines() < getValEntrepot() then  //si le joueur n'a pas d??ja la quantit?? maximal de Laine
    begin
        setLaines(getLaines() + (getBergerie() * 1)); //Modifie la quantit?? de laines en fonction des bergeries poss??d??
    end;

  if getTissus() < getValEntrepot() then  //si le joueur n'a pas d??ja la quantit?? maximal de Tissus
    begin
        setTissus(getTissus() + (getAtelierTissus() * 1)) //modifie la quantit?? de tissus en fonction des Ateliers de tissus
    end;

  if getPoissons() < getValEntrepot() then  //si le joueur n'a pas d??ja la quantit?? maximal de Poissons
    begin
        setPoissons(GetPoissons() + (GetCabanePecheur() * 2));  //Modifie la quantit?? de Poissons en fonction des cabane de Poissons poss??d??
    end;

    //marchand
    if x = 1 then
      FinalAcheterOuVendre();

end;





procedure InfoTour();
var CurseurRess: coordonnees;
begin
   dessinerCadreXY(5,13,80,24, simple, 15, 0); //Cadre des tours

  dessinerCadreXY(18,12,68,14, simple, 15, 0); //Cadre du mot 'Information'
  deplacerCurseurXY(38, 13);  //Ecrire a l'int??rieur de l'encadr??
  writeln('Informations');
  deplacerCurseurXY(20, 17);  //Ecrire dans le cadre des Informations
  CurseurRess := positionCurseur();

  writeln('Nom de l''??le            :           Kaitora');        // Afficher le nom de l'??le
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Nombre de tours         :           ',GetTour());   // Affiche le nombre de tours
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Fertilit??s              :           houblon,tabac,bl??');   // Affiche la fertilit?? de l'??le
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Emplacement             :           83');   // Affiche l'emplacement de l'??le


end;

end.
