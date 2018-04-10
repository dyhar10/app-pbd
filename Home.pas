unit Home;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls, Grids, DBGrids, SMDBGrid, TeeProcs,
  TeEngine, Chart, DbChart, SMDBCtrl, Series, mxExport, frxClass, frxDBSet, SMDBComb,
  DBCtrls;

type

  TForm1 = class(TForm)
    mxDBGridExport1: TmxDBGridExport;
    pnl_top: TPanel;
    pnl_menu: TPanel;
    panel_penjualanFront: TPanel;
    pnl12: TPanel;
    pnl16: TPanel;
    img1: TImage;
    pnlMenu: TPanel;
    btn_exit: TPanel;
    img12: TImage;
    btn_logout: TPanel;
    img16: TImage;
    btn_home: TPanel;
    img5: TImage;
    btn_pembelian: TPanel;
    img9: TImage;
    btn_statistik: TPanel;
    img10: TImage;
    btn_bantuan: TPanel;
    img11: TImage;
    btn_gudang: TPanel;
    img8: TImage;
    btn_penjualan: TPanel;
    img7: TImage;
    pnl22: TPanel;
    pnl11: TPanel;
    pnl4: TPanel;
    img3: TImage;
    img_search: TImage;
    pnl14: TPanel;
    pnl24: TPanel;
    edit_search: TEdit;
    panel_penjualan: TPanel;
    pnl15: TPanel;
    pnl29: TPanel;
    pnl30: TPanel;
    cbb1: TComboBox;
    cbb2: TComboBox;
    edit_idjualbarang: TEdit;
    btn_masukanList: TPanel;
    edit_jmlbarang: TEdit;
    lbl22: TLabel;
    edit_hargabarangJual: TEdit;
    lbl3: TLabel;
    edit_namabarangJual: TEdit;
    lbl21: TLabel;
    lbl2: TLabel;
    lbl18: TLabel;
    lbl4: TLabel;
    imgJual: TImage;
    pnl17: TPanel;
    pnl31: TPanel;
    smdbgrd_jual: TSMDBGrid;
    scrlbx1: TScrollBox;
    pnl19: TPanel;
    pnl38: TPanel;
    pnl28: TPanel;
    pnl27: TPanel;
    pnl25: TPanel;
    pnl26: TPanel;
    pnl39: TPanel;
    pnl50: TPanel;
    lbl_totalJual: TLabel;
    pnl47: TPanel;
    pnl48: TPanel;
    pnl49: TPanel;
    lbl20: TLabel;
    pnl44: TPanel;
    pnl45: TPanel;
    pnl46: TPanel;
    lbl13: TLabel;
    pnl41: TPanel;
    pnl42: TPanel;
    btn_submitJual: TPanel;
    pnl43: TPanel;
    btn_cencelJual: TPanel;
    pnl51: TPanel;
    pnl52: TPanel;
    pnl53: TPanel;
    panel_loginFront: TPanel;
    panel_login: TPanel;
    img2: TImage;
    lbl1: TLabel;
    lbl14: TLabel;
    lbl11: TLabel;
    btn_login: TPanel;
    edit_nokaryawan: TEdit;
    pnl10: TPanel;
    pnl5: TPanel;
    pnl6: TPanel;
    pnl7: TPanel;
    pnl8: TPanel;
    pnl9: TPanel;
    edit_passwordkaryawan: TEdit;
    pnl_aboutFront: TPanel;
    panel_bantuan: TPanel;
    pnl18: TPanel;
    lbl15: TLabel;
    panel_gudangFront: TPanel;
    pnl_gudang1: TPanel;
    pnl34: TPanel;
    lbl9: TLabel;
    smdbnvgtr_gudang: TSMDBNavigator;
    SMDBGrid1: TSMDBGrid;
    pnl2: TPanel;
    pnltambahsupplier: TPanel;
    img19: TImage;
    lbl34: TLabel;
    pnlTambahKaryawan: TPanel;
    img20: TImage;
    lbl36: TLabel;
    pnlrefreshdata: TPanel;
    img21: TImage;
    lbl35: TLabel;
    pnl_cetakGudang: TPanel;
    img15: TImage;
    lbl33: TLabel;
    pnl_exportGudang: TPanel;
    img14: TImage;
    lbl32: TLabel;
    pnl_hapusGudang: TPanel;
    img13: TImage;
    lbl31: TLabel;
    pnl_filterGudang: TPanel;
    img18: TImage;
    lbl30: TLabel;
    pnl_editGudang: TPanel;
    img6: TImage;
    lbl29: TLabel;
    pnl_statistikFront: TPanel;
    panel_statistik: TPanel;
    pnl54: TPanel;
    lbl16: TLabel;
    dbcht_chart: TDBChart;
    panel_pembelianFront: TPanel;
    panel_pembelian: TPanel;
    pnl20: TPanel;
    pnl21: TPanel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    img_logobeli: TImage;
    lbl8: TLabel;
    lbl26: TLabel;
    edt_hargaBarBeli: TEdit;
    btn_masukanKeListBeli: TPanel;
    cbb_idSupplier: TComboBox;
    cbb_idbarangBeli: TComboBox;
    edt_jumlahBarBeli: TEdit;
    pnl55: TPanel;
    pnl23: TPanel;
    scrlbx3: TScrollBox;
    pnl56: TPanel;
    pnl37: TPanel;
    pnl32: TPanel;
    pnl33: TPanel;
    pnl35: TPanel;
    pnl36: TPanel;
    pnl58: TPanel;
    pnl59: TPanel;
    totalBeli: TLabel;
    pnl40: TPanel;
    pnl57: TPanel;
    btn_submitBeli: TPanel;
    btn_cencelBeli: TPanel;
    pnl1: TPanel;
    pnl3: TPanel;
    pnl60: TPanel;
    pnl61: TPanel;
    lbl23: TLabel;
    pnl62: TPanel;
    edit_kembalian: TEdit;
    edt_bayarJual: TEdit;
    lbl24: TLabel;
    status_bar: TEdit;
    cbb_namaPelanggan: TComboBox;
    pnl63: TPanel;
    img4: TImage;
    lbl25: TLabel;
    lbl19: TLabel;
    pnl13: TPanel;
    edt_stokbeli: TEdit;
    lbl27: TLabel;
    edt_namBarBeli: TEdit;
    lbl28: TLabel;
    pnl64: TPanel;
    img17: TImage;
    lbl17: TLabel;
    tmr1: TTimer;
    jam: TLabel;
    pnl65: TPanel;
    tanggal: TLabel;
    scrlbx2: TScrollBox;
    lbl12: TLabel;
    lbl10: TLabel;
    smdbgrd1: TSMDBGrid;
    lbl_ppn: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btn_homeMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btn_penjualanMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure btn_gudangMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btn_statistikMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure btn_bantuanMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btn_exitMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btn_loginMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btn_loginClick(Sender: TObject);
    procedure btn_exitClick(Sender: TObject);
    procedure btn_logoutClick(Sender: TObject);
    procedure btn_penjualanClick(Sender: TObject);
    procedure btn_gudangClick(Sender: TObject);
    procedure btn_pembelianClick(Sender: TObject);
    procedure btn_cencelJualMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure btn_submitJualMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure btn_masukanListMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure btn_cencelBeliMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure btn_submitBeliMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure btn_masukanKeListBeliMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_statistikClick(Sender: TObject);
    procedure btn_bantuanClick(Sender: TObject);
    procedure btn_logoutMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btn_homeClick(Sender: TObject);
    procedure smdbnvgtr_gudangClick(Sender: TObject; Button: TSMNavigateBtn);
    procedure panel_penjualanClick(Sender: TObject);
    procedure btn_filterGudangClick(Sender: TObject);
    procedure btn_masukanListClick(Sender: TObject);
    procedure inputToListx;
    procedure EditQtyxExit(Sender: TObject);
    procedure EditQtyx1Exit(Sender: TObject);
    procedure btn_submitJualClick(Sender: TObject);
    procedure btn_cencelJualClick(Sender: TObject);
    procedure nav_manageClick(Sender: TObject; Button: TSMNavigateBtn);
    procedure pnl_editGudangClick(Sender: TObject);
    procedure pnl_filterGudangClick(Sender: TObject);
    procedure pnl_hapusGudangClick(Sender: TObject);
    //procedure btn1Click(Sender: TObject; Index:TObject);
    procedure pnl_exportGudangClick(Sender: TObject);
    procedure pnl_cetakGudangClick(Sender: TObject);
    procedure smdbnvgtr_gudangRefreshData(Sender: TObject);
    procedure SMDBGrid1Exit(Sender: TObject);
    procedure RefresIDBarangBeli;
    procedure pnlrefreshdataClick(Sender: TObject);
    procedure pnl_editGudangMouseMove(Sender: TObject; Shift: TShiftState;


      X, Y: Integer);
    procedure pnl_filterGudangMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure pnl_hapusGudangMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure pnl_exportGudangMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure pnl_cetakGudangMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure pnlrefreshdataMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure pnltambahsupplierMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure pnlTambahKaryawanClick(Sender: TObject);
    procedure pnlTambahKaryawanMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure pnltambahsupplierClick(Sender: TObject);
    procedure jenisPel;
    procedure refreshCBB3;
    procedure selectIdBarang;
    procedure login;
    procedure caridatax;
    procedure TypePelanggan;
    procedure PelangganSudahAda;
    procedure edit_nokaryawanKeyPress(Sender: TObject; var Key: Char);
    procedure edit_passwordkaryawanKeyPress(Sender: TObject;
      var Key: Char);
    procedure scrlbx2MouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure lbl12Click(Sender: TObject);
    procedure edit_searchKeyPress(Sender: TObject; var Key: Char);
    procedure RestartThisApp;
    procedure scrlbx1MouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure cbb2Select(Sender: TObject);
    procedure cbb1Select(Sender: TObject);
    procedure img_searchClick(Sender: TObject);
    procedure RefreshIDSupBeli;
    procedure btn_pembelianMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure edit_jmlbarangKeyPress(Sender: TObject; var Key: Char);
    procedure edit_hargabarangJualKeyPress(Sender: TObject; var Key: Char);
    procedure edit_namabarangJualKeyPress(Sender: TObject; var Key: Char);
    procedure cbb1KeyPress(Sender: TObject; var Key: Char);
    procedure cbb2KeyPress(Sender: TObject; var Key: Char);
    procedure edt_bayarJualExit(Sender: TObject);
    procedure bayarJual;
    procedure EditQtyBeliExit(Sender: TObject);
    procedure InputToListBeli;
    procedure pnl63Click(Sender: TObject);
    procedure pnl63MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cbb_idbarangBeliSelect(Sender: TObject);
    procedure btn_masukanKeListBeliClick(Sender: TObject);
    procedure btn_submitBeliClick(Sender: TObject);
    procedure pnl64Click(Sender: TObject);
    procedure edt_hargaBarBeliExit(Sender: TObject);
    procedure cbb_idSupplierSelect(Sender: TObject);
    procedure ResetAllVariable;
    procedure tmr1Timer(Sender: TObject);

  private
    FConfirmDelete: Boolean;

    FOnAppendRecord: TNotifyEvent;
    FOnDeleteRecord: TNotifyEvent;

    FOnFilterData: TNotifyEvent;
