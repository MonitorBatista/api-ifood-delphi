unit AuthenticationEndpoints;

interface

uses
  Classes, IdHTTP, XSuperObject, IdGlobal, Vcl.Dialogs, System.SysUtils;

procedure OauthToken;

implementation

uses Aut, Unit1;

threadvar AccessToken: iSuperObject;

procedure OauthToken;
begin
  try
    AccessToken := Aut.OauthToken;
    form1.memo1.Text := 'Autentica��o Realizada com Sucesso!';
  except
    on E: Exception do
    begin
      form1.memo1.Text := 'Erro na Requisi�o de Autentica��o';
    end;
  end;
end;

end.
