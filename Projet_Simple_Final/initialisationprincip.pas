unit initialisationPrincip;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, GestionEcran;

Procedure InisialisationVariableBat();

//Cette procedure affiche le cadre de la population
procedure affichagePopulation();

//Cette procedure modifie la valeur de la variable MaisonColon
 procedure setMaisonColon(valeur : integer);
//Cette fonction renvoie la valeur de la variable MaisonColon
  function getMaisonColon() : Integer;

    //Cette fonction renvoie la valeur de la variable CentreVille
    function getCentreVille() : Integer;
    //Cette procedure modifie la valeur de la variable CentreVille
    procedure setCentreVille(valeur : integer);

    //Cette fonction renvoie la valeur de la variable Chapelle
    function getChapelle() : Integer;
    //Cette procedure modifie la valeur de la variable Chapelle
    procedure setChapelle(valeur : integer);

    //Cette fonction renvoie la valeur de la variable CabanePecheur
    function getCabanePecheur() : Integer;
    //Cette procedure modifie la valeur de la variable CabanePecheur
    procedure setCabanePecheur(valeur : integer);

    //Cette fonction renvoie la valeur de la variable CabaneBucheron
    function getCabaneBucheron() : Integer;
    //Cette procedure modifie la valeur de la variable CabaneBucheron
    procedure setCabaneBucheron(valeur : integer);

    //Cette fonction renvoie la valeur de la variable Bergerie
    function getBergerie() : Integer;
    //Cette procedure modifie la valeur de la variable Bergerie
    procedure setBergerie(valeur : integer);

    //Cette fonction renvoie la valeur de la variable AtelierTissus
     function getAtelierTissus() : Integer;
     //Cette procedure modifie la valeur de la variable AtelierTissus
      procedure setAtelierTissus(valeur : integer);

      // ******************Colon****************************//

      //Cette procedure modifie la valeur de la variable Colon
       procedure setColons(valeur : integer);
       //Cette fonction renvoie la valeur de la variable Colon
        function getColons() : Integer;

// ******************Marchand****************************//

 //Cette fonction renvoie le cout du bois du marchand
  function MarchandCoutBois() : Integer;

//Cette fonction renvoie le cout du poissons du marchand
 function MarchandCoutpoissons() : Integer;

//Cette fonction renvoie le cout du Outils du marchand
 function MarchandCoutOutils() : Integer;

//Cette fonction renvoie le cout du Laine du marchand
  function MarchandCoutLaine() : Integer;

//Cette fonction renvoie le cout du Tissus du marchand
  function MarchandCoutTissus() : Integer;


implementation

var
  MaisonColon : integer;
  CentreVille : INTEGER;
  Chapelle : INTEGER;
  CabanePecheur : INTEGER;
  CabaneBucheron: INTEGER;
  AtelierTissus: INTEGER;
  Bergerie: INTEGER;
   Colons : INTEGER;

   MCoutBois : INTEGER;
   MCoutpoissons : INTEGER;
   MCoutLaines : INTEGER;
   MCoutTissus : INTEGER;
   MCoutOutils : INTEGER;
Procedure InisialisationVariableBat();
Begin
//inisialisations à 0 de nos variables
//  Cout bois marchand   //
MCoutBois := 5;

//  Cout poissons marchand   //
MCoutpoissons := 3;

//  Cout Laines marchand   //
MCoutLaines := 8;

//  Cout Tissus marchand   //
MCoutTissus := 8;

//  Cout Outils marchand   //
MCoutOutils := 15;

 //     Maison Colons   //
 MaisonColon:=0;

 //     CentreVille   //
 CentreVille:=0;

 //     Chapelle   //
Chapelle:=0;

//    CabanePecheur  //
CabanePecheur:=0;

//  Colons  //
Colons := 0;

end;
    //               //
  //    Marchand   //
//               //

//Cette fonction renvoie le cout du bois du marchand
 function MarchandCoutBois() : Integer;
 begin
   MarchandCoutBois := MCoutBois;
 end;

 //Cette fonction renvoie le cout du poissons du marchand
  function MarchandCoutpoissons() : Integer;
  begin
    MarchandCoutpoissons := MCoutpoissons;
  end;

 //Cette fonction renvoie le cout du Outils du marchand
  function MarchandCoutOutils() : Integer;
  begin
    MarchandCoutOutils := MCoutOutils;
  end;

 //Cette fonction renvoie le cout du Laine du marchand
   function MarchandCoutLaine() : Integer;
   begin
     MarchandCoutLaine := MCoutLaines;
   end;

 //Cette fonction renvoie le cout du Tissus du marchand
   function MarchandCoutTissus() : Integer;
   begin
     MarchandCoutTissus := MCoutTissus;
   end;

    //                   //
  //      Colons       //
//                   //

//Cette procedure modifie la valeur de la variable Colon
 procedure setColons(valeur : integer);
 begin
  Colons := valeur;
 end;

 //Cette fonction renvoie la valeur de la variable Colon
  function getColons() : Integer;
  begin
   getColons:= Colons;
  end;

  //                    //
 //   Maison Colons   //
//                  //

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

//Cette fonction renvoie la valeur de la variable AtelierTissus
 function getAtelierTissus() : Integer;
 begin
  getAtelierTissus := AtelierTissus;
 end;

//Cette procedure modifie la valeur de la variable AtelierTissus
 procedure setAtelierTissus(valeur : integer);
 begin
  AtelierTissus := valeur;
 end;


 //Procedure qui affiche le cadre de la population
procedure affichagePopulation();
var CurseurRess:coordonnees;
begin
 dessinerCadreXY(5,27,80,32, simple, 15, 0); //Cadre de la population
 dessinerCadreXY(18,26,66,28, simple, 15, 0); //Cadre du mot 'Population'
 deplacerCurseurXY(38, 27);  //Ecrire a l'intérieur de l'encadré
 writeln('Population');
 deplacerCurseurXY(20, 29);  //Ecrire dans le cadre des Informations
 CurseurRess := positionCurseur();
 writeln('Nombre de colons           :           ',getColons);        // Affiche le nombre de colons
  CurseurRess.y := CurseurRess.y + 1;
  deplacerCurseur(CurseurRess);


end;

end.
