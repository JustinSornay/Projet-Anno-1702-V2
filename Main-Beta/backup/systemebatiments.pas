unit SystemeBatiments;


{$mode objfpc}{$H+}
{$codepage utf8}

interface

 uses GestionErreur, GestionEcran, CreateBatMaison, CreateBatSociaux, CreateBatIndustries;

type NewTypeBatiment = (Maisons,Batimensociaux,Industries);

//Affiche le Cout des batiments
procedure InfoCoutBatiments();


//Procedure qui class les types de batiments
Procedure PTypeBatiment();

//Procedure de construction de Batiment
Procedure ConstructionsBatiments();

//Procedure d'Inisialisation des Variables
Procedure InisialisationVariable();

//-----------------------------------------------------------------//
//Procedure et fonction de modification et d'affichage de variable

            //     Nombre d'Entrepot     //
//Cette fonction renvoie la valeur de la variable nbEntrepot
//function getEntrepot() : Integer;
//Cette procedure modifie la valeur de la variable nbEntrepot
//procedure setEntrepot(valeur : integer);

            //     Valeur Entrepot     //
//Cette fonction renvoie la capacité de stockage
FUNCTION getValEntrepot(): Integer;
//Cette procedure modifie la valeur de la variable ValEntrepot
 procedure setValEntrepot(valeur : integer);

            //     MaisonColon     //
//Cette fonction renvoie la valeur de la variable MaisonColon
 //function getMaisonColon() : Integer;
//Cette procedure modifie la valeur de la variable MaisonColon
 //procedure setMaisonColon(valeur : integer);

            //     MaisonCitoyens     //
//Cette fonction renvoie la valeur de la variable MaisonCitoyens
// function getMaisonCitoyens() : Integer;
//Cette procedure modifie la valeur de la variable MaisonCitoyens                              ALEDDDD
// procedure setMaisonCitoyens(valeur : integer);

            //     CentreVille     //
//Cette fonction renvoie la valeur de la variable CentreVille
// function getCentreVille() : Integer;
//Cette procedure modifie la valeur de la variable CentreVille
// procedure setCentreVille(valeur : integer);                                                 ALEDDDD

            //     Chapelle     //
//Cette fonction renvoie la valeur de la variable Chapelle
// function getChapelle() : Integer;
//Cette procedure modifie la valeur de la variable Chapelle
// procedure setChapelle(valeur : integer);

            //     Cabane Pecheur     //
//Cette fonction renvoie la valeur de la variable CabanePecheur
// function getCabanePecheur() : Integer;
//Cette procedure modifie la valeur de la variable CabanePecheur
// procedure setCabanePecheur(valeur : integer);

            //      Cabane Bucheron     //
//Cette fonction renvoie la valeur de la variable CabaneBucheron
// function getCabaneBucheron() : Integer;
//Cette procedure modifie la valeur de la variable CabaneBucheron
// procedure setCabaneBucheron(valeur : integer);

            //      Bergerie        //
//Cette fonction renvoie la valeur de la variable Bergerie
// function getBergerie() : Integer;
//Cette procedure modifie la valeur de la variable Bergerie
// procedure setBergerie(valeur : integer);

            //      Atelier Laine       //
//Cette fonction renvoie la valeur de la variable AtelierTissus
// function getAtelierTissus() : Integer;
//Cette procedure modifie la valeur de la variable AtelierTissus
// procedure setAtelierTissus(valeur : integer);

//Fonction qui renvoie la valeur de retour
 FUNCTION getRetourBat(): BOOLEAN;
 //Procedure qui modifie la valeur RetourCreeBat
 Procedure setRetourBat(valeur : BOOLEAN);

//----------------------------------------------------------------//
implementation

//listes des variables globale de notre unités
Var TestTypeBatiment,TestIndustrie,TestBatimentSociaux : Integer;

