unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, Vcl.StdCtrls, Vcl.Buttons,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, REST.Response.Adapter,
  System.JSON,
  IdServerIOHandler, idLogFile, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, IniFiles,
  REST.JSON,
  Datasnap.DBClient, System.JSON.Readers,
  System.JSON.Types, Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    SpeedButton1: TSpeedButton;
    Memo1: TMemo;
    SpeedButton2: TSpeedButton;
    IdHTTP1: TIdHTTP;
    SpeedButton3: TSpeedButton;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    FDMemTable1: TFDMemTable;
    FDMemTableResumo: TFDMemTable;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Memo2: TMemo;
    Label1: TLabel;
    Memo3: TMemo;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Edit1: TEdit;
    Label2: TLabel;
    Memo4: TMemo;
    SpeedButton8: TSpeedButton;
    Label3: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    Timer1: TTimer;
    DataSource1: TDataSource;
    SpeedButton16: TSpeedButton;
    Memo5: TMemo;
    Label4: TLabel;
   
    ClientDataSet1: TClientDataSet;
    SpeedButton17: TSpeedButton;
    pnlEstoque: TPanel;
    Panel10: TPanel;
    btnEstNovaCompra: TSpeedButton;
    btnEstAdicionarItem: TSpeedButton;
    Label5: TLabel;
    pnlFinanceiro: TPanel;
    Panel12: TPanel;
    btnFinReceber: TSpeedButton;
    btnFinPagar: TSpeedButton;
    SpeedButton20: TSpeedButton;
    Panel13: TPanel;
    btnFinGerenciarContas: TSpeedButton;
    btnFinFluxoDeCaixa: TSpeedButton;
    pnlVendas: TPanel;
    Panel16: TPanel;
    btnVenClienteNovo: TSpeedButton;
    btnVenPdv: TSpeedButton;
    lblVenNomeStatusPDV: TLabel;
    SpeedButton23: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure JsonToDataset(aDataset: TDataSet; aJSON: string);
    function SetupClient: TIdHTTP;
    procedure ParseJSON(JSONText: String);
    procedure listarStatu;
    procedure RemoverLinhasBranco(aLista: TStrings);

    Procedure Listar;
    procedure header;
    procedure SolicitarToken;
    procedure VerificarStatus;
    procedure lerPedidos;
    function ObterDiretorioDoExecutavel: string;
    function getCamposJsonString(JSON, value: String): String;
    procedure teste;
  end;

var
  Form1: TForm1;
  status: string;
  merchantApiHost: string;
  accessToken: string;
  clientId: string;
  clientSecret: string;
  grantType: string;
  lParams: TStringList;
  lResponse: TStringStream;

  FToken: string;
  FExpires: string;
  HttpLog: TIdLogFile;

  vendoPedido: integer;

  idParceiro: string;
  Parceiro, NPEDIDO, IDPEDIDO: string;

  IdHTTPConexao: TIdHTTP;
  JSONRetorno: TStringStream;
  iRespostaIfood: String;
  iJSON: String;

  iJSONStream, AResponseContent: TStringStream;
  JSonValue: TJSonValue;

  sresponse, TIPOPEDIDO: string;
  LJSONValue: TJSonValue;
  LJSONArray: TJSONArray;

implementation

{$R *.dfm}

uses Aut, AuthenticationEndpoints, XSuperObject;

procedure TForm1.Button1Click(Sender: TObject);
begin
  idParceiro := Edit2.Text;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  idParceiro := Edit2.Text;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

  merchantApiHost := 'https://merchant-api.ifood.com.br';

  //clientId := '2d2a29f9-628b-493f-bd7b-276ff590df82';
  clientId    := 'ab8acab6-9d06-4d1b-beb0-03b478b6f851';
 // clientSecret :=
  //  'kuq4pyj4bu8sdehbry0i9dfzqobv5l8rlid2ulyizg7v1tdiotmb19ps92fe92wqeb1zjk9za7mlsqdibiddzc20l0n3izqirzq';

 clientSecret := '12abq3r3urebpmfh15bl9e4u2wk6c9xc75l3gj6b6ik9dtarxp76vgdqfi0mvp7ty0p6mtmty0nxh33hhtwmui9xzpcpkxsqvaqm';


  grantType := 'client_credentials';

  Edit2.Text := 'fc6c4f7d-efe6-446a-b12f-6b6666b0f3b3';
end;

function TForm1.getCamposJsonString(JSON, value: String): String;
var
  LJSONObject: TJSONObject;
  function TrataObjeto(jObj: TJSONObject): string;
  var
    i: integer;
    jPar: TJSONPair;
  begin
    result := '';
    for i := 0 to jObj.Size - 1 do
    begin
      jPar := jObj.Get(i);
      if jPar.JSonValue Is TJSONObject then
        result := TrataObjeto((jPar.JSonValue As TJSONObject))
      else if sametext(trim(jPar.JsonString.value), value) then
      begin
        result := jPar.JSonValue.value;
        break;
      end;
      if result <> '' then
        break;
    end;
  end;

