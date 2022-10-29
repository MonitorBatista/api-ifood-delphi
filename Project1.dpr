program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Aut in 'classes\Aut.pas',
  AuthenticationEndpoints in 'classes\AuthenticationEndpoints.pas',
  PrivateKey in 'classes\PrivateKey.pas',
  Rsa in 'classes\Rsa.pas',
  XSuperJSON in 'classes\XSuperJSON.pas',
  XSuperObject in 'classes\XSuperObject.pas';
 // JsonDataObjects in 'D:\Plataformas\JsonDataObjects-master\Source\JsonDataObjects.pas' {/uses};
 // ClassIfood in 'C:\Users\Usuário\Downloads\ClassIfood.pas';
 // Pkg.Json.DTO in 'C:\Users\Usuário\Downloads\Pkg.Json.DTO.pas';
 // ClassIfoodPortal in 'classes\ClassIfoodPortal.pas';

//uses

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;

end.