//********Maison Citoyen**********//
CoutColMaisonCit, CoutBoisMaisonCit, CoutOutilsMaisonCit : INTEGER;
//********Maison Colon**********//
CoutBoisMaisonCol : INTEGER;                                                          //ALEDDDD
//********Atelier Tissus**********//
CoutOrTisserand, CoutBoisTisserand, CoutOutilsTisserand : INTEGER;
//********Bergerie**********//
CoutOrBergerie, CoutBoisBergerie, CoutOutilsBergerie : INTEGER;
//********Cabane Bucheron**********//
CoutOrBucheron, CoutOutilsBucheron : INTEGER;
//********Cabane Pecheur**********//
CoutOrPecheur, CoutBoisPecheur, CoutOutilsPecheur : INTEGER;
//********Entrepot**********//
CoutOrEntrepot, CoutBoisEntrepot, CoutOutilsEntrepot, ValEntrepot : INTEGER;
//********Centre-ville**********//
CoutOrCentreVille, CoutBoisCentreVille, CoutOutilsCentreVille : INTEGER;
//********Chapelle**********//
CoutOrChapelle, CoutBoisChapelle, CoutOutilsChapelle : INTEGER;

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

 //Affiche le Cout des batiments
 procedure InfoCoutBatiments();
 var
  CurseurRess : coordonnees;
  BEGIN
    dessinerCadreXY(85,27,146,38, simple, 15, 0); //Cadre du Couts des batiments

    dessinerCadreXY(108,26,125,28, simple, 15, 0); //Cadre du mot 'Couts batiments'
    deplacerCurseurXY(109, 27);  //Ecrire a l'intérieur de l'encadré
    writeln(' Coût Batiments');
    deplacerCurseurXY(88, 29);  //Ecrire dans le cadre des batiments possédés
    CurseurRess := positionCurseur();

    writeln('Maison Colon            : ',CoutBoisMaisonCol,' Bois');        // Afficher le Cout d'une maison de colon
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('Maison Citoyen          : ',CoutBoisMaisonCit,' Bois, ',CoutOutilsMaisonCit,' Outil, ',CoutColMaisonCit,' Maison Colon');   // Affiche le Cout d'une Maison de Citoyen
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('Cabane de Bucheron      : ',CoutOrBucheron,' Or, ',CoutOutilsBucheron,' Outils');   // Affiche le Cout d'une Cabane de Bucheron
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('Cabane de Pecheur       : ',CoutBoisPecheur,' Bois, ',CoutOutilsPecheur,' Outils, ',CoutOrPecheur,' Or');   // Affiche le Cout d'uneEntrepot
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('Atelier de tisserand    : ',CoutBoisTisserand,' Bois, ',CoutOutilsTisserand,' Outils, ',CoutOrTisserand,' Or');   // Affiche le Cout d'une laines
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('Bergerie                : ',CoutBoisBergerie,' Bois, ',CoutOutilsBergerie,' Outils, ',CoutOrBergerie,' Or');   // Affiche le Cout d'une Bergerie
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('Entrepot                : ',CoutBoisEntrepot,' Bois, ',CoutOutilsEntrepot,' Outils, ',CoutOrEntrepot,' Or');   // Affiche le Cout d'uneEntrepot
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('Chapelles               : ',CoutBoisChapelle,' Bois, ',CoutOutilsChapelle,' Outils, ',CoutOrChapelle,' Or');   // Affiche le Cout d'une Chapelle
    CurseurRess.y := CurseurRess.y + 1;
    deplacerCurseur(CurseurRess);
    writeln('Centre-Ville            : ',CoutBoisCentreVille,' Bois, ',CoutOutilsCentreVille,' Outils, ',CoutOrCentreVille,' Or');   // Affiche le Cout d'un CentreVille
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
          writeln('Qu''elle batiment sociaux voulez-vous construire');
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
          writeln('Qu''elles d''industriue voulez-vous construire');
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

 Procedure InisialisationVariable();
 Begin
 //inisialisations à 0 de nos variables
 RetourCreeBat := FALSE;
 nbBois := 0;

  //                      //
  //     Maison Col         //
  //                      //
//  MaisonColon:=0;                                                                                           ALEDDDD
  CoutBoisMaisonCol := 2;           //Déja dans constante CreateBatMaison

  //                      //
  //     Maison Cit         //
  //                      //

//  MaisonCitoyens:=0;
  CoutBoisMaisonCit := 1;
  CoutOutilsMaisonCit := 1;
  CoutColMaisonCit := 1;            //Déja dans constante CreateBatMaison

  //                      //
  //     bucheron         //
  //                      //
  //CabaneBucheron:=0;
  CoutOrBucheron := 50;
  CoutOutilsBucheron := 3;

  //                      //
 //     tisserand       //
//                    //
  //AtelierTissus:=0;
  CoutOrTisserand := 300;
  CoutBoisTisserand := 3;
  CoutOutilsTisserand := 2;

  //                       //
 //     Bergerie         //
//                     //
  //Bergerie:=0;
  CoutOrBergerie := 200;
  CoutBoisBergerie := 4;
  CoutOutilsBergerie := 2;

  //                       //
 //     CabanePecheur    //
//                     //
  CoutOrPecheur := 100;
  CoutBoisPecheur := 5;
  CoutOutilsPecheur := 3;

  //                       //
 //    Entrepot         //
//                     //
  ValEntrepot := 40;
  CoutOrEntrepot := 200;
  CoutBoisEntrepot := 5;
  CoutOutilsEntrepot := 3;

  //                       //
 //     Centre-Villes    //