//    FOnFindData: TNotifyEvent;
    FOnPrintData: TNotifyEvent;
    FOnExportData: TNotifyEvent;
    { Private declarations }
  public
    d:integer;
    totalint,total_belum_ppn:Integer;
    listnambarx : array [1..100] of String;
    temp_hargaproduk,temp_idproduk : String;

    tempIDPRODUKJUAL :array [1..100] of String;
    tempSTOKPRODUKJUAL :array [1..100] of String;

    tempIDPRODUKBELI:array [1..100] of String;
    tempSTOKPRODUKBELI :array [1..100] of String;
    tempHARGAPRODUKBELI :array [1..100] of String;
    tempIDSUPPLIERBELI : array [1..100] of String;
    
    listharbarx : array [1..100] of Integer;
    listsubtotalx : array [1..100] of Integer;
    listidprodukx : array [1..100] of String;
    listqtyx : array [1..100] of Integer;
    total_belanja : array [1..100] of Integer;

    ListNamaBarang : array [1..100] of TLabel;
    ListNoBarang : array [1..100] of TLabel;
    ListHargaBarang : array [1..100] of TLabel;
    ListSubtotal : array [1..100] of TLabel;

    listbelinambar : array [1..100] of String;
    listbeliharbar : array [1..100] of String;
    listbeliqtybar : array [1..100] of String;

    ListPanelnambar :array [1..100] of TLabel;
    ListPanelharbar :array [1..100] of TLabel;
    ListPanelqtyx :array [1..100] of TLabel;
    ListPanelsubtotal :array [1..100] of TLabel;
    BayarJual_public : Integer;

    baliknilai : array [1..100] of Integer;
    id_pelanggan : string;
    EditQty : array [1..100] of TEdit;
    itemx : array [1..100] of String;
    itemxy : array [1..100] of String;
    itempelanggan : array [1..100] of String;
    item_idpelanggan : array [1..100] of String;
    total_beli : Integer;
    id_Fak :Integer;
    tempidsup : array [1..100] of String;
    nourutsup : array [1..100] of integer;
    { Public declarations }
  end;

var
  Form1: TForm1;
  id_karyawan:String;
  panel_login : Boolean;
  topx :Integer;
  hitungx :Integer;
  hitungk : Integer;
  totalcurr : Currency;
  totalstr : String;
  tempharga :String;
  statusbar :string;
  userx : String;
  found : Boolean;

implementation

uses DataModule, DB, ErrorEX, ShellAPI, InputData;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
//var
  //a,b:String;
  //i :Integer;
begin
  ShortDateFormat := 'yyyy/mm/dd';  
  //Form4.Visible := False;
  //scrlbx2.ScrollBy(-scrlbx2.HorzScrollBar.Increment, 0);
  panel_loginFront.Show;
  id_Fak := 1;
  panel_pembelianFront.Hide;
  panel_gudangFront.Hide;
  panel_penjualanFront.Hide;
  pnl_aboutFront.Hide;
  pnl_statistikFront.Hide;
  
  totalcurr := 0;
  hitungx := 0;
  hitungk := 0;
   total_beli := 0;
  img3.Hide;
  lbl19.Hide;
  totalint := 0;
  edit_search.Hide;
  img_search.Hide;
  //btn_penjualan.Enabled := False;
  //btn_gudang.Enabled := False;
  //btn_pembelian.Enabled := False;
  //btn_statistik.Enabled := False;
  btn_logout.Visible := False;

  btn_gudang.Hide;
  btn_penjualan.Hide;
  btn_pembelian.Hide;
  btn_statistik.Hide;
  btn_bantuan.Top := 47;
  btn_logout.Top  := 93;
  btn_exit.Top := 93;
  pnlMenu.Height := 145;


  if panel_loginFront.Visible = True then
  begin
    btn_home.Color := $004B710D;
    btn_home.Caption := 'LOGIN';
  end;

  if (panel_penjualanFront.Visible = True) or(panel_pembelianFront.Visible = True) or (panel_gudangFront.Visible = True) or (pnl_aboutFront.Visible = True) then
  begin
    edit_search.Show;
    img_search.Show;
  end;

  d:=0;
  topx := -20;

end;



procedure TForm1.btn_homeMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if (X >= 0) and (Y >= 0) and (X < btn_home.Width) and (Y < btn_home.Height) then
    begin
      if GetCapture <> btn_home.Handle then
      begin
        SetCapture(btn_home.Handle);
        btn_home.Color := $0085D117;
      end;
    end

  else
    begin
      ReleaseCapture;
      btn_home.Color := $00537C14;
        if panel_login.Visible = True then
        begin
            btn_home.Color := $00537C14;
        end;
    end;
end;

procedure TForm1.btn_penjualanMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if (X >= 0) and (Y >= 0) and (X < btn_penjualan.Width) and (Y < btn_penjualan.Height) then
    begin
      if GetCapture <> btn_penjualan.Handle then
      begin
        SetCapture(btn_penjualan.Handle);
        btn_penjualan.Color := $0085D117;
      end;
    end
  else
    begin
      ReleaseCapture;
      btn_penjualan.Color := $006DA51C;
        if panel_penjualanFront.Visible = True then
        begin
            btn_penjualan.Color := $004B710D;
        end;
    end;
end;

procedure TForm1.btn_gudangMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
    if (X >= 0) and (Y >= 0) and (X < btn_gudang.Width) and (Y < btn_gudang.Height) then
    begin
      if GetCapture <> btn_gudang.Handle then
      begin
        SetCapture(btn_gudang.Handle);
        btn_gudang.Color := $0085D117;
      end;
    end
  else
    begin
      ReleaseCapture;
      btn_gudang.Color := $006DA51C;
        if panel_gudangFront.Visible = True then
        begin
            btn_gudang.Color := $004B710D;
        end;
    end;
end;

procedure TForm1.btn_statistikMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if (X >= 0) and (Y >= 0) and (X < btn_statistik.Width) and (Y < btn_statistik.Height) then
    begin
      if GetCapture <> btn_statistik.Handle then
      begin
        SetCapture(btn_statistik.Handle);
        btn_statistik.Color := $0085D117;
      end;
    end
  else
    begin
      ReleaseCapture;
      btn_statistik.Color := $006DA51C;
      if pnl_statistikFront.Visible = True then
        begin
            btn_statistik.Color := $004B710D;
        end;
    end;
end;

procedure TForm1.btn_bantuanMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 if (X >= 0) and (Y >= 0) and (X < btn_bantuan.Width) and (Y < btn_bantuan.Height) then
    begin
      if GetCapture <> btn_bantuan.Handle then
      begin
        SetCapture(btn_bantuan.Handle);
        btn_bantuan.Color := $0085D117;
      end;
    end
  else
    begin
      ReleaseCapture;
      btn_bantuan.Color := $006DA51C;
      if pnl_aboutFront.Visible = True then
      begin
       btn_bantuan.Color := $004B710D;
      end;
    end;
end;

procedure TForm1.btn_exitMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if (X >= 0) and (Y >= 0) and (X < btn_exit.Width) and (Y < btn_exit.Height) then
    begin
      if GetCapture <> btn_exit.Handle then
      begin
        SetCapture(btn_exit.Handle);
        btn_exit.Color := $0085D117;
      end;
    end
  else
    begin
      ReleaseCapture;
      btn_exit.Color := $006DA51C;
    end;
end;

procedure TForm1.btn_loginMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if (X >= 0) and (Y >= 0) and (X < btn_login.Width) and (Y < btn_login.Height) then
    begin
      if GetCapture <> btn_login.Handle then
      begin
        SetCapture(btn_login.Handle);
        btn_login.Color := $004B710D;
      end;
    end
  else
    begin
      ReleaseCapture;
      btn_login.Color := $006DA51C;
    end;
end;


procedure TForm1.btn_loginClick(Sender: TObject);
begin
  login;
end;

procedure TForm1.login;
var
  i,j:Integer;
  a,b:String;
begin

  DM.qr1_login.SQL.Text:='select * from employees';
  DM.qr1_login.Active:=True;
  i:= 1;
  while i <= DM.qr1_login.RecordCount do
  begin
    a:= DM.qr1_login['username'];
    b:= DM.qr1_login['password'];
    userx := DM.qr1_login['nama'];

    if ((edit_nokaryawan.Text = 'admin') and (edit_passwordkaryawan.Text = 'admin')) and ((edit_nokaryawan.Text = a) and (edit_passwordkaryawan.Text = b)) then
      begin
        btn_penjualan.Show;
        panel_penjualanFront.Show;
        panel_loginFront.Visible := False;
        btn_home.Color :=  $006DA51C;
        btn_penjualan.Color := $004B710D;
        btn_penjualan.Enabled := True;
        btn_gudang.Enabled := True;
        btn_pembelian.Enabled := True;
        btn_statistik.Enabled := True;
        btn_bantuan.Enabled := True;
        btn_home.Enabled := False;
        btn_logout.Visible := True;
        edit_search.Hide;
        img_search.Hide;
        img3.Show;
        lbl19.Show;
        lbl19.Caption := userx+'  ';
        btn_home.Caption := 'HOME';
        btn_home.Color := $00537C14;
        btn_gudang.Show;
        btn_pembelian.Show;
        btn_statistik.Show;
        btn_bantuan.Top := 231;
        btn_logout.Top := 277;
        btn_exit.Top := 277;
        pnlMenu.Height := 329;
        id_karyawan := '1001';
        i := DM.qr1_login.RecordCount;

      end

      else
      if (edit_nokaryawan.Text = a) and (edit_passwordkaryawan.Text = b) then
          begin
            btn_gudang.Hide;
            btn_penjualan.Show;
            btn_pembelian.Hide;
            btn_statistik.Hide;
            btn_bantuan.Top := 93;
            btn_logout.Top  := 139;
            btn_exit.Top := 139;
            pnlMenu.Height := 190;

            panel_penjualanFront.Show;
            panel_loginFront.Visible := False;
            btn_home.Color :=  $006DA51C;
            btn_penjualan.Color := $004B710D;
            btn_penjualan.Enabled := True;
            btn_bantuan.Enabled := True;
            btn_home.Enabled := False;
            btn_logout.Visible := True;
            edit_search.Hide;
            img_search.Hide;
            img3.Show;
            lbl19.Show;
            lbl19.Caption := userx;
            btn_home.Caption := 'HOME';
            btn_home.Color := $00537C14;
            //lbltester.Caption := a + b;
            i := DM.qr1_login.RecordCount;

            with DM.qr1_login do
            begin
              Active := False;
              SQL.Clear;
              SQL.Text := 'SELECT * FROM employees where username = "'+a+'"';
              Active := True;
            end;

            for i := 1 to DM.qr1_login.RecordCount do
            begin
              id_karyawan := DM.qr1_login['id'];
            end;
          end
    else
    begin
      Form4.Show;
      Form1.Enabled := False;
    end;
    DM.qr1_login.Next;
    i := i + 1;
  end;

  if panel_penjualanFront.Visible = True then
  begin
    PelangganSudahAda;
    Form4.Hide;
    with DM.qr2_barang do
    begin
      Form4.Hide;
      SQL.Clear;
      SQL.Add('SELECT * FROM goods');
      Open;
      First;
      cbb1.Items.Clear;
      j := 1;
      while not Eof do
      begin
        cbb1.Items.Add((FieldByName('id').AsString) + ' - '+FieldByName('nama').AsString);

        itemx[j] := (FieldByName('id').AsString);
        itemxy[j] := (FieldByName('id').AsString) + ' - '+FieldByName('nama').AsString;
        Next;
        j := j + 1;
      end;
      //LABELTEST.Caption := itemx[j];
      Close;
    end;
  end;
