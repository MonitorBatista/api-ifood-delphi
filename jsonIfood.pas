unit JsonObject;

interface

type

HCkJsonObject = Pointer;
HCkDateTime = Pointer;
HCkDtObj = Pointer;
HCkJsonArray = Pointer;
HCkString = Pointer;
HCkHashtable = Pointer;
HCkStringBuilder = Pointer;
HCkStringTable = Pointer;
HCkBinData = Pointer;


function CkJsonObject_Create: HCkJsonObject;  stdcall;
procedure CkJsonObject_Dispose(handle: HCkJsonObject); stdcall;
procedure CkJsonObject_getDebugLogFilePath(objHandle: HCkJsonObject; outPropVal: HCkString);
procedure CkJsonObject_putDebugLogFilePath(objHandle: HCkJsonObject; newPropVal: PWideChar);
function CkJsonObject__debugLogFilePath(objHandle: HCkJsonObject): PWideChar;
procedure CkJsonObject_getDelimiterChar(objHandle: HCkJsonObject; outPropVal: HCkString);
procedure CkJsonObject_putDelimiterChar(objHandle: HCkJsonObject; newPropVal: PWideChar);
function CkJsonObject__delimiterChar(objHandle: HCkJsonObject): PWideChar;
function CkJsonObject_getEmitCompact(objHandle: HCkJsonObject): wordbool;
procedure CkJsonObject_putEmitCompact(objHandle: HCkJsonObject; newPropVal: wordbool);
function CkJsonObject_getEmitCrLf(objHandle: HCkJsonObject): wordbool;
procedure CkJsonObject_putEmitCrLf(objHandle: HCkJsonObject; newPropVal: wordbool);
function CkJsonObject_getI(objHandle: HCkJsonObject): Integer;
procedure CkJsonObject_putI(objHandle: HCkJsonObject; newPropVal: Integer);
function CkJsonObject_getJ(objHandle: HCkJsonObject): Integer;
procedure CkJsonObject_putJ(objHandle: HCkJsonObject; newPropVal: Integer);
function CkJsonObject_getK(objHandle: HCkJsonObject): Integer;
procedure CkJsonObject_putK(objHandle: HCkJsonObject; newPropVal: Integer);
procedure CkJsonObject_getLastErrorHtml(objHandle: HCkJsonObject; outPropVal: HCkString);
function CkJsonObject__lastErrorHtml(objHandle: HCkJsonObject): PWideChar;
procedure CkJsonObject_getLastErrorText(objHandle: HCkJsonObject; outPropVal: HCkString);
function CkJsonObject__lastErrorText(objHandle: HCkJsonObject): PWideChar;
procedure CkJsonObject_getLastErrorXml(objHandle: HCkJsonObject; outPropVal: HCkString);
function CkJsonObject__lastErrorXml(objHandle: HCkJsonObject): PWideChar;
function CkJsonObject_getLastMethodSuccess(objHandle: HCkJsonObject): wordbool;
procedure CkJsonObject_putLastMethodSuccess(objHandle: HCkJsonObject; newPropVal: wordbool);
function CkJsonObject_getLowerCaseNames(objHandle: HCkJsonObject): wordbool;
procedure CkJsonObject_putLowerCaseNames(objHandle: HCkJsonObject; newPropVal: wordbool);
procedure CkJsonObject_getPathPrefix(objHandle: HCkJsonObject; outPropVal: HCkString);
procedure CkJsonObject_putPathPrefix(objHandle: HCkJsonObject; newPropVal: PWideChar);
function CkJsonObject__pathPrefix(objHandle: HCkJsonObject): PWideChar;
function CkJsonObject_getSize(objHandle: HCkJsonObject): Integer;
procedure CkJsonObject_getUncommonOptions(objHandle: HCkJsonObject; outPropVal: HCkString);
procedure CkJsonObject_putUncommonOptions(objHandle: HCkJsonObject; newPropVal: PWideChar);
function CkJsonObject__uncommonOptions(objHandle: HCkJsonObject): PWideChar;
function CkJsonObject_getVerboseLogging(objHandle: HCkJsonObject): wordbool;
procedure CkJsonObject_putVerboseLogging(objHandle: HCkJsonObject; newPropVal: wordbool);
procedure CkJsonObject_getVersion(objHandle: HCkJsonObject; outPropVal: HCkString);
function CkJsonObject__version(objHandle: HCkJsonObject): PWideChar;
function CkJsonObject_AddArrayAt(objHandle: HCkJsonObject; index: Integer; name: PWideChar): wordbool;
function CkJsonObject_AddArrayCopyAt(objHandle: HCkJsonObject; index: Integer; name: PWideChar; jarr: HCkJsonArray): wordbool;
function CkJsonObject_AddBoolAt(objHandle: HCkJsonObject; index: Integer; name: PWideChar; value: wordbool): wordbool;
function CkJsonObject_AddIntAt(objHandle: HCkJsonObject; index: Integer; name: PWideChar; value: Integer): wordbool;
function CkJsonObject_AddNullAt(objHandle: HCkJsonObject; index: Integer; name: PWideChar): wordbool;
function CkJsonObject_AddNumberAt(objHandle: HCkJsonObject; index: Integer; name: PWideChar; numericStr: PWideChar): wordbool;
function CkJsonObject_AddObjectAt(objHandle: HCkJsonObject; index: Integer; name: PWideChar): wordbool;
function CkJsonObject_AddObjectCopyAt(objHandle: HCkJsonObject; index: Integer; name: PWideChar; jsonObj: HCkJsonObject): wordbool;
function CkJsonObject_AddStringAt(objHandle: HCkJsonObject; index: Integer; name: PWideChar; value: PWideChar): wordbool;
function CkJsonObject_AppendArray(objHandle: HCkJsonObject; name: PWideChar): HCkJsonArray;
function CkJsonObject_AppendArrayCopy(objHandle: HCkJsonObject; name: PWideChar; jarr: HCkJsonArray): wordbool;
function CkJsonObject_AppendBool(objHandle: HCkJsonObject; name: PWideChar; value: wordbool): wordbool;
function CkJsonObject_AppendInt(objHandle: HCkJsonObject; name: PWideChar; value: Integer): wordbool;
function CkJsonObject_AppendObject(objHandle: HCkJsonObject; name: PWideChar): HCkJsonObject;
function CkJsonObject_AppendObjectCopy(objHandle: HCkJsonObject; name: PWideChar; jsonObj: HCkJsonObject): wordbool;
function CkJsonObject_AppendString(objHandle: HCkJsonObject; name: PWideChar; value: PWideChar): wordbool;
function CkJsonObject_AppendStringArray(objHandle: HCkJsonObject; name: PWideChar; values: HCkStringTable): wordbool;
function CkJsonObject_ArrayAt(objHandle: HCkJsonObject; index: Integer): HCkJsonArray;
function CkJsonObject_ArrayOf(objHandle: HCkJsonObject; jsonPath: PWideChar): HCkJsonArray;
function CkJsonObject_BoolAt(objHandle: HCkJsonObject; index: Integer): wordbool;
function CkJsonObject_BoolOf(objHandle: HCkJsonObject; jsonPath: PWideChar): wordbool;
function CkJsonObject_BytesOf(objHandle: HCkJsonObject; jsonPath: PWideChar; encoding: PWideChar; bd: HCkBinData): wordbool;
procedure CkJsonObject_Clear(objHandle: HCkJsonObject);
function CkJsonObject_Clone(objHandle: HCkJsonObject): HCkJsonObject;
function CkJsonObject_DateOf(objHandle: HCkJsonObject; jsonPath: PWideChar; dateTime: HCkDateTime): wordbool;
function CkJsonObject_Delete(objHandle: HCkJsonObject; name: PWideChar): wordbool;
function CkJsonObject_DeleteAt(objHandle: HCkJsonObject; index: Integer): wordbool;
function CkJsonObject_DeleteRecords(objHandle: HCkJsonObject; arrayPath: PWideChar; relpath: PWideChar; value: PWideChar; caseSensitive: wordbool): Integer;
function CkJsonObject_DtOf(objHandle: HCkJsonObject; jsonPath: PWideChar; bLocal: wordbool; dt: HCkDtObj): wordbool;
function CkJsonObject_Emit(objHandle: HCkJsonObject; outStr: HCkString): wordbool;
function CkJsonObject__emit(objHandle: HCkJsonObject): PWideChar;
function CkJsonObject_EmitBd(objHandle: HCkJsonObject; bd: HCkBinData): wordbool;
function CkJsonObject_EmitSb(objHandle: HCkJsonObject; sb: HCkStringBuilder): wordbool;
function CkJsonObject_EmitWithSubs(objHandle: HCkJsonObject; subs: HCkHashtable; omitEmpty: wordbool; outStr: HCkString): wordbool;
function CkJsonObject__emitWithSubs(objHandle: HCkJsonObject; subs: HCkHashtable; omitEmpty: wordbool): PWideChar;
function CkJsonObject_FindObjectWithMember(objHandle: HCkJsonObject; name: PWideChar): HCkJsonObject;
function CkJsonObject_FindRecord(objHandle: HCkJsonObject; arrayPath: PWideChar; relPath: PWideChar; value: PWideChar; caseSensitive: wordbool): HCkJsonObject;
function CkJsonObject_FindRecordString(objHandle: HCkJsonObject; arrayPath: PWideChar; relPath: PWideChar; value: PWideChar; caseSensitive: wordbool; retRelPath: PWideChar; outStr: HCkString): wordbool;
function CkJsonObject__findRecordString(objHandle: HCkJsonObject; arrayPath: PWideChar; relPath: PWideChar; value: PWideChar; caseSensitive: wordbool; retRelPath: PWideChar): PWideChar;
function CkJsonObject_FirebaseApplyEvent(objHandle: HCkJsonObject; name: PWideChar; data: PWideChar): wordbool;
function CkJsonObject_FirebasePatch(objHandle: HCkJsonObject; jsonPath: PWideChar; jsonData: PWideChar): wordbool;
function CkJsonObject_FirebasePut(objHandle: HCkJsonObject; jsonPath: PWideChar; value: PWideChar): wordbool;
function CkJsonObject_GetDocRoot(objHandle: HCkJsonObject): HCkJsonObject;
function CkJsonObject_HasMember(objHandle: HCkJsonObject; jsonPath: PWideChar): wordbool;
function CkJsonObject_IndexOf(objHandle: HCkJsonObject; name: PWideChar): Integer;
function CkJsonObject_IntAt(objHandle: HCkJsonObject; index: Integer): Integer;
function CkJsonObject_IntOf(objHandle: HCkJsonObject; jsonPath: PWideChar): Integer;
function CkJsonObject_IsNullAt(objHandle: HCkJsonObject; index: Integer): wordbool;
function CkJsonObject_IsNullOf(objHandle: HCkJsonObject; jsonPath: PWideChar): wordbool;
function CkJsonObject_JsonTypeOf(objHandle: HCkJsonObject; jsonPath: PWideChar): Integer;
function CkJsonObject_Load(objHandle: HCkJsonObject; json: PWideChar): wordbool;
function CkJsonObject_LoadBd(objHandle: HCkJsonObject; bd: HCkBinData): wordbool;
function CkJsonObject_LoadFile(objHandle: HCkJsonObject; path: PWideChar): wordbool;
function CkJsonObject_LoadPredefined(objHandle: HCkJsonObject; name: PWideChar): wordbool;
function CkJsonObject_LoadSb(objHandle: HCkJsonObject; sb: HCkStringBuilder): wordbool;
function CkJsonObject_MoveMember(objHandle: HCkJsonObject; fromIndex: Integer; toIndex: Integer): wordbool;
function CkJsonObject_NameAt(objHandle: HCkJsonObject; index: Integer; outStr: HCkString): wordbool;
function CkJsonObject__nameAt(objHandle: HCkJsonObject; index: Integer): PWideChar;
function CkJsonObject_ObjectAt(objHandle: HCkJsonObject; index: Integer): HCkJsonObject;
function CkJsonObject_ObjectOf(objHandle: HCkJsonObject; jsonPath: PWideChar): HCkJsonObject;
function CkJsonObject_Predefine(objHandle: HCkJsonObject; name: PWideChar): wordbool;
function CkJsonObject_Rename(objHandle: HCkJsonObject; oldName: PWideChar; newName: PWideChar): wordbool;
function CkJsonObject_RenameAt(objHandle: HCkJsonObject; index: Integer; name: PWideChar): wordbool;
function CkJsonObject_SaveLastError(objHandle: HCkJsonObject; path: PWideChar): wordbool;
function CkJsonObject_SetBoolAt(objHandle: HCkJsonObject; index: Integer; value: wordbool): wordbool;
function CkJsonObject_SetBoolOf(objHandle: HCkJsonObject; jsonPath: PWideChar; value: wordbool): wordbool;
function CkJsonObject_SetIntAt(objHandle: HCkJsonObject; index: Integer; value: Integer): wordbool;
function CkJsonObject_SetIntOf(objHandle: HCkJsonObject; jsonPath: PWideChar; value: Integer): wordbool;
function CkJsonObject_SetNullAt(objHandle: HCkJsonObject; index: Integer): wordbool;
function CkJsonObject_SetNullOf(objHandle: HCkJsonObject; jsonPath: PWideChar): wordbool;
function CkJsonObject_SetNumberAt(objHandle: HCkJsonObject; index: Integer; value: PWideChar): wordbool;
function CkJsonObject_SetNumberOf(objHandle: HCkJsonObject; jsonPath: PWideChar; value: PWideChar): wordbool;
function CkJsonObject_SetStringAt(objHandle: HCkJsonObject; index: Integer; value: PWideChar): wordbool;
function CkJsonObject_SetStringOf(objHandle: HCkJsonObject; jsonPath: PWideChar; value: PWideChar): wordbool;
function CkJsonObject_SizeOfArray(objHandle: HCkJsonObject; jsonPath: PWideChar): Integer;
function CkJsonObject_StringAt(objHandle: HCkJsonObject; index: Integer; outStr: HCkString): wordbool;
function CkJsonObject__stringAt(objHandle: HCkJsonObject; index: Integer): PWideChar;
function CkJsonObject_StringOf(objHandle: HCkJsonObject; jsonPath: PWideChar; outStr: HCkString): wordbool;
function CkJsonObject__stringOf(objHandle: HCkJsonObject; jsonPath: PWideChar): PWideChar;
function CkJsonObject_StringOfSb(objHandle: HCkJsonObject; jsonPath: PWideChar; sb: HCkStringBuilder): wordbool;
function CkJsonObject_Swap(objHandle: HCkJsonObject; index1: Integer; index2: Integer): wordbool;
function CkJsonObject_TypeAt(objHandle: HCkJsonObject; index: Integer): Integer;
function CkJsonObject_UpdateBd(objHandle: HCkJsonObject; jsonPath: PWideChar; encoding: PWideChar; bd: HCkBinData): wordbool;
function CkJsonObject_UpdateBool(objHandle: HCkJsonObject; jsonPath: PWideChar; value: wordbool): wordbool;
function CkJsonObject_UpdateInt(objHandle: HCkJsonObject; jsonPath: PWideChar; value: Integer): wordbool;
function CkJsonObject_UpdateNewArray(objHandle: HCkJsonObject; jsonPath: PWideChar): wordbool;
function CkJsonObject_UpdateNewObject(objHandle: HCkJsonObject; jsonPath: PWideChar): wordbool;
function CkJsonObject_UpdateNull(objHandle: HCkJsonObject; jsonPath: PWideChar): wordbool;
function CkJsonObject_UpdateNumber(objHandle: HCkJsonObject; jsonPath: PWideChar; numericStr: PWideChar): wordbool;
function CkJsonObject_UpdateSb(objHandle: HCkJsonObject; jsonPath: PWideChar; sb: HCkStringBuilder): wordbool;
function CkJsonObject_UpdateString(objHandle: HCkJsonObject; jsonPath: PWideChar; value: PWideChar): wordbool;
function CkJsonObject_WriteFile(objHandle: HCkJsonObject; path: PWideChar): wordbool;
implementation

