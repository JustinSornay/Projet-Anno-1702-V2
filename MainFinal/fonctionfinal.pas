unit FonctionFinal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, SystemeBatiments, ressources, GestionEcran, GestionErreur, Image, CadreInfoBat, GestionMarchand;

  // Procedure finale pour Gérer un batiments
  procedure GestionBatiments();

// Procedure finale pour créer un batiments
procedure CreeBatiments();

// Procedure finale pour Detruire un batiments
procedure DetruireBatiments();

// Procedure affiche les ressources et les Batiments
PROCEDURE InfoJeuResBat();

// Procedure finale pour le marchand
procedure MarchandFinal();

// Procedure pour savoir si acheter ou vendre
procedure FinalAcheterOuVendre();

implementation

// Procedure pour savoir si acheter ou vendre
procedure FinalAcheterOuVendre();                             //A FINIR FAIRE LA MEME CHOSE QUE POUR LES BATIMENTS DANS SYSTEMEBATIMENT

var
  CurseurRess: coordonnees;
  AcheterOuVendre : INTEGER;
   BEGIN
   effacerEcran();
   MarchandFinal();

   CurseurRess := positionCurseur();
   writeln('Acheter : 1');
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Vendre : 2');
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Retour : 0');
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   readln(AcheterOuVendre);

   CASE AcheterOuVendre OF
     1 : BEGIN
          WHILE getRetourMarchand() = FALSE DO BEGIN
              AcheterRessources();
            IF getRetourMarchand() = FALSE THEN BEGIN
              FinalAcheterOuVendre();
            END;
          END;
         END;

     2 : BEGIN
          WHILE getRetourMarchand() = FALSE DO BEGIN
              VendreRessources();
            IF getRetourMarchand() = FALSE THEN BEGIN
              FinalAcheterOuVendre();
            END;
          END;
         END;

     0 : BEGIN
           setRetourMarchand(True);  // modifie la valeur de retour a True
           CurseurRess.y := CurseurRess.y + 1;
           deplacerCurseur(CurseurRess);
           WriteLn('Retour accueil');
           CurseurRess.y := CurseurRess.y + 1;
           deplacerCurseur(CurseurRess);
           ReadLn();
         END;
   END;
END;

// Procedure finale pour le marchand
procedure MarchandFinal();
begin
    Marchand();
    // Créer le cadre Dialogue pour le marchand
    CadreDialogueMarchand();

    // Créer Une ligne dans le dialogue du marchand
    LigneDialogueMarchand();
end;

// Procedure affiche les ressources et les Batiments
PROCEDURE InfoJeuResBat();
BEGIN
  effacerEcran();
  dessinerCadreXY(0,0,148,49, simple, 15, 0); //Cadre début
  InfoRessource();  //Affiche le cadre des ressources avec en parametre la capicité de stockage
  InfoBatiments();  //Affiche le cadre des batiment possédé
END;

// Procedure finale pour Gérer un batiments
procedure GestionBatiments();

var
  CurseurRess: coordonnees;
  CreeOuDetruire : INTEGER;
   BEGIN
   effacerEcran();
   InfoJeuResBat();  //affiche les ressources et les Batiments
   CadreDialogue(); //Créer le cadre dialogue
   deplacerCurseurXY(6, 5);  //Ecrire dans le cadre Dialogue

   CurseurRess := positionCurseur();
   writeln('construire : 1');
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Détruire : 2');
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Retour : 0');
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   readln(CreeOuDetruire);

   CASE CreeOuDetruire OF
     1 : BEGIN
          WHILE getRetourBat() = FALSE DO BEGIN
              CreeBatiments();
            IF getRetourBat() = FALSE THEN BEGIN
              GestionBatiments();
            END;
          END;
         END;

     2 : BEGIN
          WHILE getRetourBat() = FALSE DO BEGIN
              DetruireBatiments();
            IF getRetourBat() = FALSE THEN BEGIN
              GestionBatiments();
            END;
          END;
         END;

     0 : BEGIN
           setRetourBat(True);  // modifie la valeur de retour a True
           CurseurRess.y := CurseurRess.y + 1;
           deplacerCurseur(CurseurRess);
           WriteLn('Retour accueil');
           CurseurRess.y := CurseurRess.y + 1;
           deplacerCurseur(CurseurRess);
           ReadLn();
         END;
   END;
END;

// Procedure finale pour Detruire un batiments
procedure DetruireBatiments();

BEGIN

  WHILE getRetourBat() = FALSE DO BEGIN
    effacerEcran();
    InfoJeuResBat();  //affiche les ressources et les Batiments
    //ImgPlage(); //Image plage
    PTypeDestrucBatiment();  //Procedure qui class les types de batiments lors de la destruction
    IF getRetourBat() = FALSE THEN BEGIN
      DestructionsBatiments(); //Procedure de Destruction de Batiment
    END;
  END;
  setRetourBat(FALSE);  // modifie la valeur de retour a False
END;

// Procedure finale pour créer un batiments
procedure CreeBatiments();

BEGIN

 WHILE getRetourBat() = FALSE DO BEGIN
  effacerEcran();
  InfoJeuResBat();  //affiche les ressources et les Batiments
  InfoCoutBatiments();  //affiche les cout des batiments
  ImgPlage(); //Image plage
  PTypeCreateBatiment();  //Procedure qui class les types de batiments
  IF getRetourBat() = FALSE THEN BEGIN
    ConstructionsBatiments(); //Procedure de construction de Batiment
  END;
 END;
 setRetourBat(FALSE);  // modifie la valeur de retour a False
END;

end.
