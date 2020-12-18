unit SystemeTour;

interface

uses
  Classes, SysUtils, initialisationPrincip, Ressources, GestionEcran;

// AFFICHE LE NOMBRE DE TOUR
Procedure InfoTour();

//AFFICHE LE NOMBRE DE TOUR SUR TOUTE LES PAGES
Procedure AfficheTour();

// INITIALISE LE SYSTEME DE TOUR
Procedure StartTour(var difficulte:integer);

// RECUPERER LE NUMERO DU TOUR ACTUEL
Function GetTour() : integer;

// PASSER AU TOUR SUIVANT
Procedure TourSuivant();

implementation
VAR
  NumTour : integer;
  

 // INITIALISE LE SYSTEME DE TOUR
 Procedure StartTour(VAR difficulte:Integer);  //Initialisation du nombre de tour a 0
 VAR test:Integer;
   BEGIN
     NumTour := 0;
     Case difficulte OF      
        0 : {dificulté facile}
        BEGIN
          setGold(1500);//modifie la valeur de l'or de départ
          setBois(50);//modifie la valeur du boie de départ
          setOutils(20);//modifie la valeur des outiuls de départs
        END;

        1 : {dificulté normal}
        BEGIN
          setGold(1000);//modifie la valeur de l'or de départ
          setBois(40);//modifie la valeur du boie de départ
          setOutils(15);//modifie la valeur des outiuls de départs;
        END;

        2 : {dificulté hard}
        BEGIN
          setGold(800);//modifie la valeur de l'or de départ
          setBois(30);//modifie la valeur du boie de départ
          setOutils(10);//modifie la valeur des outiuls de départs
        END;
       3 : {difuculué aléatoire}
       BEGIN
       Randomize; //Initialisation du random
       test:=random(3); //difficulté aléatoire
        StartTour(test);
        writeln('Vous achez choicie le mode N°', test); //affiche le mod de difficulté de la partie
       END;
   END;  
 end;

 // RECUPERER LE NUMERO DU TOUR ACTUEL
 Function GetTour() : integer;
 BEGIN
   GetTour := NumTour;
 END;

 // PASSER AU TOUR SUIVANT
 Procedure TourSuivant();
 BEGIN
   NumTour := NumTour + 1;

   //*************************Consomation/Impots poissons**********************************//

   setPoissons(GetPoissons() - (getColons() + getCitoyens()));  //Modifie la quantité de Poissons en fonction des Colons et des Citoyens possédé
   setGold(GetGold() + (getColons()+getCitoyens()) * 2);  //Modifie la quantité d'Or en fonction des Colons possédé

   //************************Social************************************//

   IF getMaisonColon() > GetColons() THEN setColons(GetColons() + 1);

   IF getMaisonCitoyens() > GetCitoyens() THEN setCitoyens(GetCitoyens() + 1);

   //*************************Industries********************************************//

    IF getBois() < getValEntrepot() THEN  //si le joueur n'a pas déja la quantité maximal de bois
     BEGIN
         setBois(GetBois() + (getCabaneBucheron() * 1));   //ModIfie la quantité de bois en fonction des cabane de bucheron possédé
     END;

    IF getLaines() < getValEntrepot() THEN  //si le joueur n'a pas déja la quantité maximal de Laine
     BEGIN
         setLaines(getLaines() + (getBergerie() * 1)); //ModIfie la quantité de laines en fonction des bergeries possédé
     END;

    IF getTissus() < getValEntrepot() THEN  //si le joueur n'a pas déja la quantité maximal de Tissus
     BEGIN
         setTissus(getTissus() + (getAtelierTissus() * 1)) //modIfie la quantité de tissus en fonction des Ateliers de tissus
     END;

    IF getPoissons() < getValEntrepot() THEN  //si le joueur n'a pas déja la quantité maximal de Poissons
     BEGIN
         setPoissons(GetPoissons() + (GetCabanePecheur() * 2));  //Modifie la quantité de Poissons en fonction des cabane de Poissons possédé
     END;

     //marchand
 END;

 //cette procedure affiche les informations sur l'ile et le tour
 Procedure InfoTour();
  VAR CurseurRess: coordonnees;
 BEGIN
   dessinerCadreXY(5,13,80,24, simple, 15, 0); //Cadre des tours
   dessinerCadreXY(18,12,68,14, simple, 15, 0); //Cadre du mot 'Information'
   deplacerCurseurXY(38, 13);  //Ecrire a l'intérieur de l'encadré
   writeln('Informations');
   deplacerCurseurXY(20, 17);  //Ecrire dans le cadre des Informations
   CurseurRess := positionCurseur();

   writeln('Nom de l''île            :           Kaitora');        // Afficher le nom de l'île
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Nombre de tours         :           ',GetTour());   // Affiche le nombre de tours
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Fertilités              :           houblon,tabac,blé');   // Affiche la fertilité de l'île
   CurseurRess.y := CurseurRess.y + 1;
   deplacerCurseur(CurseurRess);
   writeln('Emplacement             :           83');   // Affiche l'emplacement de l'île
 END;

 //PROCEDURE AFFICHAGE DE TOUR SUR LES PAGES
 Procedure AfficheTour();
  VAR
   CurseurRess:coordonnees;
 BEGIN
      dessinerCadreXY(10,42,73,45, simple, 15, 0); //Cadre des tours
      deplacerCurseurXY(15, 43);  //Ecrire dans le cadre des Informations
      write('                 Nombre de tours : ',GetTour());
 END;

end.