begin
  try
    LJSONObject := nil;
    LJSONObject := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(JSON), 0)
      as TJSONObject;
    result := TrataObjeto(LJSONObject);
  finally
    LJSONObject.Free;
  end;
end;

procedure TForm1.header;
begin
  IdHTTPConexao := TIdHTTP.Create;
  lResponse := TStringStream.Create('');
  JSONRetorno := TStringStream.Create('', TEncoding.UTF8);
  IdHTTPConexao.IOHandler := IdSSLIOHandlerSocketOpenSSL1;
  IdSSLIOHandlerSocketOpenSSL1.SSLOptions.SSLVersions :=
    [sslvTLSv1, sslvTLSv1_1, sslvTLSv1_2];;
  IdHTTPConexao.ProtocolVersion := pv1_1;
  IdHTTPConexao.HandleRedirects := True;

  IdHTTPConexao.Request.Clear;
  IdHTTPConexao.Request.CustomHeaders.Clear;
  IdHTTPConexao.Request.CustomHeaders.AddValue('Authorization',
    'Bearer ' + accessToken);
  IdHTTPConexao.Request.CustomHeaders.AddValue('Content-Type',
    'application/json');
  IdHTTPConexao.Response.CharSet := 'UTF-8';

end;

procedure TForm1.JsonToDataset(aDataset: TDataSet; aJSON: string);
var
  jObj: TJSONArray;
  vConv: TCustomJSONDataSetAdapter;
begin
  if (aJSON = EmptyStr) then
  begin
    Exit;
  end;

  jObj := TJSONObject.ParseJSONValue(aJSON) as TJSONArray;
  vConv := TCustomJSONDataSetAdapter.Create(Nil);

  try
    vConv.DataSet := aDataset;
    vConv.UpdateDataSet(jObj);
  finally
    vConv.Free;
    jObj.Free;
  end;
end;

procedure TForm1.lerPedidos;
//var
  //Json: TRoot;
begin
 /// class delivery
 memo5.Lines.Clear;
 memo5.lines.Add('----------------');
 memo5.lines.Add('Pedido do Ifood');
// Json :=  TRoot.FromJSON(memo3.text);
 memo5.lines.Add('Pedido Nº');
 //memo5.lines.Add(Json.id);
 {memo5.lines.Add('-----------------');
 memo5.lines.Add('-----'+'Delivery'+'--------');
 memo5.lines.Add(json.Delivery.Mode);
 memo5.lines.Add(Json.Delivery.DeliveredBy);
 memo5.lines.Add(DateToStr(Json.Delivery.DeliveryDateTime));
 memo5.lines.Add('-----'+'DeliveryAnddress'+'--------');
 memo5.lines.Add(Json.Delivery.DeliveryAddress.StreetName);
 memo5.lines.Add(Json.Delivery.DeliveryAddress.StreetNumber);
 memo5.lines.Add(Json.Delivery.DeliveryAddress.FormattedAddress);
 memo5.lines.Add(Json.Delivery.DeliveryAddress.Neighborhood);
 memo5.lines.Add(Json.Delivery.DeliveryAddress.PostalCode);
 memo5.lines.Add(Json.Delivery.DeliveryAddress.City);
 memo5.lines.Add(Json.Delivery.DeliveryAddress.State);
 memo5.lines.Add(Json.Delivery.DeliveryAddress.Country);
 memo5.lines.Add(Json.Delivery.DeliveryAddress.Reference);
 memo5.lines.Add(Json.OrderType);
 memo5.lines.Add(Json.OrderTiming);
 memo5.lines.Add(Json.DisplayId);
 memo5.lines.Add(DateToStr(Json.CreatedAt));
 memo5.lines.Add('-----------------------------');
 memo5.lines.Add('---------'+'Merchant'+'----------');
 memo5.lines.Add(Json.Merchant.Id);
 memo5.lines.Add(Json.Merchant.Name);
 memo5.lines.Add('------------------------------');
 memo5.lines.Add('Demais Informações no Pdv');
 }




end;

procedure TForm1.Listar;
var
  orderType: string;
  JSON: string;

  StringJson: TJSonValue;
  StringJsonSONArray: TJSONArray;

  LJsonArr: TJSONArray;
  i: integer;
  ObjetoJsonLinha: TJSONObject;