uses Winapi.Windows, System.SysUtils, ckDllLoader;

Type
  TCkJsonObject_Create = function : HCkJsonObject; stdcall;
  TCkJsonObject_Dispose = procedure (handle: HCkJsonObject); stdcall;
  TCkJsonObject_getDebugLogFilePath = procedure (objHandle: HCkJsonObject; outPropVal: HCkString); stdcall;
  TCkJsonObject_putDebugLogFilePath = procedure (objHandle: HCkJsonObject; newPropVal: PWideChar); stdcall;
  TCkJsonObject__debugLogFilePath = function (objHandle: HCkJsonObject): PWideChar; stdcall;
  TCkJsonObject_getDelimiterChar = procedure (objHandle: HCkJsonObject; outPropVal: HCkString); stdcall;
  TCkJsonObject_putDelimiterChar = procedure (objHandle: HCkJsonObject; newPropVal: PWideChar); stdcall;
  TCkJsonObject__delimiterChar = function (objHandle: HCkJsonObject): PWideChar; stdcall;
  TCkJsonObject_getEmitCompact = function (objHandle: HCkJsonObject): wordbool; stdcall;
  TCkJsonObject_putEmitCompact = procedure (objHandle: HCkJsonObject; newPropVal: wordbool); stdcall;
  TCkJsonObject_getEmitCrLf = function (objHandle: HCkJsonObject): wordbool; stdcall;
  TCkJsonObject_putEmitCrLf = procedure (objHandle: HCkJsonObject; newPropVal: wordbool); stdcall;
  TCkJsonObject_getI = function (objHandle: HCkJsonObject): Integer; stdcall;
  TCkJsonObject_putI = procedure (objHandle: HCkJsonObject; newPropVal: Integer); stdcall;
  TCkJsonObject_getJ = function (objHandle: HCkJsonObject): Integer; stdcall;
  TCkJsonObject_putJ = procedure (objHandle: HCkJsonObject; newPropVal: Integer); stdcall;
  TCkJsonObject_getK = function (objHandle: HCkJsonObject): Integer; stdcall;
  TCkJsonObject_putK = procedure (objHandle: HCkJsonObject; newPropVal: Integer); stdcall;
  TCkJsonObject_getLastErrorHtml = procedure (objHandle: HCkJsonObject; outPropVal: HCkString); stdcall;
  TCkJsonObject__lastErrorHtml = function (objHandle: HCkJsonObject): PWideChar; stdcall;
  TCkJsonObject_getLastErrorText = procedure (objHandle: HCkJsonObject; outPropVal: HCkString); stdcall;
  TCkJsonObject__lastErrorText = function (objHandle: HCkJsonObject): PWideChar; stdcall;
  TCkJsonObject_getLastErrorXml = procedure (objHandle: HCkJsonObject; outPropVal: HCkString); stdcall;
  TCkJsonObject__lastErrorXml = function (objHandle: HCkJsonObject): PWideChar; stdcall;
  TCkJsonObject_getLastMethodSuccess = function (objHandle: HCkJsonObject): wordbool; stdcall;
  TCkJsonObject_putLastMethodSuccess = procedure (objHandle: HCkJsonObject; newPropVal: wordbool); stdcall;
  TCkJsonObject_getLowerCaseNames = function (objHandle: HCkJsonObject): wordbool; stdcall;
  TCkJsonObject_putLowerCaseNames = procedure (objHandle: HCkJsonObject; newPropVal: wordbool); stdcall;
  TCkJsonObject_getPathPrefix = procedure (objHandle: HCkJsonObject; outPropVal: HCkString); stdcall;
  TCkJsonObject_putPathPrefix = procedure (objHandle: HCkJsonObject; newPropVal: PWideChar); stdcall;
  TCkJsonObject__pathPrefix = function (objHandle: HCkJsonObject): PWideChar; stdcall;
  TCkJsonObject_getSize = function (objHandle: HCkJsonObject): Integer; stdcall;
  TCkJsonObject_getUncommonOptions = procedure (objHandle: HCkJsonObject; outPropVal: HCkString); stdcall;
  TCkJsonObject_putUncommonOptions = procedure (objHandle: HCkJsonObject; newPropVal: PWideChar); stdcall;
  TCkJsonObject__uncommonOptions = function (objHandle: HCkJsonObject): PWideChar; stdcall;
  TCkJsonObject_getVerboseLogging = function (objHandle: HCkJsonObject): wordbool; stdcall;
  TCkJsonObject_putVerboseLogging = procedure (objHandle: HCkJsonObject; newPropVal: wordbool); stdcall;
  TCkJsonObject_getVersion = procedure (objHandle: HCkJsonObject; outPropVal: HCkString); stdcall;
  TCkJsonObject__version = function (objHandle: HCkJsonObject): PWideChar; stdcall;
  TCkJsonObject_AddArrayAt = function (objHandle: HCkJsonObject; index: Integer; name: PWideChar): wordbool; stdcall;
  TCkJsonObject_AddArrayCopyAt = function (objHandle: HCkJsonObject; index: Integer; name: PWideChar; jarr: HCkJsonArray): wordbool; stdcall;
  TCkJsonObject_AddBoolAt = function (objHandle: HCkJsonObject; index: Integer; name: PWideChar; value: wordbool): wordbool; stdcall;
  TCkJsonObject_AddIntAt = function (objHandle: HCkJsonObject; index: Integer; name: PWideChar; value: Integer): wordbool; stdcall;
  TCkJsonObject_AddNullAt = function (objHandle: HCkJsonObject; index: Integer; name: PWideChar): wordbool; stdcall;
  TCkJsonObject_AddNumberAt = function (objHandle: HCkJsonObject; index: Integer; name: PWideChar; numericStr: PWideChar): wordbool; stdcall;
  TCkJsonObject_AddObjectAt = function (objHandle: HCkJsonObject; index: Integer; name: PWideChar): wordbool; stdcall;
  TCkJsonObject_AddObjectCopyAt = function (objHandle: HCkJsonObject; index: Integer; name: PWideChar; jsonObj: HCkJsonObject): wordbool; stdcall;
  TCkJsonObject_AddStringAt = function (objHandle: HCkJsonObject; index: Integer; name: PWideChar; value: PWideChar): wordbool; stdcall;
  TCkJsonObject_AppendArray = function (objHandle: HCkJsonObject; name: PWideChar): HCkJsonArray; stdcall;
  TCkJsonObject_AppendArrayCopy = function (objHandle: HCkJsonObject; name: PWideChar; jarr: HCkJsonArray): wordbool; stdcall;
  TCkJsonObject_AppendBool = function (objHandle: HCkJsonObject; name: PWideChar; value: wordbool): wordbool; stdcall;
  TCkJsonObject_AppendInt = function (objHandle: HCkJsonObject; name: PWideChar; value: Integer): wordbool; stdcall;
  TCkJsonObject_AppendObject = function (objHandle: HCkJsonObject; name: PWideChar): HCkJsonObject; stdcall;
  TCkJsonObject_AppendObjectCopy = function (objHandle: HCkJsonObject; name: PWideChar; jsonObj: HCkJsonObject): wordbool; stdcall;
  TCkJsonObject_AppendString = function (objHandle: HCkJsonObject; name: PWideChar; value: PWideChar): wordbool; stdcall;
  TCkJsonObject_AppendStringArray = function (objHandle: HCkJsonObject; name: PWideChar; values: HCkStringTable): wordbool; stdcall;
  TCkJsonObject_ArrayAt = function (objHandle: HCkJsonObject; index: Integer): HCkJsonArray; stdcall;
  TCkJsonObject_ArrayOf = function (objHandle: HCkJsonObject; jsonPath: PWideChar): HCkJsonArray; stdcall;
  TCkJsonObject_BoolAt = function (objHandle: HCkJsonObject; index: Integer): wordbool; stdcall;
  TCkJsonObject_BoolOf = function (objHandle: HCkJsonObject; jsonPath: PWideChar): wordbool; stdcall;
  TCkJsonObject_BytesOf = function (objHandle: HCkJsonObject; jsonPath: PWideChar; encoding: PWideChar; bd: HCkBinData): wordbool; stdcall;
  TCkJsonObject_Clear = procedure (objHandle: HCkJsonObject); stdcall;
  TCkJsonObject_Clone = function (objHandle: HCkJsonObject): HCkJsonObject; stdcall;
  TCkJsonObject_DateOf = function (objHandle: HCkJsonObject; jsonPath: PWideChar; dateTime: HCkDateTime): wordbool; stdcall;
  TCkJsonObject_Delete = function (objHandle: HCkJsonObject; name: PWideChar): wordbool; stdcall;
  TCkJsonObject_DeleteAt = function (objHandle: HCkJsonObject; index: Integer): wordbool; stdcall;
  TCkJsonObject_DeleteRecords = function (objHandle: HCkJsonObject; arrayPath: PWideChar; relpath: PWideChar; value: PWideChar; caseSensitive: wordbool): Integer; stdcall;
  TCkJsonObject_DtOf = function (objHandle: HCkJsonObject; jsonPath: PWideChar; bLocal: wordbool; dt: HCkDtObj): wordbool; stdcall;
  TCkJsonObject_Emit = function (objHandle: HCkJsonObject; outStr: HCkString): wordbool; stdcall;
  TCkJsonObject__emit = function (objHandle: HCkJsonObject): PWideChar; stdcall;
  TCkJsonObject_EmitBd = function (objHandle: HCkJsonObject; bd: HCkBinData): wordbool; stdcall;
  TCkJsonObject_EmitSb = function (objHandle: HCkJsonObject; sb: HCkStringBuilder): wordbool; stdcall;
  TCkJsonObject_EmitWithSubs = function (objHandle: HCkJsonObject; subs: HCkHashtable; omitEmpty: wordbool; outStr: HCkString): wordbool; stdcall;
  TCkJsonObject__emitWithSubs = function (objHandle: HCkJsonObject; subs: HCkHashtable; omitEmpty: wordbool): PWideChar; stdcall;
  TCkJsonObject_FindObjectWithMember = function (objHandle: HCkJsonObject; name: PWideChar): HCkJsonObject; stdcall;
  TCkJsonObject_FindRecord = function (objHandle: HCkJsonObject; arrayPath: PWideChar; relPath: PWideChar; value: PWideChar; caseSensitive: wordbool): HCkJsonObject; stdcall;
  TCkJsonObject_FindRecordString = function (objHandle: HCkJsonObject; arrayPath: PWideChar; relPath: PWideChar; value: PWideChar; caseSensitive: wordbool; retRelPath: PWideChar; outStr: HCkString): wordbool; stdcall;
  TCkJsonObject__findRecordString = function (objHandle: HCkJsonObject; arrayPath: PWideChar; relPath: PWideChar; value: PWideChar; caseSensitive: wordbool; retRelPath: PWideChar): PWideChar; stdcall;
  TCkJsonObject_FirebaseApplyEvent = function (objHandle: HCkJsonObject; name: PWideChar; data: PWideChar): wordbool; stdcall;
  TCkJsonObject_FirebasePatch = function (objHandle: HCkJsonObject; jsonPath: PWideChar; jsonData: PWideChar): wordbool; stdcall;
  TCkJsonObject_FirebasePut = function (objHandle: HCkJsonObject; jsonPath: PWideChar; value: PWideChar): wordbool; stdcall;
  TCkJsonObject_GetDocRoot = function (objHandle: HCkJsonObject): HCkJsonObject; stdcall;
  TCkJsonObject_HasMember = function (objHandle: HCkJsonObject; jsonPath: PWideChar): wordbool; stdcall;
  TCkJsonObject_IndexOf = function (objHandle: HCkJsonObject; name: PWideChar): Integer; stdcall;
  TCkJsonObject_IntAt = function (objHandle: HCkJsonObject; index: Integer): Integer; stdcall;
  TCkJsonObject_IntOf = function (objHandle: HCkJsonObject; jsonPath: PWideChar): Integer; stdcall;
  TCkJsonObject_IsNullAt = function (objHandle: HCkJsonObject; index: Integer): wordbool; stdcall;
  TCkJsonObject_IsNullOf = function (objHandle: HCkJsonObject; jsonPath: PWideChar): wordbool; stdcall;
  TCkJsonObject_JsonTypeOf = function (objHandle: HCkJsonObject; jsonPath: PWideChar): Integer; stdcall;
  TCkJsonObject_Load = function (objHandle: HCkJsonObject; json: PWideChar): wordbool; stdcall;
  TCkJsonObject_LoadBd = function (objHandle: HCkJsonObject; bd: HCkBinData): wordbool; stdcall;
  TCkJsonObject_LoadFile = function (objHandle: HCkJsonObject; path: PWideChar): wordbool; stdcall;
  TCkJsonObject_LoadPredefined = function (objHandle: HCkJsonObject; name: PWideChar): wordbool; stdcall;
  TCkJsonObject_LoadSb = function (objHandle: HCkJsonObject; sb: HCkStringBuilder): wordbool; stdcall;
  TCkJsonObject_MoveMember = function (objHandle: HCkJsonObject; fromIndex: Integer; toIndex: Integer): wordbool; stdcall;
  TCkJsonObject_NameAt = function (objHandle: HCkJsonObject; index: Integer; outStr: HCkString): wordbool; stdcall;
  TCkJsonObject__nameAt = function (objHandle: HCkJsonObject; index: Integer): PWideChar; stdcall;
  TCkJsonObject_ObjectAt = function (objHandle: HCkJsonObject; index: Integer): HCkJsonObject; stdcall;
  TCkJsonObject_ObjectOf = function (objHandle: HCkJsonObject; jsonPath: PWideChar): HCkJsonObject; stdcall;
  TCkJsonObject_Predefine = function (objHandle: HCkJsonObject; name: PWideChar): wordbool; stdcall;
  TCkJsonObject_Rename = function (objHandle: HCkJsonObject; oldName: PWideChar; newName: PWideChar): wordbool; stdcall;
  TCkJsonObject_RenameAt = function (objHandle: HCkJsonObject; index: Integer; name: PWideChar): wordbool; stdcall;
  TCkJsonObject_SaveLastError = function (objHandle: HCkJsonObject; path: PWideChar): wordbool; stdcall;
  TCkJsonObject_SetBoolAt = function (objHandle: HCkJsonObject; index: Integer; value: wordbool): wordbool; stdcall;
  TCkJsonObject_SetBoolOf = function (objHandle: HCkJsonObject; jsonPath: PWideChar; value: wordbool): wordbool; stdcall;
  TCkJsonObject_SetIntAt = function (objHandle: HCkJsonObject; index: Integer; value: Integer): wordbool; stdcall;
  TCkJsonObject_SetIntOf = function (objHandle: HCkJsonObject; jsonPath: PWideChar; value: Integer): wordbool; stdcall;
  TCkJsonObject_SetNullAt = function (objHandle: HCkJsonObject; index: Integer): wordbool; stdcall;
  TCkJsonObject_SetNullOf = function (objHandle: HCkJsonObject; jsonPath: PWideChar): wordbool; stdcall;
  TCkJsonObject_SetNumberAt = function (objHandle: HCkJsonObject; index: Integer; value: PWideChar): wordbool; stdcall;
  TCkJsonObject_SetNumberOf = function (objHandle: HCkJsonObject; jsonPath: PWideChar; value: PWideChar): wordbool; stdcall;
  TCkJsonObject_SetStringAt = function (objHandle: HCkJsonObject; index: Integer; value: PWideChar): wordbool; stdcall;
  TCkJsonObject_SetStringOf = function (objHandle: HCkJsonObject; jsonPath: PWideChar; value: PWideChar): wordbool; stdcall;
  TCkJsonObject_SizeOfArray = function (objHandle: HCkJsonObject; jsonPath: PWideChar): Integer; stdcall;
  TCkJsonObject_StringAt = function (objHandle: HCkJsonObject; index: Integer; outStr: HCkString): wordbool; stdcall;
  TCkJsonObject__stringAt = function (objHandle: HCkJsonObject; index: Integer): PWideChar; stdcall;
  TCkJsonObject_StringOf = function (objHandle: HCkJsonObject; jsonPath: PWideChar; outStr: HCkString): wordbool; stdcall;
  TCkJsonObject__stringOf = function (objHandle: HCkJsonObject; jsonPath: PWideChar): PWideChar; stdcall;
  TCkJsonObject_StringOfSb = function (objHandle: HCkJsonObject; jsonPath: PWideChar; sb: HCkStringBuilder): wordbool; stdcall;
  TCkJsonObject_Swap = function (objHandle: HCkJsonObject; index1: Integer; index2: Integer): wordbool; stdcall;
  TCkJsonObject_TypeAt = function (objHandle: HCkJsonObject; index: Integer): Integer; stdcall;
  TCkJsonObject_UpdateBd = function (objHandle: HCkJsonObject; jsonPath: PWideChar; encoding: PWideChar; bd: HCkBinData): wordbool; stdcall;
  TCkJsonObject_UpdateBool = function (objHandle: HCkJsonObject; jsonPath: PWideChar; value: wordbool): wordbool; stdcall;
  TCkJsonObject_UpdateInt = function (objHandle: HCkJsonObject; jsonPath: PWideChar; value: Integer): wordbool; stdcall;
  TCkJsonObject_UpdateNewArray = function (objHandle: HCkJsonObject; jsonPath: PWideChar): wordbool; stdcall;
  TCkJsonObject_UpdateNewObject = function (objHandle: HCkJsonObject; jsonPath: PWideChar): wordbool; stdcall;
  TCkJsonObject_UpdateNull = function (objHandle: HCkJsonObject; jsonPath: PWideChar): wordbool; stdcall;
  TCkJsonObject_UpdateNumber = function (objHandle: HCkJsonObject; jsonPath: PWideChar; numericStr: PWideChar): wordbool; stdcall;
  TCkJsonObject_UpdateSb = function (objHandle: HCkJsonObject; jsonPath: PWideChar; sb: HCkStringBuilder): wordbool; stdcall;
  TCkJsonObject_UpdateString = function (objHandle: HCkJsonObject; jsonPath: PWideChar; value: PWideChar): wordbool; stdcall;
  TCkJsonObject_WriteFile = function (objHandle: HCkJsonObject; path: PWideChar): wordbool; stdcall;