end;

procedure TForm1.btn_exitClick(Sender: TObject);
begin
 Close;
end;


procedure TForm1.btn_logoutClick(Sender: TObject);
begin
  img3.Hide;
  lbl19.Hide;
  edit_passwordkaryawan.Clear;

   panel_penjualanFront.Hide;
   panel_pembelianFront.Hide;
   panel_gudangFront.Hide;
   pnl_statistikFront.Hide;
   pnl_aboutFront.Hide;
   panel_loginFront.Visible := True;

   edit_nokaryawan.Clear;
   btn_home.Color := $004B710D;
   btn_penjualan.Color := $006DA51C;
   btn_gudang.Color := $006DA51C;
   btn_pembelian.Color := $006DA51C;
   btn_statistik.Color := $006DA51C;
   btn_bantuan.Color := $006DA51C;
   btn_penjualan.Enabled := False;
   btn_gudang.Enabled := False;
   btn_pembelian.Enabled := False;
   btn_statistik.Enabled := False;
   btn_logout.Visible := False;
   btn_home.Enabled := True;
   edit_search.Hide;
   img_search.Hide;
   btn_home.Caption := 'LOGIN';
   btn_gudang.Hide;
    btn_penjualan.Hide;
    btn_pembelian.Hide;
    btn_statistik.Hide;
    btn_bantuan.Top := 47;
    btn_logout.Top  := 93;
    btn_exit.Top := 93;
    pnlMenu.Height := 145;
end;

procedure TForm1.btn_penjualanClick(Sender: TObject);
begin
   panel_penjualanFront.Show;
   panel_gudangFront.Hide;
   panel_loginFront.Visible := False;
   panel_pembelianFront.Hide;
   pnl_statistikFront.Hide;
   pnl_aboutFront.Hide;

   btn_home.Color := $00537C14;
   btn_penjualan.Color := $004B710D;
   btn_gudang.Color := $006DA51C;
   btn_pembelian.Color := $006DA51C;
   btn_statistik.Color := $006DA51C;
   btn_bantuan.Color := $006DA51C;
   edit_search.Hide;
   img_search.Hide;

   Form4.Hide;
   refreshCBB3;
   PelangganSudahAda;
   //ResetAllVariable;
end;

procedure TForm1.btn_gudangClick(Sender: TObject);
begin
  DM.qr2_barang.Active := False;
  DM.qr2_barang.SQL.Text := 'select * from goods';
  DM.qr2_barang.Active := True;
 panel_gudangFront.Show;
 panel_loginFront.Visible := False;
 panel_penjualanFront.Hide;
 panel_pembelianFront.Hide;
 pnl_statistikFront.Hide;
 pnl_aboutFront.Hide;
 
 btn_home.Color := $00537C14;
 btn_penjualan.Color := $006DA51C;
 btn_gudang.Color := $004B710D;
 btn_pembelian.Color := $006DA51C;
 btn_statistik.Color := $006DA51C;
 btn_bantuan.Color := $006DA51C;
 edit_search.Show;
 img_search.Show;

end;

procedure TForm1.btn_pembelianClick(Sender: TObject);
begin
 panel_pembelianFront.Show;
 panel_loginFront.Visible := False;
 panel_penjualanFront.Hide;
 panel_gudangFront.Hide;
 pnl_statistikFront.Hide;
 pnl_aboutFront.Hide;
 
 btn_home.Color := $00537C14;
 btn_penjualan.Color := $006DA51C;
 btn_gudang.Color := $006DA51C;
 btn_pembelian.Color := $004B710D;
 btn_statistik.Color := $006DA51C;
 btn_bantuan.Color := $006DA51C;
  edit_search.Show;
 img_search.Show;
 RefreshIDSupBeli;
 //RefresIDBarangBeli;
  //ResetAllVariable;
end;

procedure TForm1.RefresIDBarangBeli;
var
  j : integer;
  a,b : string;
begin
  with DM.qr2_barang do
    begin
      SQL.Clear;
      SQL.Add('SELECT * FROM goods WHERE id_supplier = "'+tempidsup[1]+'"');
      //SQL.Add('SELECT * FROM goods');
      Open;
      First;
      cbb_idbarangBeli.Items.Clear;
      cbb_idbarangBeli.Text := '';
      j := 1;
      while not Eof do
      begin
        if FieldByName('nama').AsString = '0' then
        begin
          a := 'Belum Diberi Nama';
        end
        else
        begin
          a := FieldByName('nama').AsString;
        end;

        cbb_idbarangBeli.Items.Add((FieldByName('id').AsString) + ' - '+a);

        itemx[j] := (FieldByName('id').AsString);
        itemxy[j] := (FieldByName('id').AsString) + ' - '+a;
        Next;
        j := j + 1;
      end;
      Close;
    end;
    //cbb_idSupplier.SetFocus;
    cbb_idbarangBeli.SetFocus;
end;

procedure TForm1.RefreshIDSupBeli;
var
  j : integer;
begin

  with DM.qr4_suppliers do
    begin
      SQL.Clear;
      SQL.Add('SELECT * FROM suppliers ORDER BY id');
      Open;
      First;
      cbb_idSupplier.Items.Clear;
      cbb_idSupplier.Text := '';
      j := 1;
      while not Eof do
      begin
       // cbb_idSupplier.Items.Add((FieldByName('id').AsString) + ' - '+FieldByName('nama').AsString);
        cbb_idSupplier.Items.Add(FieldByName('nama').AsString);
        tempidsup[j] := FieldByName('id').AsString;
        nourutsup[j] := nourutsup[j] + 1;
        Next;
        j := j + 1;
      end;
      Close;
    end;
    cbb_idSupplier.SetFocus;
end;

procedure TForm1.btn_cencelJualMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin

 if (X >= 0) and (Y >= 0) and (X < btn_cencelJual.Width) and (Y < btn_cencelJual.Height) then
    begin
      if GetCapture <> btn_cencelJual.Handle then
      begin
        SetCapture(btn_cencelJual.Handle);
        btn_cencelJual.Color := $002F21D3;
      end;
    end
  else
    begin
      ReleaseCapture;
      btn_cencelJual.Color := $005332ED;
    end;
end;

procedure TForm1.btn_submitJualMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if (X >= 0) and (Y >= 0) and (X < btn_submitJual.Width) and (Y < btn_submitJual.Height) then
    begin
      if GetCapture <> btn_submitJual.Handle then
      begin
        SetCapture(btn_submitJual.Handle);
        btn_submitJual.Color := $004B710D;
      end;
    end
  else
    begin
      ReleaseCapture;
      btn_submitJual.Color := $006DA51C;
    end;
end;

procedure TForm1.btn_masukanListMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   if (X >= 0) and (Y >= 0) and (X < btn_masukanList.Width) and (Y < btn_masukanList.Height) then
    begin
      if GetCapture <> btn_masukanList.Handle then
      begin
        SetCapture(btn_masukanList.Handle);
        btn_masukanList.Color := $004B710D;
      end;
    end
  else
    begin
      ReleaseCapture;
      btn_masukanList.Color := $006DA51C;
    end;
end;

procedure TForm1.btn_cencelBeliMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if (X >= 0) and (Y >= 0) and (X < btn_cencelBeli.Width) and (Y < btn_cencelBeli.Height) then
    begin
      if GetCapture <> btn_cencelBeli.Handle then
      begin
        SetCapture(btn_cencelBeli.Handle);
        btn_cencelBeli.Color := $002F21D3;
      end;
    end
  else
    begin
      ReleaseCapture;
      btn_cencelBeli.Color := $005332ED;
    end;
end;

procedure TForm1.btn_submitBeliMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   if (X >= 0) and (Y >= 0) and (X < btn_submitBeli.Width) and (Y < btn_submitBeli.Height) then
    begin
      if GetCapture <> btn_submitBeli.Handle then
      begin
        SetCapture(btn_submitBeli.Handle);
        btn_submitBeli.Color := $004B710D;
      end;
    end
  else
    begin
      ReleaseCapture;
      btn_submitBeli.Color := $006DA51C;
    end;
end;

procedure TForm1.btn_masukanKeListBeliMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   if (X >= 0) and (Y >= 0) and (X < btn_masukanKeListBeli.Width) and (Y < btn_masukanKeListBeli.Height) then
    begin
      if GetCapture <> btn_masukanKeListBeli.Handle then
      begin
        SetCapture(btn_masukanKeListBeli.Handle);
        btn_masukanKeListBeli.Color := $004B710D;
      end;
    end
  else
    begin
      ReleaseCapture;
      btn_masukanKeListBeli.Color := $006DA51C;
    end;
end;

procedure TForm1.btn_statistikClick(Sender: TObject);
begin
 pnl_statistikFront.Show;
 panel_loginFront.Visible := False;
 panel_penjualanFront.Hide;
 panel_gudangFront.Hide;
 panel_pembelianFront.Hide;
 pnl_aboutFront.Hide;
 
 btn_home.Color := $00537C14;
 btn_penjualan.Color := $006DA51C;
 btn_gudang.Color := $006DA51C;
 btn_pembelian.Color := $006DA51C;
 btn_statistik.Color := $004B710D;
 btn_bantuan.Color := $006DA51C;
  edit_search.Hide;
 img_search.Hide;


end;


procedure TForm1.btn_bantuanClick(Sender: TObject);
begin
 pnl_aboutFront.Show;
 panel_loginFront.Visible := False;
 panel_penjualanFront.Hide;
 panel_gudangFront.Hide;
 panel_pembelianFront.Hide;
 pnl_statistikFront.Hide;
 
 btn_home.Color := $00537C14;
 btn_penjualan.Color := $006DA51C;
 btn_gudang.Color := $006DA51C;
 btn_pembelian.Color := $006DA51C;
 btn_statistik.Color := $006DA51C;
 btn_bantuan.Color := $004B710D;
 edit_search.Hide;
 img_search.Hide;
 scrlbx2.SetFocus;
end;