begin
  try

    header;

    try
      IdHTTPConexao.Get(merchantApiHost + '/order/v1.0/events:polling/',
        lResponse);
      lResponse.Position := 0;
      Memo2.Lines.LoadFromStream(lResponse);

      sresponse := Memo2.Text;
      // memo2.Lines.Clear;
      Memo2.Lines.add('------------------------------');
      Memo2.Lines.add(sresponse);
      Memo2.Lines.add('------------------------------');

      JSonValue := TJSONObject.ParseJSONValue(sresponse);

      LJSONArray := TJSONObject.ParseJSONValue(sresponse) as TJSONArray;
      try
        for LJSONValue in LJSONArray do

          TIPOPEDIDO := LJSONValue.GetValue<string>('code');
        NPEDIDO := LJSONValue.GetValue<string>('orderId');

      finally
        LJSONArray.Free;
      end;

      if vendoPedido = 1 then
      begin

      end
      else
      begin

        if TIPOPEDIDO = 'PLC' then
        BEGIN
          Application.MessageBox(PWideChar('Atenção! Chegou Pedido no iFood. '),
            'Aviso', MB_OK + MB_ICONWARNING);
          If Application.MessageBox('Deseja Ver o Pedido ?', 'Confirmação',
            mb_yesno + mb_iconquestion) = idyes then
          begin
            Edit1.Text := NPEDIDO;
            vendoPedido := 1;
            try

              try

                IdHTTPConexao.Get(merchantApiHost + '/order/v1.0/orders/' +
                  NPEDIDO, lResponse);
                lResponse.Position := 0;

                Memo3.Lines.LoadFromStream(lResponse);
                sresponse := Memo3.Text;

                Memo3.Lines.Clear;
                Memo3.Lines.add('-----------------------------');
                Memo3.Lines.add('Ordem do Pedido: ' + NPEDIDO);
                Memo3.Lines.add('-----------------------------');
                // memo3.lines.add(sresponse);

                Memo3.Lines.add('-----------------------------');
                Memo3.Lines.add('Fim do Pedido: ' + NPEDIDO);
                Memo3.Lines.add('-----------------------------');

              except
                on e: EIdHTTPProtocolException do
                begin
                  if (e.ErrorCode <> 200) or (e.ErrorCode <> 201) then
                  begin
                    Application.MessageBox
                      (PWideChar
                      ('Atenção! Ocorreu ao Listar Itens Pedido no iFood. ' +
                      e.ErrorMessage), 'Aviso', MB_OK + MB_ICONWARNING);
                    Exit;
                  end;
                end;

              end;

            finally
              IdHTTPConexao.Free;
              JSONRetorno.Free;
            end;

          end
          else
          begin
            IdHTTPConexao.Free;
            JSONRetorno.Free;
          end;
        END;
      END;

    except
      on e: EIdHTTPProtocolException do
      begin
        if (e.ErrorCode <> 200) or (e.ErrorCode <> 201) then
        begin
          Application.MessageBox
            (PWideChar('Atenção! Ocorreu ao Cadastrar Produto no iFood. ' +
            e.ErrorMessage), 'Aviso', MB_OK + MB_ICONWARNING);
          Exit;
        end;
      end;

    end;

  finally

  end;
end;

procedure TForm1.listarStatu;
var
  LJSONValue: TJSonValue;
  LJSONArray: TJSONArray;
begin
  LJSONArray := TJSONObject.ParseJSONValue(status) as TJSONArray;
  try
    for LJSONValue in LJSONArray do
      status := LJSONValue.GetValue<string>('state');
  finally
    LJSONArray.Free;
  end;
end;

function TForm1.ObterDiretorioDoExecutavel: string;
begin
  result := ExtractFilePath(Application.ExeName);
end;

procedure TForm1.ParseJSON(JSONText: String);
var
  js: TJSONObject;
  jDadosPedido: TJSONObject;
  jFormapagto: TJSONObject;
  IDFormapagto: string;
  jArrFormapagto: TJSONArray;
  iter: integer;
begin
  js := TJSONObject(TJSONObject.ParseJSONValue(JSONText));
  if js <> nil then
  begin
    jDadosPedido := TJSONObject(js.Values['validations']);
    if jDadosPedido <> nil then
    begin
      jArrFormapagto := TJSONArray(jDadosPedido.Values['state']);
      // for iter := 0 to jArrFormapagto.Count-1 do
      // begin
      // jFormapagto:=TJSONObject(jArrFormapagto.Items[iter]);
      // IDFormapagto:=jFormapagto.Values['ID'].Value;
      // end;

    end;
    js := nil;
  end;
end;

procedure TForm1.RemoverLinhasBranco(aLista: TStrings);
var
  i: integer;
begin
  for i := aLista.Count downto 0 do
    if (trim(aLista[i]) = '') then
    begin
      aLista.Delete(i);
    end;
end;

