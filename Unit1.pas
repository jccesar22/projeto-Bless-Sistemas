unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,Registry, ShellAPI, ShlObj ,
  Vcl.FileCtrl, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus,
  Vcl.ComCtrls;

type
  TForm4 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}


procedure TForm4.Button1Click(Sender: TObject);
begin

   if OpenDialog1.Execute() then
     begin
       Memo1.Lines.Add(OpenDialog1.FileName);

     end;
      //  OpenDialog1.Filter:= 'Todos os arquivos (*.pdf )';
     //'Todos os arquivos (*. *) | *. * | Arquivos de projeto (* .dpr) | * .dpr | Unidades Pascal (* .pas) | * .pas ';
     //Obs o filtro não esta funcionando

end;

procedure TForm4.Button2Click(Sender: TObject);
begin
WinExec(PAnsiChar('cmd.exe /c quit'), sw_normal);
end;

procedure TForm4.Button3Click(Sender: TObject);

     var EditCaminho:String;
begin

         WinExec(PAnsiChar('cmd.exe /c exit C:\Users\pc\eclipse\java-2021-09\eclipse\eclipse.exe'), SW_SHOW);
         Sleep(3);

end;

procedure TForm4.Button6Click(Sender: TObject);
begin
      WinExec(PAnsiChar('cmd.exe /c shutdown -r -t 45'), sw_normal);
      Sleep(3);

end;

procedure TForm4.Label1Click(Sender: TObject);
begin
ShowMessage('Sistema para recuperação de banco de dados   Sistema feito em Delphi 10  Criado por Júlio César Soares de Almeida ');
end;

end.


{para Trocar o nome do banco de dados
ainda em edição para futuros teste

procedure Button1Click(Sender: TObject);
var
  vMeuArquivo : String;
begin

  vMeuArquivo := 'C:\meuarquivo.xml';
  ShowMessage(vMeuArquivo);

  // trocando a extensão para pdf
  vMeuArquivo := ChangeFileExt(vMeuArquivo, '.pdf');
  ShowMessage(vMeuArquivo);
end;}



          //função para poder
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