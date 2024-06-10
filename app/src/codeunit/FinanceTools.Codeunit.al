codeunit 5157802 FinanceTools
{
    Permissions = TableData "G/L Account" = r,
                  TableData "G/L Entry" = rim,
                  TableData "Cust. Ledger Entry" = rm,
                  TableData "Vendor Ledger Entry" = rm,
                  TableData "VAT Entry" = rim,
                  TableData "Bank Account Ledger Entry" = rm,
                  TableData "Bank Account Statement" = rim,
                  TableData "Bank Account Statement Line" = rim,
                  TableData "Customer Bank Account" = rim,
                  TableData "Vendor Bank Account" = rim,
                  TableData "Detailed Cust. Ledg. Entry" = rimd,
                  TableData "Detailed CV Ledg. Entry Buffer" = r,
                  TableData "Pmt. Import Line" = rm;

    trigger OnRun()
    begin
    end;

    procedure Norm_String(InStr: Text[100]): Text[250]
    begin
    end;

    procedure Installation_Initialize()
    begin
    end;

    procedure ApplicationSum(AccType: Integer; EntryNo: Integer; var Amt: Decimal; var PmtDisc: Decimal)
    begin
    end;

    procedure SetApplicationStatus(var GJLine: Record "Gen. Journal Line")
    begin
    end;

    procedure Ansi2Ascii(_String: Text[1024]): Text[1024]
    begin
    end;

    procedure Ascii2Ansi(_String: Text[1024]): Text[1024]
    begin
    end;

    procedure UpdatePmtImportLine(var GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure UpdateGLEntry1(var GLEntry: Record "G/L Entry"; GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure UpdateGLEntry2(var GLEntry: Record "G/L Entry"; GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure UpdateCLEntry(var CLEntry: Record "Cust. Ledger Entry"; GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure UpdateVLEntry(var VLEntry: Record "Vendor Ledger Entry"; GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure UpdateBankEntry(var BankEntry: Record "Bank Account Ledger Entry"; GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure BlockBankAccount(BankBranch: Code[50]; BankAccountNo: Code[50]; Bic: Code[50]; IBAN: Code[50]; Ask: Boolean)
    begin
    end;

    procedure Payback(var GJLine: Record "Gen. Journal Line")
    begin
    end;

    procedure PaybackProcess()
    begin
    end;

    procedure ReopenEntry()
    begin
    end;

    procedure SaveAccountingRuleDim(FieldNumber: Integer; ShortcutDimCode: Code[20]; var AccountingRule: Record "Accounting Rule")
    begin
    end;

    procedure GET_OPPSetup()
    begin
    end;

    procedure ExtractFilePath(Filename: Text[1024]) Path: Text[1024]
    begin
    end;

    procedure ExtractFileExtension(Filename: Text[1024]): Text[30]
    begin
    end;

    procedure ExtractFileBaseName(Filename: Text[1024]) Basename: Text[255]
    begin
    end;

    procedure fsRename(Source: Text[1024]; Target: Text[1024]): Boolean
    begin
    end;

    procedure fsErase(Filename: Text[1024]): Boolean
    begin
    end;

    procedure fsExists(Filename: Text[1024]): Boolean
    begin
    end;

    procedure fsExistsServer(Filename: Text[1024]): Boolean
    begin
    end;

    procedure StrPosR(Where: Text[1024]; What: Text[30]) Result: Integer
    begin
    end;

    procedure GetPmtImportFilename(var Importfilename: Text[1024]; WinCaption: Text[80]; FileMask: Text[80]): Boolean
    begin
    end;

    procedure PrepareWorkfile(ImportFilename: Text[1024]; var ServerFilename: Text[1024]; var MessageFilename: Text[255]): Boolean
    begin
    end;

    procedure CheckBalAccount(GenJournalLine: Record "Gen. Journal Line")
    begin
    end;

    procedure CheckIfBIC_IBAN(BankOrderer: Text[35]; AccountOrderer: Text[35]): Boolean
    begin
    end;

    procedure CheckIfBIC(BankOrderer: Text[35]): Boolean
    begin
    end;

    procedure DeleteAppLineDetails(GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure CleanLine(var GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure ClearCustReopenEntry(GenJnlLine: Record "Gen. Journal Line"; GenJnlLineOld: Record "Gen. Journal Line")
    begin
    end;

    procedure CreateNewBank(PmtImportLine: Record "Pmt. Import Line"; i: Integer; GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure CreateHashValue(AccountNo: Code[50]; BankBranchNo: Code[50]; IBAN: Code[50]; SWIFT: Code[20]; var HashValue1: Text[50]; var HashValue2: Text[50]; var HashValue3: Text[50])
    begin
    end;

    procedure CreateSepaReasonCode(Reasoncode: Code[10]; GVCSupp: Code[10]; Reason: Text[50])
    begin
    end;

    procedure UnApplyCustLedgEntry(CustLedgEntryNo: Integer)
    begin
    end;

    procedure SetUnapplyThisBlock(CustLedgEntryNo: Integer; CustLedgEntryNo2: Integer; TransactionNo: Integer; Unapply: Boolean)
    begin
    end;

    procedure GetApplicationMethod(GenJnlLine: Record "Gen. Journal Line") IsExtended: Boolean
    begin
    end;

    procedure ShowPmtImportLine(EntryNo: Integer)
    begin
    end;

    procedure DeletePmtEntryInfos(GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure SetSilent()
    begin
    end;

    procedure ShowPrefixPercentCodes()
    begin
    end;

    procedure SplittGenJnlLine(GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure IsImportedAsAccount(PmtImportEntryNo: Integer): Boolean
    begin
    end;

    procedure CheckGLAccountTaxKey(GenJournalLine: Record "Gen. Journal Line"; IsAccount: Boolean)
    begin
    end;

    procedure ClearApplnEntry(GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure InsertRegInterfaceData(var RegPmtInterface: Record "Registered Pmt. Interface"; PmtInterface: Record "Pmt. Import Interface"; IsInserted: Boolean)
    begin
    end;

    procedure CheckPercentCodePrefix(PrefixTest: Text[20]; PostingDate: Date): Text
    begin
    end;

    procedure CalcPmtDiscGiven(DetailedCustLedgEntry: Record "Detailed Cust. Ledg. Entry"; UnApplySpecificPayment: Boolean) PmtDiscGivenLCY: Decimal
    begin
    end;

    procedure CalcPmtDiscRcd(DetailedVendLedgEntry: Record "Detailed Vendor Ledg. Entry") PmtDiscRcdLCY: Decimal
    begin
    end;

    procedure UpdateBankAmountLCY(GJLine: Record "Gen. Journal Line"; RestAmount: Boolean)
    begin
    end;

    procedure GetPmtImportLineEntryNo(var EntryNo: Integer; ImportInterface: Record "Pmt. Import Interface")
    begin
        EntryNo := 0;
    end;

    procedure CheckApplicationDate(GJLinePostingDate: Date; EntryPostingDate: Date; PmtDiscAmt: Decimal; AppCurrCode: Code[10]; EntryCurrCode: Code[10]; ShowError: Boolean): Boolean
    begin
    end;

    procedure OnLookupGenJnlLineReopen(var GenJnlLine2: Record "Gen. Journal Line")
    begin
    end;

    procedure SetWebService(Flag: Boolean)
    begin
    end;

    procedure InsertJobQueueEntry()
    begin
    end;

    procedure GetBankBalance(var PmtImportRegister: Record "Pmt. Import Register"; var RegisteredPmtInterface: Record "Registered Pmt. Interface"; GenJnlTemplate: Code[10]; GenJournalBatch: Code[10]; var BankBalance: Decimal; PmtImportLineNo: Integer)
    begin
    end;

    procedure ShowBlockedBankAccounts()
    begin
    end;

    procedure AskSetupNewInterfaces(New: Integer; Old: Integer)
    begin
    end;
}