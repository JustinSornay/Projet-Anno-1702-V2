//program Test;

uses SystemeBatiments, ressources, GestionEcran, GestionErreur;

//type coordonnees = record
//  x : integer;
//  y : integer;
//end;

//var
//  paraph : string;
//  Coor : coordonnees;
begin
  InisialisationVariable();
  initRessources();
  //setGold(0);
  writeln('vous avez : ',getGold(),' d''or');
  writeln('vous avez : ',getBois(),' Bois');
  writeln('vous avez : ',getOutils(),' Outils');
//  paraph := 'Julien';
//  Coor := 2;
  readln();
//  effacerEcran();
//  ecrireEnPosition(Coor, paraph);
  PTypeBatiment();
  ConstructionsBatiments();
end.
