unit Image;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, GestionEcran;

  // Créer l'image plage
  Procedure ImgPlage();

implementation

// Créer l'image plage
  Procedure ImgPlage();
  var
    CurseurRess : coordonnees;

  BEGIN
    deplacerCurseurXY(143, 37);  //Ecrire dans le cadre des batiments possédés
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
    WriteLn('^^|^^|^~|^^^|''' '''''|:|^^^|^^^^^|^^|^^^""""""""("~~~~~~~~/_|__\~~~~~~~~~~');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    WriteLn(' .|'''' . |  ''''''""''"''''. |`===`|''''  ''"" "" " (" ~~~~ ~ ~======~~  ~~ ~');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    WriteLn(' ^^^^^   ^^^ ^ ^^^ ^^^^ ^^^ ^^ ^^ "" """( " ~~~~~~ ~~~~~  ~~~ ~');
  END;
end.
