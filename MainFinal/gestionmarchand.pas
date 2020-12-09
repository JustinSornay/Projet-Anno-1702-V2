unit GestionMarchand;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, GestionEcran, ressources, initialisationPrincip;

//Procédure qui affiche le marchand
  procedure Marchand();

  //Affiche ce que vend le marchand
  procedure InfoMarchand();

implementation


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

end.
