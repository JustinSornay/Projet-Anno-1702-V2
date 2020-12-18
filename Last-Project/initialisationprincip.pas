unit initialisationPrincip;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, GestionEcran;

Procedure InisialisationVariableBat();

//Cette procedure affiche le cadre de la population
procedure affichagePopulation();

//*************************Maisons**************************//

//Cette procedure modifie la valeur de la variable MaisonColon
 procedure setMaisonColon(valeur : integer);
//Cette fonction renvoie la valeur de la variable MaisonColon
  function getMaisonColon() : Integer;

  //Cette procedure modifie la valeur de la variable MaisonCitoyens
   procedure setMaisonCitoyens(valeur : integer);
   //Cette fonction renvoie la valeur de la variable MaisonColon
    function getMaisonCitoyens() : Integer;

//******************Batiment Sociaux*************************//

    //Cette fonction renvoie la valeur de la variable CentreVille
    function getCentreVille() : Integer;
    //Cette procedure modifie la valeur de la variable CentreVille
    procedure setCentreVille(valeur : integer);

    //Cette fonction renvoie la valeur de la variable Chapelle
    function getChapelle() : Integer;
    //Cette procedure modifie la valeur de la variable Chapelle
    procedure setChapelle(valeur : integer);

    //Cette fonction renvoie la valeur de la variable Caserne
    function getCaserne():Integer;
    //Cette procedure modifie la valeur de la variable Caserne
    procedure setCaserne(valeur:Integer);

//***************************Industrie****************************//

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

      //Cette fonction renvoie la valeur de la variable nbEntrepot
      function getEntrepot() : Integer;
      //Cette procedure modifie la valeur de la variable nbEntrepot
      procedure setEntrepot(valeur : integer);

// ******************Colon et Citoyens****************************//

      //Cette procedure modifie la valeur de la variable Colon
       procedure setColons(valeur : integer);
       //Cette fonction renvoie la valeur de la variable Colon
        function getColons() : Integer;

      //Cette procedure modifie la valeur de la variable Citoyens
       procedure setCitoyens(valeur : integer);
       //Cette fonction renvoie la valeur de la variable Citoyens
        function getCitoyens() : Integer;

// *********************** ARMEES ****************************//

//Cette procedure modifie la valeur de la variable soldat
procedure setSoldats(valeur:integer);
//Catte fonction renvoie la valeur de la variable soldat
function getSoldats():integer;

//Cette procedure modifie la valeur de la variable Officier
procedure setOfficier(valeur:integer);
//Catte fonction renvoie la valeur de la variable Officier
function getOfficier():integer;

//Cette procedure modifie la valeur de la variable capitaine
procedure setCapitaines(valeur:integer);
//Catte fonction renvoie la valeur de la variable capitaine
function getCapitaines():integer;

// *********************** ENTREPOT ****************************//
//Cette fonction renvoie la capacité de stockage
FUNCTION getValEntrepot(): Integer;
//Cette procedure modifie la valeur de la variable ValEntrepot
procedure setValEntrepot(valeur : integer);


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

// ******************Batiments millitaire***************//

   // Casernes //


//procedure qui modifie la valeur de CaserneSoldat
procedure setCaserneSoldat(valeur:integer);
//Cette fonction renvoie la valeur de la variable CaserneSoldat
function getCaserneSoldat():integer;
//procedure qui modifie la valeur de CaserneOfficier
procedure setCaserneOfficier(valeur:integer);
//Cette fonction renvoie la valeur de la variable CaserneOfficier
function getCaserneOfficier():integer;
//procedure qui modifie la valeur de CaserneCapitaine
procedure setCaserneCapitaine(valeur:integer);
//Cette fonction renvoie la valeur de la variable CaserneCapitaine
function getCaserneCapitaine():integer;

  // Chantiers //

  //procedure qui modifie la valeur de ChantierExploration
procedure setChantierExploration(valeur:integer);
//Cette fonction renvoie la valeur de la variable ChantierExploration
function getChantierExploration():integer;
//procedure qui modifie la valeur de ChantierConquete
procedure setChantierConquete(valeur:integer);
//Cette fonction renvoie la valeur de la variable ChantierConquete
function getChantierConquete():integer;

  // Navires //

//procedure qui modifie la valeur de NavireExploration
procedure setNavireExploration(valeur:integer);
//Cette fonction renvoie la valeur de la variable NavireExploration
function getNavireExploration():integer;
//procedure qui modifie la valeur de NavireConquete
procedure setNavireConquete(valeur:integer);
//Cette fonction renvoie la valeur de la variable NavireConquete
function getNavireConquete():integer;



implementation

var
  ValEntrepot : INTEGER;
  MaisonColon : integer;
  MaisonCitoyens : INTEGER;
  CentreVille : INTEGER;
  Chapelle : INTEGER;
  Caserne : INTEGER;
  CabanePecheur : INTEGER;
  CabaneBucheron: INTEGER;
  AtelierTissus: INTEGER;
  Bergerie: INTEGER;
  nbEntrepot : INTEGER;
   Colons : INTEGER;
   Citoyens : INTEGER;
   Soldats,Officiers,Capitaines:INTEGER;

   CaserneSoldat:INTEGER;
   CaserneOfficier:INTEGER;
   CaserneCapitaine:INTEGER;

   ChantierExploration:INTEGER;
   ChantierConquete:INTEGER;

   NavireExploration:INTEGER;
   NavireConquete:INTEGER;

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


//     ValEntrepot    //
ValEntrepot := 40;

