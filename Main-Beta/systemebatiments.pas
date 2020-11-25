unit SystemeBatiments;


{$mode objfpc}{$H+}
{$codepage utf8}

interface

 uses GestionErreur, GestionEcran, CreateBatMaison, CreateBatSociaux, CreateBatIndustries, DestructBatMaison, DestructBatSociaux, DestructBatIndustries;

type NewTypeBatiment = (Maisons,Batimensociaux,Industries);


//Procedure qui class les types de batiments
Procedure PTypeBatiment();

//Procedure de construction de Batiment
Procedure ConstructionsBatiments();

//Détruire un batiment
Procedure DestructionsBatiments();

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
Var TestTypeBatiment,TestIndustrie,TestBatimentSociaux : Integer;

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





 Procedure PTypeBatiment();
 var
   CurseurRess: coordonnees;
 Begin
    CadreDialogue(); //Créer le cadre dialogue

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
     else if (TestTypeBatiment=3)then
     Begin
          TypeBatiment:=Industries;
     end
     else if (TestTypeBatiment=0)then
     Begin
          RetourCreeBat := TRUE;
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

 Procedure InisialisationVariable();
 Begin
 //inisialisations à 0 de nos variables
 RetourCreeBat := FALSE;
 end;
end.
