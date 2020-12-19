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
  
  //procedure du text d'introduction du game
  Procedure parchemin();

  //Procedure d'affichage du petit bateau
  Procedure Smallboat(); 

  //Procedure d'affichage du bateau
  Procedure castel();

  //Procedure d'affiache du petit soleil
  Procedure SmallSun();

Implementation

// Créer l'image plage
  Procedure ImgPlage();
  VAR
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
  VAR
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

  //Procedure qui affiche le main logo kaitiora
  Procedure PageAccueilLogo();
  VAR
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

  //Procedure non utilisé qui peux affiché une petite island sur la page d'accuiel
  Procedure PageAccueilIsland();
  VAR
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

  //Petit cadre de la page avec le pseudo
  Procedure PetitCadre();
  VAR CurseurRess:coordonnees;
  BEGIN
    dessinerCadreXY(50,0,100,4, simple, 15, 0); //Cadre large
    deplacerCurseurXY(65, 2);  //Ecrire dans le cadre des batiments possédés
    CurseurRess := positionCurseur();
    write('CREATION DE PERSONNAGE');
  END;


  Procedure parchemin();  //procedure du text d'introduction du game
  VAR CurseurRess : coordonnees;
  BEGIN
     deplacerCurseurXY(74, 2);  //Ecrire dans le cadre des batiments possédés
     CurseurRess := positionCurseur();

    couleurTexte(12);
    writeln('  ________________________________________________________________');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln(' / \                                                              \.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('/   |                                                              |.');
    CurseurRess.y := CurseurRess.y + 1;
    CurseurRess.x := CurseurRess.x - 1;
    deplacerCurseur(CurseurRess);
    writeln('|    |                      # - JOURNAL DE BORD                     |.');
    CurseurRess.x := CurseurRess.x + 1;
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('\   |                                                              |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln(' \_ |                                                              |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |  Nous sommes partis d’Angleterre, il y a de ça plusieurs     |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |                                                              |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |  mois. A la quête d’une île débordante de ressources.        |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |                                                              |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |  Nous voguons vers cette nouvelle terre avec comme seul      |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |                                                              |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |  destination un nom Nouvelle Zélande.                        |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |                                                              |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |                                                              |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |  Nous continuons notre apportera la route sans garantie de   |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |                                                              |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |  retour, car même si cette île richesse désolation nous y    |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |                                                              |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |  attends. En effet elle est loin d''être inoccupé.            |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |                                                              |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |  Ils ce nomme les MAORIS.                                    |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |                                                              |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |                                                              |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |  Ce peuple ancestral connait cette terre bien mieux que nous |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |                                                              |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |  il vaudrait mieux s’en méfier. Cependant ils ont beau être  |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |                                                              |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |  les plus nombreux nombreux ce ne sont pas les plus          |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |                                                              |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess); 
    writeln('    |  dangereux.                                                  |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |                                                              |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |                                                              |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |  Un petit tribut autochtone moins connu mais d’autant        |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |                                                              |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |  plus dangereuse qu''elle les nomade et particulièrement      |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |                                                              |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |  hostile.  Ceux-là il va falloir les fuir comme la peste.    |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |                                                              |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |  J''ai nommé cette tribut Kaitora.                            |.');
    CurseurRess.y := CurseurRess.y + 1; 
    deplacerCurseur(CurseurRess);
    writeln('    |                                                              |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |                                           Journal de bord p4 |.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |   ___________________________________________________________|___');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    |  /                                                               /.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('    \_/_______________________________________________________________/.');
  end;

  //Procedure d'affichage du petit bateau
  Procedure Smallboat();
   VAR CurseurRess : coordonnees;
   BEGIN

    deplacerCurseurXY(1, 4);  //Ecrire dans le cadre des batiments possédés
    CurseurRess := positionCurseur();
    couleurTexte(10);
    writeln('                    ____');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('                     ---|');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('         \/            /|     \/');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('                      / |\');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('                     /  | \        \/');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('                    /   || \');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('                   /    | | \');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('                  /     | |  \');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('                 /      | |   \');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('                /       ||     \');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('               /        /       \');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('              /________/         \');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('              ________/__________--/');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('        ~~~   \___________________/');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('                ~~~~~~~~~~       ~~~~~~~~');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('       ~~~~~~~~~~~~~     ~~~~~~~~~');
    couleurTexte(15); 
 END;

 //Procedure d'affichage du bateau 
 Procedure castel();
 VAR CurseurRess : coordonnees;
  BEGIN
    couleurTexte(11);
    deplacerCurseurXY(10, 28);  //Ecrire dans le cadre des batiments possédés
    CurseurRess := positionCurseur(); 
    writeln('                        |>>>');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('                        |');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('          |>>>      _  _|_  _         |>>>');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('          |        |;| |;| |;|        |');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('      _  _|_  _    \\.    .  /    _  _|_  _');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('     |;|_|;|_|;|    \\:. ,  /    |;|_|;|_|;|');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('     \\..      /    ||;   . |    \\.    .  /');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('      \\.  ,  /     ||:  .  |     \\:  .  /');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('       ||:   |_   _ ||_ . _ | _   _||:   |');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('       ||:  .|||_|;|_|;|_|;|_|;|_|;||:.  |');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('       ||:   ||.    .     .      . ||:  .|');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('       ||: . || .     . .   .  ,   ||:   |  ');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);     
    writeln('       ||:   ||:  ,  _______   .   ||: , |  ');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);         
    writeln('       ||:   || .   /+++++++\    . ||:   |');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('       ||:   ||.    |+++++++| .    ||: . |');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('       ||: . ||: ,  |+++++++| . . .||:   |');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('       ||:  .||.    |+++++++|  .  .||   .|  ');           
 END;

  Procedure SmallSun(); //affiche le sun de l'introduction
  VAR CurseurRess:coordonnees;
  BEGIN
    couleurTexte(14);
    deplacerCurseurXY(48  , 22);  //Ecrire dans le cadre des batiments possédés
    CurseurRess := positionCurseur();  
    writeln('       .');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('     \ | /');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('   ''-.;;;.-');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('  -==;;;;;==-');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess); 
    writeln('   .-'';;;''-.');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('     / | \');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('       '' ');
    couleurTexte(15);
  END;

end.
