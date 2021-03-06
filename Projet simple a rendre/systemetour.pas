unit SystemeTour;

interface

uses
  Classes, SysUtils, initialisationPrincip, Ressources, GestionEcran,GestionMarchand, GestionErreur;

// Information de l'ile
procedure InfoTour();

// INITIALISE LE NOMBRE DE TOUR
procedure StartTour();

// RECUPERER LE NUMERO DU TOUR ACTUEL
function GetTour() : integer;

// PASSER AU TOUR SUIVANT
procedure TourSuivant();

// Procedure finale pour le marchand
procedure MarchandFinal();

// Procedure pour savoir si le joueur veux acheter ou vendre
procedure FinalAcheterOuVendre();

implementation
var
  NumTour : integer;

  // Procedure pour savoir si le joueur veux acheter ou vendre
  procedure FinalAcheterOuVendre();
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
                FinalAcheterOuVendre(); //Récursivité
              END;
            END;
           END;

       2 : BEGIN
            WHILE getRetourMarchand() = FALSE DO BEGIN
                VendreRessources();
              IF getRetourMarchand() = FALSE THEN BEGIN
                FinalAcheterOuVendre(); //Récursivité
              END;
            END;
           END;

       0 : BEGIN
             setRetourMarchand(True);  // modifie la valeur de retourMarchand a True
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
      // Créer le cadre Dialogue pour le marchand
      CadreDialogueMarchand();

      // Créer Une ligne dans le dialogue du marchand
      LigneDialogueMarchand();
  end;

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
var x : integer;
begin
  NumTour := NumTour + 1;




  //*************************Consomation/Impots poissons**********************************//

  setPoissons(GetPoissons() - (getColons()));  //Modifie la quantité de Poissons en fonction des Colons possédé
  setGold(GetGold() + (getColons() * 2));  //Modifie la quantité d'Or en fonction des Colons possédé


//************************Social************************************//

   if getMaisonColon() > GetColons() then setColons(GetColons() + 1); //Modifie le nombre de colons en fonction des maisons de colons possédés

//*************************Industries********************************************//


        setBois(GetBois() + (getCabaneBucheron() * 1));   //Modifie la quantité de bois en fonction des cabane de bucheron possédé

        setLaines(getLaines() + (getBergerie() * 1)); //Modifie la quantité de laines en fonction des bergeries possédé

        setTissus(getTissus() + (getAtelierTissus() * 1)); //modifie la quantité de tissus en fonction des Ateliers de tissus

        setPoissons(GetPoissons() + (GetCabanePecheur() * 2));  //Modifie la quantité de Poissons en fonction des cabane de Poissons possédé


    //Si le marchand apparait
    x := Random(4);
    if x = 1 then
      FinalAcheterOuVendre();

end;

// Information de l'ile
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
