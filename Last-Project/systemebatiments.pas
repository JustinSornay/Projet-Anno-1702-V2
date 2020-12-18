unit SystemeBatiments;


{$mode objfpc}{$H+}
{$codepage utf8}

interface

 uses GestionErreur, GestionEcran, CreateBatMaison, CreateBatSociaux, CreateBatIndustries, DestructBatMaison, DestructBatSociaux,DestrucBatMillitaire, DestructBatIndustries,SystemeTour,CreateBatMillitaire,initialisationPrincip;

type NewTypeBatiment = (Maisons,Batimensociaux,Industries,Caserne,ChantierNavale,Navire,soldat,officier,capitaine);

//Procedure qui class les types de batiments lors de la destruction
Procedure PTypeDestrucBatiment();

//Procedure qui class les types de batiments millitaires lors de la destruction
Procedure PTypeDestrucBatimentMillitaire();

//Procedure qui class les types de batiments lors de la créateion
Procedure PTypeCreateBatiment();

//Procedure qui class les types de batiments millitaires lors de la créateion
Procedure PTypeCreateBatimentMillitaires();

//Procedure qui class les types de recrutement
procedure PTypeRecrutement();

//procedure pour recruter un millitaire
procedure RecruMillitaire();

//Procedure de construction de Batiment
Procedure ConstructionsBatiments();

//Procedure de construction de Batiment millitaire
Procedure ConstructionBatimentsMillitaire();

//Détruire un batiment
Procedure DestructionsBatiments();

//Détruire un batiment millitaire
procedure DestructionsBatimentsMillitaire();

//Procedure d'Inisialisation des Variables
Procedure InisialisationVariable();

//-----------------------------------------------------------------//
//Procedure et fonction de modification et d'affichage de variable

//Fonction qui renvoie la valeur de retour
 FUNCTION getRetourBat(): BOOLEAN;
 //Procedure qui modifie la valeur RetourCreeBat
 Procedure setRetourBat(valeur : BOOLEAN);

//----------------------------------------------------------------//
implementation

//listes des variables globale de notre unités
Var TestTypeBatiment,TypeRecru,TestTypeBatiment2,TestIndustrie,TestTypeRecrutement,TestBatimentSociaux,TestCaserne,TestChantierNavale,TestNavire,TestTypeBatimentMillitaire : Integer;

TypeBatiment:NewTypeBatiment;
RetourCreeBat : BOOLEAN;

//Procedure qui modifie la valeur RetourCreeBat
Procedure setRetourBat(valeur : BOOLEAN);
BEGIN
  RetourCreeBat := valeur;
END;

//Fonction qui renvoie la valeur de retour
 FUNCTION getRetourBat(): BOOLEAN;
 BEGIN
   getRetourBat := RetourCreeBat;
 END;

 //Procedure qui class les types de batiments lors de la destruction
 Procedure PTypeDestrucBatiment();
 var
   CurseurRess: coordonnees;
 Begin
    CadreDialogue(); //Créer le cadre dialogue
     AfficheTour();
    deplacerCurseurXY(6, 5);  //Ecrire dans le cadre Dialogue
    CurseurRess := positionCurseur();
    writeln('Qu''elle type de batiment voulez-vous détruire');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('Maisons : 1');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('Batiments sociaux : 2');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('Industries : 3');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('Retour : 0');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    readln(TestTypeBatiment);
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    LigneDialogue();

     if(TestTypeBatiment=1)then
     Begin
         TypeBatiment:=Maisons;
     end
     else if (TestTypeBatiment=2)then
     Begin
         TypeBatiment:=Batimensociaux;
     end
     else if (TestTypeBatiment=3)then
     Begin
          TypeBatiment:=Industries;
     end
     else if (TestTypeBatiment=0)then
     Begin
          RetourCreeBat := TRUE;
     end;

 end;

 //Procedure qui class les types de batiments millitaires lors de la destruction
