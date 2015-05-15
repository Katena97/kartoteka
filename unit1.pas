unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, mysql50conn, mysql55conn, sqldb, db, FileUtil, Forms,
  Controls, Graphics, Dialogs, DBGrids, StdCtrls, DbCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Datasource1: TDatasource;
    Datasource2: TDatasource;
    DataSource4: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    MySQL50Connection1: TMySQL50Connection;
    MySQL55Connection1: TMySQL55Connection;
    SQLQuery1: TSQLQuery;
    SQLQuery2: TSQLQuery;
    SQLQuery4: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    SQLTransaction2: TSQLTransaction;
    SQLTransaction4: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure MySQL50Connection1AfterConnect(Sender: TObject);
    procedure MySQL50Connection3AfterConnect(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.MySQL50Connection1AfterConnect(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  SQLQuery1.ApplyUpdates();
  SQLTransaction1.Commit;
  SQLQuery1.Active:=true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  sqlQuery1.Close;
  sqlQuery1.SQL.Clear;
  sqlQuery1.SQL.Add('select * from fio where name='+'"'+edit1.text+'";');
  sqlQuery1.Active:=true;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  SQLQuery4.ApplyUpdates();
  SQLTransaction4.Commit;
  SQLQuery4.Active:=true;
end;

procedure TForm1.DBEdit1Change(Sender: TObject);
begin

end;

procedure TForm1.DBEdit2Change(Sender: TObject);
begin

end;

procedure TForm1.MySQL50Connection3AfterConnect(Sender: TObject);
begin

end;

end.

