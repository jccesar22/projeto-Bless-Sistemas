unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,Registry, ShellAPI, ShlObj ,
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
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure GfixClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);

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
     //  Memo1.Lines.Add(OpenDialog1.FileName);
       Edit1.Text :=  OpenDialog1.FileName;
     end;
      //  OpenDialog1.Filter:= 'Todos os arquivos (*.pdf )';
     //'Todos os arquivos (*. *) | *. * | Arquivos de projeto (* .dpr) | * .dpr | Unidades Pascal (* .pas) | * .pas ';
     //Obs o filtro n�o esta funcionando
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
     WinExec(PAnsiChar('cmd.exe /c quit'), sw_normal);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
         WinExec(PAnsiChar('cmd.exe /c exit C:\Users\pc\eclipse\java-2021-09\eclipse\eclipse.exe'), SW_SHOW);
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
      Form2:= TForm2.Create(Self);
      Form2.ShowModal;
      Form2.Release;

end;

procedure TForm1.GfixClick(Sender: TObject);
var
    banco:String;
    infor:String;

begin
    //infor := 'C:\Users\pc\eclipse\java-2021-09\eclipse\eclipse.exe';
    //Edit1.Text :=  OpenDialog1.FileName;
  banco := Edit1.Text;
   /// banco := PAnsiChar('cmd.exe /c ren'+ banco2);
    WinExec(PAnsiChar('cmd.exe /c C:\Users\pc\eclipse\java-2021-09\eclipse\eclipse.exe'), sw_normal);
   Memo1.Lines.Add(banco);

end;

procedure TForm1.Label1Click(Sender: TObject);
begin
ShowMessage('Sistema para recupera��o de banco de dados   Sistema feito em Delphi 10  Criado por J�lio C�sar Soares de Almeida ');
end;

end.


{para Trocar o nome do banco de dados
ainda em edi��o para futuros teste

procedure Button1Click(Sender: TObject);
var
  vMeuArquivo : String;
begin

  vMeuArquivo := 'C:\meuarquivo.xml';
  ShowMessage(vMeuArquivo);

  // trocando a extens�o para pdf
  vMeuArquivo := ChangeFileExt(vMeuArquivo, '.pdf');
  ShowMessage(vMeuArquivo);
end;}



          //fun��o para poder
         {
         Function ControlFBSvr(bStart: Boolean): Boolean;
var
  szBuff: String;
begin
  with TRegistry.Create do
  begin
    RootKey := HKEY_LOCAL_MACHINE;
    Result := OpenKey('SOFTWARE\Firebird Project\Firebird Server\Instances', False);
    if Result then
    begin
      szBuff := ReadString('DefaultInstance') + 'bin\instsvc.exe';
      Result := FileExists(szBuff);
      if Result then
      case bStart of
      True: ShellExecute(0, nil, PChar(szBuff), '-s start', nil, SW_HIDE);
      False: ShellExecute(0, nil, PChar(szBuff), '-s stop', nil, SW_HIDE);
      end;
      CloseKey;
    end;
    Free;
  end;
end;}