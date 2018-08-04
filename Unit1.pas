unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
var
  p:TPoint;
begin
GetCursorPos(p);
Label1.Caption:='X='+IntToStr(p.X);
Label2.Caption:='Y='+IntToStr(p.Y);
Label3.Caption:='WHND='+IntToStr(WindowFromPoint(p));
Label4.Caption:='Parent='+IntToStr(GetParent(WindowFromPoint(p)));
end;

end.