var
  _fkt_ptr_arr:   array [0..130] of Pointer;

function _Map( k:Integer; n:String):Pointer;
begin
  Result:=  _fkt_ptr_arr[k];
  if Result = nil then begin
    Chilkat_GetProcedureAddress(Result, n);
    _fkt_ptr_arr[k]:=   Result;
  end;
end;


function CkJsonObject_Create : HCkJsonObject;
begin
  result := TCkJsonObject_Create(_map(0, 'CkJsonObject_Create'));
end;

procedure CkJsonObject_Dispose (handle: HCkJsonObject);
begin
  TCkJsonObject_Dispose(_map(1, 'CkJsonObject_Dispose'))
    (handle);
end;


procedure CkJsonObject_getDebugLogFilePath (objHandle: HCkJsonObject; outPropVal: HCkString);
begin
  TCkJsonObject_getDebugLogFilePath(_map(2, 'CkJsonObject_getDebugLogFilePath'))
    (objHandle, outPropVal);
end;

procedure CkJsonObject_putDebugLogFilePath (objHandle: HCkJsonObject; newPropVal: PWideChar);
begin
  TCkJsonObject_putDebugLogFilePath(_map(3, 'CkJsonObject_putDebugLogFilePath'))
    (objHandle, newPropVal);
end;

