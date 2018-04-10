unit DataModule;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZConnection, SMDBFind, SMDBFltr, frxClass, frxDBSet;

type
  TDM = class(TDataModule)
    con1: TZConnection;
    qr1_login: TZQuery;
    qr2_barang: TZQuery;
    ds1: TDataSource;
    ds2: TDataSource;
    filter_gudang: TSMDBFilterDialog;
    find_gudang: TSMDBFindDialog;
    qr3_transaction: TZQuery;
    ds3: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    qr4_suppliers: TZQuery;
    ds4: TDataSource;
    qr5_customers: TZQuery;
    ds5: TDataSource;
    qr6_detai_transaction: TZQuery;
    ds6: TDataSource;
    update_stok: TZQuery;
    intgrfldqr2_barangid: TIntegerField;
    strngfldqr2_barangnama: TStringField;
    intgrfldqr2_barangstok: TIntegerField;
    intgrfldqr2_barangharga: TIntegerField;
    intgrfldqr2_barangid_supplier: TIntegerField;
    strngfldqr2_barangnama_supplier: TStringField;
    strngfldqr2_barangstatus: TStringField;
    search_produk: TZQuery;
    cek_produkid_beli: TZQuery;
    transaksi_report: TZQuery;
    ds_invoice: TDataSource;
    intgrfld_reportid: TIntegerField;
    intgrfld_reportid_produk: TIntegerField;
    strngfld_reportnama: TStringField;
    intgrfld_reportqty: TIntegerField;
    strngfld_reportnama_1: TStringField;
    strngfld_reportnama_2: TStringField;
    dtfld_reporttanggal: TDateField;
    intgrfld_reportid_pelanggan: TIntegerField;
    intgrfld_reportharga: TIntegerField;
    intgrfld_reportsubtotal: TIntegerField;
    intgrfld_reporttotal: TIntegerField;
    intgrfld_reportppn: TIntegerField;
    intgrfld_reportgrandtotal: TIntegerField;
    intgrfld_reportpay: TIntegerField;
    intgrfld_reportchange: TIntegerField;
    strngfld_reportalamat_lengkap: TStringField;
    strngfld_reportkota: TStringField;
    strngfld_reportno_invoice: TStringField;
    procedure qr2_barangCalcFields(DataSet: TDataSet);
    procedure transaksi_reportCalcFields(DataSet: TDataSet);
  private
    //FOnRefreshData: TNotifyEvent;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation
uses Home;

{$R *.dfm}

procedure TDM.qr2_barangCalcFields(DataSet: TDataSet);
begin
   if DM.intgrfldqr2_barangstok.AsString = '' then Exit;
   if DM.intgrfldqr2_barangstok.AsInteger > 0 then
   begin
     DM.strngfldqr2_barangstatus.Value := 'Tersedia';
   end
   else
     DM.strngfldqr2_barangstatus.Value := 'Kosong';
end;

procedure TDM.transaksi_reportCalcFields(DataSet: TDataSet);
begin
  DM.intgrfld_reportsubtotal.Value := DM.intgrfld_reportqty.AsInteger * DM.intgrfld_reportharga.AsInteger;
  DM.intgrfld_reporttotal.Value := Form1.total_belum_ppn;
  DM.intgrfld_reportppn.Value := (Form1.total_belum_ppn * 10) div 100;
  DM.intgrfld_reportgrandtotal.Value := Form1.total_belum_ppn + DM.intgrfld_reportppn.AsInteger;
  DM.intgrfld_reportpay.Value := Form1.BayarJual_public;
  DM.intgrfld_reportchange.Value := DM.intgrfld_reportpay.AsInteger - DM.intgrfld_reportgrandtotal.AsInteger;
  DM.strngfld_reportno_invoice.Value := 'P101'+IntToStr(DM.intgrfld_reportid.AsInteger);
end;

end.
