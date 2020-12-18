unit Image;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, GestionEcran;

  // Créer l'image plage
  Procedure ImgPlage();

  //Page d'accueil du jeu
  Procedure PageAccueilSun();

  //Procedure qui affiche le main logo kaitiora
  Procedure PageAccueilLogo();

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
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    WriteLn('                                      \ | /');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    WriteLn('                                    -= (_) =-');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    WriteLn('   .\/.                               / | \');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    WriteLn('.\\//o\\                      ,\/.                     ,~');
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
  
  //Page d'accueil du jeu
  Procedure PageAccueilSun();
  var
  CurseurRess : coordonnees;

  BEGIN
    dessinerCadreXY(0,0,148,49, simple, 15, 0); //Cadre large
    deplacerCurseurXY(122, 2);  //Ecrire dans le cadre des batiments possédés
    CurseurRess := positionCurseur(); 

    writeln('            |');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('            |   .');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('     `.  *  |     .''');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('       `. ._|_* .''  .');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('     . * .''   `.  *');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('  -------|     |-------');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('     .  *`.___.'' *  .');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('        .''  |* `.  *');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('      .'' *  |  . `.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('          . |');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('            | ');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
  end;

Procedure PageAccueilLogo();
  var
  CurseurRess : coordonnees;
  BEGIN

    deplacerCurseurXY(20, 20);  //Ecrire dans le cadre des batiments possédés
    CurseurRess := positionCurseur();
    writeln('   ___  ____        __         _____    _________      _____       ____       _______            __ ');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);     
    writeln('  |_  ||_  _|      /  \       |_   _|  |  _   _  |    |_   _|    .''    `.    |_   __ \          /  \ ');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);    
    writeln('    | |_/ /       / /\ \        | |    |_/ | | \_|      | |     /  .--.  \     | |__) |        / /\ \   ');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess); 
    writeln('    |  __''.      / ____ \       | |        | |          | |    | |      | |    |  __ /        / ____ \   ');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('   _| |  \ \_  _/ /    \ \_    _| |_      _| |_        _| |_    \  `--''  /   __|    \ \_    _/ /    \ \_ ');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('  |____||____| |____| |____|  |_____|    |_____|      |_____|    `.____.''   |____|  |___|  |____|  |____|');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);

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