procedure TForm1.btn_logoutMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 if (X >= 0) and (Y >= 0) and (X < btn_logout.Width) and (Y < btn_logout.Height) then
    begin
      if GetCapture <> btn_logout.Handle then
      begin
        SetCapture(btn_logout.Handle);
        btn_logout.Color := $0085D117;
      end;
    end
  else
    begin
      ReleaseCapture;
      btn_logout.Color := $006DA51C;
    end;
end;


procedure TForm1.btn_homeClick(Sender: TObject);
begin
 panel_penjualanFront.Hide;
 panel_pembelianFront.Hide;
 panel_gudangFront.Hide;
 pnl_statistikFront.Hide;
 pnl_aboutFront.Hide;
 panel_loginFront.Visible := True;
 
 edit_nokaryawan.Clear;
 btn_home.Color := $004B710D;
 btn_penjualan.Color := $006DA51C;
 btn_gudang.Color := $006DA51C;
 btn_pembelian.Color := $006DA51C;
 btn_statistik.Color := $006DA51C;
 btn_bantuan.Color := $006DA51C;
 btn_penjualan.Enabled := False;
 btn_gudang.Enabled := False;
 btn_pembelian.Enabled := False;
 btn_statistik.Enabled := False;
 btn_logout.Visible := False;
 edit_search.Hide;
 img_search.Hide;
end;
procedure TForm1.smdbnvgtr_gudangClick(Sender: TObject; Button: TSMNavigateBtn);
begin
  case button of
     sbFind:DM.find_gudang.Execute;
     sbFilter:DM.filter_gudang.Execute;
     sbExport : mxDBGridExport1.Select;
     sbPrint: DM.frxReport1.ShowReport;
  end;
end;


procedure TForm1.nav_manageClick(Sender: TObject; Button: TSMNavigateBtn);
begin
  case button of
     sbFind:DM.find_gudang.Execute;
     sbFilter:DM.filter_gudang.Execute;
     sbExport : mxDBGridExport1.Select;
     sbPrint: DM.frxReport1.ShowReport;
  end;
end;

procedure TForm1.panel_penjualanClick(Sender: TObject);
begin
  panel_gudangFront.Hide;
end;

procedure TForm1.btn_filterGudangClick(Sender: TObject);
begin
  DM.filter_gudang.Execute;
end;

procedure TForm1.btn_masukanListClick(Sender: TObject);
begin
 inputToListx;
end;

procedure TForm1.inputToListx;
var
  a,b,c,i:Integer;
  e,z,m:String;
  hbarcurr, subtotalcurr : Currency;
  nam_bar,har_bar,qty_bar,sub_totalbar : string;

begin

  if (cbb_namaPelanggan.Text = '') or (cbb1.Text = '')  or (edit_namabarangJual.Text = '') or (edit_jmlbarang.Text = '') or (edit_hargabarangJual.Text = '') then
  begin
    MessageDlg('Isi data dengan benar !',mtWarning,[mbOK],0);
    cbb2.Text := '';
    cbb1.Text := '';
    edit_namabarangJual.Text := '';
    edit_jmlbarang.Text := '';
    edit_hargabarangJual.Text := '';
  end
  else
  begin
    hitungx := hitungx + 1;
    topx := topx + 30;
    z := IntToStr(hitungx);
    listnambarx[hitungx] := edit_namabarangJual.Text;

    ListNamaBarang[hitungx] := TLabel.Create(Form1.scrlbx1);
    ListNamaBarang[hitungx].Parent := Form1.scrlbx1;
    ListNamaBarang[hitungx].Left := 50;
    ListNamaBarang[hitungx].Top := topx;
    ListNamaBarang[hitungx].Name := 'listnambar'+z;
    ListNamaBarang[hitungx].Caption := listnambarx[hitungx];

    nam_bar := listnambarx[hitungx];

    ListNamaBarang[hitungx].Font.Charset := ANSI_CHARSET;
    ListNamaBarang[hitungx].Font.Color := clBlack;
    ListNamaBarang[hitungx].Font.Height := -15;
    ListNamaBarang[hitungx].Font.Name := 'Century Gothic';
    ListNamaBarang[hitungx].Font.Style := [fsBold];
    ListNamaBarang[hitungx].ParentFont := False;


    //listharbarx[hitungx] := StrToInt(Edit4.Text);

    listharbarx[hitungx] := StrToInt(tempharga);


    ListHargaBarang[hitungx] := TLabel.Create(Form1.scrlbx1);
    ListHargaBarang[hitungx].Parent := Form1.scrlbx1;
    ListHargaBarang[hitungx].Left := 180;
    ListHargaBarang[hitungx].Top := topx;
    ListHargaBarang[hitungx].Name := 'listharbar'+z;

    m := IntToStr(listharbarx[hitungx]);
    hbarcurr := StrToCurr(m);
    ListHargaBarang[hitungx].Caption := 'Rp. '+FormatCurr(',0', hbarcurr)+' ,-';

    har_bar := m;

    ListHargaBarang[hitungx].Font.Charset := ANSI_CHARSET;
    ListHargaBarang[hitungx].Font.Color := clBlack;
    ListHargaBarang[hitungx].Font.Height := -15;
    ListHargaBarang[hitungx].Font.Name := 'Century Gothic';
    ListHargaBarang[hitungx].Font.Style := [fsBold];
    ListHargaBarang[hitungx].ParentFont := False;

    listqtyx[hitungx] := StrToInt(edit_jmlbarang.Text);

    EditQty[hitungx] := TEdit.Create(Form1.scrlbx1);
    EditQty[hitungx].Parent := Form1.scrlbx1;
    EditQty[hitungx].Name := 'listqty'+z;
    EditQty[hitungx].Text := IntToStr(listqtyx[hitungx]);

    qty_bar := EditQty[hitungx].Text;

    EditQty[hitungx].Left := 320;
    EditQty[hitungx].Top := topx;
    EditQty[hitungx].Width := 55;
    EditQty[hitungx].Font.Charset := ANSI_CHARSET;
    EditQty[hitungx].Font.Color := clBlack;
    EditQty[hitungx].Font.Height := -15;
    EditQty[hitungx].Font.Name := 'Century Gothic';
    EditQty[hitungx].Font.Style := [fsBold];
    EditQty[hitungx].ParentFont := False;

    listsubtotalx[hitungx] := listqtyx[hitungx] * listharbarx[hitungx];

    ListSubtotal[hitungx] := TLabel.Create(Form1.scrlbx1);
    ListSubtotal[hitungx].Parent := Form1.scrlbx1;
    ListSubtotal[hitungx].Name := 'listsubtotal'+z;
    ListSubtotal[hitungx].Left := 440;
    ListSubtotal[hitungx].Top := topx;

    m := IntToStr(listsubtotalx[hitungx]);
    subtotalcurr := StrToCurr(m);

    sub_totalbar := m;

    ListSubtotal[hitungx].Caption := 'Rp. '+FormatCurr(',0', subtotalcurr)+' ,-';
    //ListSubtotal.Caption := 'Rp. '+IntToStr(listsubtotalx[hitungx]);
    ListSubtotal[hitungx].Font.Charset := ANSI_CHARSET;
    ListSubtotal[hitungx].Font.Color := clBlack;
    ListSubtotal[hitungx].Font.Height := -15;
    ListSubtotal[hitungx].Font.Name := 'Century Gothic';
    ListSubtotal[hitungx].Font.Style := [fsBold];
    ListSubtotal[hitungx].ParentFont := False;

    EditQty[hitungx].OnExit := EditQtyxExit;

    with DM.qr2_barang do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text := 'SELECT * FROM goods WHERE nama = "'+listnambarx[hitungx]+'"';
      Active := True;
      i := 1;
      while i <= DM.qr2_barang.RecordCount do
      begin
            listidprodukx[hitungx] := DM.qr2_barang['id'];
            DM.qr2_barang.Next;
            i := i + 1;
      end;
    end;

      tempIDPRODUKJUAL[hitungx] := temp_idproduk;
      tempSTOKPRODUKJUAL[hitungx] := statusbar;

  with DM.qr6_detai_transaction do
  begin
    Active := False;
    SQL.Text:='select * from detail_transaction';
    a:=StrToInt(edit_jmlbarang.Text);
    b := StrToInt(tempharga);
    c := a * b;

    Active := True;
    smdbgrd_jual.RefreshData;
    edit_hargabarangJual.Clear;
    edit_namabarangJual.Clear;
    edit_idjualbarang.Clear;
    edit_jmlbarang.Clear;
    status_bar.Clear;
    //cbb2.Text := '';

    d:=c+d;
    total_belum_ppn := d;
    total_belanja[hitungx] := d + (d * 10 div 100);
    totalint := total_belanja[hitungx];
    totalcurr := StrToCurr(IntToStr(total_belanja[hitungx]));
    e := 'TOTAL : Rp. '+FormatCurr(',0', totalcurr)+' ,-';
    totalstr := CurrToStr(totalcurr);
    lbl_totalJual.Caption := e;
  end;
    refreshCBB3;
  end;

end;

procedure Tform1.refreshCBB3;
var
  j : integer;
begin

  with DM.qr2_barang do
    begin
      SQL.Clear;
      SQL.Add('SELECT * FROM goods');
      Open;
      First;
      cbb1.Items.Clear;
      cbb1.Text := '';
      j := 1;
      while not Eof do
      begin
        cbb1.Items.Add((FieldByName('id').AsString) + ' - '+FieldByName('nama').AsString);

        itemx[j] := (FieldByName('id').AsString);
        itemxy[j] := (FieldByName('id').AsString) + ' - '+FieldByName('nama').AsString;
        Next;
        j := j + 1;
      end;
      Close;
    end;
    scrlbx1.SetFocus;
end;

procedure TForm1.EditQtyxExit(Sender: TObject);
var
  n,v:Integer;
  e,m : String;
  subtotalcurr : Currency;
begin
  totalint := 0;
  edt_bayarJual.Text := '';
  edit_kembalian.Text := '';
  for v:= 1 to hitungx do
  begin
    if EditQty[v].Text <> IntToStr(listqtyx[v]) then
      begin
         hitungk := v;
         n := StrToInt(EditQty[hitungk].Text);
         listqtyx[hitungk] := n;
         listsubtotalx[hitungk] := n * listharbarx[hitungk];
         m := IntToStr(listsubtotalx[hitungk]);
         subtotalcurr := StrToCurr(m);
         ListSubtotal[hitungk].Caption := 'Rp. '+FormatCurr(',0', subtotalcurr)+' ,-';
      end
    else
    begin
        hitungk := v;
        n := StrToInt(EditQty[hitungk].Text);
        listsubtotalx[hitungk] := n * listharbarx[hitungk];
        m := IntToStr(listsubtotalx[hitungk]);
        subtotalcurr := StrToCurr(m);
        ListSubtotal[hitungk].Caption := 'Rp. '+FormatCurr(',0', subtotalcurr)+' ,-';
    end;
  end;

  for v := 1 to hitungx do
  begin
    totalint := totalint + listsubtotalx[v];
  end;
  total_belum_ppn := totalint;
  totalint := totalint + ((totalint * 10) div 100);
  total_belanja[hitungx] := totalint;
  totalcurr := StrToCurr(IntToStr(totalint));
    e := 'Total : Rp. '+FormatCurr(',0', totalcurr)+' ,-';
    totalstr := CurrToStr(totalcurr);
  lbl_totalJual.Caption := e;