function CkJsonObject__debugLogFilePath (objHandle: HCkJsonObject): PWideChar;
begin
  result := TCkJsonObject__debugLogFilePath(_map(4, 'CkJsonObject__debugLogFilePath'))
    (objHandle);
end;

procedure CkJsonObject_getDelimiterChar (objHandle: HCkJsonObject; outPropVal: HCkString);
begin
  TCkJsonObject_getDelimiterChar(_map(5, 'CkJsonObject_getDelimiterChar'))
    (objHandle, outPropVal);
end;

procedure CkJsonObject_putDelimiterChar (objHandle: HCkJsonObject; newPropVal: PWideChar);
begin
  TCkJsonObject_putDelimiterChar(_map(6, 'CkJsonObject_putDelimiterChar'))
    (objHandle, newPropVal);
end;

function CkJsonObject__delimiterChar (objHandle: HCkJsonObject): PWideChar;
begin
  result := TCkJsonObject__delimiterChar(_map(7, 'CkJsonObject__delimiterChar'))
    (objHandle);
end;

function CkJsonObject_getEmitCompact (objHandle: HCkJsonObject): wordbool;
begin
    result := TCkJsonObject_getEmitCompact(_map(8, 'CkJsonObject_getEmitCompact'))
    (objHandle);
end;

