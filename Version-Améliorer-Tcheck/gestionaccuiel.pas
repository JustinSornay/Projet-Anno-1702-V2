unit GestionAccuiel;

{$mode objfpc}{$H+}

Interface

USES
  Classes, SysUtils,image,GestionEcran,fonctionfinal,Ressources,GestionErreur,SystemeTour,initialisationPrincip,systemeBatiments,CadreInfoBat;

//Procedure qui regroupe le start du jeu
Procedure MainStart();

//procedure qui test si le joueur ve start le game
Procedure StartGame();

//Cette fonction renvoie la du pseudo
function getPseudo() : string;

//fonction qui gère la création de pseudo
Procedure CreationPseudo();

//Cette procedure modifie la valeur de la variable Pseudo
Procedure setPseudo(valeur : string);

//Cette procedure affiche le nom du personnage
Procedure affichePersonnage();

//Cette procedure afficher les niveau de difficulté
Procedure AfficheListeDifficulte();

//Cette procedure affiche la boite de gestion de construction
Procedure GestionDialogue();

//Cette procedure affiche l'écran d'interface
Procedure InterfaceEcran();

//Cette procedure introduit l'histoire du jeu
Procedure HistoireIntroduction();

Function getRetourAccueil():boolean;
Procedure setRetourAccueil(valeur : boolean);