//                     //
  //CentreVille:=0;
  CoutOrCentreVille := 200;
  CoutBoisCentreVille := 8;
  CoutOutilsCentreVille := 4;

  //                       //
 //     Chapelles         //
//                       //
  //Chapelle:=0;
  CoutOrChapelle := 300;                                    //ALEDDDD
  CoutBoisChapelle := 6;
  CoutOutilsChapelle := 3;
 end;




  //                     //
 //  Quantité Entrepot  //
//                    //

//Cette fonction renvoie la valeur de la variable nbEntrepot
//function getEntrepot() : Integer;
//  begin
//    getEntrepot := nbEntrepot;
//  end;

//Cette procedure modifie la valeur de la variable nbEntrepot
//procedure setEntrepot(valeur : integer);
//  begin
//    nbEntrepot := valeur;
//  end;

  //                     //
 //   Valeur Entrepot   //
//                     //
//Cette fonction renvoie la valeur de la variable ValEntrepot
FUNCTION getValEntrepot(): Integer;
  begin
    getValEntrepot := ValEntrepot;
  end;

//Cette procedure modifie la valeur de la variable ValEntrepot
  procedure setValEntrepot(valeur : integer);
  begin
      ValEntrepot:= valeur;
  end;
   //                     //
  //     MaisonColon     //
 //                     //

//Cette fonction renvoie la valeur de la variable MaisonColon
 //function getMaisonColon() : Integer;
 //begin
//  getMaisonColon := MaisonColon;
// end;

//Cette procedure modifie la valeur de la variable MaisonColon
 //procedure setMaisonColon(valeur : integer);
 //begin
//  MaisonColon := valeur;
 //end;                                                                                       ALEDDDD

   //                    //
  //    MaisonCitoyens  //
 //                    //

//Cette fonction renvoie la valeur de la variable MaisonCitoyens
// function getMaisonCitoyens() : Integer;
 //begin
//  getMaisonCitoyens := MaisonCitoyens;
// end;

//Cette procedure modifie la valeur de la variable MaisonCitoyens
 //procedure setMaisonCitoyens(valeur : integer);
 //begin
//  MaisonCitoyens := valeur;
 //end;

   //                     //
  //     CentreVille     //
 //                     //

//Cette fonction renvoie la valeur de la variable CentreVille
// function getCentreVille() : Integer;
// begin
//  getCentreVille := CentreVille;
//end;
                                                                                            //ALEDDDD
//Cette procedure modifie la valeur de la variable CentreVille
// procedure setCentreVille(valeur : integer);
// begin
//  CentreVille := valeur;
// end;

   //                     //
  //     Chapelle        //
 //                     //

//Cette fonction renvoie la valeur de la variable Chapelle
 //function getChapelle() : Integer;
 //begin
//  getChapelle := Chapelle;
// end;
                                                                                  //ALEDDDD
//Cette procedure modifie la valeur de la variable Chapelle
 //procedure setChapelle(valeur : integer);
// begin
//  Chapelle := valeur;
// end;

   //                     //
  //     CabanePecheur   //
 //                     //

//Cette fonction renvoie la valeur de la variable CabanePecheur
 //function getCabanePecheur() : Integer;
 //begin
//  getCabanePecheur := CabanePecheur;
 //end;
                                                                                //ALEDDDD
//Cette procedure modifie la valeur de la variable CabanePecheur
 //procedure setCabanePecheur(valeur : integer);
 //begin
//  CabanePecheur := valeur;
 //end;

   //                   //
  //   CabaneBucheron  //
 //                   //

//Cette fonction renvoie la valeur de la variable CabaneBucheron
// function getCabaneBucheron() : Integer;
// begin
//  getCabaneBucheron := CabaneBucheron;
// end;

//Cette procedure modifie la valeur de la variable CabaneBucheron
// procedure setCabaneBucheron(valeur : integer);
// begin
//  CabaneBucheron := valeur;
 //end;

   //                     //
  //     Bergerie        //
 //                     //

//Cette fonction renvoie la valeur de la variable Bergerie
// function getBergerie() : Integer;
// begin
//  getBergerie := Bergerie;
//end;

//Cette procedure modifie la valeur de la variable Bergerie
 //procedure setBergerie(valeur : integer);
 //begin
//  Bergerie := valeur;
// end;

   //                     //
  //     AtelierTissus    //
 //                     //

//Cette fonction renvoie la valeur de la variable AtelierTissus
 //function getAtelierTissus() : Integer;
 //begin
//  getAtelierTissus := AtelierTissus;
 //end;

//Cette procedure modifie la valeur de la variable AtelierTissus
 //procedure setAtelierTissus(valeur : integer);
// begin
//  AtelierTissus := valeur;
 //end;

end.
