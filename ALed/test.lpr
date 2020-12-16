program test;

uses SystemeBatiments, ressources, GestionEcran, GestionErreur, FonctionFinal,
  Image, CreateBatMaison, initialisationPrincip, CadreInfoBat, CreateBatSociaux,
  CreateBatIndustries, SystemeTour, DestructBatMaison, destructbatsociaux,
  destructBatIndustries,GestionAccuiel ;


begin
  changerTailleConsole(150,50); // Taille console
    InisialisationVariable(); //Initialise les variables dans les batiments
    InisialisationVariableBat(); //initialisation des Variable de batiments Final
    initRessources(); //Initialise les variable Dans les Ressources
    MainStart();
  readln;
end.