function TForm1.SetupClient: TIdHTTP;
begin
  result := TIdHTTP.Create(nil);
  result.ConnectTimeout := 2000;
  result.IOHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);

  with TIdSSLIOHandlerSocketOpenSSL(result.IOHandler).SSLOptions do
  begin
    Mode := sslmUnassigned;
    SSLVersions := [sslvSSLv3];
  end;

  with result do
  begin
    Request.CustomHeaders.Values['Content-Type'] := 'application/json; ';
    Request.ContentType := 'application/json';
    Request.CharSet := 'utf-8';
    Request.UserAgent :=
      'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; Acoo Browser; GTB5; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; Maxthon; InfoPath.1; .NET CLR 3.5.30729; .NET CLR 3.0.30618)';
    HandleRedirects := True;
    HTTPOptions := [hoKeepOrigProtocol, hoInProcessAuth];
  end;

{$IFDEF DEBUG}
  result.Intercept := HttpLog;
{$ENDIF}
end;

procedure TForm1.SolicitarToken;
begin
  lParams := TStringList.Create;
  lResponse := TStringStream.Create('');
  IdHTTP1.IOHandler := IdSSLIOHandlerSocketOpenSSL1;
  IdSSLIOHandlerSocketOpenSSL1.SSLOptions.SSLVersions :=
    [sslvTLSv1, sslvTLSv1_1, sslvTLSv1_2];;
  IdHTTP1.ProtocolVersion := pv1_1;
  IdHTTP1.HandleRedirects := True;
  try
    IdHTTP1.POST(merchantApiHost + '/authentication/v1.0/oauth/token?grantType='
      + grantType + '&clientId=' + clientId + '&clientSecret=' + clientSecret,
      lParams, lResponse);
    { Exemplo de uso do response : carregar o conteúdo num RichEdit : }
    lResponse.Position := 0;
    Memo1.Lines.LoadFromStream(lResponse);
    sresponse := Memo1.Text;
    JSonValue := TJSONObject.ParseJSONValue(sresponse);

    accessToken := JSonValue.GetValue<string>('accessToken');
    FExpires := JSonValue.GetValue<string>('expiresIn');

    Memo1.Lines.add('Token');
    Memo1.Lines.add(accessToken);
  finally
    lParams.Free();
    lResponse.Free();
  end;
end;

procedure TForm1.SpeedButton10Click(Sender: TObject);

begin
  header;
  vendoPedido := 0;
  try

    try
      IdHTTPConexao.POST(merchantApiHost + '/order/v1.0/orders/' + Edit1.Text +
        '/requestCancellation', lResponse);
      lResponse.Position := 0;
      Memo3.Lines.LoadFromStream(lResponse);

      sresponse := Memo3.Text;

      Memo3.Lines.add('------------------------------');
      Memo3.Lines.add('PEDIDO RECUSADO');
      Memo3.Lines.add('------------------------------');
      Memo3.Lines.add(sresponse);

    except
      on e: EIdHTTPProtocolException do
      begin
        if (e.ErrorCode <> 200) or (e.ErrorCode <> 201) then
        begin
          Application.MessageBox
            (PWideChar('Atenção! Ocorreu ao aceitar o pedido no iFood. ' +
            e.ErrorMessage), 'Aviso', MB_OK + MB_ICONWARNING);
          Exit;
        end;
      end;

    end;

  finally
    IdHTTPConexao.Free;
    JSONRetorno.Free;
  end;
end;

procedure TForm1.SpeedButton11Click(Sender: TObject);

begin
  header;
  try

    try
      IdHTTPConexao.POST(merchantApiHost + '/order/v1.0/orders/' + Edit1.Text +
        '/startPreparation', lResponse);
      lResponse.Position := 0;
      Memo3.Lines.LoadFromStream(lResponse);

      sresponse := Memo3.Text;

      Memo3.Lines.add('------------------------------');
      Memo3.Lines.add('PEDIDO Sendo Preparado');
      Memo3.Lines.add('------------------------------');
      Memo3.Lines.add(sresponse);

    except
      on e: EIdHTTPProtocolException do
      begin
        if (e.ErrorCode <> 200) or (e.ErrorCode <> 201) then
        begin
          Application.MessageBox
            (PWideChar('Atenção! Ocorreu ao aceitar o pedido no iFood. ' +
            e.ErrorMessage), 'Aviso', MB_OK + MB_ICONWARNING);
          Exit;
        end;
      end;

    end;

  finally
    IdHTTPConexao.Free;
    JSONRetorno.Free;
  end;
end;

