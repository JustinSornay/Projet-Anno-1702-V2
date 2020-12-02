unit GestionErreur;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;
// Compare 2 valeur dit si la valeur1 > 0
function ComparRess(valeurUser : integer; valeur2 : integer) : BOOLEAN;

implementation
var
  ResCompar : Integer;
// Compare 2 valeur dit si la valeur1 > 0
function ComparRess(valeurUser : integer; valeur2 : integer) : BOOLEAN;
  BEGIN
    ResCompar := valeurUser - valeur2
    IF ResCompar > 0 THEN BEGIN
      ComparRess := TRUE;
    END
    ELSE BEGIN
      ComparRess := False;
    END;
  END;
end.
