unit GestionMarchand;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, GestionEcran, ressources, initialisationPrincip, GestionErreur, AchatVenteMarchand;

type NewRessources = (Bois,Poissons,Outils,Laines,Tissus);

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

Procedure AcheterRessources();

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
         RetourChoixRessources := TRUE;
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

     // Batimensociaux :
     //   BEGIN
     //   CurseurRess := positionCurseur();
     //   CurseurRess.y := CurseurRess.y + 1;
     //   deplacerCurseur(CurseurRess);
     //     writeln('Quels batiments sociaux voulez-vous détruire ?');
     //     CurseurRess.y := CurseurRess.y + 1;
     //     deplacerCurseur(CurseurRess);
     //     writeln('Centre-Ville : 1');
     //     CurseurRess.y := CurseurRess.y + 1;
     //     deplacerCurseur(CurseurRess);
     //     writeln('Chapelle : 2');
     //     CurseurRess.y := CurseurRess.y + 1;
     //     deplacerCurseur(CurseurRess);
     //     writeln('Retour : 0');
     //     CurseurRess.y := CurseurRess.y + 1;
     //     deplacerCurseur(CurseurRess);
     //     readln(TestBatimentSociaux);
     //     CurseurRess.y := CurseurRess.y + 1;
     //     deplacerCurseur(CurseurRess);
     //     LigneDialogue();
     //
     //     CASE TestBatimentSociaux OF
     //       1 : BEGIN  //Pour Destruction Centre-Ville
     //           DestructBatSociauxCentreVille();
     //           END;
     //
     //       2 : BEGIN  //Pour Destruction Chapelle
     //           DestructBatSociauxChapelle();
     //           END;
     //
     //       0 : BEGIN
     //             //Fonction de retour de rien faire pour continuer boucle
     //           END;
     //     END;
     //   END;
     //
     // Industries :
     //   BEGIN
     //   CurseurRess := positionCurseur();
     //   CurseurRess.y := CurseurRess.y + 1;
     //   deplacerCurseur(CurseurRess);
     //     writeln('Qu''elles d''industrie voulez-vous détruire ?');
     //     CurseurRess.y := CurseurRess.y + 1;
     //     deplacerCurseur(CurseurRess);
     //     writeln('Cabane de pecheur : 1');
     //     CurseurRess.y := CurseurRess.y + 1;
     //     deplacerCurseur(CurseurRess);
     //     writeln('Cabane de bucheron : 2');
     //     CurseurRess.y := CurseurRess.y + 1;
     //     deplacerCurseur(CurseurRess);
     //     writeln('Atelier de tisserand : 3');
     //     CurseurRess.y := CurseurRess.y + 1;
     //     deplacerCurseur(CurseurRess);
     //     writeln('Bergerie : 4');
     //     CurseurRess.y := CurseurRess.y + 1;
     //     deplacerCurseur(CurseurRess);
     //     writeln('Entrepot : 5');
     //     CurseurRess.y := CurseurRess.y + 1;
     //     deplacerCurseur(CurseurRess);
     //     writeln('Retour : 0');
     //     CurseurRess.y := CurseurRess.y + 1;
     //     deplacerCurseur(CurseurRess);
     //     readln(TestIndustrie);
     //     CurseurRess.y := CurseurRess.y + 1;
     //     deplacerCurseur(CurseurRess);
     //     LigneDialogue();
     //
     //     CASE TestIndustrie OF
     //       1 : BEGIN  //Pour Destruction CabanePecheur
     //             DestructBatIndustriesPecheur();
     //           END;
     //
     //       2 : BEGIN  //Pour Destruction Cabane de bucheron
     //             DestructBatIndustriesBucheron();
     //           END;
     //
     //      3 : BEGIN  //Pour Destruction Atelier de tisserand
     //             DestructBatIndustriesAtelierTissus();
     //           END;
     //
     //     4 : BEGIN  //Pour Destruction Bergerie
     //           DestructBatIndustriesBergerie();
     //            END;
     //
     //     5 : BEGIN  //Pour Destruction Entrepot
     //           DestructBatIndustriesEntrepot();
     //         END;
     //
     //     0 : BEGIN
     //           //Fonction de retour de rien faire pour continuer boucle
     //         END;
     //     END;
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