Procedure PTypeDestrucBatimentMillitaire();
var
   CurseurRess: coordonnees;
 Begin
    CadreDialogue(); //Créer le cadre dialogue
     AfficheTour();
    deplacerCurseurXY(6, 5);  //Ecrire dans le cadre Dialogue
    CurseurRess := positionCurseur();
    writeln('Qu''elle type de batiment millitaires voulez-vous détruire');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('Caserne : 1');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('Chantier navale : 2');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('Navires : 3');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('Retour : 0');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    readln(TestTypeBatimentMillitaire);
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    LigneDialogue();

     if(TestTypeBatimentMillitaire=1)then
     Begin
         TypeBatiment:=Caserne;
     end
     else if (TestTypeBatimentMillitaire=2)then
     Begin
         TypeBatiment:=ChantierNavale;
     end
     else if (TestTypeBatimentMillitaire=3)then
     Begin
          TypeBatiment:=Navire;
     end
     else if (TestTypeBatimentMillitaire=0)then
     Begin
          RetourCreeBat := TRUE;
     end;

 end;


//Procédure créer choix batiments
 Procedure PTypeCreateBatiment();
 var
   CurseurRess: coordonnees;
 Begin
    CadreDialogue(); //Créer le cadre dialogue
    AfficheTour();
    deplacerCurseurXY(6, 5);  //Ecrire dans le cadre Dialogue
    CurseurRess := positionCurseur();
    writeln('Qu''elle type de batiment voulez-vous construire');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('Maisons : 1');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('Batiments sociaux : 2');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('Industries : 3');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('Retour : 0');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    readln(TestTypeBatiment);
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    LigneDialogue();

     if(TestTypeBatiment=1)then
     Begin
         TypeBatiment:=Maisons;
     end
     else if (TestTypeBatiment=2)then
     Begin
         TypeBatiment:=Batimensociaux;
     end
     else if (TestTypeBatiment=0)then
     Begin
          RetourCreeBat := TRUE;
     end;

 end;

 //Procedure qui class les types de batiments millitaires lors de la créateion
Procedure PTypeCreateBatimentMillitaires();
var
   CurseurRess: coordonnees;
 Begin
    CadreDialogue(); //Créer le cadre dialogue
    AfficheTour();
    deplacerCurseurXY(6, 5);  //Ecrire dans le cadre Dialogue
    CurseurRess := positionCurseur();
    writeln('Qu''elle type de batiments millitaires voulez-vous construire');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('Caserne : 1');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('Chantier navale : 2');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('Navire : 3');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('Retour : 0');
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    readln(TestTypeBatimentMillitaire);
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    LigneDialogue();

     if(TestTypeBatimentMillitaire=1)then
     Begin
         TypeBatiment:=Caserne;
     end
     else if (TestTypeBatimentMillitaire=2)then
     Begin
         TypeBatiment:=ChantierNavale;
     end
     else if (TestTypeBatimentMillitaire=3) then
     Begin
         TypeBatiment:=Navire;
     end
     else if (TestTypeBatimentMillitaire=0)then
     Begin
          RetourCreeBat := TRUE;
     end;

 end;

//Procedure qui class les types de recrutement
procedure PTypeRecrutement();var
  CurseurRess: coordonnees;
Begin
   CadreDialogue(); //Créer le cadre dialogue
   AfficheTour();
   deplacerCurseurXY(6, 5);  //Ecrire dans le cadre Dialogue
   CurseurRess := positionCurseur();
   writeln('Qu''elle millitaire voules-vous recruter ?');
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Soldat : 1');
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Officier : 2');
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Capitaine : 3');
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Retour : 0');
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   readln(TestTypeRecrutement);
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   LigneDialogue();

    if(TestTypeRecrutement=1)then
    Begin
        TypeBatiment:=soldat;
    end
    else if (TestTypeRecrutement=2)then
    Begin
        TypeBatiment:=officier;
    end
    else if (TestTypeRecrutement=3) then
    Begin
        TypeBatiment:=capitaine;
    end
    else if (TestTypeRecrutement=0)then
    Begin
         RetourCreeBat := TRUE;
    end;

