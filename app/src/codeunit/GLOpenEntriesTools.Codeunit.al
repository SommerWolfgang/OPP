codeunit 5157852 "G/L OpenEntriesTools"
{
    Permissions = TableData "G/L Entry" = rimd,
                  TableData "Bank Account Ledger Entry" = rm,
                  TableData "Detailed Gen. Ledg. Entry" = rimd;

    trigger OnRun()
    begin
    end;

    procedure PostGLAccOE(var GLEntry: Record "G/L Entry"; GenJnlLine: Record "Gen. Journal Line"; NextTransactionNo: Integer)
    begin
    end;

    procedure ApplyGLEntry(var NewCVLedgEntryBuf: Record "CV Ledger Entry Buffer"; var DtldCVLedgEntryBuf: Record "Detailed CV Ledg. Entry Buffer"; GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure TransferGLEntry(var CVLedgEntryBuf: Record "CV Ledger Entry Buffer"; var GLEntry: Record "G/L Entry"; GLToCV: Boolean)
    begin
    end;

    procedure SetApplId(var GLEntry: Record "G/L Entry"; ApplyingGLEntry: Record "G/L Entry"; AppliedAmount: Decimal; AppliesToID: Code[50])
    begin
    end;

    procedure GLEntryApplyPostedEntr(var REC: Record "G/L Entry"; GainLossAmt: Decimal)
    begin
    end;

    procedure GLEntryEdit(var GLE: Record "G/L Entry")
    begin
    end;

    procedure UnApplyGLEntry(GLEntryNo: Integer)
    begin
    end;

    procedure PostUnApplyGLAcc(var DtldGLEntryBuf: Record "Detailed Gen. Ledg. Entry"; DtldGLEntry2: Record "Detailed Gen. Ledg. Entry"; var DocNo: Code[20]; var PostingDate: Date)
    begin
    end;

    procedure BuildOpenEntries(GLAcc: Record "G/L Account")
    begin
    end;

    procedure PostDtldGLEntries(GenJnlLine2: Record "Gen. Journal Line"; var DtldCVLedgEntryBuf: Record "Detailed CV Ledg. Entry Buffer"; NextTransactionNo: Integer)
    begin
    end;

    procedure OpenEntry(GLEntry: Record "G/L Entry")
    begin
    end;

    procedure ValidateAccount(var GLAcc: Record "G/L Account"; var xGLAcc: Record "G/L Account")
    begin
    end;

    procedure ApplyGLEntryformEntry(var ApplyingGLEntry: Record "G/L Entry")
    begin
    end;

    procedure SetApplId2(var GLEntry: Record "G/L Entry")
    begin
    end;

    procedure FillAppliedInfo(var GenJnlLine: Record "Gen. Journal Line"; IsAccount: Boolean; ShowError: Boolean)
    begin
    end;

    procedure SetAppIDFromBankimport(var GLEntry: Record "G/L Entry"; GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure ZeroTransNoDtldGLEntries(TransactionNo: Integer)
    begin
    end;

    procedure CalcApplAmt(GLAcc: Record "G/L Account"; GLEntry: Record "G/L Entry"): Decimal
    begin
    end;

    procedure GLEntryApplyPostedEntryBatch(var GLEntry: Record "G/L Entry"; PostingDate: Date): Boolean
    begin
    end;

    procedure GetSourceCode()
    begin
    end;

    procedure CheckDtldGLEntry(GLEntry: Record "G/L Entry"): Boolean
    begin
    end;

    procedure OnDeleteGLEntry(GLEntry: Record "G/L Entry")
    begin
    end;

    procedure SetAppID3(var GLE: Record "G/L Entry")
    begin
    end;
}