procedure TForm1.SpeedButton12Click(Sender: TObject);
begin
  header;
  try
    try
      IdHTTPConexao.POST(merchantApiHost + '/order/v1.0/orders/' + Edit1.Text +
        '/readyToPickup', lResponse);
      lResponse.Position := 0;
      Memo3.Lines.LoadFromStream(lResponse);

      sresponse := Memo3.Text;

      Memo3.Lines.add('------------------------------');
      Memo3.Lines.add('PEDIDO PRONTO PARA RETIRAR');
      Memo3.Lines.add('------------------------------');
      Memo3.Lines.add(sresponse);
    except
      on e: EIdHTTPProtocolException do
      begin
        if (e.ErrorCode <> 200) or (e.ErrorCode <> 201) then
        begin
          Application.MessageBox
            (PWideChar('Atenção! Ocorreu ao aceitar o pedido no iFood. ' +
            e.ErrorMessage), 'Aviso', MB_OK + MB_ICONWARNING);
          Exit;
        end;
      end;

    end;

  finally
    IdHTTPConexao.Free;
    JSONRetorno.Free;
  end;
end;

procedure TForm1.SpeedButton13Click(Sender: TObject);

begin
  header;
  try

    try
      IdHTTPConexao.POST(merchantApiHost + '/order/v1.0/orders/' + Edit1.Text +
        '/acceptCancellation', lResponse);
      lResponse.Position := 0;
      Memo3.Lines.LoadFromStream(lResponse);

      sresponse := Memo3.Text;

      Memo3.Lines.add('------------------------------');
      Memo3.Lines.add('CANCELAMENTO DO PEDIDO ACEITO COM SUCESSO');
      Memo3.Lines.add('------------------------------');

    except
      on e: EIdHTTPProtocolException do
      begin
        if (e.ErrorCode <> 200) or (e.ErrorCode <> 201) then
        begin
          Application.MessageBox
            (PWideChar('Atenção! Ocorreu ao aceitar o pedido no iFood. ' +
            e.ErrorMessage), 'Aviso', MB_OK + MB_ICONWARNING);
          Exit;
        end;
      end;

    end;

  finally
    IdHTTPConexao.Free;
    JSONRetorno.Free;
  end;
end;

procedure TForm1.SpeedButton14Click(Sender: TObject);

begin
  header;
  try

    try
      IdHTTPConexao.POST(merchantApiHost + '/order/v1.0/orders/' + Edit1.Text +
        '/denyCancellation', lResponse);
      lResponse.Position := 0;
      Memo3.Lines.LoadFromStream(lResponse);

      sresponse := Memo3.Text;

      Memo3.Lines.add('------------------------------');
      Memo3.Lines.add('CANCELAMENTO DO PEDIDO ACEITO NEGADO');
      Memo3.Lines.add('------------------------------');
      Memo3.Lines.add(sresponse);

    except
      on e: EIdHTTPProtocolException do
      begin
        if (e.ErrorCode <> 200) or (e.ErrorCode <> 201) then
        begin
          Application.MessageBox
            (PWideChar('Atenção! Ocorreu ao aceitar o pedido no iFood. ' +
            e.ErrorMessage), 'Aviso', MB_OK + MB_ICONWARNING);
          Exit;
        end;
      end;

    end;

  finally
    IdHTTPConexao.Free;
    JSONRetorno.Free;
  end;
end;

procedure TForm1.SpeedButton15Click(Sender: TObject);

begin
  header;
  try
    try
      IdHTTPConexao.POST(merchantApiHost + '/order/v1.0/orders/' + Edit1.Text +
        '/dispatch', lResponse);
      lResponse.Position := 0;
      Memo3.Lines.LoadFromStream(lResponse);

      sresponse := Memo3.Text;

      Memo3.Lines.add('------------------------------');
      Memo3.Lines.add('PEDIDO DESPACHADO COM SUCESSO !!');
      Memo3.Lines.add('------------------------------');
      Memo3.Lines.add(sresponse);

    except
      on e: EIdHTTPProtocolException do
      begin
        if (e.ErrorCode <> 200) or (e.ErrorCode <> 201) then
        begin
          Application.MessageBox
            (PWideChar('Atenção! Ocorreu ao aceitar o pedido no iFood. ' +
            e.ErrorMessage), 'Aviso', MB_OK + MB_ICONWARNING);
          Exit;
        end;
      end;

    end;

  finally
    IdHTTPConexao.Free;
    JSONRetorno.Free;
  end;
end;

procedure TForm1.SpeedButton16Click(Sender: TObject);

begin
  lerPedidos;
end;

procedure TForm1.SpeedButton17Click(Sender: TObject);
//var
  //JsonPortal: TJsonIfood;
begin
 memo5.Lines.Clear;
 memo5.lines.Add('----------------');
 memo5.lines.Add('Pedido do Ifood');
 //JsonPortal :=  TJsonIfood.FromJSON(memo3.text);
 memo5.lines.Add('Pedido Nº');
 //memo5.lines.Add(JsonPortal.id);
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
var
  IdHTTPConexao: TIdHTTP;
  JSONRetorno: TStringStream;
