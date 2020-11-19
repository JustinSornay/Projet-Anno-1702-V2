unit SystemeBatiments;

{$mode objfpc}{$H+}
{$codepage utf8}

interface

type NewTypeBatiment = (Maisons,Batimensociaux,Industries);

//Fonction qui class les types de batiments
Procedure PTypeBatiment();

//Procedure de construction de Batiment
Procedure ConstructionsBatiments(TypeBatiment:NewTypeBatiment);

//Procedure d'Inisialisation des Variables
Procedure InisialisationVariable();
//-----------------------------------------------------------------//
//Procedure et fonction de modification et d'affichage de variable 

            //     MaisonColon     //
//Cette fonction renvoie la valeur de la variable MaisonColon
 function getMaisonColon() : Integer;

//Cette procedure modifie la valeur de la variable MaisonColon
 procedure setMaisonColon(valeur : integer);
 
            //     MaisonColon     //
//Cette fonction renvoie la valeur de la variable MaisonColon
 function getMaisonCitoyens() : Integer;

//Cette procedure modifie la valeur de la variable MaisonCitoyens
 procedure setMaisonCitoyens(valeur : integer);

            //     CentreVille     //
//Cette fonction renvoie la valeur de la variable CentreVille
 function getCentreVille() : Integer;

//Cette procedure modifie la valeur de la variable CentreVille
 procedure setCentreVille(valeur : integer);

            //     Chapelle     //
//Cette fonction renvoie la valeur de la variable Chapelle
 function getChapelle() : Integer;

//Cette procedure modifie la valeur de la variable Chapelle
 procedure setChapelle(valeur : integer);

            //     Cabane Pecheur     //
//Cette fonction renvoie la valeur de la variable CabanePecheur
 function getCabanePecheur() : Integer;

//Cette procedure modifie la valeur de la variable CabanePecheur
 procedure setCabanePecheur(valeur : integer);

            //      Cabane Bucheron     //
//Cette fonction renvoie la valeur de la variable CabaneBucheron
 function getCabaneBucheron() : Integer;  

//Cette procedure modifie la valeur de la variable CabaneBucheron
 procedure setCabaneBucheron(valeur : integer);

            //      Bergerie        //
//Cette fonction renvoie la valeur de la variable Bergerie
 function getBergerie() : Integer;

//Cette procedure modifie la valeur de la variable Bergerie
 procedure setBergerie(valeur : integer);

            //      Atelier Laine       //      
//Cette fonction renvoie la valeur de la variable AtelierLaine
 function getAtelierLaine() : Integer;

//Cette procedure modifie la valeur de la variable AtelierLaine
 procedure setAtelierLaine(valeur : integer);

//----------------------------------------------------------------// 
implementation

//listes des variables globale de notre unités
Var MaisonColon,MaisonCitoyens,CentreVille,Chapelle,CabanePecheur,CabaneBucheron,Bergerie,AtelierLaine,TestTypeBatiment,TestIndustrie,TestBatimentSociaux:Integer;
TypeBatiment:NewTypeBatiment;

 Procedure PTypeBatiment();
 Begin
    writeln('Qu''elle type de batiment voulez-vous construire');
    writeln('Maisons pour les Colons : 1');
    writeln('Batiments sociaux : 2');
    writeln('Industries : 3');
    readln(TestTypeBatiment);

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
     end;
 end;

 Procedure ConstructionsBatiments(TypeBatiment:NewTypeBatiment);
 Begin
 
 //  Même chose mais avec un CASE (J'ai pas testé si marche)
