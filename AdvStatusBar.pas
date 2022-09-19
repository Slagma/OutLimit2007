{
TExDBGrid Version 2.6

Copyright (©) 1999 & 2000 by GJL Software
Updated 8th May 2000 (08/05/2000)

Email:         ExDBGrid@gjl-software.co.uk
Home Page:     http://www.gjl-software.co.uk
}

unit AdvStatusBar;

interface

uses ComCtrls, Classes, Controls, Consts;

type
    TAdvStatusBar = class(TStatusBar)
    public
        constructor Create(AOwner: TComponent); override;
    end;

procedure Register;

implementation

constructor TAdvStatusBar.Create(AOwner: TComponent);
begin
    inherited Create(AOwner);
    ControlStyle := ControlStyle + [csAcceptsControls, csOpaque];
end;

procedure Register;
begin
    RegisterComponents('GJL Software', [TAdvStatusBar]);
end;

end.

