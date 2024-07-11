unit satuan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    SIMPAN: TButton;
    EDIT: TButton;
    HAPUS: TButton;
    BATAL: TButton;
    DBGrid1: TDBGrid;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    Label3: TLabel;
    procedure SIMPANClick(Sender: TObject);
    procedure EDITClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure HAPUSClick(Sender: TObject);
    procedure BATALClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: Integer;

implementation

{$R *.dfm}

procedure TForm1.BATALClick(Sender: TObject);
begin
  edit1.Clear;
  edit2.Clear;
  ShowMessage('Inputan berhasil dibersihkan');
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
  a := ZQuery1.FieldByName('id').AsInteger;
  edit1.Text := ZQuery1.FieldByName('nama').AsString;
  edit2.Text := ZQuery1.FieldByName('diskripsi').AsString;
end;

procedure TForm1.EDITClick(Sender: TObject);
begin
with ZQuery1 do
  begin
    SQL.Clear;
    SQL.Add('UPDATE satuan SET nama = "' + edit1.Text + '",');
    SQL.Add('diskripsi = "' + edit2.Text + '"');
    SQL.Add('WHERE id = ' + IntToStr(a));
    ExecSQL;
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM satuan');
    Open;
    edit1.Clear;
    edit2.Clear;
  end;
  ShowMessage('Data Berhasil Diedit');
end;

procedure TForm1.HAPUSClick(Sender: TObject);
begin
with ZQuery1 do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM satuan WHERE id = ' + IntToStr(a));
    ExecSQL;
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM satuan');
    Open;
    edit1.Clear;
    edit2.Clear;
  end;
  ShowMessage('Data Berhasil Dihapus');
end;

procedure TForm1.SIMPANClick(Sender: TObject);
begin
  with ZQuery1 do
  begin
    SQL.Clear;
    SQL.Add('INSERT INTO satuan (nama, diskripsi) VALUES ("' + edit1.Text + '", "' + edit2.Text + '")');
    ExecSQL;


    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM satuan');
    Open;

    edit1.Clear;
    edit2.Clear;
  end;
  ShowMessage('Data Berhasil Disimpan');
end;
end.