end;

procedure TForm1.EditQtyx1Exit(Sender: TObject);
begin
  ShowMessage('Sukses2'+inttostr(hitungx));
end;


procedure TForm1.btn_submitJualClick(Sender: TObject);
var
  z,j,p,last_idfaktur,stokprodukjual : integer;
  a,listqty_jual,x : String;
begin
  if (edt_bayarJual.Text = '') or (edt_bayarJual.Text = '') then
  begin
    MessageDlg('Transaksi Gagal !'+sLineBreak+' Cek kembali data barang yang di inputkan !',mtWarning,[mbOK],0);
  end
  else
  begin
    for j := 1 to hitungx do      // UPDATE STOK
     begin
      stokprodukjual := StrToInt(tempSTOKPRODUKJUAL[j]) - StrToInt(EditQty[j].Text);
       with DM.update_stok do
       begin
          Active := False;
          SQL.Clear;
          SQL.Text := 'SELECT * FROM goods';
          DM.con1.ExecuteDirect('UPDATE goods SET stok = "'+inttostr(stokprodukjual)+'" where id = "'+tempIDPRODUKJUAL[j]+'"');
          Active := True;
       end;
      end;
      
      with DM.qr5_customers do    // SELECT ID CUSTOMERS
      begin
        Active := False;
        SQL.Text := 'SELECT id from customers where nama = "'+cbb_namaPelanggan.Text+'"';
        Active := True;
      end;

      for p:=1 to DM.qr5_customers.RecordCount do  // MENDAPATKAN ID CUSTOMERS
      begin
       Form1.id_pelanggan := DM.qr5_customers['id'];
      end;


      with DM.qr3_transaction do  // QUERY TRANSAKSI
      begin
        Active := False;
        SQL.Clear;
        SQL.Text := 'SELECT * FROM transaction';
        Active := True;
      end;

      j := 1;
      while j <= DM.qr3_transaction.RecordCount do  // MENDAPATKAN ID TRANSAKSI
      begin
        a := DM.qr3_transaction['id'];
        DM.qr3_transaction.Next;
        j := j + 1;
      end;

      if a = '' then
      begin
        a := '0';
      end;

      last_idfaktur := StrToInt(a) + 1;        // MENDAPATKAN ID FAKTUR TERAKHIR
      x := IntToStr(last_idfaktur);
      with DM.qr3_transaction do    // INSERT KE TABEL TRANSAKSI
      begin
          Active := False;
          SQL.Clear;
          SQL.Text := 'SELECT * FROM transaction';
          Active := True;
          DM.con1.ExecuteDirect('insert into transaction (id, id_karyawan, id_pelanggan, tanggal) values("'+IntToStr(last_idfaktur)+'","'+id_karyawan+'","'+id_pelanggan+'","'+DateToStr(Now)+'")');
      end;

      for j:= 1 to hitungx do           //INSERT KE TABEL DETAIL TRANSAKSI
      begin
        with DM.qr6_detai_transaction do
        begin
          Active := False;
          SQL.Clear;
          SQL.Text := 'SELECT * FROM detail_transaction';
          Active;
          listqty_jual := IntToStr(listqtyx[j]);
          DM.con1.ExecuteDirect('INSERT INTO detail_transaction(id_transaction, id_produk, qty) VALUES("'+IntToStr(last_idfaktur)+'","'+listidprodukx[j]+'","'+listqty_jual+'")');
        end;
      end;

      with DM.transaksi_report do
      begin
       Active := False;
       SQL.Clear;
       SQL.Add('SELECT transaction.id, detail_transaction.id_produk,  goods.nama, goods.harga, detail_transaction.qty, transaction.id_pelanggan, customers.nama, customers.alamat_lengkap, customers.kota, employees.nama, transaction.tanggal ');
       SQL.Add('FROM ((((transaction ');
       SQL.Add('INNER JOIN detail_transaction ON transaction.id = detail_transaction.id_transaction) ');
       SQL.Add('INNER JOIN goods ON detail_transaction.id_produk = goods.id) ');
       SQL.Add('INNER JOIN customers ON transaction.id_pelanggan = customers.id) ');
       SQL.Add('INNER JOIN employees ON transaction.id_karyawan = employees.id) WHERE transaction. id = "'+x+'"');
       Active := True;
       DM.frxReport1.ShowReport();
      end;

    //  DM.frxReport1.ShowReport();

                                       // CLEAR ALL INPUT
      z := 1;
      while z <= hitungx do
      begin
        ListSubtotal[z].Free;
        ListNamaBarang[z].Free;
        ListHargaBarang[z].Free;
        EditQty[z].Free;
        z := z + 1;
      end;
      cbb_namaPelanggan.Text := '';
      hitungx := 0;
      hitungk := 0;
      totalcurr := 0;
       topx := -20;
       d := 0;
      edt_bayarJual.Text:='';
      edit_kembalian.Text:='';
      lbl_totalJual.Caption := 'Total : Rp. 0,-';
      MessageDlg('Transaksi Sukses !',mtInformation,[mbOK],0);

      cbb1.Text := '';

      for z:=1 to 100 Do
      begin
       listsubtotalx[z]:=0;
       listharbarx[z]:=0;
       listnambarx[z]:='';
       listqtyx[z]:=0;
      end;
     refreshCBB3;
  end;
end;

procedure TForm1.btn_cencelJualClick(Sender: TObject);
var
  z : integer;
begin
  DM.frxReport1.ShowReport();  
  z := 1;
  while z <= hitungx do
  begin
    ListSubtotal[z].Free;
    ListNamaBarang[z].Free;
    ListHargaBarang[z].Free;
    EditQty[z].Free;
    z := z + 1;
  end;

  hitungx := 0;
  hitungk := 0;
  totalcurr := 0;
  topx := -20;
  d := 0;
  edt_bayarJual.Text:='';
  edit_kembalian.Text:='';
  lbl_totalJual.Caption := 'Total : Rp. 0,-';
  MessageDlg('Transaksi Digagalkan !',mtInformation,[mbOK],0);
  cbb1.Text := '';

  for z:=1 to 100 Do
  begin
   listsubtotalx[z]:=0;
   listharbarx[z]:=0;
   listnambarx[z]:='';
   listqtyx[z]:=0;
  end;
end;

procedure TForm1.selectIdBarang;
var
  a,b:string;
  j,c:integer;
  harbarcurr:Currency;
begin

  for j:= 1 to cbb1.Items.Count do
  begin
    if cbb1.Text = itemxy[j] then
      begin
        DM.qr2_barang.Active := False;
        DM.qr2_barang.SQL.Text:='select * from goods where id = "'+itemx[j]+'"';
        DM.qr2_barang.Active:= True;
        a:=DM.qr2_barang['nama'];

        edit_namabarangJual.Text:= a;
        tempharga:= DM.qr2_barang['harga'];
        harbarcurr := StrToCurr(tempharga);
        b := 'Rp. '+FormatCurr(',0', harbarcurr)+' ,-';

        temp_idproduk := DM.qr2_barang['id'];
        temp_hargaproduk := DM.qr2_barang['harga'];
        statusbar := DM.qr2_barang['stok'];

        c := StrToInt(statusbar);

        if c > 0 then
          begin
            status_bar.Text := 'Tersedia : '+statusbar+' pcs';
            status_bar.Color := clWindow;
          end
        else
          begin
            status_bar.Text := 'Kosong';
            status_bar.Color := $005332ED;
          end;
        edit_hargabarangJual.Text:=b;
      end;
  end;
end;

procedure TForm1.TypePelanggan;
var
  j:integer;
begin
  with DM.qr5_customers do
    begin
      SQL.Clear;
      SQL.Add('SELECT * FROM customers WHERE type = "'+cbb2.Text+'"');
      Open;
      First;
      Active := True;
      Form2.cbb3.Items.Clear;
      j := 1;
      while not Eof do
      begin
        Form2.cbb3.Items.Add(FieldByName('nama').AsString);
        itempelanggan[j] := (FieldByName('nama').AsString);
        item_idpelanggan[j] := (FieldByName('id').AsString);
        Next;
        j := j + 1;
      end;
      Close;
    end;
end;


procedure TForm1.jenisPel;
begin

  if (cbb2.Text = 'Rumah Sakit') or (cbb2.Text = 'Dokter/ Buka Praktek') or (cbb2.Text = 'Puskesmas') then
  begin
    Form2.pnlPelanggan.Show;
    Form2.pnlkaryawansupplier.Hide;
    Form2.pnl_addsupplier.Hide;
    Form2.Show;
    TypePelanggan;
    Form1.Enabled := False;
  end;
end;

procedure TForm1.pnl_editGudangClick(Sender: TObject);
begin
  if Assigned(FOnAppendRecord) then
    FOnAppendRecord(Self)
    else
    begin
      //DM.ds2.DataSet.Last;
      DM.ds2.DataSet.Insert;
    end;

end;

procedure TForm1.pnl_filterGudangClick(Sender: TObject);
begin
  if Assigned(FOnFilterData) then
    FOnFilterData(Self);
  DM.filter_gudang.Execute;
end;

procedure TForm1.pnl_hapusGudangClick(Sender: TObject);
begin

   if (DM.ds2 <> nil) and (DM.ds2.State <> dsInactive) then
    begin
      if Assigned(FOnDeleteRecord) then
      FOnDeleteRecord(Self)
      else
        if not FConfirmDelete then
          DM.ds2.DataSet.Delete;
    end

   else
   begin
        ShowMessage('Data Base Kosong');
        pnl_hapusGudang.Enabled := False;
   end;
end;

procedure TForm1.pnl_exportGudangClick(Sender: TObject);
begin
  if Assigned(FOnExportData) then
    FOnExportData(Self);
  mxDBGridExport1.Select;

end;

procedure TForm1.pnl_cetakGudangClick(Sender: TObject);
begin
  if Assigned(FOnPrintData) then
    FOnPrintData(Self);
  DM.frxReport1.ShowReport;
end;

procedure TForm1.smdbnvgtr_gudangRefreshData(Sender: TObject);
begin
  DM.qr2_barang.Active := False;
  DM.qr2_barang.SQL.Text := 'select * from produk';
  DM.qr2_barang.Active := True;
end;

procedure TForm1.SMDBGrid1Exit(Sender: TObject);
begin

 DM.qr2_barang.Active := False;
  DM.qr2_barang.SQL.Text := 'select * from goods';
  DM.qr2_barang.Active := True;
end;

procedure TForm1.pnlrefreshdataClick(Sender: TObject);
begin
  DM.qr2_barang.Active := False;
  DM.qr2_barang.SQL.Text := 'select * from goods';
  DM.qr2_barang.Active := True;
end;

