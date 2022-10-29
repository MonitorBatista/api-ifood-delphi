unit ClassIfoodPortal;

interface

uses
  Pkg.Json.DTO, System.Generics.Collections, REST.Json.Types;

{$M+}

type
  TCard = class;
  TCoordinates = class;
  TDeliveryAddress = class;
  TMethods = class;
  TPhone = class;

  TCard = class
  private
    [JSONName('brand')]
    FBrand: string;
  published
    property Brand: string read FBrand write FBrand;
  end;

  TMethods = class
  private
    [JSONName('card')]
    FCard: TCard;
    [JSONName('currency')]
    FCurrency: string;
    [JSONName('method')]
    FMethod: string;
    [JSONName('prepaid')]
    FPrepaId: Boolean;
    [JSONName('type')]
    FType: string;
    [JSONName('value')]
    FValue: Double;
  published
    property Card: TCard read FCard;
    property Currency: string read FCurrency write FCurrency;
    property Method: string read FMethod write FMethod;
    property PrepaId: Boolean read FPrepaId write FPrepaId;
    property &Type: string read FType write FType;
    property Value: Double read FValue write FValue;
  public
    constructor Create;
    destructor Destroy; override;
  end;

  TPayments = class(TJsonDTO)
  private
    [JSONName('methods'), JSONMarshalled(False)]
    FMethodsArray: TArray<TMethods>;
    [GenericListReflect]
    FMethods: TObjectList<TMethods>;
    [JSONName('pending')]
    FPending: Double;
    [JSONName('prepaid')]
    FPrepaId: Integer;
    function GetMethods: TObjectList<TMethods>;
  protected
    function GetAsJson: string; override;
  published
    property Methods: TObjectList<TMethods> read GetMethods;
    property Pending: Double read FPending write FPending;
    property PrepaId: Integer read FPrepaId write FPrepaId;
  public
    destructor Destroy; override;
  end;

  TTotal = class
  private
    [JSONName('additionalFees')]
    FAdditionalFees: Double;
    [JSONName('benefits')]
    FBenefits: Integer;
    [JSONName('deliveryFee')]
    FDeliveryFee: Double;
    [JSONName('orderAmount')]
    FOrderAmount: Double;
    [JSONName('subTotal')]
    FSubTotal: Double;
  published
    property AdditionalFees: Double read FAdditionalFees write FAdditionalFees;
    property Benefits: Integer read FBenefits write FBenefits;
    property DeliveryFee: Double read FDeliveryFee write FDeliveryFee;
    property OrderAmount: Double read FOrderAmount write FOrderAmount;
    property SubTotal: Double read FSubTotal write FSubTotal;
  end;

  TItems = class
  private
    [JSONName('id')]
    FId: string;
    [JSONName('index')]
    FIndex: Integer;
    [JSONName('name')]
    FName: string;
    [JSONName('optionsPrice')]
    FOptionsPrice: Integer;
    [JSONName('price')]
    FPrice: Double;
    [JSONName('quantity')]
    FQuantity: Integer;
    [JSONName('totalPrice')]
    FTotalPrice: Double;
    [JSONName('unit')]
    FUnit: string;
    [JSONName('unitPrice')]
    FUnitPrice: Double;
  published
    property Id: string read FId write FId;
    property Index: Integer read FIndex write FIndex;
    property Name: string read FName write FName;
    property OptionsPrice: Integer read FOptionsPrice write FOptionsPrice;
    property Price: Double read FPrice write FPrice;
    property Quantity: Integer read FQuantity write FQuantity;
    property TotalPrice: Double read FTotalPrice write FTotalPrice;
    property &Unit: string read FUnit write FUnit;
    property UnitPrice: Double read FUnitPrice write FUnitPrice;
  end;

  TPhone = class
  private
    [JSONName('localizer')]
    FLocalizer: string;
    [SuppressZero, JSONName('localizerExpiration')]
    FLocalizerExpiration: TDateTime;
    [JSONName('number')]
    FNumber: string;
  published
    property Localizer: string read FLocalizer write FLocalizer;
    property LocalizerExpiration: TDateTime read FLocalizerExpiration write FLocalizerExpiration;
    property Number: string read FNumber write FNumber;
  end;

  TCustomer = class
  private
    [JSONName('id')]
    FId: string;
    [JSONName('name')]
    FName: string;
    [JSONName('ordersCountOnMerchant')]
    FOrdersCountOnMerchant: Integer;
    [JSONName('phone')]
    FPhone: TPhone;
  published
    property Id: string read FId write FId;
    property Name: string read FName write FName;
    property OrdersCountOnMerchant: Integer read FOrdersCountOnMerchant write FOrdersCountOnMerchant;
    property Phone: TPhone read FPhone;
  public
    constructor Create;
    destructor Destroy; override;
  end;

  TMerchant = class
  private
    [JSONName('id')]
    FId: string;
    [JSONName('name')]
    FName: string;
  published
    property Id: string read FId write FId;
    property Name: string read FName write FName;
  end;

  TCoordinates = class
  private
    [JSONName('latitude')]
    FLatitude: Double;
    [JSONName('longitude')]
    FLongitude: Double;
  published
    property Latitude: Double read FLatitude write FLatitude;
    property Longitude: Double read FLongitude write FLongitude;
  end;

  TDeliveryAddress = class
  private
    [JSONName('city')]
    FCity: string;
    [JSONName('coordinates')]
    FCoordinates: TCoordinates;
    [JSONName('country')]
    FCountry: string;
    [JSONName('formattedAddress')]
    FFormattedAddress: string;
    [JSONName('neighborhood')]
    FNeighborhood: string;
    [JSONName('postalCode')]
    FPostalCode: string;
    [JSONName('state')]
    FState: string;
    [JSONName('streetName')]
    FStreetName: string;
    [JSONName('streetNumber')]
    FStreetNumber: string;
  published
    property City: string read FCity write FCity;
    property Coordinates: TCoordinates read FCoordinates;
    property Country: string read FCountry write FCountry;
    property FormattedAddress: string read FFormattedAddress write FFormattedAddress;
    property Neighborhood: string read FNeighborhood write FNeighborhood;
    property PostalCode: string read FPostalCode write FPostalCode;
    property State: string read FState write FState;
    property StreetName: string read FStreetName write FStreetName;
    property StreetNumber: string read FStreetNumber write FStreetNumber;
  public
    constructor Create;
    destructor Destroy; override;
  end;

  TDelivery = class
  private
    [JSONName('deliveredBy')]
    FDeliveredBy: string;
    [JSONName('deliveryAddress')]
    FDeliveryAddress: TDeliveryAddress;
    [SuppressZero, JSONName('deliveryDateTime')]
    FDeliveryDateTime: TDateTime;
    [JSONName('mode')]
    FMode: string;
  published
    property DeliveredBy: string read FDeliveredBy write FDeliveredBy;
    property DeliveryAddress: TDeliveryAddress read FDeliveryAddress;
    property DeliveryDateTime: TDateTime read FDeliveryDateTime write FDeliveryDateTime;
    property Mode: string read FMode write FMode;
  public
    constructor Create;
    destructor Destroy; override;
  end;

  TJsonIfood = class(TJsonDTO)
  private
    [SuppressZero, JSONName('createdAt')]
    FCreatedAt: TDateTime;
    [JSONName('customer')]
    FCustomer: TCustomer;
    [JSONName('delivery')]
    FDelivery: TDelivery;
    [JSONName('displayId')]
    FDisplayId: string;
    [JSONName('id')]
    FId: string;
    [JSONName('isTest')]
    FIsTest: Boolean;
    [JSONName('items'), JSONMarshalled(False)]
    FItemsArray: TArray<TItems>;
    [GenericListReflect]
    FItems: TObjectList<TItems>;
    [JSONName('merchant')]
    FMerchant: TMerchant;
    [JSONName('orderTiming')]
    FOrderTiming: string;
    [JSONName('orderType')]
    FOrderType: string;
    [JSONName('payments')]
    FPayments: TPayments;
    [SuppressZero, JSONName('preparationStartDateTime')]
    FPreparationStartDateTime: TDateTime;
    [JSONName('salesChannel')]
    FSalesChannel: string;
    [JSONName('total')]
    FTotal: TTotal;
    function GetItems: TObjectList<TItems>;
  protected
    function GetAsJson: string; override;
  published
    property CreatedAt: TDateTime read FCreatedAt write FCreatedAt;
    property Customer: TCustomer read FCustomer;
    property Delivery: TDelivery read FDelivery;
    property DisplayId: string read FDisplayId write FDisplayId;
    property Id: string read FId write FId;
    property IsTest: Boolean read FIsTest write FIsTest;
    property Items: TObjectList<TItems> read GetItems;
    property Merchant: TMerchant read FMerchant;
    property OrderTiming: string read FOrderTiming write FOrderTiming;
    property OrderType: string read FOrderType write FOrderType;
    property Payments: TPayments read FPayments;
    property PreparationStartDateTime: TDateTime read FPreparationStartDateTime write FPreparationStartDateTime;
    property SalesChannel: string read FSalesChannel write FSalesChannel;
    property Total: TTotal read FTotal;
  public
    constructor Create; override;
    destructor Destroy; override;
  end;

