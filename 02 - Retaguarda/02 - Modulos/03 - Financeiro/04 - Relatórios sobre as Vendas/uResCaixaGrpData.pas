unit uResCaixaGrpData;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
   FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
   FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
   FireDAC.DApt, RLReport, Data.DB,
   FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLParser;

type
   TFrResCaixasGrpData = class(TForm)
      Printer: TRLReport;
      RLBand1: TRLBand;
      RLLabel1: TRLLabel;
      RLSystemInfo1: TRLSystemInfo;
      RLSystemInfo2: TRLSystemInfo;
      RLSystemInfo3: TRLSystemInfo;
      RLLabel2: TRLLabel;
      RLLabel16: TRLLabel;
      dsQuery: TDataSource;
      RLBand2: TRLBand;
      RLLabel7: TRLLabel;
      RLLabel5: TRLLabel;
      RLBand3: TRLBand;
      RLDBText1: TRLDBText;
      RLDBText6: TRLDBText;
      RLBand6: TRLBand;
      RLDBResult2: TRLDBResult;
      RLLabel11: TRLLabel;
      Query: TFDQuery;
      QueryFRM_DESCRICAO: TStringField;
      QueryFRM_VALOR: TFMTBCDField;
      RLGroup1: TRLGroup;
      QueryF_CUP_DATA: TDateField;
      RLBand4: TRLBand;
      RLDBText2: TRLDBText;
      RLBand5: TRLBand;
      RLDraw1: TRLDraw;
      RLLabel3: TRLLabel;
      RLBand7: TRLBand;
      RLDBResult1: TRLDBResult;
      RLDraw2: TRLDraw;
      RLExpressionParser1: TRLExpressionParser;
      lbCaixa: TRLLabel;
      procedure RLLabel16BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
      procedure RLLabel1BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
    procedure lbCaixaBeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
   private
      { Private declarations }
   public
      { Public declarations }
      agData, bgData: TDateTime;
      CaixaDesc: String;
      function CarregarDadosBD(aData, bData: TDateTime; CaixaID: Integer; NomeCaixa: String): Boolean;

   end;

var
   FrResCaixasGrpData: TFrResCaixasGrpData;

implementation

uses
   Classe.Empresa, uModuloRet;

{$R *.dfm}

function TFrResCaixasGrpData.CarregarDadosBD(aData, bData: TDateTime; CaixaID: Integer; NomeCaixa: String): Boolean;
begin
   // Coloca a data nas variaveis globais
   agData := aData;
   bgData := bData;

   // Resgata o nome do caixa
   CaixaDesc := NomeCaixa;

   // Configura a query para executar a pesquisa
   Query.Close;
   Query.SQL.Clear;

   Query.SQL.Add('SELECT');
   Query.SQL.Add('   TB0.F_CUP_DATA,');
   Query.SQL.Add('   TB0.FRM_DESCRICAO,');
   Query.SQL.Add('   SUM(TB0.FRM_VALOR) AS FRM_VALOR');
   Query.SQL.Add('FROM');
   Query.SQL.Add('   (SELECT');
   Query.SQL.Add('      T2.F_CUP_DATA,');
   Query.SQL.Add('      T1.FRM_DESCRICAO,');
   Query.SQL.Add('      IIF(T1.FRM_ID = 1');
   Query.SQL.Add('         , IIF(T2.F_CUP_TROCO > 0');
   Query.SQL.Add('            , T1.FRM_VALOR - T2.F_CUP_TROCO');
   Query.SQL.Add('            , T1.FRM_VALOR');
   Query.SQL.Add('         )');
   Query.SQL.Add('         , T1.FRM_VALOR');
   Query.SQL.Add('      ) AS FRM_VALOR');
   Query.SQL.Add('   FROM');
   Query.SQL.Add('      C000032 AS T1');
   Query.SQL.Add('   JOIN');
   Query.SQL.Add('      C000030 AS T2');
   Query.SQL.Add('   ON');
   Query.SQL.Add('      T2.ID_50        = T1.ID_50');
   Query.SQL.Add('   AND');
   Query.SQL.Add('      T2.ID_ABERTURA  = T1.ID_ABERTURA');
   Query.SQL.Add('   WHERE');
   Query.SQL.Add('      T2.ID_EMPRESA   = :ID_EMP');
   Query.SQL.Add('   AND');
   Query.SQL.Add('      T2.F_CUP_STATUS = 1');

   if CaixaID <> 999 then
   begin
      Query.SQL.Add('AND');
      Query.SQL.Add('   T2.id_caixa = :id_caixa');
   end;

   Query.SQL.Add('   AND');
   Query.SQL.Add('      T2.F_CUP_DATA BETWEEN :DT_A AND :DT_B');
   Query.SQL.Add('   ) AS TB0');
   Query.SQL.Add('GROUP BY');
   Query.SQL.Add('   TB0.F_CUP_DATA,');
   Query.SQL.Add('   TB0.FRM_DESCRICAO');

   if CaixaID <> 999 then
      Query.ParamByName('id_caixa').AsInteger := CaixaID;

   Query.ParamByName('id_emp').AsInteger := FEmpresaClass.ID;
   Query.ParamByName('dt_a').AsDateTime := aData;
   Query.ParamByName('dt_b').AsDateTime := bData;
   Query.Open();

   // Checa e retornou algum registro
   if Query.IsEmpty then
      Result := false
   else
      Result := true;
end;

procedure TFrResCaixasGrpData.lbCaixaBeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   aText := 'Caixa Selecionado: ' + CaixaDesc;
end;

procedure TFrResCaixasGrpData.RLLabel16BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   AText := 'PED�ODO SELECIONADO: ' + DatetoStr(agData) + ' - ' + DatetoStr(bgData);
end;

procedure TFrResCaixasGrpData.RLLabel1BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
   AText := FEmpresaClass.RazaoSocial;
end;

end.
