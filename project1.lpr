program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, tachartlazaruspkg, Unit1, Unit2, SysUtils
  { you can add units after this };

{$R *.res}

begin
  Application.Title:='toe';
  Application.Initialize;
  RequireDerivedFormResource := True;
    Application.CreateForm(TForm1, Form1);
    Application.CreateForm(TForm2, Form2);
  Application.run;
end.

