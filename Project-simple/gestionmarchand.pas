unit GestionMarchand;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, GestionEcran, ressources, initialisationPrincip, GestionErreur, AchatVenteMarchand;

type NewRessources = (Bois,Poissons,Outils,Laines,Tissus,retour);

//Procédure qui affiche le marchand
  procedure Marchand();

  //Affiche ce que vend le marchand
  procedure InfoMarchand();

  //inisialisations à False dela variable de retour
  Procedure InitVariableRetourMarchand();
  //Procedure qui modifie la valeur RetourChoixRessources
  Procedure setRetourMarchand(valeur : BOOLEAN);
  //Fonction qui renvoie la valeur de retour pour le marchand
   FUNCTION getRetourMarchand(): BOOLEAN;

//Procedure qui class les types de ressource lors de l'achat
Procedure AcheterRessources();

//Procedure qui class les types de ressource lors de la vente
Procedure VendreRessources();

implementation
var

  RetourChoixRessources : BOOLEAN;


//Procédure qui affiche le marchand
procedure Marchand();
begin
    dessinerCadreXY(0,0,148,49, simple, 15, 0); //Cadre début
    InfoRessource();   //Affiche les ressources avec en parametre la capicité de stockage
    InfoMarchand(); //Affiche ce que vend le marchand
end;

//Affiche ce que vend le marchand
procedure InfoMarchand();
VAR
  CurseurRess: coordonnees;
BEGIN

  dessinerCadreXY(6,3,92,10, simple, 15, 0); //Cadre Marchand Ambulant

  dessinerCadreXY(37,2,59,4, simple, 15, 0); //Cadre du mot Marchand Ambulant
  deplacerCurseurXY(38, 3);  //Ecrire a l'intérieur de l'encadré
  writeln('  Marchand Ambulant');

  deplacerCurseurXY(9, 5);  //Ecrire dans le cadre du marchand Ambulant
  CurseurRess := positionCurseur();

  writeln('Bois         :         ', 'Acheter une unité --> ', MarchandCoutBois(), '  Or', '    |   ', 'Vendre une unité --> ',MarchandCoutBois());   // Affiche le cout du Bois
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Poissons     :         ', 'Acheter une unité --> ', MarchandCoutpoissons(), '  Or', '    |   ', 'Vendre une unité --> ',MarchandCoutpoissons());   // Affiche la quantitées de poissons
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('Outils       :         ', 'Acheter une unité --> ', MarchandCoutOutils(), ' Or', '    |   ', 'Vendre une unité --> ',MarchandCoutOutils());   // Affiche la quantitées d'Outils
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('laines       :         ', 'Acheter une unité --> ', MarchandCoutLaine(), '  Or', '    |   ', 'Vendre une unité --> ',MarchandCoutLaine());   // Affiche la quantitées de laines
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);
  writeln('tissus       :         ', 'Acheter une unité --> ', MarchandCoutTissus(), '  Or', '    |   ', 'Vendre une unité --> ',MarchandCoutTissus());   // Affiche la quantitées de Tissus

END;

//Procedure qui class les types de ressource lors de l'achat
Procedure AcheterRessources();
var
  CurseurRess: coordonnees;
  TakeRessource: integer;
  ChoixRessources: NewRessources;