end;

//procedure pour recruter un millitaire
procedure RecruMillitaire();
var CurseurRess: coordonnees;
begin
    case TypeBatiment of
    soldat:
      begin
        CreateSoldat();
      end;

    officier:
      begin
        CreateOfficier();
      end;

    capitaine:
      begin
        CreateCapitaine();
      end;

    end;

end;

 Procedure ConstructionsBatiments();
 var CurseurRess: coordonnees;

 Begin

    CASE TypeBatiment OF

      Maisons :
      BEGIN
        CurseurRess := positionCurseur();
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
        writeln('Qu''elle Maison voulez-vous construire');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Maisons pour les Colons : 1');

          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Maisons pour les Citoyens : 2');

          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
        writeln('Retour : 0');

        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);

        readln(TestTypeBatiment);
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
        LigneDialogue();

        CASE TestTypeBatiment OF
        1 :  BEGIN  //Pour les Maisons des Colons
            CreateBatMaisonCol();
              END;

          2 : BEGIN //Pour les Maisons des Citoyens
              CreateBatMaisonCit();
                END;

            0 : BEGIN
                    //Fonction de retour de rien faire pour continuer boucle
                END;
            END;
            END;

      Batimensociaux :
        BEGIN
        CurseurRess := positionCurseur();
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
          writeln('Quels batiments sociaux voulez-vous construire');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Centre-Ville : 1');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Chapelle : 2');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Terrain millitaire : 3');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Retour : 0');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          readln(TestBatimentSociaux);
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          LigneDialogue();

          CASE TestBatimentSociaux OF
            1 : BEGIN  //Pour Création Centre-Ville
                CreateBatSociauxCentreVille();
                END;

            2 : BEGIN  //Pour Création Chapelle
                CreateBatSociauxChapelle();
                END;

            3 : BEGIN  //Pour Création Caserne
                CreateBatCaserne();
                END;

            0 : BEGIN
                  //Fonction de retour de rien faire pour continuer boucle
                END;
          END;
        END;

      Industries :
        BEGIN
        CurseurRess := positionCurseur();
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
          writeln('Qu''elles d''industrie voulez-vous construire');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);

          writeln('Cabane de pecheur : 1');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Cabane de bucheron : 2');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Atelier de tisserand : 3');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Bergerie : 4');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Entrepot : 5');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Retour : 0');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          readln(TestIndustrie);
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          LigneDialogue();

          CASE TestIndustrie OF
            1 : BEGIN  //Pour Création CabanePecheur
                  CreateBatIndustriesPecheur();
                END;

            2 : BEGIN  //Pour Création Cabane de bucheron
                  CreateBatIndustriesBucheron();
                END;

           3 : BEGIN  //Pour Création Atelier de tisserand
                  CreateBatIndustriesAtelierTissus();
                END;

          4 : BEGIN  //Pour Création Bergerie
                CreateBatIndustriesBergerie();
                 END;

          5 : BEGIN  //Pour Création Entrepot
                CreateBatIndustriesEntrepot();
              END;

          0 : BEGIN
                //Fonction de retour de rien faire pour continuer boucle
              END;

          END;
          END;
      END;
 end;

 //Procedure de construction de Batiment millitaire
Procedure ConstructionBatimentsMillitaire();
var
   CurseurRess:coordonnees;
