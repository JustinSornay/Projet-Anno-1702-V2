unit Image;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, GestionEcran;

  // Créer l'image plage
  Procedure ImgPlage();

  //Procedure non utilisé qui peux affiché une petite island sur la page d'accuiel
  Procedure PageAccueilIsland();

  //Petit cadre de la page avec le pseudo
  Procedure PetitCadre();


implementation

// Créer l'image plage
  Procedure ImgPlage();
  var
    CurseurRess : coordonnees;

  BEGIN
    deplacerCurseurXY(83, 39);  //Ecrire dans le cadre des batiments possédés
    CurseurRess := positionCurseur();
    WriteLn('                                        |');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    WriteLn('                                      \ _ /');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    WriteLn('                                    -= (_) =-');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    WriteLn('   .\/.                               /   \');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    WriteLn('.\\//o\\                      ,\/.      |              ,~');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    WriteLn('//o\\|,\/.   ,.,.,   ,\/.  ,\//o\\                     |\');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    WriteLn('  |  |//o\  /###/#\  //o\  /o\\|                      /| \');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    WriteLn(' .|'''' . |  ''''''""''"''''. |`===`|''''  ''"" "" " (" ~~~~ ~ ~======~~ ');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    WriteLn(' .|'''' . |  ''''''""''"''''. |`===`|''''  ''"" "" " (" ~~~~ ~ ~======~~~');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    WriteLn(' ^^^^^   ^^^ ^ ^^^ ^^^^ ^^^ ^^ ^^ "" """( " ~~~~~~ ~~~~~  ~~~ ~');
  END;
  
  Procedure PageAccueilIsland();
  var
    CurseurRess : coordonnees;
  BEGIN
    deplacerCurseurXY(52, 42);  //Ecrire dans le cadre des batiments possédés
    CurseurRess := positionCurseur();
    writeln('_\/_                 |                _\/_');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('/o\\             \       /            //o\');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln(' |                 .---.                |');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('_|_______     --  /     \  --     ______|_');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('         `~^~^~^~^~^~^~^~^~^~^~^~`');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
  END;

  Procedure PetitCadre();
  var CurseurRess:coordonnees;
  BEGIN
    dessinerCadreXY(50,0,100,4, simple, 15, 0); //Cadre large
    deplacerCurseurXY(65, 2);  //Ecrire dans le cadre des batiments possédés
    CurseurRess := positionCurseur();
    write('CREATION DE PERSONNAGE');
  END;
end.
