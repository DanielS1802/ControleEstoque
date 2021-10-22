unit UclassLogin;

interface

 type
  TLogin = class
    procedure login;
    procedure imagem;
  end;

implementation

{ TLogin }

uses
Data.SqlExpr, UDM, UfrmLogin, shellapi;

procedure TLogin.imagem;
begin
  ShellExecute(Handle, 'open', 'https://www.instagram.com/victor.industries.ltda/', '', '', 1);
end;

procedure TLogin.login;
var
  Confirm : string;
  Query : TSQLQuery;
begin
  try
   Query := TSQLQuery.Create(nil);
   Query.SQLConnection := DM.Conexao;
   Confirm := 'Select CODFUN from TBLFUN f where f.EMAILFUN = ' + #39 + (frmLogin.edtUser.Text) + #39;
   Confirm := Confirm + ' and f.SENLOGFUN = ' + #39 + (frmLogin.edtSenha.Text) + #39;
   Query.Close;
   Query.SQL.Clear;
   Query.SQL.Add(Confirm);
   Query.Open;
    if Query.Fields[0].AsInteger < 1 then
    begin
     frmLogin.lblError.Caption := 'Nome ou Senha inválidos';
    end;
//    else begin
//   frmCadCli1 := TfrmCadCli1.Create(nil);
//    try
//     frmCadCli1.ShowModal;
//     frmCadCli1.Free;
//     frmCadCli1 := nil;
//    end;
//   end;
 finally
  Query := nil;
 end;
end;

end.