procedure TForm1.pnl_editGudangMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if (X >= 0) and (Y >= 0) and (X < pnl_editGudang.Width) and (Y < pnl_editGudang.Height) then
    begin
      if GetCapture <> pnl_editGudang.Handle then
      begin
        SetCapture(pnl_editGudang.Handle);
        pnl_editGudang.Color := $004B7113;
      end;
    end
  else
    begin
      ReleaseCapture;
      pnl_editGudang.Color := $006DA51C;
    end;
end;

procedure TForm1.pnl_filterGudangMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if (X >= 0) and (Y >= 0) and (X < pnl_filterGudang.Width) and (Y < pnl_filterGudang.Height) then
    begin
      if GetCapture <> pnl_filterGudang.Handle then
      begin
        SetCapture(pnl_filterGudang.Handle);
        pnl_filterGudang.Color := $000044D2;
      end;
    end
  else
    begin
      ReleaseCapture;
      pnl_filterGudang.Color := $004080FF;
    end;
end;

procedure TForm1.pnl_hapusGudangMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if (X >= 0) and (Y >= 0) and (X < pnl_hapusGudang.Width) and (Y < pnl_hapusGudang.Height) then
    begin
      if GetCapture <> pnl_hapusGudang.Handle then
      begin
        SetCapture(pnl_hapusGudang.Handle);
        pnl_hapusGudang.Color := $002D10B1;
      end;
    end
  else
    begin
      ReleaseCapture;
      pnl_hapusGudang.Color := $005332ED;
    end;
end;

procedure TForm1.pnl_exportGudangMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if (X >= 0) and (Y >= 0) and (X < pnl_exportGudang.Width) and (Y < pnl_exportGudang.Height) then
    begin
      if GetCapture <> pnl_exportGudang.Handle then
      begin
        SetCapture(pnl_exportGudang.Handle);
        pnl_exportGudang.Color := $00C14B04;
      end;
    end
  else
    begin
      ReleaseCapture;
      pnl_exportGudang.Color := $00FA7B30;
    end;
end;

procedure TForm1.pnl_cetakGudangMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if (X >= 0) and (Y >= 0) and (X < pnl_cetakGudang.Width) and (Y < pnl_cetakGudang.Height) then
    begin
      if GetCapture <> pnl_cetakGudang.Handle then
      begin
        SetCapture(pnl_cetakGudang.Handle);
        pnl_cetakGudang.Color := $009F3A04;
      end;
    end
  else
    begin
      ReleaseCapture;
      pnl_cetakGudang.Color := $00ED5807;
    end;
end;

procedure TForm1.pnlrefreshdataMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if (X >= 0) and (Y >= 0) and (X < pnlrefreshdata.Width) and (Y < pnlrefreshdata.Height) then
    begin
      if GetCapture <> pnlrefreshdata.Handle then
      begin
        SetCapture(pnlrefreshdata.Handle);
        pnlrefreshdata.Color := $00A61E57;
      end;
    end
  else
    begin
      ReleaseCapture;
      pnlrefreshdata.Color := $00D92672;
    end;
end;

procedure TForm1.pnltambahsupplierMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if (X >= 0) and (Y >= 0) and (X < pnltambahsupplier.Width) and (Y < pnltambahsupplier.Height) then
    begin
      if GetCapture <> pnltambahsupplier.Handle then
      begin
        SetCapture(pnltambahsupplier.Handle);
        pnltambahsupplier.Color := $008B2594;
      end;
    end
  else
    begin
      ReleaseCapture;
      pnltambahsupplier.Color := $00C136CD;
    end;
end;

procedure TForm1.pnlTambahKaryawanClick(Sender: TObject);
begin
//  pnlkaryawansupplier.Show;
  Form2.Show;
  Form2.pnlkaryawansupplier.Show;
  Form2.pnl_addsupplier.Hide;
  Form2.pnlPelanggan.Hide;
  Form1.Enabled := False;
  Form2.scrlbx4.SetFocus;
end;

procedure TForm1.pnlTambahKaryawanMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
if (X >= 0) and (Y >= 0) and (X < pnlTambahKaryawan.Width) and (Y < pnlTambahKaryawan.Height) then
    begin
      if GetCapture <> pnlTambahKaryawan.Handle then
      begin
        SetCapture(pnlTambahKaryawan.Handle);
        pnlTambahKaryawan.Color := $009B4E00;
      end;
    end
  else
    begin
      ReleaseCapture;
      pnlTambahKaryawan.Color := $00FF8000;
    end;
end;

procedure TForm1.pnltambahsupplierClick(Sender: TObject);
begin
//  pnl_addsupplier.Show;
  Form2.Show;
  Form2.pnlkaryawansupplier.Hide;
  Form2.pnl_addsupplier.Show;
  Form2.pnlPelanggan.Hide;
  Form1.Enabled := False;
  Form2.scrlbx5.SetFocus;

end;

procedure TForm1.edit_nokaryawanKeyPress(Sender: TObject; var Key: Char);
begin
   if key = chr(13) then
    begin
      edit_passwordkaryawan.setfocus;
    end;
end;

procedure TForm1.edit_passwordkaryawanKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = chr(13) then
    begin
      login;
    end;
end;

procedure TForm1.scrlbx2MouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
var
  LTopLeft, LTopRight, LBottomLeft, LBottomRight: Integer;
  LPoint: TPoint;
begin
  inherited;

  // First you have to get the position of the control on screen
  // as MousePos coordinates are based on the screen positions.
  LPoint := scrlbx2.ClientToScreen(Point(0,0));
  LTopLeft := LPoint.X;
  LTopRight := LTopLeft + scrlbx2.Width;
  LBottomLeft := LPoint.Y;
  LBottomRight := LBottomLeft + scrlbx2.Width;

  if (MousePos.X >= LTopLeft) and
    (MousePos.X <= LTopRight) and
    (MousePos.Y >= LBottomLeft)and
    (MousePos.Y <= LBottomRight) then
  begin
    // If the mouse is inside the scrollbox coordinates,
    // scroll it by setting .VertScrollBar.Position.
    scrlbx2.VertScrollBar.Position :=
      scrlbx2.VertScrollBar.Position - WheelDelta;
    Handled := True;
  end;
end;

procedure TForm1.lbl12Click(Sender: TObject);
begin
  //
end;

procedure TForm1.edit_searchKeyPress(Sender: TObject; var Key: Char);
begin
    if key = chr(13) then
    begin
      caridatax;
    end;
end;

procedure TForm1.caridatax;
var
  titikField,i :Integer;
  a:String;
begin
   with DM.qr2_barang do
   begin
     Active := False;
     SQL.Clear;
     SQL.Text := 'SELECT * FROM goods WHERE id_supplier = "'+edit_search.Text+'"';
     Active := True;
     for i := 1 to DM.qr2_barang.RecordCount do
     begin
        a := DM.qr2_barang['id_supplier'];
     end;
   end;

   if edit_search.Text = a then
      begin
         with DM.qr2_barang do
         begin
           Active := False;
           SQL.Clear;
           SQL.Text := 'SELECT * FROM goods WHERE id_supplier = "'+a+'"';
           Active := True;
          end;
      end
      else if (edit_search.Text = 'tersedia') or (edit_search.Text = 'Tersedia')  then
      begin
          with DM.qr2_barang do
          begin
            Active := False;
            SQL.Clear;
            SQL.Text := 'select * from goods where stok > 0';
            Active := True;
          end;
      end
   else if (edit_search.Text = 'kosong') or (edit_search.Text = 'Kosong') then
      begin
          with DM.qr2_barang do
          begin
            Active := False;
            SQL.Clear;
            SQL.Text := 'select * from goods where stok < 1';
            Active := True;
          end;
      end
   else
   begin
      with DM.qr2_barang do
      begin
         Active := False;
         SQL.Clear;
         SQL.Text := 'SELECT * FROM goods';
         Active := True;
      end;

      while not DM.qr2_barang.Eof do
        begin
          for titikField := 0 to DM.qr2_barang.FieldCount-1 do
          if (SMDBGrid1.Fields[titikField].value<>null) and (pos(uppercase(edit_search.Text),uppercase(SMDBGrid1.Fields[titikField].Value))>0)  then
          begin
            found := True;
            SMDBGrid1.SelectedField := SMDBGrid1.Fields[titikField];
            SMDBGrid1.SetFocus;
            Break;
          end;
          if found then break;
          DM.qr2_barang.Next;
        end;
    end;
      edit_search.Clear;
      found := False;
end;

procedure TForm1.RestartThisApp;
begin
  ShellExecute(Handle, nil, PChar(Application.ExeName), nil, nil, SW_SHOWNORMAL);
  Application.Terminate; // or, if this is the main form, simply Close;
end;

procedure TForm1.scrlbx1MouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
var
  LTopLeft, LTopRight, LBottomLeft, LBottomRight: Integer;
  LPoint: TPoint;
begin
  inherited;
  // First you have to get the position of the control on screen
  // as MousePos coordinates are based on the screen positions.
  LPoint := scrlbx1.ClientToScreen(Point(0,0));
  LTopLeft := LPoint.X;
  LTopRight := LTopLeft + scrlbx1.Width;
  LBottomLeft := LPoint.Y;
  LBottomRight := LBottomLeft + scrlbx1.Width;

  if (MousePos.X >= LTopLeft) and
    (MousePos.X <= LTopRight) and
    (MousePos.Y >= LBottomLeft)and
    (MousePos.Y <= LBottomRight) then
  begin
    // If the mouse is inside the scrollbox coordinates,
    // scroll it by setting .VertScrollBar.Position.
    scrlbx1.VertScrollBar.Position :=
      scrlbx1.VertScrollBar.Position - WheelDelta;
    Handled := True;
  end;
end;

procedure TForm1.cbb2Select(Sender: TObject);
begin
  jenisPel;
end;

procedure TForm1.cbb1Select(Sender: TObject);
begin
  selectIdBarang;
  edit_jmlbarang.SetFocus;
end;

procedure TForm1.img_searchClick(Sender: TObject);
begin
  edit_search.SetFocus;
end;

procedure TForm1.btn_pembelianMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if (X >= 0) and (Y >= 0) and (X < btn_pembelian.Width) and (Y < btn_pembelian.Height) then
    begin
      if GetCapture <> btn_pembelian.Handle then
      begin
        SetCapture(btn_pembelian.Handle);
        btn_pembelian.Color := $0085D117;
      end;
    end
  else
    begin
      ReleaseCapture;
      btn_pembelian.Color := $006DA51C;
        if panel_pembelianFront.Visible = True then
        begin
            btn_pembelian.Color := $004B710D;
        end;
    end;
end;

procedure TForm1.edit_jmlbarangKeyPress(Sender: TObject; var Key: Char);
begin
   if key = chr(13) then
    begin
      inputToListx;
    end;
end;

procedure TForm1.edit_hargabarangJualKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = chr(13) then
    begin
      inputToListx;
    end;
end;

procedure TForm1.edit_namabarangJualKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = chr(13) then
    begin
      inputToListx;
    end;
