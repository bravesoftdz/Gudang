unit u_list_return;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxDataStorage, cxEdit, DB, cxDBData, sSkinProvider,
  Buttons, ExtCtrls, sPanel, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, UFungsi,
  cxStyles, cxCurrencyEdit, sSpeedButton, sTooledit, sLabel, cxCustomData,
  cxFilter, cxData, StdCtrls, Mask, sMaskEdit, sCustomComboEdit,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxNavigator;

type
  TF_list_return = class(TForm)
    grid: TcxGrid;
    t_data: TcxGridDBTableView;
    l_data: TcxGridLevel;
    sPanel1: TsPanel;
    sSkinProvider1: TsSkinProvider;
    t_datakd_return: TcxGridDBColumn;
    t_datatgl_return: TcxGridDBColumn;
    t_datanilai_faktur: TcxGridDBColumn;
    t_datan_supp: TcxGridDBColumn;
    t_dataColumn1: TcxGridDBColumn;
    t_dataColumn2: TcxGridDBColumn;
    t_dataColumn3: TcxGridDBColumn;
    sb_2: TsSpeedButton;
    sb_1: TsSpeedButton;
    p1: TsPanel;
    l_1: TsLabel;
    l_2: TsLabel;
    de_mulai: TsDateEdit;
    de_sampai: TsDateEdit;
    t_data_simpan_pada: TcxGridDBColumn;
    procedure WMMDIACTIVATE(var msg: TWMMDIACTIVATE); message WM_MDIACTIVATE;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure t_dataCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo:
      TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
      var AHandled: Boolean);
    procedure segarkan;
    procedure FormCreate(Sender: TObject);
    procedure sb_1Click(Sender: TObject);
    procedure sb_2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_list_return: TF_list_return;

implementation

uses
  u_dm, u_return, u_utama;

{$R *.dfm}

procedure TF_list_return.WMMDIACTIVATE(var msg: TWMMDIACTIVATE);
var
  active: TWinControl;
  idx: Integer;
begin
  active := FindControl(msg.ActiveWnd);
  if not (dm.metu_kabeh) then
  begin
    if Assigned(active) then
    begin
      idx := F_utama.tc_child.Tabs.IndexOfObject(TObject(msg.ActiveWnd));
      F_utama.tc_child.Tag := -1;
      F_utama.tc_child.TabIndex := idx;
      F_utama.tc_child.Tag := 0;
    end;
  end;
end;

procedure TF_list_return.segarkan;
begin
  fungsi.SQLExec(dm.q_list_return,
    'select * from vw_list_return  where kd_perusahaan="' + dm.kd_perusahaan +
    '" and tgl_return >= ' + quotedstr(FormatDateTime('yyyy-MM-dd', de_mulai.Date))
    + ' and tgl_return <= ' + quotedstr(FormatDateTime('yyyy-MM-dd', de_sampai.Date))
    + '', true);
end;

procedure TF_list_return.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  F_utama.MDIChildDestroyed(Self.Handle);
  action := cafree;
  F_list_return := nil;
end;

procedure TF_list_return.t_dataCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift:
  TShiftState; var AHandled: Boolean);
begin
//if F_return = nil then
  application.CreateForm(TF_return, F_return);

  F_return.Show;
  F_return.tampil_data;
end;

procedure TF_list_return.FormCreate(Sender: TObject);
var
  Year, Month, Day: Word;
begin
  DecodeDate(Now, Year, Month, Day);
  de_mulai.Date := EncodeDate(Year, Month, 1);
  de_sampai.Date := Date();

  F_utama.MDIChildCreated(self.Handle);
  segarkan;
end;

procedure TF_list_return.sb_1Click(Sender: TObject);
begin
  close;
end;

procedure TF_list_return.sb_2Click(Sender: TObject);
begin
  segarkan;
end;

end.