begin
  IdHTTPConexao := TIdHTTP.Create;
  IdHTTPConexao.IOHandler := IdSSLIOHandlerSocketOpenSSL1;
  IdSSLIOHandlerSocketOpenSSL1.SSLOptions.SSLVersions :=
    [sslvTLSv1, sslvTLSv1_1, sslvTLSv1_2];;
  IdHTTPConexao.ProtocolVersion := pv1_1;
  IdHTTPConexao.HandleRedirects := True;
  JSONRetorno := TStringStream.Create('', TEncoding.UTF8);
  try
    with IdHTTPConexao do
    begin
      Request.Clear;
      Request.ContentType := 'application/json';
      Request.CharSet := 'UFT-8';
      Request.BasicAuthentication := False;
      Request.CustomHeaders.Clear;
      Request.CustomHeaders.AddValue('Content-Type', 'application/json');
      Request.CustomHeaders.AddValue('Authorization', 'bearer' + accessToken);
      Request.CustomHeaders.AddValue('cache-control', 'no-cache');
      Request.Accept := 'application/json';
      Get(merchantApiHost + '/merchant/v1.0/merchants', JSONRetorno);
    end;

  finally
    IdHTTPConexao.Free;
    JSONRetorno.Free;
  end;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);

begin
  try

    header;

    try
      IdHTTPConexao.Get(merchantApiHost + '/merchant/v1.0/merchants/' +
        idParceiro, lResponse);
      lResponse.Position := 0;
      Memo1.Lines.LoadFromStream(lResponse);

      sresponse := Memo1.Text;
      JSonValue := TJSONObject.ParseJSONValue(sresponse);

      Parceiro := JSonValue.GetValue<string>('corporateName');

      MessageDlg(Parceiro, mtInformation, mbOKCancel, 0);

    except
      on e: EIdHTTPProtocolException do
      begin
        if (e.ErrorCode <> 200) or (e.ErrorCode <> 201) then
        begin
          Application.MessageBox
            (PWideChar('Atenção! Ocorreu ao Cadastrar Produto no iFood. ' +
            e.ErrorMessage), 'Aviso', MB_OK + MB_ICONWARNING);
          Exit;
        end;
      end;

    end;

  finally
    IdHTTPConexao.Free;
    JSONRetorno.Free;
  end;

end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  lParams := TStringList.Create;
  lResponse := TStringStream.Create('');
  IdHTTP1.IOHandler := IdSSLIOHandlerSocketOpenSSL1;
  IdSSLIOHandlerSocketOpenSSL1.SSLOptions.SSLVersions :=
    [sslvTLSv1, sslvTLSv1_1, sslvTLSv1_2];;
  IdHTTP1.ProtocolVersion := pv1_1;
  IdHTTP1.HandleRedirects := True;
  try
    IdHTTP1.POST(merchantApiHost + '/authentication/v1.0/oauth/token?grantType='
      + grantType + '&clientId=' + clientId + '&clientSecret=' + clientSecret,
      lParams, lResponse);

    { Exemplo de uso do response : carregar o conteúdo num RichEdit : }
    lResponse.Position := 0;
    Memo1.Lines.LoadFromStream(lResponse);
    sresponse := Memo1.Text;
    JSonValue := TJSONObject.ParseJSONValue(sresponse);

    accessToken := JSonValue.GetValue<string>('accessToken');
    FExpires := JSonValue.GetValue<string>('expiresIn');

    Memo1.Lines.add('Token');
    Memo1.Lines.add(accessToken);
  finally
    lParams.Free();
    lResponse.Free();
  end;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);

begin
  header;
  try

    try
      IdHTTPConexao.Get(merchantApiHost + '/merchant/v1.0/merchants',
        lResponse);
      lResponse.Position := 0;
      Memo1.Lines.LoadFromStream(lResponse);

      sresponse := Memo1.Text;
      JSonValue := TJSONObject.ParseJSONValue(sresponse);

    except
      on e: EIdHTTPProtocolException do
      begin
        if (e.ErrorCode <> 200) or (e.ErrorCode <> 201) then
        begin
          Application.MessageBox
            (PWideChar('Atenção! Ocorreu ao Cadastrar Produto no iFood. ' +
            e.ErrorMessage), 'Aviso', MB_OK + MB_ICONWARNING);
          Exit;
        end;
      end;

    end;

  finally
    IdHTTPConexao.Free;
    JSONRetorno.Free;
  end;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
  try
    header;

    try
      IdHTTPConexao.Get(merchantApiHost + '/merchant/v1.0/merchants/' +
        idParceiro + '/status', lResponse);

      lResponse.Position := 0;
      Memo1.Lines.LoadFromStream(lResponse);

      RemoverLinhasBranco(Memo1.Lines);
      status := Memo1.Text;

      listarStatu;

      if status = 'ok' then
      begin
        MessageDlg(status, mtInformation, mbOKCancel, 0);
      end
      else
      begin
        MessageDlg('Loja Fechada', mtInformation, mbOKCancel, 0);
      end;

    except
      on e: EIdHTTPProtocolException do
      begin
        if (e.ErrorCode <> 200) or (e.ErrorCode <> 201) then
        begin
          Application.MessageBox
            (PWideChar('Atenção! Ocorreu ao Cadastrar Produto no iFood. ' +
            e.ErrorMessage), 'Aviso', MB_OK + MB_ICONWARNING);
          Exit;
        end;
      end;

    end;

  finally
    IdHTTPConexao.Free;
    JSONRetorno.Free;
  end;

