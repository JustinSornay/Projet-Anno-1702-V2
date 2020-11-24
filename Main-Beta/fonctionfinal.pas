unit FonctionFinal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, SystemeBatiments, ressources, GestionEcran, Image, CadreInfoBat;

// Procedure finale pour créer un batiments
procedure CreeBatiments();

// Procedure affiche les ressources et les Batiments
PROCEDURE InfoJeuResBat();

implementation

// Procedure affiche les ressources et les Batiments
PROCEDURE InfoJeuResBat();
BEGIN
  effacerEcran();
  dessinerCadreXY(0,0,148,49, simple, 15, 0); //Cadre début
  InfoRessource();  //Affiche le cadre des ressources avec en parametre la capicité de stockage
  InfoBatiments();  //Affiche le cadre des batiment possédé
END;


// Procedure finale pour créer un batiments
procedure CreeBatiments();

BEGIN

WHILE getRetourBat() = FALSE DO BEGIN
  effacerEcran();
  InfoJeuResBat();  //affiche les ressources et les Batiments
  InfoCoutBatiments();  //affiche les cout des batiments
  ImgPlage(); //Image plage
  PTypeBatiment();  //Procedure qui class les types de batiments
  IF getRetourBat() = FALSE THEN BEGIN
    ConstructionsBatiments(); //Procedure de construction de Batiment
  END
END;

  InfoJeuResBat();  //affiche les ressources et les Batiments

  WriteLn('Retour Reussi --> Ecran principal');

  setRetourBat(FALSE);  // modifie la valeur de retour a False
  ReadLn();
END;

end.
