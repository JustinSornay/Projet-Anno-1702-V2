program Test;

uses SystemeBatiments, ressources, GestionEcran, GestionErreur, FonctionFinal,
  Image, CreateBatMaison, initialisationPrincip, CadreInfoBat, CreateBatSociaux,
  CreateBatIndustries, SystemeTour, DestructBatMaison, destructbatsociaux,
  destructBatIndustries, GestionAccuiel, gestionmarchand, AchatVenteMarchand;

begin
  InitVariableRetourMarchand();
  changerTailleConsole(150,50); // Taille console
  InisialisationVariable(); //Initialise la variable de retour pour les batiements
  InisialisationVariableBat(); //initialisation des Variable de batiments Final
  initRessources(); //Initialise les variable Dans les Ressources
  MainStart();

end.