end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
var
  ArquivoINI: TIniFile;
begin
  header;
  try
    try
      IdHTTPConexao.Get(merchantApiHost + '/order/v1.0/events:polling/',
        lResponse);
      lResponse.Position := 0;
      Memo2.Lines.LoadFromStream(lResponse);

      sresponse := Memo2.Text;

      Memo2.Lines.add('------------------------------');
      Memo2.Lines.add(sresponse);
      Memo2.Lines.add('------------------------------');

      if sresponse <> '' then
      begin
        LJSONArray := TJSONObject.ParseJSONValue(sresponse) as TJSONArray;
        try
          for LJSONValue in LJSONArray do

            TIPOPEDIDO := LJSONValue.GetValue<string>('code');
          NPEDIDO := LJSONValue.GetValue<string>('orderId');

        finally
          LJSONArray.Free;
        end;
      end;

      if TIPOPEDIDO = 'PLC' then
      BEGIN
        Application.MessageBox(PWideChar('Atenção! Chegou Pedido no iFood. '),
          'Aviso', MB_OK + MB_ICONWARNING);
        If Application.MessageBox('Deseja Ver o Pedido ?', 'Confirmação',
          mb_yesno + mb_iconquestion) = idyes then
        begin
          Edit1.Text := NPEDIDO;
          try

            try
              IdHTTPConexao.Get(merchantApiHost + '/order/v1.0/orders/' +
                NPEDIDO, lResponse);
              lResponse.Position := 0;
              Memo3.Lines.LoadFromStream(lResponse);

              sresponse := Memo3.Text;
              Memo3.Lines.Clear;
              Memo3.Lines.add(sresponse);
            except
              on e: EIdHTTPProtocolException do
              begin
                if (e.ErrorCode <> 200) or (e.ErrorCode <> 201) then
                begin
                  Application.MessageBox
                    (PWideChar
                    ('Atenção! Ocorreu ao Listar Itens Pedido no iFood. ' +
                    e.ErrorMessage), 'Aviso', MB_OK + MB_ICONWARNING);
                  Exit;
                end;
              end;

            end;

          finally
            IdHTTPConexao.Free;
            JSONRetorno.Free;
          end;

        end
        else
        begin
          IdHTTPConexao.Free;
          JSONRetorno.Free;
        end;
      END;

    except
      on e: EIdHTTPProtocolException do
      begin
        if (e.ErrorCode <> 200) or (e.ErrorCode <> 201) then
        begin
          Application.MessageBox
            (PWideChar('Atenção! Ocorreu ao Listar o Pedido no iFood. ' +
            e.ErrorMessage), 'Aviso', MB_OK + MB_ICONWARNING);
          Exit;
        end;
      end;

    end;

  finally
  end;

end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
var
  JSON: string;

begin
  header;
  // metodo ok
  try

    try
      IdHTTPConexao.Get(merchantApiHost + '/order/v1.0/orders/' + Edit1.Text,
        lResponse);
      lResponse.Position := 0;
      Memo3.Lines.LoadFromStream(lResponse);

      sresponse := Memo3.Text;
      Memo3.Lines.Clear;
      Memo3.Lines.add(sresponse);

    except
      on e: EIdHTTPProtocolException do
      begin
        if (e.ErrorCode <> 200) or (e.ErrorCode <> 201) then
        begin
          Application.MessageBox
            (PWideChar('Atenção! Ocorreu ao Cadastrar Produto no iFood. ' +
            e.ErrorMessage), 'Aviso', MB_OK + MB_ICONWARNING);
          Exit;
        end;
      end;

    end;

  finally
    IdHTTPConexao.Free;
    JSONRetorno.Free;
  end;

end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
var
  IdHTTPConexao: TIdHTTP;
  JSONRetorno: TStringStream;
  iRespostaIfood: String;
  iJSON: String;
  iJSONStream, AResponseContent: TStringStream;
  JSonValue: TJSonValue;

  sresponse: string;
