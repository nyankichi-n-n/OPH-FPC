unit HelloPlatformForm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  {$IFDEF WINDOWS}
          ShowMessage ('Running on Windows');
  {$ENDIF}
  {$IFDEF MACOS}
          ShowMessage ('Running on MAC OS X');
  {$ENDIF}
  {$IFDEF IOS}
          ShowMessage ('Running on IOS');
  {$ENDIF}
  {$IFDEF ANDROID}
          ShowMessage ('Running on Android');
  {$ENDIF}
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  {$DEFINE TEST}

  {$IFDEF TEST}
          ShowMessage ('this is going to be compiled');
  {$ENDIF}
  {$IFNDEF TEST}
           ShowMessage ('this is not going to be compiled');
  {$ENDIF}
end;

end.
