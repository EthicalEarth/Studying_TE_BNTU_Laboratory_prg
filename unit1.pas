unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, TAGraph, TASeries, Forms, Controls, Graphics,
  Dialogs, StdCtrls, math,Unit2;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Chart1: TChart;
    Chart1LineSeries1: TLineSeries;
    Chart1LineSeries2: TLineSeries;
    Chart1LineSeries3: TLineSeries;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    help_11: TLabel;
    help_20: TLabel;
    help_21: TLabel;
    W_2: TLabel;
    help_4: TLabel;
    help_8: TLabel;
    help_1: TLabel;
    help_5: TLabel;
    U_1_znach: TLabel;
    U_2_znach: TLabel;
    help_2: TLabel;
    help_6: TLabel;
    help_9: TLabel;
    help_13: TLabel;
    help_10: TLabel;
    help_15: TLabel;
    help_3: TLabel;
    W_1: TLabel;
    help_7: TLabel;
    help_12: TLabel;
    help_14: TLabel;
    help_16: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1EditingDone(Sender: TObject);
    procedure Edit2EditingDone(Sender: TObject);
    procedure Edit4EditingDone(Sender: TObject);
    procedure Edit5EditingDone(Sender: TObject);


  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  U_1:real;
  U_2:real;
  t:real;
  U_result:real;
  U_1_convert:string[5];
  U_2_convert:string[5];
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
Chart1LineSeries1.Clear;
Chart1LineSeries2.Clear;
Chart1LineSeries3.Clear;
W_1.Caption:=FloatToStr(2*3.14*StrToFloat(Edit4.Text));
W_2.Caption:=FloatToStr(2*3.14*StrToFloat(Edit2.Text));
U_1_convert:=FloatToStr(Sqrt(2)*StrToFloat(Edit1.Text));
U_1_znach.Caption:=U_1_convert;
U_2_convert:=FloatToStr(Sqrt(2)*StrToFloat(Edit5.Text));
U_2_znach.Caption:=U_2_convert;
t:=0;

while t<0.04  do begin
U_1:=sqrt(2)*StrToFloat(Edit1.Text)*sin(2*3.14*StrToFloat(Edit4.Text)*t+StrToFLoat(Edit3.Text)*3.14/180);
U_2:=sqrt(2)*StrToFloat(Edit5.Text)*sin(2*3.14*StrToFloat(Edit2.Text)*t+StrToFLoat(Edit6.Text)*3.14/180);
U_result:=U_1+U_2;
Chart1LineSeries1.AddXY(t,U_1);
Chart1LineSeries2.AddXY(t,U_2);
Chart1LineSeries3.AddXY(t,U_result);
t:=t+0.00001;
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form2.show;
end;



procedure TForm1.Edit1EditingDone(Sender: TObject);
begin
U_1_convert:=FloatToStr(Sqrt(2)*StrToFloat(Edit1.Text));
U_1_znach.Caption:=U_1_convert;
end;

procedure TForm1.Edit2EditingDone(Sender: TObject);
begin
W_2.Caption:=FloatToStr(2*3.14*StrToFloat(Edit2.Text));
end;

procedure TForm1.Edit4EditingDone(Sender: TObject);
begin

W_1.Caption:=FloatToStr(2*3.14*StrToFloat(Edit4.Text));
end;

procedure TForm1.Edit5EditingDone(Sender: TObject);
begin
U_2_convert:=FloatToStr(Sqrt(2)*StrToFloat(Edit5.Text));
U_2_znach.Caption:=U_2_convert;
end;




end.

