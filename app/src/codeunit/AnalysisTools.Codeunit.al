codeunit 5157882 "Analysis Tools"
{
    Permissions = TableData "Acc. Schedule Line" = rm;

    trigger OnRun()
    begin
    end;

    procedure RefreshAccSchedule(AccSchedLine: Record "Acc. Schedule Line"; Type: Integer)
    begin
    end;

    procedure RefreshAccount(AccSchedLine: Record "Acc. Schedule Line"; Type: Integer)
    begin
    end;

    procedure UpdateVATEntry(var VATEntry: Record "VAT Entry"; GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure UpdateGLEntry(var GLEntry: Record "G/L Entry"; GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure UpdateVLEntry(var VLEntry: Record "Vendor Ledger Entry"; GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure UpdateDetailexport(AccScheduleName: Code[10]; Set: Boolean)
    begin
    end;

    procedure CheckInvoiceEntranceDate(InvoiceEntranceDate: Date): Boolean
    begin
    end;

    procedure ReadAnalysisSetup()
    begin
    end;

    procedure DeleteAccSchedName(AccSchedName: Code[10])
    begin
    end;

    procedure InsertValidityBuffer(var _GLAccCheckTemp: Record "Code Buffer" temporary; _AccScheduleName: Code[10]; _IncludeBlocked: Boolean; _CheckValidity: Boolean; var _ValidityCheckCostTypes: Boolean)
    begin
    end;

    procedure UpdateValidityBuffer(var GLAccCheckTemp: Record "Code Buffer" temporary; AccScheduleLine: Record "Acc. Schedule Line"; AccountNo: Code[20]; CheckValidity: Boolean)
    begin
    end;

    procedure CalculateCaptionClass(No: Integer): Text[80]
    begin
    end;

    procedure LookupExtTotaling(var AccSchedLine: Record "Acc. Schedule Line")
    begin
    end;

    procedure SetGLAccRowFilter(var GLAcc: Record "G/L Account"; var AccSchedLine2: Record "Acc. Schedule Line")
    begin
    end;

    procedure GetTaxSetup()
    begin
    end;

    procedure SetDates(P_DAT_StartDate: Date; P_DAT_EndDate: Date; P_DAT_FiscalDate: Date)
    begin
    end;

    procedure CollectDetail(var GLAccTemp: Record "Code Buffer" temporary; AccSchedLine: Record "Acc. Schedule Line"; Detail: Boolean)
    begin
    end;

    procedure CollectDetailandCheck(var GLAccTemp: Record "Code Buffer" temporary; AccSchedLine: Record "Acc. Schedule Line"; Detail: Boolean; CheckValidity: Boolean; var GLAccCheckTemp: Record "Code Buffer" temporary)
    begin
    end;

    procedure IsCollectingLine(AccSchedLine: Record "Acc. Schedule Line"): Boolean
    begin
    end;

    procedure CheckAffiliation(VATStatementName: Record "VAT Statement Name")
    begin
    end;

    procedure UpdateSalesInvPostingBuffer(var InvPostingBuffer: Record "Invoice Post. Buffer"; SalesHeader: Record "Sales Header"; AmtRoundingPrec: Decimal)
    begin
    end;

    procedure UpdatePurchInvPostingBuffer(var InvPostingBuffer: Record "Invoice Post. Buffer")
    begin
    end;

    procedure SetupAnalysis()
    begin
    end;

    procedure SetSilent()
    begin
    end;

    procedure InsertGroups(var AccSchedLine: Record "Acc. Schedule Line")
    begin
    end;

    procedure LookUpAccGroup(AccGroup: Integer; var GLAcc: Record "G/L Account")
    begin
    end;
}