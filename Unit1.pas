unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Registry, ShellAPI,
  ShlObj,
  Vcl.FileCtrl, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus,
  Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Gfix: TButton;
    Button7: TButton;
    SaveDialog1: TSaveDialog;
    Button8: TButton;
    ListBox1: TListBox;
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure GfixClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm1.Button1Click(Sender: TObject);
begin

  if OpenDialog1.Execute() then
  begin
    OpenDialog1.Filter := '.pdf';
    // Memo1.Lines.Add(OpenDialog1.FileName);
    Edit1.Text := OpenDialog1.FileName;
  end;
  // OpenDialog1.Filter:= 'Todos os arquivos (*.pdf )';
  // 'Todos os arquivos (*. *) | *. * | Arquivos de projeto (* .dpr) | * .dpr | Unidades Pascal (* .pas) | * .pas ';
  // Obs o filtro não esta funcionando
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  WinExec(PAnsiChar('cmd.exe /c quit'), sw_normal);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  WinExec(PAnsiChar
    ('cmd.exe /c exit C:\Users\pc\eclipse\java-2021-09\eclipse\eclipse.exe'),
    SW_SHOW);
  Sleep(3);

end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  // WinExec(PAnsiChar('cmd.exe /c shutdown -r -t 45'), sw_normal);
  WinExec(PAnsiChar('cmd.exe /c '), sw_normal);
  Sleep(3);

end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Form2 := TForm2.Create(Self);
  Form2.ShowModal;
  Form2.Release;

end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  SaveDialog1.Execute();
end;

procedure TForm1.GfixClick(Sender: TObject);
var
  banco: String;
  infor: String;

begin
  // infor := 'C:\Users\pc\eclipse\java-2021-09\eclipse\eclipse.exe';
  // Edit1.Text :=  OpenDialog1.FileName;
  /// banco := PAnsiChar('cmd.exe /c ren'+ banco2);
  WinExec(PAnsiChar('cmd.exe /c  start cd C:\Program Files\Firebird\Firebird_3_0' +
  'color 2'     +


'gbak -user "SYSDBA" -pas "pmpsyfwr" -b -v -g -se service_mgr "C:\BLESS\Bin\Data\SIDI\DADOS\DADOS.FDB" "C:\BLESS\Bin\Data\SIDI\DADOS\DADOS.fbk"'

   +
'gbak -user "SYSDBA" -pas "pmpsyfwr" -c -v -se service_mgr -p 8192 "C:\BLESS\Bin\Data\SIDI\DADOS\DADOS.fbk" "C:\BLESS\Bin\Data\SIDI\DADOS\DADOS-R1.FDB"'

   +
'gfix -v -full -user "SYSDBA" -pas "pmpsyfwr" "C:\BLESS\Bin\Data\SIDI\DADOS\DADOS-R1.FDB" '

  +
'gfix -mend -user "SYSDBA" -pas "pmpsyfwr" "C:\BLESS\Bin\Data\SIDI\DADOS\DADOS-R1.FDB" '   +
'pause'), sw_normal);

end;

procedure TForm1.Label1Click(Sender: TObject);
begin
  ShowMessage
    ('Sistema para recuperação de banco de dados   Sistema feito em Delphi 10  Criado por Júlio César Soares de Almeida ');
end;

end.

{start cd C:\Program Files\Firebird\Firebird_3_0
  color 2
gbak -user "SYSDBA" -pas "pmpsyfwr" -b -v -g -se service_mgr "C:\BLESS\Bin\Data\SIDI\DADOS\DADOS.FDB" "C:\BLESS\Bin\Data\SIDI\DADOS\DADOS.fbk"
gbak -user "SYSDBA" -pas "pmpsyfwr" -c -v -se service_mgr -p 8192 "C:\BLESS\Bin\Data\SIDI\DADOS\DADOS.fbk" "C:\BLESS\Bin\Data\SIDI\DADOS\DADOS-R1.FDB"
gfix -v -full -user "SYSDBA" -pas "pmpsyfwr" "C:\BLESS\Bin\Data\SIDI\DADOS\DADOS-R1.FDB"
gfix -mend -user "SYSDBA" -pas "pmpsyfwr" "C:\BLESS\Bin\Data\SIDI\DADOS\DADOS-R1.FDB"
pause}
