unit GestionAccuiel;

{$mode objfpc}{$H+}


interface

uses
  Classes, SysUtils,image,GestionEcran,fonctionfinal,Ressources,SystemeTour,initialisationPrincip,systemeBatiments;

//Procedure qui regroupe le start du jeu
 Procedure MainStart();

//procedure qui test si le joueur veux jouer ou non
 Procedure StartGame();

//Cette fonction renvoie le pseudo du joueur
 function getPseudo() : string;

//fonction qui gère la création de pseudo
 Procedure CreationPseudo();

//Cette procedure modifie la valeur de la variable Pseudo
 procedure setPseudo(valeur : string);

//Cette procedure affiche le nom du personnage
 procedure affichePersonnage();

//Cette procedure affiche la boite de gestion de construction
 procedure GestionDialogue();

//Cette procedure affiche l'écran d'interface
 procedure InterfaceEcran();

//function qui renvoie la valeur de retourAccueil
function getRetourAccueil():boolean;
//procedure qui modifie la valeur de retourAccueil
procedure setRetourAccueil(valeur : boolean);

implementation
var
     Pseudo:string;
     retourAccueil : BOOLEAN;

//Procedure qui regroupe le start du jeu
 Procedure MainStart();
 BEGIN
  setRetourAccueil(false);
  StartTour();  //Initialisation du nombre de tour a 0
  StartGame();


 END;

//procedure qui test si le joueur veux jouer ou non
Procedure StartGame();
  var
    CurseurRess : coordonnees;
    TestStartGame:Integer;

  BEGIN

    TestStartGame:=0;
    deplacerCurseurXY(52, 36);
    CurseurRess := positionCurseur();

    writeln('Bienvenue sur KAITIORA voulez-vous jouer ?');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('OUI : 1 | NON : 2');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    readln(TestStartGame);

    if (TestStartGame=1)then
    BEGIN
      CurseurRess.y := CurseurRess.y + 1;
      CurseurRess.x:= CurseurRess.x+11;
      deplacerCurseur(CurseurRess);
      CreationPseudo();
      InterfaceEcran();//start main menu

    end;
  END;

 Procedure CreationPseudo();
 var valeur:string; CurseurRess:coordonnees;
 BEGIN
  effacerEcran();//effacer l'ecran
  dessinerCadreXY(0,0,148,49, simple, 15, 0); //Cadre large
  PetitCadre();
  deplacerCurseurXY(40, 20);  //Ecrire dans le cadre
  CurseurRess := positionCurseur();
  writeln('Entrer le nom de votre Personnage :');
  CurseurRess.y := 20; CurseurRess.x :=76;
  deplacerCurseur(CurseurRess);
  read(valeur);
  setPseudo(valeur);

 END;


   //                        //
  //          Pseudo        //
 //                        //

//Cette fonction renvoie le pseudo du joueur
 function getPseudo() : string;
 BEGIN
     getPseudo := Pseudo;
 END;

 //Cette procedure modifie la valeur de la variable Pseudo
 procedure setPseudo(valeur : string);
 BEGIN
     Pseudo := valeur;
 END;


 //Cette procedure affiche le nom ainsi que les gold de l'utilisateur
  procedure affichePersonnage();
  begin
   deplacerCurseurXY(5,2);
   writeln('Nom du personnage :          ',getPseudo());
    deplacerCurseurXY(5,3);
   writeln('Nombre de gold    :         ',getGold());

  end;

 //Cette procedure permet de dialoguer entre l'utilisateur et la console
  procedure GestionDialogue();
  var x:integer;
    CurseurRess : coordonnees;
  begin
  dessinerCadreXY(5,35,80,40, simple, 15, 0); //Cadre de Gestion construction
  dessinerCadreXY(18,34,66,36, simple, 15, 0); //Cadre du mot 'Gestion construction'
  deplacerCurseurXY(35, 35);  //Ecrire a l'intérieur de l'encadré
  writeln('Dialogue');
  deplacerCurseurXY(20, 37);  //Ecrire dans le cadre du dialogue
  CurseurRess := positionCurseur();
  writeln('Construire : 1            Quitter le jeu : 2');
  deplacerCurseurXY(30, 38);
  writeln('Passer un tour : 3 ');
  deplacerCurseurXY(30, 39);
  readln(x);
       case x of
       1: begin
            GestionBatiments();
            setRetourBat(FALSE);
          end;
       2:setRetourAccueil(true);
       3:TourSuivant();
       end;

  end;

 //Cette procedure affiche l'écran d'interface
  procedure InterfaceEcran();
 begin
 WHILE (getRetourAccueil() = false) do
   begin
        dessinerCadreXY(0,0,148,49, simple, 15, 0);
        InfoJeuResBat();
        affichagePopulation; // affiche le cadre de la population
        infoTour;         // affiche le cadre des informations comme les tours
        affichePersonnage; //affiche le nom du personnage ainsi que les golds
        ImgPlage();        // créer l'image de la plage
        GestionDialogue();// affiche le cadre gestion de construction
        InterfaceEcran();
   end;
 end;

//function qui renvoie la valeur de retourAccueil
function getRetourAccueil():boolean;
begin
  getRetourAccueil := retourAccueil;
end;

//procedure qui modifie la valeur de retourAccueil
procedure setRetourAccueil(valeur : boolean);
begin
  retourAccueil := valeur;
end;

end.