procedure CkJsonObject_putEmitCompact (objHandle: HCkJsonObject; newPropVal: wordbool);
begin
  TCkJsonObject_putEmitCompact(_map(9, 'CkJsonObject_putEmitCompact'))
    (objHandle, newPropVal);
end;

function CkJsonObject_getEmitCrLf (objHandle: HCkJsonObject): wordbool;
begin
    result := TCkJsonObject_getEmitCrLf(_map(10, 'CkJsonObject_getEmitCrLf'))
    (objHandle);
end;

procedure CkJsonObject_putEmitCrLf (objHandle: HCkJsonObject; newPropVal: wordbool);
begin
  TCkJsonObject_putEmitCrLf(_map(11, 'CkJsonObject_putEmitCrLf'))
    (objHandle, newPropVal);
end;

function CkJsonObject_getI (objHandle: HCkJsonObject): Integer;
begin
    result := TCkJsonObject_getI(_map(12, 'CkJsonObject_getI'))
    (objHandle);
end;

procedure CkJsonObject_putI (objHandle: HCkJsonObject; newPropVal: Integer);
begin
  TCkJsonObject_putI(_map(13, 'CkJsonObject_putI'))
    (objHandle, newPropVal);
end;

function CkJsonObject_getJ (objHandle: HCkJsonObject): Integer;
begin
    result := TCkJsonObject_getJ(_map(14, 'CkJsonObject_getJ'))
    (objHandle);
end;

procedure CkJsonObject_putJ (objHandle: HCkJsonObject; newPropVal: Integer);
begin
  TCkJsonObject_putJ(_map(15, 'CkJsonObject_putJ'))
    (objHandle, newPropVal);
end;

function CkJsonObject_getK (objHandle: HCkJsonObject): Integer;
begin
    result := TCkJsonObject_getK(_map(16, 'CkJsonObject_getK'))
    (objHandle);
end;

procedure CkJsonObject_putK (objHandle: HCkJsonObject; newPropVal: Integer);
begin
  TCkJsonObject_putK(_map(17, 'CkJsonObject_putK'))
    (objHandle, newPropVal);
end;

procedure CkJsonObject_getLastErrorHtml (objHandle: HCkJsonObject; outPropVal: HCkString);
begin
  TCkJsonObject_getLastErrorHtml(_map(18, 'CkJsonObject_getLastErrorHtml'))
    (objHandle, outPropVal);
end;

function CkJsonObject__lastErrorHtml (objHandle: HCkJsonObject): PWideChar;
begin
  result := TCkJsonObject__lastErrorHtml(_map(19, 'CkJsonObject__lastErrorHtml'))
    (objHandle);
end;

procedure CkJsonObject_getLastErrorText (objHandle: HCkJsonObject; outPropVal: HCkString);
begin
  TCkJsonObject_getLastErrorText(_map(20, 'CkJsonObject_getLastErrorText'))
    (objHandle, outPropVal);
end;

function CkJsonObject__lastErrorText (objHandle: HCkJsonObject): PWideChar;
begin
  result := TCkJsonObject__lastErrorText(_map(21, 'CkJsonObject__lastErrorText'))
    (objHandle);
end;

procedure CkJsonObject_getLastErrorXml (objHandle: HCkJsonObject; outPropVal: HCkString);
begin
  TCkJsonObject_getLastErrorXml(_map(22, 'CkJsonObject_getLastErrorXml'))
    (objHandle, outPropVal);
end;

function CkJsonObject__lastErrorXml (objHandle: HCkJsonObject): PWideChar;
begin
  result := TCkJsonObject__lastErrorXml(_map(23, 'CkJsonObject__lastErrorXml'))
    (objHandle);
end;

function CkJsonObject_getLastMethodSuccess (objHandle: HCkJsonObject): wordbool;
begin
    result := TCkJsonObject_getLastMethodSuccess(_map(24, 'CkJsonObject_getLastMethodSuccess'))
    (objHandle);
end;

procedure CkJsonObject_putLastMethodSuccess (objHandle: HCkJsonObject; newPropVal: wordbool);
begin
  TCkJsonObject_putLastMethodSuccess(_map(25, 'CkJsonObject_putLastMethodSuccess'))
    (objHandle, newPropVal);
end;

function CkJsonObject_getLowerCaseNames (objHandle: HCkJsonObject): wordbool;
begin
    result := TCkJsonObject_getLowerCaseNames(_map(26, 'CkJsonObject_getLowerCaseNames'))
    (objHandle);
end;

procedure CkJsonObject_putLowerCaseNames (objHandle: HCkJsonObject; newPropVal: wordbool);
begin
  TCkJsonObject_putLowerCaseNames(_map(27, 'CkJsonObject_putLowerCaseNames'))
    (objHandle, newPropVal);
end;

procedure CkJsonObject_getPathPrefix (objHandle: HCkJsonObject; outPropVal: HCkString);
begin
  TCkJsonObject_getPathPrefix(_map(28, 'CkJsonObject_getPathPrefix'))
    (objHandle, outPropVal);
end;

procedure CkJsonObject_putPathPrefix (objHandle: HCkJsonObject; newPropVal: PWideChar);
begin
  TCkJsonObject_putPathPrefix(_map(29, 'CkJsonObject_putPathPrefix'))
    (objHandle, newPropVal);
end;

function CkJsonObject__pathPrefix (objHandle: HCkJsonObject): PWideChar;
begin
  result := TCkJsonObject__pathPrefix(_map(30, 'CkJsonObject__pathPrefix'))
    (objHandle);
end;

function CkJsonObject_getSize (objHandle: HCkJsonObject): Integer;
begin
    result := TCkJsonObject_getSize(_map(31, 'CkJsonObject_getSize'))
    (objHandle);
end;

procedure CkJsonObject_getUncommonOptions (objHandle: HCkJsonObject; outPropVal: HCkString);
begin
  TCkJsonObject_getUncommonOptions(_map(32, 'CkJsonObject_getUncommonOptions'))
    (objHandle, outPropVal);
end;

procedure CkJsonObject_putUncommonOptions (objHandle: HCkJsonObject; newPropVal: PWideChar);
begin
  TCkJsonObject_putUncommonOptions(_map(33, 'CkJsonObject_putUncommonOptions'))
    (objHandle, newPropVal);
end;

function CkJsonObject__uncommonOptions (objHandle: HCkJsonObject): PWideChar;
begin
  result := TCkJsonObject__uncommonOptions(_map(34, 'CkJsonObject__uncommonOptions'))
    (objHandle);
end;

function CkJsonObject_getVerboseLogging (objHandle: HCkJsonObject): wordbool;
begin
    result := TCkJsonObject_getVerboseLogging(_map(35, 'CkJsonObject_getVerboseLogging'))
    (objHandle);
end;

procedure CkJsonObject_putVerboseLogging (objHandle: HCkJsonObject; newPropVal: wordbool);
begin
  TCkJsonObject_putVerboseLogging(_map(36, 'CkJsonObject_putVerboseLogging'))
    (objHandle, newPropVal);
end;

