unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,Registry, ShellAPI,
  Vcl.FileCtrl;

type
  TForm4 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    FileListBox1: TFileListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
  {ShellExecute(0, nil, 'cmd.exe', '/C find "320" in.txt > out.txt', nil, SW_HIDE);          }
  WinExec(PAnsiChar('cmd.exe /c Imagens\projeto-javafx-jdbc.pdf find "320" in.txt > out.txt'), SW_HIDE); // Use /c para janela do prompt executar o comando e fechar automaticamente em seguida...         //OU         WinExec(PAnsiChar('cmd.exe /k SEUCOMANDOAQUI'), sw_normal); // Use /k para janela do prompt permanecer aberta..
  Sleep(1000);
  Memo1.Lines.LoadFromFile('out.txt');

  //WinExec(PAnsiChar('cmd.exe /c start eclipse.exe'), sw_normal);
  // Use /c para janela do prompt executar o comando e fechar automaticamente em seguida...
  //OU
  //WinExec(PAnsiChar('cmd.exe /k SEUCOMANDOAQUI'), sw_normal); // Use /k para janela do prompt permanecer aberta..
end;

procedure TForm4.Button3Click(Sender: TObject);
var
  vMeuArquivo : String;
begin
  vMeuArquivo := 'C:\teste\teste.pdf';
  ShowMessage(vMeuArquivo);

  vMeuArquivo := ChangeFileExt(vMeuArquivo, '.jpg');
  ShowMessage(vMeuArquivo);
end;

procedure TForm4.Button6Click(Sender: TObject);
begin
      WinExec(PAnsiChar('cmd.exe /c shutdown -r -t 45'), sw_normal);

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