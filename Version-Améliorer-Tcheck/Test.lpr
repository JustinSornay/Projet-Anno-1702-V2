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
  //StartTour(); //Initialisation du nombre de tour a 0
 MainStart();






  //MarchandFinal();
  //FinalAcheterOuVendre();
//  setLaines(40);
//  InfoRessource(getValEntrepot());  //Affiche le cadre des ressources avec en parametre la capicité de stockage
//  InfoBatiments();
//  deplacerCurseurXY(1,1); // déplace le curseur dans le cadre
  //setGold(0);


        //CreeBatiments();    //Systeme de creation de batiment


        //GestionBatiments();
        //InfoJeuResBat();  //affiche les ressources et les Batiments
        //readln();
    //    WriteLn('Retour Reussi --> Ecran principal');

    //    setRetourBat(FALSE);  // modifie la valeur de retour a False
    //    ReadLn();




        //StartTour();
      //  writeln(GetTour());
        //TourSuivant();
        //writeln(GetTour());
      //  readln()


//  PTypeBatiment();
//  ConstructionsBatiments();
end.
