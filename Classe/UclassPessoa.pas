unit UclassPessoa;

interface

type
  TPessoa = class
  private
    FEmail: String;
    FDataNasc: TDate;
    FCPF: String;
    FNome: String;
    FEndereco: String;
    FCelular: String;
    procedure SetCelular(const Value: String);
    procedure SetCPF(const Value: String);
    procedure SetDataNasc(const Value: TDate);
    procedure SetEmail(const Value: String);
    procedure SetEndereco(const Value: String);
    procedure SetNome(const Value: String);

  public
    constructor Create(Nome : String; CPF : String; DataNasc : TDate; Celular : String; Endereco : String;
    Email : String);

    property Nome : String read FNome write SetNome;
    property CPF : String read FCPF write SetCPF;
    property DataNasc : TDate read FDataNasc write SetDataNasc;
    property Celular : String read FCelular write SetCelular;
    property Endereco : String read FEndereco write SetEndereco;
    property Email : String read FEmail write SetEmail;

    //procedure setValores(Nome : String; CPF : String; DataNasc : TDate; Celular : String; Endereco : String;
    //Email : String);
  end;

implementation

{ TPessoa }

constructor TPessoa.Create(Nome, CPF: String; DataNasc: TDate; Celular,
  Endereco, Email: String);
begin
  SetNome(Nome);
  SetCPF(CPF);
  SetDataNasc(DataNasc);
  SetCelular(Celular);
  SetEndereco(Endereco);
  SetEmail(Email);
end;

procedure TPessoa.SetCelular(const Value: String);
begin
  FCelular := Value;
end;

procedure TPessoa.SetCPF(const Value: String);
begin
  FCPF := Value;
end;

procedure TPessoa.SetDataNasc(const Value: TDate);
begin
  FDataNasc := Value;
end;

procedure TPessoa.SetEmail(const Value: String);
begin
  FEmail := Value;
end;

procedure TPessoa.SetEndereco(const Value: String);
begin
  FEndereco := Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

end.