//     Maison Citoyen    //
MaisonCitoyens:=0;

 //     Maison Colons   //
 MaisonColon:=0;

 //     CentreVille   //
 CentreVille:=0;

 //     Chapelle   //
Chapelle:=0;

//     Caserne    //
Caserne:=0;

//    CabanePecheur  //
CabanePecheur:=0;

//    Entrepot  //
nbEntrepot := 0;

//  Colons  //
Colons := 0;

//  Citoyens //
Citoyens := 0;


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

    //                   //
  //      Citoyen      //
//                   //

//Cette procedure modifie la valeur de la variable Citoyens
 procedure setCitoyens(valeur : integer);
 begin
  Citoyens := valeur;
 end;

  //Cette fonction renvoie la valeur de la variable Citoyens
  function getCitoyens() : Integer;
  begin
   getCitoyens := Citoyens;
  end;

 //                   //
//      Soldat       //
//                   //

//Cette procedure modifie la valeur de la variable soldat
procedure setSoldats(valeur:integer);
begin
  Soldats := valeur;
 end;
//Catte fonction renvoie la valeur de la variable soldat
function getSoldats():integer;
begin
 getSoldats := Soldats;
end;

//                   //
//      Officier     //
//                   //

//Cette procedure modifie la valeur de la variable Officier
procedure setOfficier(valeur:integer);
begin
  Officiers := valeur;
 end;
//Catte fonction renvoie la valeur de la variable Officier
function getOfficier():integer;
begin
 getOfficier := Officiers;
end;

//                   //
//     Capitaine     //
//                   //
//Cette procedure modifie la valeur de la variable capitaine
procedure setCapitaines(valeur:integer);
begin
  Capitaines := valeur;
 end;
//Catte fonction renvoie la valeur de la variable capitaine
function getCapitaines():integer;
begin
 getCapitaines := Capitaines;
end;

    //                   //
  //  Maison Citoyens  //
//                   //

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

//                    //
//      Caserne       //
//                    //

//Cette fonction renvoie la valeur de la variable Caserne
function getCaserne():Integer;
begin
getCaserne := Caserne;
end;

//Cette procedure modifie la valeur de la variable Caserne
procedure setCaserne (valeur:integer);
begin
Caserne := valeur;
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

 //                     //
//  Quantité Entrepot  //
//                    //

//Cette fonction renvoie la valeur de la variable nbEntrepot
function getEntrepot() : Integer;
 begin
   getEntrepot := nbEntrepot;
 end;

//Cette procedure modifie la valeur de la variable nbEntrepot
procedure setEntrepot(valeur : integer);
 begin
   nbEntrepot := valeur;
 end;

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
 //   Caserne soldat    //
 //                     //

 //Cette fonction renvoie la valeur de la variable CaserneSoldat
 function getCaserneSoldat():integer;
 begin
     getCaserneSoldat:= CaserneSoldat;
 end;

//Cette procedure modifie la valeur de la variable CaserneSoldat
procedure setCaserneSoldat(valeur:integer);
begin
    CaserneSoldat:=valeur;
end;

//                     //
//   Caserne officier  //
//                     //

//Cette fonction renvoie la valeur de la variable CaserneOfficier
function getCaserneOfficier():integer;
begin
    getCaserneOfficier:= CaserneOfficier;
end;

//Cette procedure modifie la valeur de la variable CaserneOfficier
procedure setCaserneOfficier(valeur:integer);
begin
   CaserneOfficier:=valeur;
end;

//                     //
//   Caserne capitaine //
//                     //

//Cette fonction renvoie la valeur de la variable CaserneCapitaine
function getCaserneCapitaine():integer;
begin
    getCaserneCapitaine:= CaserneCapitaine;
end;

//Cette procedure modifie la valeur de la variable CaserneCapitaine
procedure setCaserneCapitaine(valeur:integer);
begin
   CaserneCapitaine:=valeur;
end;

//                     //
//   chantier explo    //
//                     //

//Cette fonction renvoie la valeur de la variable ChantierExploration
function getChantierExploration():integer;
begin
    getChantierExploration:= ChantierExploration;
end;

//Cette procedure modifie la valeur de la variable ChantierExploration
procedure setChantierExploration(valeur:integer);
begin
   ChantierExploration:=valeur;
end;

//                     //
//   chantier conquete //
//                     //

//Cette fonction renvoie la valeur de la variable ChantierConquete
function getChantierConquete():integer;
begin
    getChantierConquete:= ChantierConquete;
end;

//Cette procedure modifie la valeur de la variable ChantierConquete
procedure setChantierConquete(valeur:integer);
begin
   ChantierConquete:=valeur;
end;

//                     //
// navire exploration  //
//                     //

//Cette fonction renvoie la valeur de la variable NavireExploration
function getNavireExploration():integer;
begin
    getNavireExploration:= NavireExploration;
end;

//Cette procedure modifie la valeur de la variable NavireExploration
procedure setNavireExploration(valeur:integer);
begin
   NavireExploration:=valeur;
end;

//                     //
//   navire conquete  //
//                    //

//Cette fonction renvoie la valeur de la variable CaserneCapitaine
function getNavireConquete():integer;
begin
    getNavireConquete:= NavireConquete;
end;

//Cette procedure modifie la valeur de la variable NavireConquete
procedure setNavireConquete(valeur:integer);
begin
   NavireConquete:=valeur;
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
  writeln('Nombre de citoyens         :           ',getCitoyens);   // Affiche le nombre de citoyens


end;

end.
