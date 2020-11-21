unit FonctionFinal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, SystemeBatiments, ressources, GestionEcran;

// Procedure finale pour créer un batiments
procedure CreeBatiments();

implementation

// Procedure finale pour créer un batiments
procedure CreeBatiments();
BEGIN

WHILE getRetourBat() = FALSE DO BEGIN
effacerEcran();
dessinerCadreXY(0,0,148,49, simple, 15, 0); //Cadre début
InfoRessource(getValEntrepot());  //Affiche le cadre des ressources avec en parametre la capicité de stockage
InfoBatiments();  //Affiche le cadre des batiment possédé


PTypeBatiment();
ConstructionsBatiments();
effacerEcran(); // efface Ecran
END;
  dessinerCadreXY(0,0,148,49, simple, 15, 0); //Cadre début
  InfoRessource(getValEntrepot());  //Affiche le cadre des ressources avec en parametre la capicité de stockage
  InfoBatiments();  //Affiche le cadre des batiment possédé
  PTypeBatiment();
  WriteLn('Retour Reussi --> Ecran principal');
  setRetourBat(FALSE);  // modifie la valeur de retour a False
  ReadLn();
END;

end.