implementation

{ TMethods }

constructor TMethods.Create;
begin
  inherited;
  FCard := TCard.Create;
end;

destructor TMethods.Destroy;
begin
  FCard.Free;
  inherited;
end;

{ TPayments }

destructor TPayments.Destroy;
begin
  GetMethods.Free;
  inherited;
end;

function TPayments.GetMethods: TObjectList<TMethods>;
begin
  Result := ObjectList<TMethods>(FMethods, FMethodsArray);
end;

function TPayments.GetAsJson: string;
begin
  RefreshArray<TMethods>(FMethods, FMethodsArray);
  Result := inherited;
end;

{ TCustomer }

constructor TCustomer.Create;
begin
  inherited;
  FPhone := TPhone.Create;
end;

destructor TCustomer.Destroy;
begin
  FPhone.Free;
  inherited;
end;

{ TDeliveryAddress }

constructor TDeliveryAddress.Create;
begin
  inherited;
  FCoordinates := TCoordinates.Create;
end;

destructor TDeliveryAddress.Destroy;
begin
  FCoordinates.Free;
  inherited;
end;

{ TDelivery }

constructor TDelivery.Create;
begin
  inherited;
  FDeliveryAddress := TDeliveryAddress.Create;
end;

destructor TDelivery.Destroy;
begin
  FDeliveryAddress.Free;
  inherited;
end;

{ TRoot }

constructor TJsonIfood.Create;
begin
  inherited;
  FDelivery := TDelivery.Create;
  FMerchant := TMerchant.Create;
  FCustomer := TCustomer.Create;
  FTotal := TTotal.Create;
  FPayments := TPayments.Create;
end;

destructor TJsonIfood.Destroy;
begin
  FDelivery.Free;
  FMerchant.Free;
  FCustomer.Free;
  FTotal.Free;
  FPayments.Free;
  GetItems.Free;
  inherited;
end;

function TJsonIfood.GetItems: TObjectList<TItems>;
begin
  Result := ObjectList<TItems>(FItems, FItemsArray);
end;

function TJsonIfood.GetAsJson: string;
begin
  RefreshArray<TItems>(FItems, FItemsArray);
  Result := inherited;
end;

end.