procedure CkJsonObject_getVersion (objHandle: HCkJsonObject; outPropVal: HCkString);
begin
  TCkJsonObject_getVersion(_map(37, 'CkJsonObject_getVersion'))
    (objHandle, outPropVal);
end;

function CkJsonObject__version (objHandle: HCkJsonObject): PWideChar;
begin
  result := TCkJsonObject__version(_map(38, 'CkJsonObject__version'))
    (objHandle);
end;

function CkJsonObject_AddArrayAt (objHandle: HCkJsonObject; index: Integer; name: PWideChar): wordbool;
begin
  result := TCkJsonObject_AddArrayAt(_map(39, 'CkJsonObject_AddArrayAt'))
    (objHandle, index, name);
end;

function CkJsonObject_AddArrayCopyAt (objHandle: HCkJsonObject; index: Integer; name: PWideChar; jarr: HCkJsonArray): wordbool;
begin
  result := TCkJsonObject_AddArrayCopyAt(_map(40, 'CkJsonObject_AddArrayCopyAt'))
    (objHandle, index, name, jarr);
end;

function CkJsonObject_AddBoolAt (objHandle: HCkJsonObject; index: Integer; name: PWideChar; value: wordbool): wordbool;
begin
  result := TCkJsonObject_AddBoolAt(_map(41, 'CkJsonObject_AddBoolAt'))
    (objHandle, index, name, value);
end;

function CkJsonObject_AddIntAt (objHandle: HCkJsonObject; index: Integer; name: PWideChar; value: Integer): wordbool;
begin
  result := TCkJsonObject_AddIntAt(_map(42, 'CkJsonObject_AddIntAt'))
    (objHandle, index, name, value);
end;

function CkJsonObject_AddNullAt (objHandle: HCkJsonObject; index: Integer; name: PWideChar): wordbool;
begin
  result := TCkJsonObject_AddNullAt(_map(43, 'CkJsonObject_AddNullAt'))
    (objHandle, index, name);
end;

function CkJsonObject_AddNumberAt (objHandle: HCkJsonObject; index: Integer; name: PWideChar; numericStr: PWideChar): wordbool;
begin
  result := TCkJsonObject_AddNumberAt(_map(44, 'CkJsonObject_AddNumberAt'))
    (objHandle, index, name, numericStr);
end;

function CkJsonObject_AddObjectAt (objHandle: HCkJsonObject; index: Integer; name: PWideChar): wordbool;
begin
  result := TCkJsonObject_AddObjectAt(_map(45, 'CkJsonObject_AddObjectAt'))
    (objHandle, index, name);
end;

function CkJsonObject_AddObjectCopyAt (objHandle: HCkJsonObject; index: Integer; name: PWideChar; jsonObj: HCkJsonObject): wordbool;
begin
  result := TCkJsonObject_AddObjectCopyAt(_map(46, 'CkJsonObject_AddObjectCopyAt'))
    (objHandle, index, name, jsonObj);
end;

function CkJsonObject_AddStringAt (objHandle: HCkJsonObject; index: Integer; name: PWideChar; value: PWideChar): wordbool;
begin
  result := TCkJsonObject_AddStringAt(_map(47, 'CkJsonObject_AddStringAt'))
    (objHandle, index, name, value);
end;

function CkJsonObject_AppendArray (objHandle: HCkJsonObject; name: PWideChar): HCkJsonArray;
begin
  result := TCkJsonObject_AppendArray(_map(48, 'CkJsonObject_AppendArray'))
    (objHandle, name);
end;

function CkJsonObject_AppendArrayCopy (objHandle: HCkJsonObject; name: PWideChar; jarr: HCkJsonArray): wordbool;
begin
  result := TCkJsonObject_AppendArrayCopy(_map(49, 'CkJsonObject_AppendArrayCopy'))
    (objHandle, name, jarr);
end;

function CkJsonObject_AppendBool (objHandle: HCkJsonObject; name: PWideChar; value: wordbool): wordbool;
begin
  result := TCkJsonObject_AppendBool(_map(50, 'CkJsonObject_AppendBool'))
    (objHandle, name, value);
end;

function CkJsonObject_AppendInt (objHandle: HCkJsonObject; name: PWideChar; value: Integer): wordbool;
begin
  result := TCkJsonObject_AppendInt(_map(51, 'CkJsonObject_AppendInt'))
    (objHandle, name, value);
end;

function CkJsonObject_AppendObject (objHandle: HCkJsonObject; name: PWideChar): HCkJsonObject;
begin
  result := TCkJsonObject_AppendObject(_map(52, 'CkJsonObject_AppendObject'))
    (objHandle, name);
end;

function CkJsonObject_AppendObjectCopy (objHandle: HCkJsonObject; name: PWideChar; jsonObj: HCkJsonObject): wordbool;
begin
  result := TCkJsonObject_AppendObjectCopy(_map(53, 'CkJsonObject_AppendObjectCopy'))
    (objHandle, name, jsonObj);
end;

function CkJsonObject_AppendString (objHandle: HCkJsonObject; name: PWideChar; value: PWideChar): wordbool;
begin
  result := TCkJsonObject_AppendString(_map(54, 'CkJsonObject_AppendString'))
    (objHandle, name, value);
end;

function CkJsonObject_AppendStringArray (objHandle: HCkJsonObject; name: PWideChar; values: HCkStringTable): wordbool;
begin
  result := TCkJsonObject_AppendStringArray(_map(55, 'CkJsonObject_AppendStringArray'))
    (objHandle, name, values);
end;

function CkJsonObject_ArrayAt (objHandle: HCkJsonObject; index: Integer): HCkJsonArray;
begin
  result := TCkJsonObject_ArrayAt(_map(56, 'CkJsonObject_ArrayAt'))
    (objHandle, index);
end;

function CkJsonObject_ArrayOf (objHandle: HCkJsonObject; jsonPath: PWideChar): HCkJsonArray;
begin
  result := TCkJsonObject_ArrayOf(_map(57, 'CkJsonObject_ArrayOf'))
    (objHandle, jsonPath);
end;

function CkJsonObject_BoolAt (objHandle: HCkJsonObject; index: Integer): wordbool;
begin
  result := TCkJsonObject_BoolAt(_map(58, 'CkJsonObject_BoolAt'))
    (objHandle, index);
end;

function CkJsonObject_BoolOf (objHandle: HCkJsonObject; jsonPath: PWideChar): wordbool;
begin
  result := TCkJsonObject_BoolOf(_map(59, 'CkJsonObject_BoolOf'))
    (objHandle, jsonPath);
end;

function CkJsonObject_BytesOf (objHandle: HCkJsonObject; jsonPath: PWideChar; encoding: PWideChar; bd: HCkBinData): wordbool;
begin
  result := TCkJsonObject_BytesOf(_map(60, 'CkJsonObject_BytesOf'))
    (objHandle, jsonPath, encoding, bd);
end;

procedure CkJsonObject_Clear (objHandle: HCkJsonObject);
begin
  TCkJsonObject_Clear(_map(61, 'CkJsonObject_Clear'))
    (objHandle);
end;

function CkJsonObject_Clone (objHandle: HCkJsonObject): HCkJsonObject;
begin
  result := TCkJsonObject_Clone(_map(62, 'CkJsonObject_Clone'))
    (objHandle);
end;

function CkJsonObject_DateOf (objHandle: HCkJsonObject; jsonPath: PWideChar; dateTime: HCkDateTime): wordbool;
begin
  result := TCkJsonObject_DateOf(_map(63, 'CkJsonObject_DateOf'))
    (objHandle, jsonPath, dateTime);
end;

function CkJsonObject_Delete (objHandle: HCkJsonObject; name: PWideChar): wordbool;
begin
  result := TCkJsonObject_Delete(_map(64, 'CkJsonObject_Delete'))
    (objHandle, name);
end;

function CkJsonObject_DeleteAt (objHandle: HCkJsonObject; index: Integer): wordbool;
begin
  result := TCkJsonObject_DeleteAt(_map(65, 'CkJsonObject_DeleteAt'))
    (objHandle, index);
end;

function CkJsonObject_DeleteRecords (objHandle: HCkJsonObject; arrayPath: PWideChar; relpath: PWideChar; value: PWideChar; caseSensitive: wordbool): Integer;
begin
  result := TCkJsonObject_DeleteRecords(_map(66, 'CkJsonObject_DeleteRecords'))
    (objHandle, arrayPath, relpath, value, caseSensitive);
end;

function CkJsonObject_DtOf (objHandle: HCkJsonObject; jsonPath: PWideChar; bLocal: wordbool; dt: HCkDtObj): wordbool;
begin
  result := TCkJsonObject_DtOf(_map(67, 'CkJsonObject_DtOf'))
    (objHandle, jsonPath, bLocal, dt);
end;