end;

procedure TForm1.cbb1KeyPress(Sender: TObject; var Key: Char);
begin
   if key = chr(13) then
    begin
      inputToListx;
      edit_jmlbarang.SetFocus;
    end;
end;

procedure TForm1.cbb2KeyPress(Sender: TObject; var Key: Char);
begin
   if key = chr(13) then
    begin
      inputToListx;
    end;
end;

procedure TForm1.edt_bayarJualExit(Sender: TObject);
begin
  bayarJual;
end;

procedure TForm1.bayarJual;
var
  a,b:Integer;
  e,f:String;
  bayarcurr,kembaliancurr : Currency;
begin
  if edt_bayarJual.Text = '' then
  begin
     MessageDlg('Jumlah pembayaran belum dimasukan !',mtWarning,[mbOK],0);
     edit_kembalian.Clear;
     edt_bayarJual.Clear;
     edt_bayarJual.SetFocus;
  end
  else
  if (d = 0) or (hitungx = 0) then
  begin
    MessageDlg('List Kosong, Inputkan barang terlebih dahulu !',mtWarning,[mbOK],0);
    edit_kembalian.Clear;
    edt_bayarJual.Clear;
    cbb_namaPelanggan.SetFocus;
  end
  else if (total_belanja[hitungx] > StrToInt(edt_bayarJual.Text)) or  (totalint > StrToInt(edt_bayarJual.Text)) then
    begin
     MessageDlg('Uang Yang dimasukan Kurang !',mtError,[mbOK],0);
     edt_bayarJual.SetFocus;
    end
  else
  begin
    a:=StrToInt(edt_bayarJual.Text);
    if (totalint = 0) then
    begin
      b:= a - total_belanja[hitungx];
    end
    else
    begin
      b := a - totalint;
    end;

    edit_kembalian.Text := IntToStr(b);

    bayarcurr := StrToCurr(edt_bayarJual.Text);
    BayarJual_public := StrToInt(edt_bayarJual.Text);
    //pnl28.Caption := IntToStr(BayarJual_public);
    e := ' Rp. '+FormatCurr(',0', bayarcurr)+' ,-';
    edt_bayarJual.Text := e;

      kembaliancurr := StrToCurr(edit_kembalian.Text);
      f := ' Rp. '+FormatCurr(',0', kembaliancurr)+' ,-';
      edit_kembalian.Text := f;
  end;
end;

procedure TForm1.pnl63Click(Sender: TObject);
begin
  Form2.pnlkaryawansupplier.Hide;
  Form2.pnl_addsupplier.Hide;
  Form2.pnlPelanggan.Show;
  Form2.Show;
  Form1.Enabled := False;
  Form2.scrlbx1.SetFocus;
end;

procedure TForm1.PelangganSudahAda;
begin

  with DM.qr5_customers do
    begin
      SQL.Clear;
      SQL.Add('SELECT nama FROM customers order by nama');
      Open;
      First;
      cbb_namaPelanggan.Items.Clear;
      cbb_namaPelanggan.Text := '';
      while not Eof do
      begin
        cbb_namaPelanggan.Items.Add((FieldByName('nama').AsString));
        Next;
      end;
      Close;
    end;
    cbb1.SetFocus;
end;

procedure TForm1.pnl63MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if (X >= 0) and (Y >= 0) and (X < pnl63.Width) and (Y < pnl63.Height) then
    begin
      if GetCapture <> pnl63.Handle then
      begin
        SetCapture(pnl63.Handle);
        pnl63.Color := $00FFAA55;
      end;
    end
  else
    begin
      ReleaseCapture;
      pnl63.Color := $00FF8000;
    end;
end;

procedure TForm1.cbb_idbarangBeliSelect(Sender: TObject);
var
  a,b:string;
  j,c:integer;
  harbarcurr:Currency;
begin

  for j:= 1 to cbb_idbarangBeli.Items.Count do
  begin
    if cbb_idbarangBeli.Text = itemxy[j] then
      begin
        DM.qr2_barang.Active := False;
        DM.qr2_barang.SQL.Text:='select * from goods where id = "'+itemx[j]+'"';
        DM.qr2_barang.Active:= True;
        a:=DM.qr2_barang['nama'];
        if a = '0' then
        begin
          a := 'Belum Diberi Nama';
        end
        else
        begin
          a := DM.qr2_barang['nama'];
        end;
        edt_namBarBeli.Text:= a;

        tempharga:= DM.qr2_barang['harga'];

        if tempharga = '0' then
        begin
          tempharga := '0';
        end
        else
        begin
          tempharga := DM.qr2_barang['harga'];
        end;

        harbarcurr := StrToCurr(tempharga);
        b := 'Rp. '+FormatCurr(',0', harbarcurr)+' ,-';
        //edt_hargaBarBeli.Text:= b;

        temp_idproduk := DM.qr2_barang['id'];
        temp_hargaproduk := DM.qr2_barang['harga'];
        statusbar := DM.qr2_barang['stok'];

        if statusbar = '' then
        begin
          statusbar := '0';
        end
        else
        begin
          statusbar := DM.qr2_barang['stok'];
        end;

        c := StrToInt(statusbar);

        if c > 0 then
          begin
            edt_stokbeli.Text := 'Tersedia : '+statusbar+' pcs';
            status_bar.Color := clWindow;
          end
        else
          begin
            edt_stokbeli.Text := 'Kosong';
            edt_stokbeli.Color := $005332ED;
          end;
        edt_hargaBarBeli.Text:= b;
      end;
  end;
end;

procedure TForm1.btn_masukanKeListBeliClick(Sender: TObject);
begin
  InputToListBeli;
  cbb_idbarangBeli.Text := '';
  edt_namBarBeli.Text := '';
  edt_hargaBarBeli.Text := '';
  edt_stokbeli.Text :='';
  edt_jumlahBarBeli.Text := '';
end;

procedure TForm1.InputToListBeli;
var
  a,b,c,i:Integer;
  testidproduk,e,z,m:String;
  hbarcurr, subtotalcurr, tot_belicur : Currency;
  nam_bar,har_bar,qty_bar,sub_totalbar,tot_belibar : string;

begin
  if (cbb_idSupplier.Text = '') or (cbb_idbarangBeli.Text = '')  or (edt_hargaBarBeli.Text = '') or (edt_stokbeli.Text = '') or (edt_jumlahBarBeli.Text = '') then
  begin
    MessageDlg('Isi data dengan benar !',mtWarning,[mbOK],0);
    cbb_idSupplier.Text := '';
    cbb_idbarangBeli.Text := '';
    edt_hargaBarBeli.Text := '';
    edt_stokbeli.Text := '';
    edt_jumlahBarBeli.Text := '';
    cbb_idSupplier.SetFocus;
  end

  else
  begin
    hitungx := hitungx + 1;
    topx := topx + 30;
    z := IntToStr(hitungx);

    ListNoBarang[hitungx] := TLabel.Create(Form1.scrlbx3);
    ListNoBarang[hitungx].Parent := Form1.scrlbx3;
    ListNoBarang[hitungx].Left := 8;
    ListNoBarang[hitungx].Top := topx;
    ListNoBarang[hitungx].Caption := IntToStr(hitungx);
    ListNoBarang[hitungx].Font.Charset := ANSI_CHARSET;
    ListNoBarang[hitungx].Font.Color := clBlack;
    ListNoBarang[hitungx].Font.Height := -15;
    ListNoBarang[hitungx].Font.Name := 'Century Gothic';
    ListNoBarang[hitungx].Font.Style := [fsBold];
    ListNoBarang[hitungx].ParentFont := False;


    ListNamaBarang[hitungx] := TLabel.Create(Form1.scrlbx3);
    ListNamaBarang[hitungx].Parent := Form1.scrlbx3;
    ListNamaBarang[hitungx].Left := 60;
    ListNamaBarang[hitungx].Top := topx;
    ListNamaBarang[hitungx].Caption := edt_namBarBeli.Text;

    listbelinambar[hitungx] := ListNamaBarang[hitungx].Caption;


    ListNamaBarang[hitungx].Font.Charset := ANSI_CHARSET;
    ListNamaBarang[hitungx].Font.Color := clBlack;
    ListNamaBarang[hitungx].Font.Height := -15;
    ListNamaBarang[hitungx].Font.Name := 'Century Gothic';
    ListNamaBarang[hitungx].Font.Style := [fsBold];
    ListNamaBarang[hitungx].ParentFont := False;

    ListHargaBarang[hitungx] := TLabel.Create(Form1.scrlbx3);
    ListHargaBarang[hitungx].Parent := Form1.scrlbx3;
    ListHargaBarang[hitungx].Left := 240;
    ListHargaBarang[hitungx].Top := topx;

    listharbarx[hitungx] := StrToInt(tempharga);
    listbeliharbar[hitungx] := IntToStr(listharbarx[hitungx]);

    m := IntToStr(listharbarx[hitungx]);
    hbarcurr := StrToCurr(m);
    ListHargaBarang[hitungx].Caption := 'Rp. '+FormatCurr(',0', hbarcurr)+' ,-';
    ListHargaBarang[hitungx].Font.Charset := ANSI_CHARSET;
    ListHargaBarang[hitungx].Font.Color := clBlack;
    ListHargaBarang[hitungx].Font.Height := -15;
    ListHargaBarang[hitungx].Font.Name := 'Century Gothic';
    ListHargaBarang[hitungx].Font.Style := [fsBold];
    ListHargaBarang[hitungx].ParentFont := False;

    listqtyx[hitungx] := StrToInt(edt_jumlahBarBeli.Text);

    EditQty[hitungx] := TEdit.Create(Form1.scrlbx3);
    EditQty[hitungx].Parent := Form1.scrlbx3;
    EditQty[hitungx].Left := 370;
    EditQty[hitungx].Width := 50;
    EditQty[hitungx].Top := topx;
    EditQty[hitungx].Text:= edt_jumlahBarBeli.Text;

    listbeliqtybar[hitungx] := EditQty[hitungx].Text;

    EditQty[hitungx].Font.Charset := ANSI_CHARSET;
    EditQty[hitungx].Font.Color := clBlack;
    EditQty[hitungx].Font.Height := -15;
    EditQty[hitungx].Font.Name := 'Century Gothic';
    EditQty[hitungx].Font.Style := [fsBold];
    EditQty[hitungx].ParentFont := False;


    listsubtotalx[hitungx] := listqtyx[hitungx] * listharbarx[hitungx];

    ListSubtotal[hitungx] := TLabel.Create(Form1.scrlbx3);
    ListSubtotal[hitungx].Parent := Form1.scrlbx3;
    ListSubtotal[hitungx].Left := 480;
    ListSubtotal[hitungx].Top := topx;

    m := IntToStr(listsubtotalx[hitungx]);
    subtotalcurr := StrToCurr(m);
    sub_totalbar := m;

    ListSubtotal[hitungx].Caption := 'Rp. '+FormatCurr(',0', subtotalcurr)+' ,-';
    ListSubtotal[hitungx].Font.Charset := ANSI_CHARSET;
    ListSubtotal[hitungx].Font.Color := clBlack;
    ListSubtotal[hitungx].Font.Height := -15;
    ListSubtotal[hitungx].Font.Name := 'Century Gothic';
    ListSubtotal[hitungx].Font.Style := [fsBold];
    ListSubtotal[hitungx].ParentFont := False;

    EditQty[hitungx].OnExit := EditQtyBeliExit;

    total_beli := total_beli + listsubtotalx[hitungx];
    tot_belibar := IntToStr(total_beli);
    tot_belicur := StrToCurr(tot_belibar);
    totalBeli.Caption := 'Rp. '+FormatCurr(',0', tot_belicur)+' ,-';

    tempIDPRODUKBELI[hitungx] := temp_idproduk;
    tempSTOKPRODUKBELI[hitungx] := statusbar;
    tempHARGAPRODUKBELI[hitungx] := listbeliharbar[hitungx];

    with DM.qr4_suppliers do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text := 'SELECT * FROM suppliers where nama = "'+cbb_idSupplier.Text+'"';
      Active := True;

      for i := 1 to DM.qr4_suppliers.RecordCount do
      begin
        tempIDSUPPLIERBELI[hitungx] := DM.qr4_suppliers['id'];
      end;
    end;
  end;
    cbb_idSupplier.Text := '';
    cbb_idbarangBeli.Text := '';
    edt_hargaBarBeli.Text := '';
    edt_stokbeli.Text := '';
    edt_jumlahBarBeli.Text := '';
    cbb_idSupplier.SetFocus;