Implementation
VAR
     Pseudo:String;
     retourAccueil : BOOLEAN;

 //Procedure qui gère la page
 Procedure MainStart();
 BEGIN
  setRetourAccueil(false);
  PageAccueilSun();
  PageAccueilLogo();
  StartGame();
 END;

 //Procedure de lancement du game
 Procedure StartGame(); 
  VAR
    CurseurRess : coordonnees;
    TestStartGame:Integer;

  BEGIN

    TestStartGame:=0;
    deplacerCurseurXY(52, 36);  //Ecrire dans le cadre des batiments possédés
    CurseurRess := positionCurseur();

    writeln('Bienvenue sur KAITIORA voulez-vous jouer ?');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('OUI : 1 | NON : 2');  //condition de start ou d'Exit
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    readln(TestStartGame);

    if (TestStartGame=1)then //Si le joeur veux start le game
    BEGIN
      CurseurRess.y := CurseurRess.y + 1;
      CurseurRess.x:= CurseurRess.x+11;
      deplacerCurseur(CurseurRess);
      CreationPseudo(); //procedure de creation de pseudo et de choix de 
      HistoireIntroduction(); //affiche le menu avec le text d'introduction;   
      InterfaceEcran();//start main menu

    END
    ELSE //Si le joueur veux fermer le game
    BEGIN
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      writeln('Le jeu va ce fermé dans 1s');
      attendre(1500);
    END;
  END;

 Procedure CreationPseudo(); //procedure de creation de pseudo et de coix de difficulté
  var valeur:string; CurseurRess:coordonnees; difficulte:integer;
  BEGIN
    effacerEcran();//effacer l'ecran
    dessinerCadreXY(0,0,148,49, simple, 15, 0); //Cadre large
    PetitCadre();
    deplacerCurseurXY(40, 20);  //Ecrire dans le cadre des batiments possédés
    CurseurRess := positionCurseur();

    writeln('Entrer le nom de votre Personnage :');
    CurseurRess.y := 20; CurseurRess.x :=76;
    deplacerCurseur(CurseurRess);
    read(valeur);
    setPseudo(valeur);
    deplacerCurseurXY(40, 22);  //déplacer le curseur en desous du nom du personnage
    CurseurRess := positionCurseur();

    writeln('Qu elle niveau de difficulté voulez-vous :');
    AfficheListeDifficulte();
    CurseurRess.y := 22; CurseurRess.x :=82;
    deplacerCurseur(CurseurRess);
    readln(difficulte); //demande au joueur de choisise la difficulté de la partie
    CurseurRess.y := 23; CurseurRess.x :=40;
    deplacerCurseur(CurseurRess);
    StartTour(difficulte); //Lancement de la partie(1er tour) avec la dificulté
    attendre(1500);
  END;

 //Cette procedure afficher les niveau de difficulté
 Procedure AfficheListeDifficulte();
  VAR CurseurRess:coordonnees;
  BEGIN
    dessinerCadreXY(115,15,140,26, simple, 15, 0); //Cadre large;
    CurseurRess.y := 16; CurseurRess.x :=124;
    deplacerCurseur(CurseurRess);
    writeln('Dificulté');
    CurseurRess.y := 17; CurseurRess.x :=116;
    deplacerCurseur(CurseurRess);
    writeln('________________________');
    CurseurRess.y := 19; CurseurRess.x :=117;
    deplacerCurseur(CurseurRess);
    writeln('- 0 Facile');
    CurseurRess.y := 21; CurseurRess.x :=117;
    deplacerCurseur(CurseurRess);
    writeln('- 1 Normal');
    CurseurRess.y := 23; CurseurRess.x :=117;
    deplacerCurseur(CurseurRess);
    writeln('- 2 Hard');
    CurseurRess.y := 25; CurseurRess.x :=117;
    deplacerCurseur(CurseurRess);
    writeln('- 3 Aléatoire');
    readln();
  END;

      //          Pseudo        //
 //Cette fonction renvoie la du pseudo
 Function getPseudo() : string;
 BEGIN
     getPseudo := Pseudo;
 END;

 //Cette procedure modifie la valeur de la variable Pseudo
 Procedure setPseudo(valeur : string);
 BEGIN
     Pseudo := valeur;
 END;


 //Cette procedure affiche le nom ainsi que les gold de l'utilisateur
 Procedure affichePersonnage();
 VAR CurseurRess:coordonnees;
  BEGIN
   deplacerCurseurXY(5,2);
   writeln('Nom du personnage :          ',getPseudo);
    deplacerCurseurXY(5,3);
   writeln('Nombre de gold    :         ',getGold);

  END;

 //Cette procedure permet de dialoguer entre l'utilisateur et la console
 Procedure GestionDialogue();
  VAR x:integer;
    CurseurRess: coordonnees;
  BEGIN
   dessinerCadreXY(5,35,80,40, simple, 15, 0); //Cadre de Gestion construction
   dessinerCadreXY(18,34,66,36, simple, 15, 0); //Cadre du mot 'Gestion construction'
   deplacerCurseurXY(35, 35);  //Ecrire a l'intérieur de l'encadré
   writeln('Dialogue');
   deplacerCurseurXY(20, 37);  //Ecrire dans le cadre du dialogue
   CurseurRess := positionCurseur();
   writeln('Construire : 1            Quitter le jeu : 2');
   deplacerCurseurXY(20, 38);
   writeln('Passer un tour : 3 ');
   deplacerCurseurXY(20, 58);
   readln(x);

    Case x OF
      1: {Si le joueur veux construire des batiments}
      BEGIN
        GestionBatiments();
        setRetourBat(FALSE);
      END;

      2: {Si le joueur veux retourné a l'accuiel}
      BEGIN
        setRetourAccueil(true);
      END;
     
      3: {Si le joueur veux passé au tour suivant}
      BEGIN
        TourSuivant();
      END;

    END; {END OF CASE}
  END; {END OF PROCEDURE}

 //Cette procedure affiche l'écran d'interface
 Procedure InterfaceEcran();
  VAR x :integer;    
  BEGIN //retourAccueil:Boolean;
    //retourAccueil:=false;
   WHILE (getRetourAccueil() = false) do
    BEGIN
      dessinerCadreXY(0,0,148,49, simple, 15, 0);
      InfoJeuResBat();
      affichagePopulation(); // affiche le cadre de la population
      infoTour();         // affiche le cadre des informations comme les tours
      affichePersonnage(); //affiche le nom du personnage ainsi que les golds
      ImgPlage();        // créer l'image de la plage
      GestionDialogue();// affiche le cadre gestion de construction
      InterfaceEcran();
    END;
 END;


 Function getRetourAccueil():boolean;
 BEGIN
    getRetourAccueil := retourAccueil;
 END;

 Procedure setRetourAccueil(valeur : boolean);
 BEGIN
    retourAccueil := valeur;
 END;

 //Cette procedure introduit l'histoire du jeu
 Procedure HistoireIntroduction();
 VAR CurseurRess : coordonnees; 
 BEGIN
  effacerEcran(); 
  dessinerCadreXY(0,0,148,49, simple, 15, 0); //Cadre large
  Smallboat(); //affichage du petit bateau
  castel();  //affichage du chateau
  SmallSun(); //affichage du sun
  parchemin(); //affichage du text d'introduction
  readln();  
 END;

 
end.