function CkJsonObject_Emit (objHandle: HCkJsonObject; outStr: HCkString): wordbool;
begin
  result := TCkJsonObject_Emit(_map(68, 'CkJsonObject_Emit'))
    (objHandle, outStr);
end;

function CkJsonObject__emit (objHandle: HCkJsonObject): PWideChar;
begin
  result := TCkJsonObject__emit(_map(69, 'CkJsonObject__emit'))
    (objHandle);
end;

function CkJsonObject_EmitBd (objHandle: HCkJsonObject; bd: HCkBinData): wordbool;
begin
  result := TCkJsonObject_EmitBd(_map(70, 'CkJsonObject_EmitBd'))
    (objHandle, bd);
end;

function CkJsonObject_EmitSb (objHandle: HCkJsonObject; sb: HCkStringBuilder): wordbool;
begin
  result := TCkJsonObject_EmitSb(_map(71, 'CkJsonObject_EmitSb'))
    (objHandle, sb);
end;

function CkJsonObject_EmitWithSubs (objHandle: HCkJsonObject; subs: HCkHashtable; omitEmpty: wordbool; outStr: HCkString): wordbool;
begin
  result := TCkJsonObject_EmitWithSubs(_map(72, 'CkJsonObject_EmitWithSubs'))
    (objHandle, subs, omitEmpty, outStr);
end;

function CkJsonObject__emitWithSubs (objHandle: HCkJsonObject; subs: HCkHashtable; omitEmpty: wordbool): PWideChar;
begin
  result := TCkJsonObject__emitWithSubs(_map(73, 'CkJsonObject__emitWithSubs'))
    (objHandle, subs, omitEmpty);
end;

function CkJsonObject_FindObjectWithMember (objHandle: HCkJsonObject; name: PWideChar): HCkJsonObject;
begin
  result := TCkJsonObject_FindObjectWithMember(_map(74, 'CkJsonObject_FindObjectWithMember'))
    (objHandle, name);
end;

function CkJsonObject_FindRecord (objHandle: HCkJsonObject; arrayPath: PWideChar; relPath: PWideChar; value: PWideChar; caseSensitive: wordbool): HCkJsonObject;
begin
  result := TCkJsonObject_FindRecord(_map(75, 'CkJsonObject_FindRecord'))
    (objHandle, arrayPath, relPath, value, caseSensitive);
end;

function CkJsonObject_FindRecordString (objHandle: HCkJsonObject; arrayPath: PWideChar; relPath: PWideChar; value: PWideChar; caseSensitive: wordbool; retRelPath: PWideChar; outStr: HCkString): wordbool;
begin
  result := TCkJsonObject_FindRecordString(_map(76, 'CkJsonObject_FindRecordString'))
    (objHandle, arrayPath, relPath, value, caseSensitive, retRelPath, outStr);
end;

function CkJsonObject__findRecordString (objHandle: HCkJsonObject; arrayPath: PWideChar; relPath: PWideChar; value: PWideChar; caseSensitive: wordbool; retRelPath: PWideChar): PWideChar;
begin
  result := TCkJsonObject__findRecordString(_map(77, 'CkJsonObject__findRecordString'))
    (objHandle, arrayPath, relPath, value, caseSensitive, retRelPath);
end;

function CkJsonObject_FirebaseApplyEvent (objHandle: HCkJsonObject; name: PWideChar; data: PWideChar): wordbool;
begin
  result := TCkJsonObject_FirebaseApplyEvent(_map(78, 'CkJsonObject_FirebaseApplyEvent'))
    (objHandle, name, data);
end;

function CkJsonObject_FirebasePatch (objHandle: HCkJsonObject; jsonPath: PWideChar; jsonData: PWideChar): wordbool;
begin
  result := TCkJsonObject_FirebasePatch(_map(79, 'CkJsonObject_FirebasePatch'))
    (objHandle, jsonPath, jsonData);
end;

function CkJsonObject_FirebasePut (objHandle: HCkJsonObject; jsonPath: PWideChar; value: PWideChar): wordbool;
begin
  result := TCkJsonObject_FirebasePut(_map(80, 'CkJsonObject_FirebasePut'))
    (objHandle, jsonPath, value);
end;

function CkJsonObject_GetDocRoot (objHandle: HCkJsonObject): HCkJsonObject;
begin
  result := TCkJsonObject_GetDocRoot(_map(81, 'CkJsonObject_GetDocRoot'))
    (objHandle);
end;

function CkJsonObject_HasMember (objHandle: HCkJsonObject; jsonPath: PWideChar): wordbool;
begin
  result := TCkJsonObject_HasMember(_map(82, 'CkJsonObject_HasMember'))
    (objHandle, jsonPath);
end;

function CkJsonObject_IndexOf (objHandle: HCkJsonObject; name: PWideChar): Integer;
begin
  result := TCkJsonObject_IndexOf(_map(83, 'CkJsonObject_IndexOf'))
    (objHandle, name);
end;

function CkJsonObject_IntAt (objHandle: HCkJsonObject; index: Integer): Integer;
begin
  result := TCkJsonObject_IntAt(_map(84, 'CkJsonObject_IntAt'))
    (objHandle, index);
end;

function CkJsonObject_IntOf (objHandle: HCkJsonObject; jsonPath: PWideChar): Integer;
begin
  result := TCkJsonObject_IntOf(_map(85, 'CkJsonObject_IntOf'))
    (objHandle, jsonPath);
end;

function CkJsonObject_IsNullAt (objHandle: HCkJsonObject; index: Integer): wordbool;
begin
  result := TCkJsonObject_IsNullAt(_map(86, 'CkJsonObject_IsNullAt'))
    (objHandle, index);
end;

function CkJsonObject_IsNullOf (objHandle: HCkJsonObject; jsonPath: PWideChar): wordbool;
begin
  result := TCkJsonObject_IsNullOf(_map(87, 'CkJsonObject_IsNullOf'))
    (objHandle, jsonPath);
end;

function CkJsonObject_JsonTypeOf (objHandle: HCkJsonObject; jsonPath: PWideChar): Integer;
begin
  result := TCkJsonObject_JsonTypeOf(_map(88, 'CkJsonObject_JsonTypeOf'))
    (objHandle, jsonPath);
end;

function CkJsonObject_Load (objHandle: HCkJsonObject; json: PWideChar): wordbool;
begin
  result := TCkJsonObject_Load(_map(89, 'CkJsonObject_Load'))
    (objHandle, json);
end;

function CkJsonObject_LoadBd (objHandle: HCkJsonObject; bd: HCkBinData): wordbool;
begin
  result := TCkJsonObject_LoadBd(_map(90, 'CkJsonObject_LoadBd'))
    (objHandle, bd);
end;

function CkJsonObject_LoadFile (objHandle: HCkJsonObject; path: PWideChar): wordbool;
begin
  result := TCkJsonObject_LoadFile(_map(91, 'CkJsonObject_LoadFile'))
    (objHandle, path);
end;

function CkJsonObject_LoadPredefined (objHandle: HCkJsonObject; name: PWideChar): wordbool;
begin
  result := TCkJsonObject_LoadPredefined(_map(92, 'CkJsonObject_LoadPredefined'))
    (objHandle, name);
end;

function CkJsonObject_LoadSb (objHandle: HCkJsonObject; sb: HCkStringBuilder): wordbool;
begin
  result := TCkJsonObject_LoadSb(_map(93, 'CkJsonObject_LoadSb'))
    (objHandle, sb);
end;

function CkJsonObject_MoveMember (objHandle: HCkJsonObject; fromIndex: Integer; toIndex: Integer): wordbool;
begin
  result := TCkJsonObject_MoveMember(_map(94, 'CkJsonObject_MoveMember'))
    (objHandle, fromIndex, toIndex);
end;

function CkJsonObject_NameAt (objHandle: HCkJsonObject; index: Integer; outStr: HCkString): wordbool;
begin
  result := TCkJsonObject_NameAt(_map(95, 'CkJsonObject_NameAt'))
    (objHandle, index, outStr);
end;

function CkJsonObject__nameAt (objHandle: HCkJsonObject; index: Integer): PWideChar;
begin
  result := TCkJsonObject__nameAt(_map(96, 'CkJsonObject__nameAt'))
    (objHandle, index);
end;

function CkJsonObject_ObjectAt (objHandle: HCkJsonObject; index: Integer): HCkJsonObject;
begin
  result := TCkJsonObject_ObjectAt(_map(97, 'CkJsonObject_ObjectAt'))
    (objHandle, index);
end;

function CkJsonObject_ObjectOf (objHandle: HCkJsonObject; jsonPath: PWideChar): HCkJsonObject;
begin
  result := TCkJsonObject_ObjectOf(_map(98, 'CkJsonObject_ObjectOf'))
    (objHandle, jsonPath);
end;

function CkJsonObject_Predefine (objHandle: HCkJsonObject; name: PWideChar): wordbool;
begin
  result := TCkJsonObject_Predefine(_map(99, 'CkJsonObject_Predefine'))
    (objHandle, name);
