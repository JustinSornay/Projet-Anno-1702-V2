program project1;

uses Ressources;

begin

  //Test des variables
  writeln('----------- VARIABLES ---------------------');
  initRessources();

  //                          //
 //            BOIS          //
//                          //

  writeln('Bois : ',getBois());
  setBois(1000);
  writeln('Bois : ',getBois());

  //                          //
 //            GOLD          //
//                          //

  writeln('Gold : ',getGold());
  setGold(8000);
  writeln('Gold : ',getGold());


  //                          //
 //          POISSONS        //
//                          //

writeln('Poissons : ',getPoissons());
setPoissons(90);
writeln('Poissons : ',getPoissons());

  //                        //
 //          OUTILS        //
//                        //

writeln('Outils : ',getOutils());
setOutils(100);
writeln('Outils : ',getOutils());

  //                        //
 //          LAINES        //
//                        //

writeln('Laines : ',getLaines());
setLaines(3500);
writeln('Laines : ',getLaines());

//                        //
//          TISSUS        //
//                        //

writeln('Tissus : ',getTissus());
setTissus(500);
writeln('Tissus : ',getTissus());

readln();
end.
