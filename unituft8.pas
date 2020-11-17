unit unitUFT8;

{$mode objfpc}{$H+}
{$codepage utf8}     //Ligne à rajouter pour pouvoir utiliser directement l'UTF8 dans votre fichier (gestion des caractères spéciaux)

interface

uses
  Classes, SysUtils;
                
procedure afficherUnTexteExempleEnUTF8();

implementation

procedure afficherUnTexteExempleEnUTF8();
begin
  writeln('Les accents sont correctement gérés !');   //Vous pouvez alors directement utiliser les accents et autres caractères spéciaux
end;

end.