end;

function CkJsonObject_Rename (objHandle: HCkJsonObject; oldName: PWideChar; newName: PWideChar): wordbool;
begin
  result := TCkJsonObject_Rename(_map(100, 'CkJsonObject_Rename'))
    (objHandle, oldName, newName);
end;

function CkJsonObject_RenameAt (objHandle: HCkJsonObject; index: Integer; name: PWideChar): wordbool;
begin
  result := TCkJsonObject_RenameAt(_map(101, 'CkJsonObject_RenameAt'))
    (objHandle, index, name);
end;

function CkJsonObject_SaveLastError (objHandle: HCkJsonObject; path: PWideChar): wordbool;
begin
  result := TCkJsonObject_SaveLastError(_map(102, 'CkJsonObject_SaveLastError'))
    (objHandle, path);
end;

function CkJsonObject_SetBoolAt (objHandle: HCkJsonObject; index: Integer; value: wordbool): wordbool;
begin
  result := TCkJsonObject_SetBoolAt(_map(103, 'CkJsonObject_SetBoolAt'))
    (objHandle, index, value);
end;

function CkJsonObject_SetBoolOf (objHandle: HCkJsonObject; jsonPath: PWideChar; value: wordbool): wordbool;
begin
  result := TCkJsonObject_SetBoolOf(_map(104, 'CkJsonObject_SetBoolOf'))
    (objHandle, jsonPath, value);
end;

function CkJsonObject_SetIntAt (objHandle: HCkJsonObject; index: Integer; value: Integer): wordbool;
begin
  result := TCkJsonObject_SetIntAt(_map(105, 'CkJsonObject_SetIntAt'))
    (objHandle, index, value);
end;

function CkJsonObject_SetIntOf (objHandle: HCkJsonObject; jsonPath: PWideChar; value: Integer): wordbool;
begin
  result := TCkJsonObject_SetIntOf(_map(106, 'CkJsonObject_SetIntOf'))
    (objHandle, jsonPath, value);
end;

function CkJsonObject_SetNullAt (objHandle: HCkJsonObject; index: Integer): wordbool;
begin
  result := TCkJsonObject_SetNullAt(_map(107, 'CkJsonObject_SetNullAt'))
    (objHandle, index);
end;

function CkJsonObject_SetNullOf (objHandle: HCkJsonObject; jsonPath: PWideChar): wordbool;
begin
  result := TCkJsonObject_SetNullOf(_map(108, 'CkJsonObject_SetNullOf'))
    (objHandle, jsonPath);
end;

function CkJsonObject_SetNumberAt (objHandle: HCkJsonObject; index: Integer; value: PWideChar): wordbool;
begin
  result := TCkJsonObject_SetNumberAt(_map(109, 'CkJsonObject_SetNumberAt'))
    (objHandle, index, value);
end;

function CkJsonObject_SetNumberOf (objHandle: HCkJsonObject; jsonPath: PWideChar; value: PWideChar): wordbool;
begin
  result := TCkJsonObject_SetNumberOf(_map(110, 'CkJsonObject_SetNumberOf'))
    (objHandle, jsonPath, value);
end;

function CkJsonObject_SetStringAt (objHandle: HCkJsonObject; index: Integer; value: PWideChar): wordbool;
begin
  result := TCkJsonObject_SetStringAt(_map(111, 'CkJsonObject_SetStringAt'))
    (objHandle, index, value);
end;

function CkJsonObject_SetStringOf (objHandle: HCkJsonObject; jsonPath: PWideChar; value: PWideChar): wordbool;
begin
  result := TCkJsonObject_SetStringOf(_map(112, 'CkJsonObject_SetStringOf'))
    (objHandle, jsonPath, value);
end;

function CkJsonObject_SizeOfArray (objHandle: HCkJsonObject; jsonPath: PWideChar): Integer;
begin
  result := TCkJsonObject_SizeOfArray(_map(113, 'CkJsonObject_SizeOfArray'))
    (objHandle, jsonPath);
end;

function CkJsonObject_StringAt (objHandle: HCkJsonObject; index: Integer; outStr: HCkString): wordbool;
begin
  result := TCkJsonObject_StringAt(_map(114, 'CkJsonObject_StringAt'))
    (objHandle, index, outStr);
end;

function CkJsonObject__stringAt (objHandle: HCkJsonObject; index: Integer): PWideChar;
begin
  result := TCkJsonObject__stringAt(_map(115, 'CkJsonObject__stringAt'))
    (objHandle, index);
end;

function CkJsonObject_StringOf (objHandle: HCkJsonObject; jsonPath: PWideChar; outStr: HCkString): wordbool;
begin
  result := TCkJsonObject_StringOf(_map(116, 'CkJsonObject_StringOf'))
    (objHandle, jsonPath, outStr);
end;

function CkJsonObject__stringOf (objHandle: HCkJsonObject; jsonPath: PWideChar): PWideChar;
begin
  result := TCkJsonObject__stringOf(_map(117, 'CkJsonObject__stringOf'))
    (objHandle, jsonPath);
end;

function CkJsonObject_StringOfSb (objHandle: HCkJsonObject; jsonPath: PWideChar; sb: HCkStringBuilder): wordbool;
begin
  result := TCkJsonObject_StringOfSb(_map(118, 'CkJsonObject_StringOfSb'))
    (objHandle, jsonPath, sb);
end;

function CkJsonObject_Swap (objHandle: HCkJsonObject; index1: Integer; index2: Integer): wordbool;
begin
  result := TCkJsonObject_Swap(_map(119, 'CkJsonObject_Swap'))
    (objHandle, index1, index2);
end;

function CkJsonObject_TypeAt (objHandle: HCkJsonObject; index: Integer): Integer;
begin
  result := TCkJsonObject_TypeAt(_map(120, 'CkJsonObject_TypeAt'))
    (objHandle, index);
end;

function CkJsonObject_UpdateBd (objHandle: HCkJsonObject; jsonPath: PWideChar; encoding: PWideChar; bd: HCkBinData): wordbool;
begin
  result := TCkJsonObject_UpdateBd(_map(121, 'CkJsonObject_UpdateBd'))
    (objHandle, jsonPath, encoding, bd);
end;

function CkJsonObject_UpdateBool (objHandle: HCkJsonObject; jsonPath: PWideChar; value: wordbool): wordbool;
begin
  result := TCkJsonObject_UpdateBool(_map(122, 'CkJsonObject_UpdateBool'))
    (objHandle, jsonPath, value);
end;

function CkJsonObject_UpdateInt (objHandle: HCkJsonObject; jsonPath: PWideChar; value: Integer): wordbool;
begin
  result := TCkJsonObject_UpdateInt(_map(123, 'CkJsonObject_UpdateInt'))
    (objHandle, jsonPath, value);
end;

function CkJsonObject_UpdateNewArray (objHandle: HCkJsonObject; jsonPath: PWideChar): wordbool;
begin
  result := TCkJsonObject_UpdateNewArray(_map(124, 'CkJsonObject_UpdateNewArray'))
    (objHandle, jsonPath);
end;

function CkJsonObject_UpdateNewObject (objHandle: HCkJsonObject; jsonPath: PWideChar): wordbool;
begin
  result := TCkJsonObject_UpdateNewObject(_map(125, 'CkJsonObject_UpdateNewObject'))
    (objHandle, jsonPath);
end;

function CkJsonObject_UpdateNull (objHandle: HCkJsonObject; jsonPath: PWideChar): wordbool;
begin
  result := TCkJsonObject_UpdateNull(_map(126, 'CkJsonObject_UpdateNull'))
    (objHandle, jsonPath);
end;

function CkJsonObject_UpdateNumber (objHandle: HCkJsonObject; jsonPath: PWideChar; numericStr: PWideChar): wordbool;
begin
  result := TCkJsonObject_UpdateNumber(_map(127, 'CkJsonObject_UpdateNumber'))
    (objHandle, jsonPath, numericStr);
end;

function CkJsonObject_UpdateSb (objHandle: HCkJsonObject; jsonPath: PWideChar; sb: HCkStringBuilder): wordbool;
begin
  result := TCkJsonObject_UpdateSb(_map(128, 'CkJsonObject_UpdateSb'))
    (objHandle, jsonPath, sb);
end;

function CkJsonObject_UpdateString (objHandle: HCkJsonObject; jsonPath: PWideChar; value: PWideChar): wordbool;
begin
  result := TCkJsonObject_UpdateString(_map(129, 'CkJsonObject_UpdateString'))
    (objHandle, jsonPath, value);
end;

function CkJsonObject_WriteFile (objHandle: HCkJsonObject; path: PWideChar): wordbool;
begin
  result := TCkJsonObject_WriteFile(_map(130, 'CkJsonObject_WriteFile'))
    (objHandle, path);
end;

end.

