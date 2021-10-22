program ControleEstoque;

uses
  Vcl.Forms,
  UfrmPrincipal in '..\Forms\UfrmPrincipal.pas' {frmPrincipal},
  UclassPessoa in '..\Classe\UclassPessoa.pas',
  UfrmPadrao in '..\Forms\UfrmPadrao.pas' {frmPadrao},
  UfrmPadraoPesquisa in '..\Forms\UfrmPadraoPesquisa.pas' {frmPadraoPesquisa},
  Estoque in '..\Forms\Estoque.pas' {frmEstoque},
  UclassEstoque in '..\Classe\UclassEstoque.pas',
  UDM in '..\Forms\UDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmEstoque, frmEstoque);
  Application.CreateForm(TfrmPadraoPesquisa, frmPadraoPesquisa);
  Application.CreateForm(TfrmPadrao, frmPadrao);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