begin
CASE TypeBatiment OF

  Caserne :
  BEGIN
    CurseurRess := positionCurseur();
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('Qu''elle Caserne voulez-vous construire');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      writeln('Caserne de soldat : 1');

      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      writeln('Caserne d''officier : 2');

      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
    writeln('Caserne de Capitaine : 3');

    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);

    readln(TestCaserne);
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    LigneDialogue();

    CASE TestCaserne OF
    1 :  BEGIN  //Pour les Maisons des Colons
        CreateBatCaserneSoldat();
          END;

      2 : BEGIN //Pour les Maisons des Citoyens
          CreateBatCaserneOfficier();
            END;

       3 : BEGIN //Pour les Maisons des Citoyens
          CreateBatCaserneCapitaine();
            END;

        0 : BEGIN
                //Fonction de retour de rien faire pour continuer boucle
            END;
        END;
        END;

  ChantierNavale :
    BEGIN
    CurseurRess := positionCurseur();
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
      writeln('Quels chantier navale voulez-vous construire');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      writeln('Chantier navale navire d''exploration : 1');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      writeln('Chantier navale navire de conquête  : 2');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      writeln('Retour : 0');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      readln(TestChantierNavale);
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      LigneDialogue();

      CASE TestChantierNavale OF
        1 : BEGIN  //Pour Création navire d'exploration
            CreateBatChantierExploration();
            END;

        2 : BEGIN  //Pour Création navire de conquete
            CreateBatChantierConquete();
            END;


        0 : BEGIN
              //Fonction de retour de rien faire pour continuer boucle
            END;
      END;
    END;

  Navire :
    BEGIN
    CurseurRess := positionCurseur();
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
      writeln('Qu''elles navire voulez-vous construire');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);

      writeln('Navire d''exploration : 1');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      writeln('Navire de conquete : 2');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      writeln('Retour : 0');
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      readln(TestNavire);
      CurseurRess.y := CurseurRess.y + 1;
      deplacerCurseur(CurseurRess);
      LigneDialogue();

      CASE TestNavire OF
        1 : BEGIN  //Pour Création d'un navire d'exploration
                   if (getChantierExploration > 0 ) then
                   CreateBatNavireExploration()
                   else
                   writeln('Vous devez posséder un chantier naval d''exploration');
                   deplacerCurseurXY(58, 21);
                   readln();
            END;

        2 : BEGIN  //Pour Création d'un navire de conquête
            if (getChantierConquete > 0 ) then
             CreateBatNavireConquete()
             else
             writeln('Vous devez posséder un chantier naval de conquete');
            deplacerCurseurXY(56, 21);
            readln();
            END;

      0 : BEGIN
            //Fonction de retour de rien faire pour continuer boucle
          END;

      END;
      END;
  END;
end;

 //Détruire un batiment
 Procedure DestructionsBatiments();
 var CurseurRess: coordonnees;

 Begin

    CASE TypeBatiment OF

      Maisons :
      BEGIN
        CurseurRess := positionCurseur();
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
        writeln('Qu''elle Maison voulez-vous détruire ?');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Maisons pour les Colons : 1');

          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Maisons pour les Citoyens : 2');

          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
        writeln('Retour : 0');

        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);

        readln(TestTypeBatiment);
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
        LigneDialogue();

        CASE TestTypeBatiment OF
        1 :  BEGIN  //Pour les Maisons des Colons
              DestructBatMaisonCol();
             END;

          2 : BEGIN //Pour les Maisons des Citoyens
              DestructBatMaisonCit();
                END;

            0 : BEGIN
                    //Fonction de retour de rien faire pour continuer boucle
                END;
            END;
            END;

      Batimensociaux :
        BEGIN
        CurseurRess := positionCurseur();
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);

          writeln('Quels batiments sociaux voulez-vous détruire ?');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Centre-Ville : 1');

          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Chapelle : 2');

          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Caserne : 3');

          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Retour : 0');

          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          readln(TestBatimentSociaux);
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          LigneDialogue();

          CASE TestBatimentSociaux OF
            1 : BEGIN  //Pour Destruction Centre-Ville
                DestructBatSociauxCentreVille();
                END;

            2 : BEGIN  //Pour Destruction Chapelle
                DestructBatSociauxChapelle();
                END;

            3 : BEGIN //Pour Destruction du terrain millitaire
                DestructBatSociauxCaserne();
                end;

            0 : BEGIN
                  //Fonction de retour de rien faire pour continuer boucle
                END;
          END;
        END;

      Industries :
        BEGIN
        CurseurRess := positionCurseur();
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
          writeln('Qu''elles d''industrie voulez-vous détruire ?');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Cabane de pecheur : 1');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Cabane de bucheron : 2');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Atelier de tisserand : 3');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Bergerie : 4');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Entrepot : 5');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Retour : 0');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          readln(TestIndustrie);
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          LigneDialogue();

          CASE TestIndustrie OF
            1 : BEGIN  //Pour Destruction CabanePecheur
                  DestructBatIndustriesPecheur();
                END;

            2 : BEGIN  //Pour Destruction Cabane de bucheron
                  DestructBatIndustriesBucheron();
                END;

           3 : BEGIN  //Pour Destruction Atelier de tisserand
                  DestructBatIndustriesAtelierTissus();
                END;

          4 : BEGIN  //Pour Destruction Bergerie
                DestructBatIndustriesBergerie();
                 END;

          5 : BEGIN  //Pour Destruction Entrepot
                DestructBatIndustriesEntrepot();
              END;

          0 : BEGIN
                //Fonction de retour de rien faire pour continuer boucle
              END;
          END;
          END;
      END;
 end;

