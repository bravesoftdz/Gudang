unit u_golongan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sEdit, sLabel, sButton, Buttons, sComboBox, UFungsi, sSkinProvider,
  StdCtrls;

type
  TF_golongan = class(TForm)
    sLabel1: TsLabel;
    ed_kode: TEdit;
    sLabel2: TsLabel;
    ed_desk: TEdit;
    sLabel3: TsLabel;
    B_new: TsButton;
    B_save: TsButton;
    cb_jenis: TsComboBox;
    sSkinProvider1: TsSkinProvider;
    cb_1: TsComboBox;
    procedure baru;
    procedure ubah;
    procedure cb_jenisChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure B_newClick(Sender: TObject);
    procedure B_saveClick(Sender: TObject);
  private
    gol_baru: boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_golongan: TF_golongan;

implementation

uses
  u_dm, u_cari;

{$R *.dfm}

procedure TF_golongan.baru;
begin
  ed_kode.Enabled := True;
  cb_jenis.Enabled := True;

  cb_jenis.ItemIndex := cb_1.Items.IndexOf(F_cari.q_cari.FieldByName('kd_jenis').AsString);
  cb_jenisChange(Self);
  ed_desk.Clear;
  gol_baru := true;
end;

procedure TF_golongan.ubah;
begin
  ed_kode.Enabled := False;
  cb_jenis.Enabled := False;

  cb_jenis.ItemIndex := cb_1.Items.IndexOf(F_cari.q_cari.FieldByName('kd_jenis').AsString);
  ed_desk.text := F_cari.q_cari.FieldByName('n_golbrg').AsString;
  ed_kode.Text := F_cari.q_cari.FieldByName('kd_golbrg').AsString;
  gol_baru := false;
end;

procedure TF_golongan.cb_jenisChange(Sender: TObject);
begin
  fungsi.SQLExec(dm.q_temp, 'select * from tb_golongan where kd_jenis="' + cb_1.Items.Strings
    [cb_jenis.Itemindex] + '"', true);
  if Length(IntToStr(dm.Q_temp.recordcount + 1)) <> 1 then
    ed_kode.Text := inttostr(dm.Q_temp.recordcount + 1)
  else
    ed_kode.Text := '0' + inttostr(dm.Q_temp.recordcount + 1);
end;

procedure TF_golongan.FormCreate(Sender: TObject);
var
  x: integer;
begin
  fungsi.SQLExec(dm.Q_temp, 'SELECT * from tb_jenis', true);
  for x := 1 to dm.Q_temp.RecordCount do
  begin
    cb_jenis.AddItem(dm.Q_temp.fieldbyname('n_jenis').AsString, sender);
    cb_1.AddItem(dm.Q_temp.fieldbyname('kd_jenis').AsString, sender);
    dm.Q_temp.Next;
  end;
end;

procedure TF_golongan.B_newClick(Sender: TObject);
begin
  baru;
end;

procedure TF_golongan.B_saveClick(Sender: TObject);
begin
  if ed_kode.Text = '' then
    Exit;

  dm.db_conn.StartTransaction;
  try
    if gol_baru = true then
      fungsi.SQLExec(dm.Q_Exe,
        'insert into tb_golongan (kd_jenis, kd_golbrg,n_golbrg,`update`)values ("' +
        cb_1.Items.Strings[cb_jenis.Itemindex] + '","' + ed_kode.Text + '","' +
        ed_desk.Text + '","' + formatdatetime('yyyy-MM-dd', date()) + '")', false)
    else
      fungsi.SQLExec(dm.Q_Exe, 'update tb_golongan set n_golbrg="' + ed_desk.Text
        + '",`update`="' + formatdatetime('yyyy-MM-dd', date()) +
        '" where kd_golbrg="' + ed_kode.Text + '" and kd_jenis="' + cb_1.Items.Strings
        [cb_jenis.Itemindex] + '"', false);

{      fungsi.SQLExec(dm.Q_Exe,'insert into tb_golongan (kd_jenis, kd_golbrg,n_golbrg,`update`)values ("'+
      inttostr(cb_jenis.ItemIndex+1)+'","'+ed_kode.Text+'","'+ed_desk.Text+'","'+formatdatetime('yyyy-MM-dd', date())+'")',false) else
      fungsi.SQLExec(dm.Q_Exe,'update tb_golongan set n_golbrg="'+ed_desk.Text+'",`update`="'+
      formatdatetime('yyyy-MM-dd', date())+'" where kd_golbrg="'+ed_kode.Text+'" and kd_jenis="'+inttostr(cb_jenis.ItemIndex+1)+'"',false);
}
    dm.db_conn.Commit;
    showmessage('penyimpanan data sukses....');
  except
    on e: exception do
    begin
      dm.db_conn.Rollback;
      showmessage('penyimpanan data gagal '#10#13'' + e.Message);
    end;
  end;

  F_cari.q_cari.Close;
  F_cari.q_cari.Open;

  F_cari.clm1.caption := 'No';
  F_cari.clm2.caption := 'Deskripsi';
  close;
end;

end.