begin
  IdHTTPConexao := TIdHTTP.Create;
  lResponse := TStringStream.Create('');
  JSONRetorno := TStringStream.Create('', TEncoding.UTF8);
  IdHTTPConexao.IOHandler := IdSSLIOHandlerSocketOpenSSL1;
  IdSSLIOHandlerSocketOpenSSL1.SSLOptions.SSLVersions :=
    [sslvTLSv1, sslvTLSv1_1, sslvTLSv1_2];;
  IdHTTPConexao.ProtocolVersion := pv1_1;
  IdHTTPConexao.HandleRedirects := True;
  try

    IdHTTPConexao.Request.Clear;
    IdHTTPConexao.Request.CustomHeaders.Clear;
    IdHTTPConexao.Request.CustomHeaders.AddValue('Authorization',
      'Bearer ' + accessToken);
    IdHTTPConexao.Request.CustomHeaders.AddValue('Content-Type',
      'application/json');
    IdHTTPConexao.Response.CharSet := 'UTF-8';

    try
      IdHTTPConexao.Get(merchantApiHost + '/catalog/v1.0/merchants/' +
        idParceiro + '/products?page=1&limit=200', lResponse);
      lResponse.Position := 0;
      Memo4.Lines.LoadFromStream(lResponse);

      sresponse := Memo4.Text;
      Memo4.Lines.Clear;
      Memo4.Lines.add(sresponse);
      JSonValue := TJSONObject.ParseJSONValue(sresponse);

    except
      on e: EIdHTTPProtocolException do
      begin
        if (e.ErrorCode <> 200) or (e.ErrorCode <> 201) then
        begin
          Application.MessageBox
            (PWideChar('Atenção! Ocorreu ao Cadastrar Produto no iFood. ' +
            e.ErrorMessage), 'Aviso', MB_OK + MB_ICONWARNING);
          Exit;
        end;
      end;

    end;

  finally
    IdHTTPConexao.Free;
    JSONRetorno.Free;
  end;

end;

procedure TForm1.SpeedButton9Click(Sender: TObject);

begin
  header;
  vendoPedido := 0;
  try

    try
      IdHTTPConexao.POST(merchantApiHost + '/order/v1.0/orders/' + Edit1.Text +
        '/confirm', lResponse);
      lResponse.Position := 0;
      Memo3.Lines.LoadFromStream(lResponse);

      sresponse := Memo3.Text;

      Memo3.Lines.add('------------------------------');
      Memo3.Lines.add('PEDIDO ACEITO');
      Memo3.Lines.add('------------------------------');
      Memo3.Lines.add(sresponse);

    except
      on e: EIdHTTPProtocolException do
      begin
        if (e.ErrorCode <> 200) or (e.ErrorCode <> 201) then
        begin
          Application.MessageBox
            (PWideChar('Atenção! Ocorreu ao aceitar o pedido no iFood. ' +
            e.ErrorMessage), 'Aviso', MB_OK + MB_ICONWARNING);
          Exit;
        end;
      end;

    end;

  finally
    IdHTTPConexao.Free;
    JSONRetorno.Free;
  end;
  header;
  try

    try
      IdHTTPConexao.POST(merchantApiHost + '/order/v1.0/orders/' + Edit1.Text +
        '/startPreparation', lResponse);
      lResponse.Position := 0;
      Memo3.Lines.LoadFromStream(lResponse);

      sresponse := Memo3.Text;

      Memo3.Lines.add('------------------------------');
      Memo3.Lines.add('PEDIDO Sendo Preparado');
      Memo3.Lines.add('------------------------------');
      Memo3.Lines.add(sresponse);

    except
      on e: EIdHTTPProtocolException do
      begin
        if (e.ErrorCode <> 200) or (e.ErrorCode <> 201) then
        begin
          Application.MessageBox
            (PWideChar('Atenção! Ocorreu ao aceitar o pedido no iFood. ' +
            e.ErrorMessage), 'Aviso', MB_OK + MB_ICONWARNING);
          Exit;
        end;
      end;

    end;

  finally
    IdHTTPConexao.Free;
    JSONRetorno.Free;
  end;
end;

procedure TForm1.teste;
begin

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  SolicitarToken;
  VerificarStatus;
  Listar;
end;

procedure TForm1.VerificarStatus;
begin
  try

    header;

    try
      IdHTTPConexao.Get(merchantApiHost + '/merchant/v1.0/merchants/' +
        idParceiro + '/status', lResponse);

      lResponse.Position := 0;
      Memo1.Lines.LoadFromStream(lResponse);

      RemoverLinhasBranco(Memo1.Lines);
      status := Memo1.Text;

      listarStatu;

    except
      on e: EIdHTTPProtocolException do
      begin
        if (e.ErrorCode <> 200) or (e.ErrorCode <> 201) then
        begin
          Application.MessageBox
            (PWideChar('Atenção! Ocorreu ao Ver o status da loja no iFood. ' +
            e.ErrorMessage), 'Aviso', MB_OK + MB_ICONWARNING);
          Exit;
        end;
      end;

    end;

  finally
    IdHTTPConexao.Free;
    JSONRetorno.Free;
  end;
end;

end.