//Détruire un batiment millitaire
procedure DestructionsBatimentsMillitaire();
var CurseurRess: coordonnees;

 Begin

    CASE TypeBatiment OF

      Caserne :
      BEGIN
        CurseurRess := positionCurseur();
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
        writeln('Qu''elle Caserne voulez-vous détruire ?');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Caserne pour soldat : 1');

          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Caserne pour officier : 2');

          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Caserne pour capitaine : 3');

          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
        writeln('Retour : 0');

        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);

        readln(TestCaserne);
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
        LigneDialogue();

        CASE TestCaserne OF
        1 :  BEGIN  //Pour les casernes de soldats
              DestructBatCaserneSol();
             END;

          2 : BEGIN //Pour les casernes d'officiers
              DestructBatCaserneOff();
                END;

          3 : BEGIN //Pour les casernes de capitaine
              DestructBatCaserneCap();
                END;

            0 : BEGIN
                    //Fonction de retour de rien faire pour continuer boucle
                END;
            END;
            END;

      ChantierNavale :
        BEGIN
        CurseurRess := positionCurseur();
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);

          writeln('Quels chantier navale voulez-vous détruire ?');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Chantier Navale d''exploration : 1');

          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Chantier Navale de conquete : 2');


          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Retour : 0');

          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          readln(TestChantierNavale);
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          LigneDialogue();

          CASE TestChantierNavale OF
            1 : BEGIN  //Pour Destruction chantier navale d'exploration
                DestructBatChanEx();
                END;

            2 : BEGIN  //Pour Destruction Chantier navale de conquete
                DestructBatChanCon();
                END;


            0 : BEGIN
                  //Fonction de retour de rien faire pour continuer boucle
                END;
          END;
        END;

      Navire :
        BEGIN
        CurseurRess := positionCurseur();
        CurseurRess.y := CurseurRess.y + 1;
        deplacerCurseur(CurseurRess);
          writeln('Qu''elles navire voulez-vous détruire ?');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Navire d''exploration: 1');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          writeln('Navire de conquete : 2');
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          readln(TestNavire);
          CurseurRess.y := CurseurRess.y + 1;
          deplacerCurseur(CurseurRess);
          LigneDialogue();

          CASE TestNavire OF
            1 : BEGIN  //Pour Destruction navire d'exploration
                  DestructBatNavEx();
                END;

            2 : BEGIN  //Pour Destruction navire de conquete
                  DestructBatNavCon();
                END;

          0 : BEGIN
                //Fonction de retour de rien faire pour continuer boucle
              END;
          END;
          END;
      END;
 end;

 Procedure InisialisationVariable();
 Begin
 //inisialisations à 0 de nos variables
 RetourCreeBat := FALSE;
 end;
end.
