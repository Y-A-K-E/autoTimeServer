unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.SvcMgr, Vcl.Dialogs,shellapi,
  Vcl.ExtCtrls;

type
  TService1 = class(TService)
    Timer1: TTimer;
    procedure ServiceStart(Sender: TService; var Started: Boolean);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    function GetServiceController: TServiceController; override;
    { Public declarations }
  end;

var
  Service1: TService1;

implementation

{$R *.dfm}

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  Service1.Controller(CtrlCode);
end;

function TService1.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;



procedure TService1.ServiceStart(Sender: TService; var Started: Boolean);
begin
timer1.enabled:=true;
//Ê×´ÎÎª6ÃëÑÓ³Ù

ShellExecute(0, 'open', pwidechar('net'),'stop w32time','', SW_HIDE);
ShellExecute(0, 'open', pwidechar('w32tm'),'/unregister','', SW_HIDE);
ShellExecute(0, 'open', pwidechar('w32tm'),'/register','', SW_HIDE);
ShellExecute(0, 'open', pwidechar('net'),'start w32time','', SW_HIDE);


ShellExecute(0, 'open', pwidechar('w32tm'),'/resync','', SW_HIDE);

end;

procedure TService1.Timer1Timer(Sender: TObject);
begin
 timer1.Interval:=600000; //10min
 ShellExecute(0, 'open', pwidechar('w32tm'),'/resync','', SW_HIDE);

end;

end.
