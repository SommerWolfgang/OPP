codeunit 5157862 "Views and Lists Tools"
{
    Permissions = TableData "G/L Account" = rm,
                  TableData "G/L Entry" = rm,
                  TableData Customer = rm,
                  TableData "Cust. Ledger Entry" = rm,
                  TableData Vendor = rm,
                  TableData "Vendor Ledger Entry" = rm,
                  TableData "Issued Reminder Line" = rd,
                  TableData "Reminder/Fin. Charge Entry" = rd,
                  TableData "Fixed Asset" = r,
                  TableData "FA Ledger Entry" = r;

    trigger OnRun()
    begin
    end;

    procedure QuickSearchSetup()
    begin
    end;

    procedure ShowGLAccDoc(Rec: Record "G/L Entry")
    begin
    end;

    procedure Cust_Last_Payment(No: Code[20]) Total: Decimal
    begin
    end;

    procedure Cust_Last_PmtDate(No: Code[20]) PostDate: Date
    begin
    end;

    procedure Cust_DrillDown_LastPmt(No: Code[20])
    begin
    end;

    procedure Cust_Open_Entries(No: Code[20]) Total: Decimal
    begin
    end;

    procedure Cust_Due_Entries(No: Code[20]) Total: Decimal
    begin
    end;

    procedure Cust_Show_BalAcc(CustLedgEntries: Record "Cust. Ledger Entry"; var BalAccountInfo: array[2] of Text[100])
    begin
    end;

    procedure Vend_Last_Payment(No: Code[20]) Total: Decimal
    begin
    end;

    procedure Vend_Last_PmtDate(No: Code[20]) PostDate: Date
    begin
    end;

    procedure Vend_Drilldown_LastPmt(No: Code[20]) Total: Decimal
    begin
    end;

    procedure Vend_Open_Entries(No: Code[20]) Total: Decimal
    begin
    end;

    procedure Vend_Due_Entries(No: Code[20]) Total: Decimal
    begin
    end;

    procedure Vend_Show_BalAcc(VendLedgEntries: Record "Vendor Ledger Entry"; var BalAccountInfo: array[2] of Text[100])
    begin
    end;

    procedure GLAcc_Show_BalAcc(GLEntry: Record "G/L Entry"; var BalAccountInfo: array[2] of Text[100])
    begin
    end;

    procedure Norm_String(InStr: Text[100]): Text[250]
    begin
    end;

    procedure GLEntryEdit(var GLE: Record "G/L Entry")
    begin
    end;

    procedure UpdateCLEntry(var CLEntry: Record "Cust. Ledger Entry"; GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure UpdateVLEntry(var VLEntry: Record "Vendor Ledger Entry"; GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure UpdateGLEntry(GenJnlLine: Record "Gen. Journal Line"; GLEntry: Record "G/L Entry")
    begin
    end;

    procedure ReadSetup()
    begin
    end;

    procedure UpdateLastPostingAt()
    begin
    end;

    procedure DeleteCommentLines(GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure TransferCommentLine(GenJnlLine: Record "Gen. Journal Line"; AccType: Option "G/L Account",Customer,Vendor,"Bank Account","Fixed Asset","IC Partner"; AccNo: Code[20]; EntryNo: Integer)
    begin
    end;

    procedure UpdatePostinGroupTotal(var PostingGroupBuffer: Record "Ledger Entry Comment Line"; IsCust: Boolean; PostingGroup: Code[20]; CurrencyCode: Code[10]; AmountFCY: Decimal; AmountLCY: Decimal)
    begin
    end;

    procedure Show_BalAcc(var BalAccountInfo: array[2] of Text[100]; AccountNo: Code[20]; AccountType: Option "G/L Account",Customer,Vendor,"Bank Account","Fixed Asset","IC Partner"; EntryPositive: Boolean; TransactionNo: Integer; DocumentNo: Code[20]; PostingDate: Date)
    begin
    end;

    procedure CancelReminder(IssRemHeader: Record "Issued Reminder Header")
    begin
    end;

    procedure SendBalAckMail(ReportID: Integer; AccNo: Code[20]; AllBalAcks: Boolean; "Filter": Text)
    begin
    end;

    procedure SendRecords(Automatic: Boolean; RepID: Integer; AccNo: Code[20]; "Filter": Text)
    begin
    end;

    procedure SendProfile(var DocumentSendingProfile: Record "Document Sending Profile"; Automatic: Boolean; IsCustomer: Boolean; AccNo: Code[20]; RepID: Integer)
    begin
    end;

    procedure FillDocSendingProf(var DocumentSendingProfile: Record "Document Sending Profile"; BalAckReport: Integer)
    begin
    end;

    procedure SetSpecValDocSendingProf(var DocumentSendingProfile: Record "Document Sending Profile"; SendingOption: Integer)
    begin
    end;
}