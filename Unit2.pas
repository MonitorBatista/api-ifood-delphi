unit unit2;

interface
uses
    REST.Client, REST.Json, JSON;

type
    TRest = class
    private
      FClient   : TRESTClient;
      FRequest  : TRESTRequest;
      FResponse : TRESTResponse;
      FURL      : String;
    public
      constructor Create;
      destructor Destroy;
      function Result(Recurso: String; Parametros: array of string): String;
    end;

implementation

{ TRest }

constructor TRest.Create;
begin
     Self.FURL := 'http://192.168.1.3/api/v1/';

     Self.FClient   := TRESTClient.Create(nil);
     Self.FRequest  := TRESTRequest.Create(nil);
     Self.FResponse := TRESTResponse.Create(nil);

     Self.FClient.BaseURL := Self.FURL;

     Self.FClient.AutoCreateParams  := True;
     Self.FRequest.AutoCreateParams := True;
     Self.FRequest.HandleRedirects  := True;
     Self.FRequest.Client           := Self.FClient;
     Self.FRequest.Response         := Self.FResponse;
end;

destructor TRest.Destroy;
begin
    Self.FClient.Free;
    Self.FRequest.Free;
    Self.FResponse.Free;
end;

function TRest.Result(Recurso: string; Parametros: array of string): String;
var
     I: Integer;
begin
     for I := 0 to Length(Parametros)-1 do
     begin
          Recurso := Recurso + '/' + Parametros[i];
     end;

     Self.FRequest.Resource := Recurso;
     Self.FRequest.Execute;

     Result := Self.FResponse.JSONText;
end;
end.
