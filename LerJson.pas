unit LerJson;

interface

uses
System.Generics.Collections, System.SysUtils;


implementation

type

TPayments = class
  private
    Fname:  string;
    Fcode:  string;
    Fvalue: Extended;
  public
    property name:  string   read Fname  write Fname;
    property code:  string   read Fcode  write Fcode;
    property value: Extended read Fvalue write Fvalue;
  end;
  TArrayPayments = array of TPayments;

TiFoodPedido = class
  private
    Fid:        string;
    Freference: string;
    Fpayments:  TArrayPayments;
  public
    property id:        string           read Fid        write Fid;
    property reference: string           read Freference write Freference;
    property payments:  TArrayPayments   read Fpayments  write Fpayments;
  end;
  TiFoodPedidos = TObjectList<TiFoodPedido>;

constructor TiFoodPedido.Create;
begin

end;

destructor TiFoodPedido.Destrtoy;
begin

end;


end.