Begin
    CadreDialogueMarchand();//Cadre dialogue marchand
    TakeRessource:=0;
   deplacerCurseurXY(7, 15);  //Ecrire dans le cadre Dialogue
   CurseurRess := positionCurseur();
   writeln('Qu''elle ressources voulez-vous acheter');
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Bois : 1');
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Poissons : 2');
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Outils : 3');
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Laines : 4');
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Tissus : 5');
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Retour : 0');
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   readln(TakeRessource);
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   LigneDialogue();

    if(TakeRessource=1)then
    Begin
        ChoixRessources:=Bois;
    end
    else if (TakeRessource=2)then
    Begin
        ChoixRessources:=Poissons;
    end
    else if (TakeRessource=3)then
    Begin
         ChoixRessources:=Outils;
    end
    else if (TakeRessource=4)then
    Begin
         ChoixRessources:=Laines;
    end
    else if (TakeRessource=5)then
    Begin
         ChoixRessources:=Tissus;
    end
    else if (TakeRessource=0)then
    Begin
          ChoixRessources := retour;
         setRetourMarchand(False);
    end;



   CASE ChoixRessources OF

     Bois :
     BEGIN
       //PROCEDURE POUR ACHETER BOIS
       AchatBois();
           END;

     Poissons :
     BEGIN
       //PROCEDURE POUR ACHETER du poissons
       AchatPoissons();
           END;

     Outils :
     BEGIN
       //PROCEDURE POUR ACHETER du Outils
       AchatOutils();
     END;

     Laines :
     BEGIN
       //PROCEDURE POUR ACHETER du Laines
       AchatLaines();
     END;

     Tissus :
     BEGIN
       //PROCEDURE POUR ACHETER du Tissus
       AchatTissus();
     END;

     retour : BEGIN
           //Fonction de retour de rien faire pour continuer boucle
         END;
     END;
  END;


  //Procedure qui class les types de ressource lors de la vente
  Procedure VendreRessources();
  var
    CurseurRess: coordonnees;
    TakeRessource: integer;
    ChoixRessources: NewRessources;

  Begin
      CadreDialogueMarchand();//Cadre dialogue marchand
      TakeRessource:=0;
     deplacerCurseurXY(7, 15);  //Ecrire dans le cadre Dialogue
     CurseurRess := positionCurseur();
     writeln('Qu''elle ressources voulez-vous vendre');
     CurseurRess.y := CurseurRess.y + 1;
     deplacerCurseur(CurseurRess);
     writeln('Bois : 1');
     CurseurRess.y := CurseurRess.y + 1;
     deplacerCurseur(CurseurRess);
     writeln('Poissons : 2');
     CurseurRess.y := CurseurRess.y + 1;
     deplacerCurseur(CurseurRess);
     writeln('Outils : 3');
     CurseurRess.y := CurseurRess.y + 1;
     deplacerCurseur(CurseurRess);
     writeln('Laines : 4');
     CurseurRess.y := CurseurRess.y + 1;
     deplacerCurseur(CurseurRess);
     writeln('Tissus : 5');
     CurseurRess.y := CurseurRess.y + 1;
     deplacerCurseur(CurseurRess);
     writeln('Retour : 0');
     CurseurRess.y := CurseurRess.y + 1;
     deplacerCurseur(CurseurRess);
     readln(TakeRessource);
     CurseurRess.y := CurseurRess.y + 1;
     deplacerCurseur(CurseurRess);
     LigneDialogue();

      if(TakeRessource=1)then
      Begin
          ChoixRessources:=Bois;
      end
      else if (TakeRessource=2)then
      Begin
          ChoixRessources:=Poissons;
      end
      else if (TakeRessource=3)then
      Begin
           ChoixRessources:=Outils;
      end
      else if (TakeRessource=4)then
      Begin
           ChoixRessources:=Laines;
      end
      else if (TakeRessource=5)then
      Begin
           ChoixRessources:=Tissus;
      end
      else if (TakeRessource=0)then
      Begin
            ChoixRessources := retour;
           setRetourMarchand(False);
      end;



     CASE ChoixRessources OF

       Bois :
       BEGIN
         //PROCEDURE POUR Vendre BOIS
         VendreBois();
             END;

       Poissons :
       BEGIN
         //PROCEDURE POUR Vendre du poissons
         VendrePoissons();
             END;

       Outils :
       BEGIN
         //PROCEDURE POUR Vendre du Outils
         VendreOutils();
       END;

       Laines :
       BEGIN
         //PROCEDURE POUR Vendre du Laines
         VendreLaines();
       END;

       Tissus :
       BEGIN
         //PROCEDURE POUR Vendre du Tissus
         VendreTissus();
       END;

       retour : BEGIN
             //Fonction de retour de rien faire pour continuer boucle
           END;
       END;
    END;

//Procedure qui modifie la valeur RetourChoixRessources
Procedure setRetourMarchand(valeur : BOOLEAN);
BEGIN
  RetourChoixRessources := valeur;
END;

//Fonction qui renvoie la valeur de retour pour le marchand
 FUNCTION getRetourMarchand(): BOOLEAN;
 BEGIN
   getRetourMarchand := RetourChoixRessources;
 END;

//inisialisations à False dela variable de retour
 Procedure InitVariableRetourMarchand();
 Begin
 RetourChoixRessources := FALSE;
 end;

end.
