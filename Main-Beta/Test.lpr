program Test;

uses SystemeBatiments, ressources, GestionEcran, GestionErreur, FonctionFinal,
  Image, CreateBatMaison, initialisationPrincip, CadreInfoBat, CreateBatSociaux,
  CreateBatIndustries;

//type coordonnees = record
//  x : integer;
//  y : integer;
//end;

//var
  //paraph : string;
  //Coor : coordonnees;

begin
  changerTailleConsole(150,50); // Taille console
  InisialisationVariable(); //Initialise les variables dans les batiments
  InisialisationVariableBat(); //initialisation des Variable de batiments Final
  initRessources(); //Initialise les variable Dans les Ressources

//  setLaines(40);
//  InfoRessource(getValEntrepot());  //Affiche le cadre des ressources avec en parametre la capicité de stockage
//  InfoBatiments();
//  deplacerCurseurXY(1,1); // déplace le curseur dans le cadre
  //setGold(0);
  CreeBatiments();




//  PTypeBatiment();
//  ConstructionsBatiments();
end.
