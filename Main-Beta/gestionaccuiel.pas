unit GestionAccuiel;

{$mode objfpc}{$H+}


interface

uses
  Classes, SysUtils,image,GestionEcran,fonctionfinal;

//Procedure qui regroupe le start du jeu
Procedure MainStart();

//procedure qui test si le joueur ve start le game
Procedure StartGame();

//Cette fonction renvoie la du pseudo
 function getPseudo() : string;

//fonction qui gère la création de pseudo
  Procedure CreationPseudo();

 //Cette procedure modifie la valeur de la variable Pseudo
 procedure setPseudo(valeur : string);
 
implementation
var
     Pseudo:string;

//Procedure qui gère la page 
 Procedure MainStart();
 BEGIN
  PageAccueilSun();
  PageAccueilLogo();
  StartGame();
  
 END;

Procedure StartGame();
  var
    CurseurRess : coordonnees;
    TestStartGame:Integer;

  BEGIN
    
    TestStartGame:=0;
    deplacerCurseurXY(52, 36);  //Ecrire dans le cadre des batiments possédés
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
      CreeBatiments();//startbatiment//
      
    end
    else
    Begin
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      writeln('Le jeu va ce fermé dans 1s');
      attendre(5000);
    end;
  END;

 Procedure CreationPseudo();
 var valeur:string; CurseurRess:coordonnees;
 BEGIN
  effacerEcran();//effacer l'ecran
  dessinerCadreXY(0,0,148,49, simple, 15, 0); //Cadre large
  PetitCadre();
  deplacerCurseurXY(2, 2);  //Ecrire dans le cadre des batiments possédés
  CurseurRess := positionCurseur();
  writeln('Entrer le nom de votre Personnage :');
  CurseurRess.y := 2; CurseurRess.x :=38;
  deplacerCurseur(CurseurRess); 
  read(valeur);
  setPseudo(valeur);
  getPseudo();
  
 END;

 
   //                        //
  //          Pseudo        //
 //                        //

 //Cette fonction renvoie la du pseudo
 function getPseudo() : string;
 BEGIN
     getPseudo := Pseudo;
 END;

 //Cette procedure modifie la valeur de la variable Pseudo
 procedure setPseudo(valeur : string);
 BEGIN
     Pseudo := valeur;
 END;

end.

