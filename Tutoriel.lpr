program Tutoriel;

uses UnitEnumeration, UnitRecord, UnitVariable, unitUFT8,SystemeBatiments;

var j : Jour;
    i : integer;
    joueur : Personnage;

begin
     //Test de l'énumeration
     writeln('----------- ENUMERATION --------------------');
     j:=lundi;
     for i:=0 to 15 do
     begin
       writeln(numeroDuJourDansLaSemaine(j),' - ',j);
       j:=jourSuivant(j);
     end;

     //Test du Record
     writeln;writeln;
     writeln('----------- RECORD ------------------------');
     joueur := nouveauPersonnage('Toto');
     writeln(joueur.nom,' - ', joueur.pv);
     blesser(joueur,25);   
     writeln(joueur.nom,' - ', joueur.pv);

     //Test des variables 
     writeln;writeln;
     writeln('----------- VARIABLES ---------------------');
     initialisation();
     writeln('Bois : ',getBois());
     setBois(200);
     writeln('Bois : ',getBois());

     //Test de l'encodage UTF8 automatique
     writeln;writeln;            
     writeln('----------- UTF8 --------------------------');
     afficherUnTexteExempleEnUTF8();

     effacerEtColorierEcran(1);



     readln;
end.