end;

procedure TForm1.EditQtyBeliExit(Sender: TObject);
var
  n,v,p:Integer;
  e,m,id_supplier : String;
  subtotalcurr : Currency;
begin
  totalint := 0;
  for v:= 1 to hitungx do
  begin
    if EditQty[v].Text <> IntToStr(listqtyx[v]) then
      begin
         hitungk := v;
         n := StrToInt(EditQty[hitungk].Text);
         listsubtotalx[hitungk] := n * listharbarx[hitungk];
         m := IntToStr(listsubtotalx[hitungk]);
         subtotalcurr := StrToCurr(m);
         ListSubtotal[hitungk].Caption := 'Rp. '+FormatCurr(',0', subtotalcurr)+' ,-';
      end
    else
    begin
        hitungk := v;
        n := StrToInt(EditQty[hitungk].Text);
        listsubtotalx[hitungk] := n * listharbarx[hitungk];
        m := IntToStr(listsubtotalx[hitungk]);
        subtotalcurr := StrToCurr(m);
        ListSubtotal[hitungk].Caption := 'Rp. '+FormatCurr(',0', subtotalcurr)+' ,-';
    end;
  end;

  for v := 1 to hitungx do
  begin
    totalint := totalint + listsubtotalx[v];
  end;

  totalcurr := StrToCurr(IntToStr(totalint));
    e := 'Total : Rp. '+FormatCurr(',0', totalcurr)+' ,-';
    totalstr := CurrToStr(totalcurr);
  totalBeli.Caption := e;
end;

procedure TForm1.btn_submitBeliClick(Sender: TObject);
var
  z,p,i,stokproduk_beli : integer;
  id_supplier : String;

begin
  with DM.qr4_suppliers do  // MENDAPATKAN ID_SUPPLIER
  begin
    Active := False;
    SQL.Clear;
    SQL.Text := 'SELECT id FROM suppliers where nama = "'+cbb_idSupplier.Text+'"';
    Active := True;
  end;

  for p:=1 to DM.qr4_suppliers.RecordCount do  // MENDAPATKAN ID SUPPLIER
  begin
    id_supplier := DM.qr4_suppliers['id'];
  end;

  for i := 1 to hitungx do
  begin
    stokproduk_beli := StrToInt(tempSTOKPRODUKBELI[i]) + StrToInt(EditQty[i].Text);
    with DM.update_stok do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text := 'SELECT * FROM goods';
      //SQL.Text := 'INSERT INTO goods (nama, stok, harga, id_supplier) values = "'+listbelinambar[i]+'","'+inttostr(stokproduk_beli)+'","'+tempHARGAPRODUKBELI[hitungx]+'"';
      DM.con1.ExecuteDirect('UPDATE goods SET nama = "'+listbelinambar[i]+'", stok = "'+inttostr(stokproduk_beli)+'", harga = "'+tempHARGAPRODUKBELI[i]+'", id_supplier = "'+tempIDSUPPLIERBELI[i]+'" WHERE id = "'+tempIDPRODUKBELI[i]+'"');
      Active := True;
    end;
  end;
  MessageDlg('Barang Telah Di Restock.'+sLineBreak+' Silahkan Cek Di Menu MANAGE',mtInformation,[mbOK],0);
  //ResetAllVariable;

  for z := 1 to hitungx do
  begin
    ListNoBarang[z].Free;
    ListNamaBarang[z].Free;
    EditQty[z].Free;
    ListSubtotal[z].Free;
    ListHargaBarang[z].Free;
    itemx[z] := '';
    itemxy[z] := '';
    listbelinambar[z] := '';
    listharbarx[z] := 0;
    listqtyx[z] := 0;
    listbeliqtybar[z] := '';
    listsubtotalx[z] := 0;
    tempIDPRODUKBELI[z]  := '';
    tempSTOKPRODUKBELI[z] := '';
    tempHARGAPRODUKBELI[z] := '';
    tempIDSUPPLIERBELI[z] := '';
  end;
  tempharga := '';
  temp_idproduk := '';
  temp_hargaproduk := '';
  statusbar := '';
  topx := -20;
  hitungk := 0;
  hitungx := 0;
  d:= 0;
  totalint := 0;
  totalBeli.Caption := 'TOTAL : Rp. 0,-';
  RefreshIDSupBeli;
end;

procedure TForm1.pnl64Click(Sender: TObject);
var
  j,lastIDProduk,p :integer;
  a,id_supplier: String;
begin

  if cbb_idSupplier.Text = '' then
  begin
    MessageDlg('Masukan Supplier Terlebih Dahulu !',mtWarning,[mbOK],0);
  end
  else
  begin
  with DM.qr4_suppliers do  // MENDAPATKAN ID_SUPPLIER
  begin
    Active := False;
    SQL.Clear;
    SQL.Text := 'SELECT * FROM suppliers where nama = "'+cbb_idSupplier.Text+'"';
    Active := True;
  end;

  for p:=1 to DM.qr4_suppliers.RecordCount do  // MENDAPATKAN ID SUPPLIER
  begin
    id_supplier := DM.qr4_suppliers['id'];
  end;

      with DM.cek_produkid_beli do
      begin
        Active := False;
        SQL.Clear;
        SQL.Text := 'SELECT * FROM goods';
        Active := True;
        j := 1;
        while j <= DM.cek_produkid_beli.RecordCount do // MENDAPATKAN ID FAKTUR TERAKHIR
        begin
          a := DM.cek_produkid_beli['id'];
          DM.cek_produkid_beli.Next;
          j := j + 1;
        end;
      end;

      if a = '' then
      begin
        a := '0';
      end;
      lastIDProduk := StrToInt(a) + 1;

      with DM.cek_produkid_beli do
      begin
        Active := False;
        SQL.Clear;
        SQL.Text := 'SELECT * FROM goods';
        DM.con1.ExecuteDirect('INSERT INTO goods (id, id_supplier) VALUES("'+IntToStr(lastIDProduk)+'","'+id_supplier+'")');
        Active := True;
      end;
      RefresIDBarangBeli;
      cbb_idbarangBeli.Text := IntToStr(lastIDProduk);
      edt_namBarBeli.SetFocus;
      edt_stokbeli.Text := 'Tidak Perlu Di Isi';
  end;
end;

procedure TForm1.edt_hargaBarBeliExit(Sender: TObject);
var
  b :String;
  harbarcurr : Currency;

begin
  tempharga := edt_hargaBarBeli.Text;
  harbarcurr := StrToCurr(tempharga);
  b := 'Rp. '+FormatCurr(',0', harbarcurr)+' ,-';
  edt_hargaBarBeli.Text:= b;
end;

procedure TForm1.cbb_idSupplierSelect(Sender: TObject);
var
  i :integer;
begin
  with DM.qr4_suppliers do
  begin
    Active := False;
    SQL.Clear;
    SQL.Text := 'SELECT * FROM suppliers where nama = "'+cbb_idSupplier.Text+'"';
    Active := True;
    for i := 1 to DM.qr4_suppliers.RecordCount do
    begin
      tempidsup[i] := DM.qr4_suppliers['id'];
    end;
  end;
  RefresIDBarangBeli;
end;

procedure TForm1.ResetAllVariable;
var
  z : integer;
begin
    d:= 0;
    totalint:=0;
    total_beli := 0;
    id_Fak := 0;
    id_pelanggan := '';
    temp_hargaproduk := '';
      z := 1;
      while z <= hitungx do
      begin
        ListSubtotal[z].Free;
        ListNamaBarang[z].Free;
        ListHargaBarang[z].Free;
        ListNoBarang[z].Free;
        EditQty[z].Free;
        ListPanelnambar[z].Free;
        ListPanelharbar[z].Free;
        ListPanelqtyx[z].Free;
        ListPanelsubtotal[z].Free;
        listnambarx[z] := '';

        tempIDPRODUKJUAL[z] := '';
        tempSTOKPRODUKJUAL[z] := '';
        tempIDPRODUKBELI[z] := '';
        tempSTOKPRODUKBELI[z] := '';
        tempHARGAPRODUKBELI[z] := '';
        tempIDSUPPLIERBELI[z] := '';
        listharbarx[z] := 0;
        listsubtotalx[z] := 0;
        listidprodukx[z] := '';
        listqtyx[z] := 0;
        listbelinambar[z] := '';
        listbeliharbar[z] := '';
        listbeliqtybar[z] := '';
        baliknilai[z] := 0;
        EditQty[z].Free;
        itemx[z] := '';
        itemxy[z] := '';
        itempelanggan[z] := '';
        item_idpelanggan[z] := '';
        tempidsup[z] := '';
        nourutsup[z] := 0;
        z := z + 1;
      end;
    id_karyawan := '';
    topx := -20;
    hitungx := 0;
    hitungk := 0;
    totalcurr := 0;
    totalstr := '';
    tempharga := '';
    statusbar := '';
    userx := '';
end;

procedure TForm1.tmr1Timer(Sender: TObject);
var
  ADate:TDateTime;
  hari:array[1..7] of string;
begin
  hari[1]:='Minggu';
  hari[2]:='Senin';
  hari[3]:='Selasa';
  hari[4]:='Rabu';
  hari[5]:='Kamis';
  hari[6]:='Jumat';
  hari[7]:='Sabtu';
  ADate:=date;
  tanggal.Caption := hari[DayofWeek(ADate)] +', '+ DateToStr(Now);
  jam.Caption := TimeToStr(Now);
end;

end.