//
// 
//    CASE TypeBatiment OF
//      Maisons : 
//      BEGIN
//        writeln('Qu''elle Maison voulez-vous construire');
//        writeln('Maisons pour les Colons : 1');
//        writeln('Maisons pour les Citoyens : 2');
//        readln(TestTypeBatiment);
//      END;
//
//      Batimensociaux :
//        BEGIN
//          writeln('Qu''elle batiment sociaux voulez-vous construire');
//          writeln('Centre-Ville : 1');
//          writeln('Chapelle : 2');
//          readln(TestBatimentSociaux);  
//        END;
//
//      Industries :
//        BEGIN
//          writeln('Qu''elles d''industriue voulez-vous construire');
//          writeln('Cabane de pecheur : 1');
//          writeln('Cabane de bucheron : 2');
//          writeln('Bergerie de mouton : 3');
//          writeln('Atelier de tisserand : 4');
//          readln(TestIndustrie);
//          END;
//      END;


     if (TypeBatiment=Maisons)then
     Begin
        writeln('Qu''elle Maison voulez-vous construire');
        writeln('Maisons pour les Colons : 1');
        writeln('Maisons pour les Citoyens : 2');
        readln(TestTypeBatiment);    
     end
     else if (TypeBatiment=Batimensociaux)then
     Begin
        writeln('Qu''elle batiment sociaux voulez-vous construire');
        writeln('Centre-Ville : 1');
        writeln('Chapelle : 2');
        readln(TestBatimentSociaux);
     end
     else if (TypeBatiment=Industries)then
     Begin
            writeln('Qu''elles d''industriue voulez-vous construire');
            writeln('Cabane de pecheur : 1');
            writeln('Cabane de bucheron : 2');
            writeln('Bergerie de mouton : 3');
            writeln('Atelier de tisserand : 4');
            readln(TestIndustrie);
     end;
 end;

 Procedure InisialisationVariable();
 Begin
 //inisialisations à 0 de nos variables
  MaisonColon:=0;
  MaisonCitoyens:=0;
  CentreVille:=0;
  Chapelle:=0;
  CabanePecheur:=0;
  CabaneBucheron:=0;
  Bergerie:=0;
  AtelierLaine:=0;
 end;

   //                     //
  //     MaisonColon     //
 //                     //

//Cette fonction renvoie la valeur de la variable MaisonColon
 function getMaisonColon() : Integer;
 begin
  getMaisonColon := MaisonColon;
 end;

//Cette procedure modifie la valeur de la variable MaisonColon
 procedure setMaisonColon(valeur : integer);
 begin
  MaisonColon := valeur;
 end;

   //                    //
  //    MaisonCitoyens  //
 //                    //

//Cette fonction renvoie la valeur de la variable MaisonColon
 function getMaisonCitoyens() : Integer;
 begin
  getMaisonCitoyens := MaisonCitoyens;
 end;

//Cette procedure modifie la valeur de la variable MaisonCitoyens
 procedure setMaisonCitoyens(valeur : integer);
 begin
  MaisonCitoyens := valeur;
 end;

   //                     //
  //     CentreVille     //
 //                     //

//Cette fonction renvoie la valeur de la variable CentreVille
 function getCentreVille() : Integer;
 begin
  getCentreVille := CentreVille;
 end;

//Cette procedure modifie la valeur de la variable CentreVille
 procedure setCentreVille(valeur : integer);
 begin
  CentreVille := valeur;
 end;

   //                     //
  //     Chapelle        //
 //                     //

//Cette fonction renvoie la valeur de la variable Chapelle
 function getChapelle() : Integer;
 begin
  getChapelle := Chapelle;
 end;

//Cette procedure modifie la valeur de la variable Chapelle
 procedure setChapelle(valeur : integer);
 begin
  Chapelle := valeur;
 end;

   //                     //
  //     CabanePecheur   //
 //                     //

//Cette fonction renvoie la valeur de la variable CabanePecheur
 function getCabanePecheur() : Integer;
 begin
  getCabanePecheur := CabanePecheur;
 end;

//Cette procedure modifie la valeur de la variable CabanePecheur
 procedure setCabanePecheur(valeur : integer);
 begin
  CabanePecheur := valeur;
 end;

   //                   //
  //   CabaneBucheron  //
 //                   //

//Cette fonction renvoie la valeur de la variable CabaneBucheron
 function getCabaneBucheron() : Integer;
 begin
  getCabaneBucheron := CabaneBucheron;
 end;

//Cette procedure modifie la valeur de la variable CabaneBucheron
 procedure setCabaneBucheron(valeur : integer);
 begin
  CabaneBucheron := valeur;
 end;
 
   //                     //
  //     Bergerie        //
 //                     //

//Cette fonction renvoie la valeur de la variable Bergerie
 function getBergerie() : Integer;
 begin
  getBergerie := Bergerie;
 end;

//Cette procedure modifie la valeur de la variable Bergerie
 procedure setBergerie(valeur : integer);
 begin
  Bergerie := valeur;
 end;

   //                     //
  //     AtelierLaine    //
 //                     //

//Cette fonction renvoie la valeur de la variable AtelierLaine
 function getAtelierLaine() : Integer;
 begin
  getAtelierLaine := AtelierLaine;
 end;

//Cette procedure modifie la valeur de la variable AtelierLaine
 procedure setAtelierLaine(valeur : integer);
 begin
  AtelierLaine := valeur;
 end;

end.

