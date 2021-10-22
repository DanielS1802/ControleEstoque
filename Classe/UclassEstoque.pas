unit UclassEstoque;

interface

type
	TMovimentacao = class
  protected
    CodMov : Integer;
    DTMov : TDate;
    QntdMov : Integer;

  public
  	property Codigo : String read getCodMov write setCodMov;
  end;


implementation

end.
