unit SystemeBatiments;

{$mode objfpc}{$H+}
{$codepage utf8}



interface

type TypeBatiment = (Maisons,Batimensociaux,Industries);

//Fonction qui class les types de batiments
Procedure PTypeBatiment();

//Procedure affichage de la partie gestion batiment
Procedure AffichageBatiment(MaisonColon,MaisonCitoyens,CentreVille,Chapelle,CabanePecheur,CabaneBucheron,Bergerie,AtelierLaine,TestTypeBatiment:Integer);

//Procedure de construction de Batiment
Procedure ConstructionsBatiments();

//Procedure d'Inisialisation Variables
Procedure InisialisationVariable();

implementation
//listes des variables globale de notre unités
Var MaisonColon,MaisonCitoyens,CentreVille,Chapelle,CabanePecheur,CabaneBucheron,Bergerie,AtelierLaine,TestTypeBatiment:Integer;



 Procedure PTypeBatiment();
 Begin
    writeln('Qu''elle type de batiment voulez-vous construire');
    writeln('Maisons pour les Colons : Maisons');
    writeln('Batiments sociaux : Batimensociaux');
    writeln('Industries : Industries');
    readln(TestTypeBatiment);
    readln;
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

end.



