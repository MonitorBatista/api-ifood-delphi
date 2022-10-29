unit ProApiFood;

interface

uses
  Winapi.Windows, msxml,Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdBaseComponent, IdComponent,System.JSON,
  IdTCPConnection,REST.Client, REST.Json, IdTCPClient, IdHTTP, Vcl.StdCtrls, Data.DB, Datasnap.DBClient,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,REST.Response.Adapter, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack,DelphiZXingQRCode, Vcl.ExtCtrls, IdSSL,
  IdSSLOpenSSL, ACBrBase, ACBrTEFD,uVendaClass, frxClass, ACBrDFeReport,
  ACBrSATExtratoClass,ACBrDelphiZXingQRCode, ACBrSATExtratoReportClass, ACBrSATExtratoFortesFr;

type
  TForm1 = class(TForm)
    Button1: TButton;
    memo1: TMemo;
    IdHTTP1: TIdHTTP;
    Button2: TButton;
    ClientDataSet1: TClientDataSet;
    FDMemTable1: TFDMemTable;
    FDMemTable2: TFDMemTable;
    IdSSLIOHandler1: TIdSSLIOHandlerSocketOpenSSL;
    Button3: TButton;
    Edit1: TEdit;
    Button4: TButton;
    Image1: TImage;
    PaintBox1: TPaintBox;
    cmbEncoding: TComboBox;
    edtQuietZone: TEdit;
    imgQRCode: TImage;
    ACBrTEFD1: TACBrTEFD;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure cmbEncodingChange(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
   QRCodeBitmap: TBitmap;
    { Private declarations }
    PROCEDURE JsonToDataset(aDataset : TDataSet; aJSON : string);
    procedure QRCodeWin(imgQRCode: TImage; texto: string);
    procedure QrCodeToCanvas(AWidth, AHeight: Integer; ATexto:String; ACanvas: TCanvas);

    procedure Update;




  public
    { Public declarations }

    
  end;

var
  Form1: TForm1;
  HTTPClient : string;
  qrcode :string;

implementation

{$R *.dfm}

uses Unit2,FMXDelphiZXingQRCode;

procedure TForm1.Button1Click(Sender: TObject);
var
IdHTTPConexao: TidHTTP;
aArg: TStringList;

FToken  : string;
FExpires: string;
begin
  IdHTTPConexao := TidHTTP.Create;
  aArg          := TStringList.Create;

  {IdHTTPConexao.IOHandler:=IdSSLIOHandler1;
  IdSSLIOHandler1.SSLOptions.Method:=sslvTLSv1;
  IdHTTPConexao.ProtocolVersion:=pv1_1;
  IdHTTPConexao.HandleRedirects := True;

  //IdHTTPConexao.IOHandler := IdSSLIOHandler1;
 // IdHTTPConexao.Request.CustomHeaders.Clear;}
  try
   // aArg.Add('client_id='+'1669449');
   // aArg.Add('client_secret='+'723f3f64-c3cb-4b59-96ba-71e56d1c26ee');
  //  aArg.Add('grant_type=password');
  //  aArg.Add('username='+'joaovitorbatistaaraujo@hotmail.com');
 //   aArg.Add('password='+'Joao1412');
  {  aArg.Add('id='+'pix');
    aArg.Add('name='+'PIX');
    aArg.Add('payment_type_id='+'bank_transfer');
    aArg.Add('status='+'active');
    aArg.Add('secure_thumbnail='+'https://www.mercadopago.com/org-img/MP3/API/logos/pix.gif');
    aArg.Add('thumbnail='+'https://www.mercadopago.com/org-img/MP3/API/logos/pix.gif');
    aArg.Add('deferred_capture='+'does_not_apply');
    aArg.Add('settings='+'[]');
    aArg.Add('additional_info_needed='+'[]');}

   // aArg.Add('requisicao='+'login');


    with IdHTTPConexao do
    begin
      Request.Accept := 'application/json';
     // JsonToDataset(FDMemTable1, Post('https://pos-api.ifood.com.br/oauth/token', aArg));
      // JsonToDataset(FDMemTable1, Post('https://api.mercadopago.com/v1/payments', aArg));
     JsonToDataset(FDMemTable1, Post('http://localhost/wdev-pix/', aArg));

    end;

   // FDMemTable1.First;
    FToken   := FDMemTable1.FieldByName('result').AsString; //<-Guada esse token para as demais requisições

   // FExpires := FDMemTable1.FieldByName('expires_in').AsString;   //<-Deve executar esse método novamente quando expirar
    // FExpires := FDMemTable1.FieldByName('expires_in').AsString;   //<-Deve executar esse método novamente quando expirar

    memo1.Lines.Add(FToken);

  finally
    IdHTTPConexao.Free;
    aArg.Free;
 end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
lParams :TStringList;
lResponse : TStringStream;
  CHAVEPIX : STRING;
  EMPRESA  : STRING;
  CIDADE   : STRING;
  VALOR    : STRING;
  ID       : STRING;
begin
 lParams := TStringList.Create;
 lResponse := TStringStream.Create('');

   memo1.Clear;

 try
  memo1.Clear;
  lParams.Add('filt=all');
  lParams.Add('p=balaio%20tecnologico');
  lParams.Add('Pix:ALL');
  lParams.Add('chavePix:04663037267');
  lParams.Add('EmpPix:SUGIEE');
  lParams.Add('CityPix:MIRASSOL');
  lParams.Add('ValPix:10.00');
  lParams.Add('idPix:SUGIEE1');
  CHAVEPIX := '04663037267';
  EMPRESA  := 'SUHEIE';
  CIDADE   := 'MIRASSOL';
  VALOR    := '0.01';
  ID       := 'SUHEIE';

  idHttp1.POST('http://api.devs23.com.br/wdev-pix/?Pix=all&chavePix='+CHAVEPIX+'&EmpPix='+EMPRESA+'&CityPix='+CIDADE+'&ValPix='+VALOR+'&idPix='+ID+'', lParams, lResponse);

 { Exemplo de uso do response : carregar o conteúdo num RichEdit : }
  lResponse.Position := 0;
  memo1.Lines.LoadFromStream(lResponse);


 finally
  lParams.Free();
  lResponse.Free();
 end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  lHTTP: TIdHTTP;
  lParamList: TStringList;
begin
   lParamList := TStringList.Create;
  lParamList.Add('requisicao='+'pix');
  //lParamList.Add('Desc=''olá joao ');
  lparamList.Add('<desc="Admin"> ');
 //ParamList.Add('<input type=password name=Password value="Password123">');
 //ParamList.Add('<input type=text name=method value="ReportView">');
 //ParamList.Add('<input type=text name=ObjectID value="425">');
 //ParamList.Add('<input type=text name=Par1 value="Category name">');
 //ParamList.Add('<input type=text name=Par2 value="Ref/Name/Descr"> ');
 //ParamList.Add('<input type=text name=Par3 value="false"> ');
 //ParamList.Add('<input type=text name=Par4 value="false"> ');

  lHTTP := TIdHTTP.Create(nil);

  try
  // memo1.Lines.Add(Stringreplace(lParamList));
   memo1.lines.add( lHTTP.Post('http://localhost/wdev-pix/', lParamList));
  finally
    lHTTP.Free;
    lParamList.Free;
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  QRCode: TDelphiZXingQRCode;
  QRCodeBitmap: TBitmap;
  Row, Column: Integer;
begin

  QRCode := TDelphiZXingQRCode.Create;
  QRCodeBitmap := TBitmap.Create;
  try
    QRCode.Encoding  := qrUTF8BOM;
    QRCode.QuietZone := 2;
    QRCode.Data      := widestring(memo1.text);

    QRCodeBitmap.Width  := QRCode.Columns;
    QRCodeBitmap.Height := QRCode.Rows;

    for Row := 0 to QRCode.Rows - 1 do
    begin
      for Column := 0 to QRCode.Columns - 1 do
      begin
        if (QRCode.IsBlack[Row, Column]) then
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clBlack
        else
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clWhite;
      end;
    end;

    imgQRCode.Picture.Bitmap.Assign(QRCodeBitmap);
  finally
    QRCode.Free;
    QRCodeBitmap.Free;
  end;
end;

procedure TForm1.cmbEncodingChange(Sender: TObject);
begin
 Update
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 QRCodeBitmap := TBitmap.Create;
  Update;
end;

procedure TForm1.JsonToDataset(aDataset: TDataSet; aJSON: string);
var
  JObj: TJSONArray;
  vConv : TCustomJSONDataSetAdapter;
begin
  if (aJSON = EmptyStr) then
  begin
    Exit;
  end;

  JObj := TJSONObject.ParseJSONValue(aJSON) as TJSONArray;
  vConv := TCustomJSONDataSetAdapter.Create(Nil);

  try
    vConv.Dataset := aDataset;
    vConv.UpdateDataSet(JObj);
  finally
    vConv.Free;
    JObj.Free;
  end;
end;
procedure TForm1.PaintBox1Paint(Sender: TObject);
var
  Scale: Double;
begin
 PaintBox1.Canvas.Brush.Color := clWhite;
  PaintBox1.Canvas.FillRect(Rect(0, 0, PaintBox1.Width, PaintBox1.Height));
  if ((QRCodeBitmap.Width > 0) and (QRCodeBitmap.Height > 0)) then
  begin
    if (PaintBox1.Width < PaintBox1.Height) then
    begin
      Scale := PaintBox1.Width / QRCodeBitmap.Width;
    end else
    begin
      Scale := PaintBox1.Height / QRCodeBitmap.Height;
    end;
    PaintBox1.Canvas.StretchDraw(Rect(0, 0, Trunc(Scale * QRCodeBitmap.Width), Trunc(Scale * QRCodeBitmap.Height)), QRCodeBitmap);
  end;
end;

procedure TForm1.QrCodeToCanvas(AWidth, AHeight: Integer; ATexto: String;
  ACanvas: TCanvas);
  var
bitmap: TBitmap;
qr: TDelphiZXingQRCode;
r: Integer;
c: Integer;
scala: Double;
begin

end;

procedure TForm1.QRCodeWin(imgQRCode: TImage; texto: string);
var
  QRCode: TDelphiZXingQRCode;
  Row, Column: Integer;
begin
  QRCode := TDelphiZXingQRCode.Create;
  try
    QRCode.Data := memo1.Text;
    QRCode.Encoding := TQRCodeEncoding(cmbEncoding.ItemIndex);
    QRCode.QuietZone := StrToIntDef(edtQuietZone.Text, 4);
    QRCodeBitmap.SetSize(QRCode.Rows, QRCode.Columns);
    for Row := 0 to QRCode.Rows - 1 do
    begin
      for Column := 0 to QRCode.Columns - 1 do
      begin
        if (QRCode.IsBlack[Row, Column]) then
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clBlack;
        end else
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clWhite;
        end;
      end;
    end;
  finally
    QRCode.Free;
  end;
  PaintBox1.Repaint;
end;

procedure TForm1.Update;
var
  QRCode: TDelphiZXingQRCode;
  Row, Column: Integer;
begin
 QRCode := TDelphiZXingQRCode.Create;
  try
    QRCode.Data := memo1.Text;
    QRCode.Encoding := TQRCodeEncoding(cmbEncoding.ItemIndex);
    QRCode.QuietZone := StrToIntDef(edtQuietZone.Text, 4);
    QRCodeBitmap.SetSize(QRCode.Rows, QRCode.Columns);
    for Row := 0 to QRCode.Rows - 1 do
    begin
      for Column := 0 to QRCode.Columns - 1 do
      begin
        if (QRCode.IsBlack[Row, Column]) then
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clBlack;
        end else
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clWhite;
        end;
      end;
    end;
  finally
    QRCode.Free;
  end;
  PaintBox1.Repaint;
end;

end.
