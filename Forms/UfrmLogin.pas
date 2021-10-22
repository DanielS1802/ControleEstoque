unit UfrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxLabel, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, dxGDIPlusClasses, Vcl.ExtCtrls, cxGroupBox;

type
  TfrmLogin = class(TForm)
    edtSenha: TcxTextEdit;
    lblError: TcxLabel;
    btnLogin: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    edtUser: TcxTextEdit;
    Image1: TImage;
    procedure btnLoginClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

uses
  UclassLogin;

{$R *.dfm}

procedure TfrmLogin.btnLoginClick(Sender: TObject);
var
  objLogin : TLogin;

begin
  objLogin := TLogin.Create;
  try
    objLogin.login;
  finally
    objLogin.Free;
  end;
end;

procedure TfrmLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_RETURN then
  btnLogin.Click;
end;

procedure TfrmLogin.Image1Click(Sender: TObject);
var
 objImagem : TLogin;
begin
 objImagem := TLogin.Create;
 try
   objImagem.imagem;
 finally
   objImagem.Free;
 end;
end;

end.
