codeunit 5157892 "Payment Tools"
{
    Permissions = TableData "Cust. Ledger Entry" = r,
                  TableData "Vendor Ledger Entry" = r,
                  TableData "Payment Proposal" = rimd,
                  TableData "Payment Proposal Head" = rm,
                  TableData "Single Pmt. Bank Account" = rimd;

    trigger OnRun()
    begin
    end;

    procedure PmtSetup()
    begin
    end;

    procedure OnDrillDownPmtLines(var PmtHeader: Record "Payment Proposal"; Filtercode: Text[30])
    begin
    end;

    procedure GetBlocked(): Code[10]
    begin
    end;

    procedure GetSepa(): Code[10]
    begin
    end;

    procedure GetSepaDD(): Code[10]
    begin
    end;

    procedure GetSepaB2B(): Code[10]
    begin
    end;

    procedure GetTX04(): Code[10]
    begin
    end;

    procedure GetTX05(): Code[10]
    begin
    end;

    procedure GetTX51(): Code[10]
    begin
    end;

    procedure GetCheck(): Code[10]
    begin
    end;

    procedure GetEURCheck(): Code[10]
    begin
    end;

    procedure GetApplic1(): Code[10]
    begin
    end;

    procedure GetApplic2(): Code[10]
    begin
    end;

    procedure GetMT101(): Code[10]
    begin
    end;

    procedure GetMT103(): Code[10]
    begin
    end;

    procedure GetMT104(): Code[10]
    begin
    end;

    procedure GetISOPMT(): Code[10]
    begin
    end;

    procedure FillZeroBeforeText(Text: Text[50]; Length: Integer): Text[50]
    begin
    end;

    procedure Left_String(Text: Text[50]; Length: Integer) OutStr: Text[50]
    begin
    end;

    procedure DTAUS_String(InStr: Text[250]; TargetLength: Integer) OutStr: Text[250]
    begin
    end;

    procedure Clean_Number(InStr: Code[50]) OutStr: Code[50]
    begin
    end;

    procedure SEPA_String(InStr: Text[250]) OutStr: Text[250]
    begin
    end;

    procedure PostPmtExtended(var GenJnlLine: Record "Gen. Journal Line"; NextEntryNo: Integer; NextTransactionNo: Integer)
    begin
    end;

    procedure UpdateGenJnlLine(var GenJnlLine: Record "Gen. Journal Line"; PmtMethodCode: Code[10]; PmtBankCode: Code[20])
    begin
    end;

    procedure UpdateCLEntry(var CLEntry: Record "Cust. Ledger Entry"; GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure UpdateVLEntry(var VLEntry: Record "Vendor Ledger Entry"; GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure UpdateGenJnlLineFromSalesHeader(var GenJnlLine: Record "Gen. Journal Line"; SalesHeader: Record "Sales Header")
    begin
    end;

    procedure UpdateGenJnlLineFromPurchHeader(var GenJnlLine: Record "Gen. Journal Line"; PurchaseHeader: Record "Purchase Header")
    begin
    end;

    procedure UpdateGenJnlLineFromServiceHeader(var GenJnlLine: Record "Gen. Journal Line"; ServiceHeader: Record "Service Header")
    begin
    end;

    procedure InsertSinglePmtFromSalesHeader(GenJnlLine: Record "Gen. Journal Line"; SalesHeader: Record "Sales Header")
    begin
    end;

    procedure InsertSinglePmtFromPurchHeader(GenJnlLine: Record "Gen. Journal Line"; PurchHeader: Record "Purchase Header")
    begin
    end;

    procedure GetSinglePmtFromJnlLine(GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure GetSinglePmtForPBFromGJL(GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure GetSinglePmtFromCustEntry(CustEntry: Record "Cust. Ledger Entry")
    begin
    end;

    procedure GetSinglePmtForPBFromCE(CustEntry: Record "Cust. Ledger Entry")
    begin
    end;

    procedure GetSinglePmtFromVendEntry(VendEntry: Record "Vendor Ledger Entry")
    begin
    end;

    procedure GetSinglePmtFromSalesHeader(SalesHeader: Record "Sales Header")
    begin
    end;

    procedure GetSinglePmtFromPurchHeader(PurchHeader: Record "Purchase Header")
    begin
    end;

    procedure IsSinglePmtInCustEntry(CustEntry: Record "Cust. Ledger Entry"): Boolean
    begin
    end;

    procedure IsSinglePmtInVendEntry(VendEntry: Record "Vendor Ledger Entry"): Boolean
    begin
    end;

    procedure CopySinglePmtSales(FromDocNo: Code[20]; ToSalesHeader: Record "Sales Header")
    begin
    end;

    procedure CopySinglePmtPurch(FromDocNo: Code[20]; ToPurchHeader: Record "Purchase Header")
    begin
    end;

    procedure GetFileName(BankAcc: Record "Bank Account"; PmtType: Record "Payment Type Code"; Batch: Code[10]; AddPrefix: Code[10]) FileName: Text[1024]
    begin
    end;

    procedure CheckModify(var Rec: Record "Gen. Journal Line"; var xRec: Record "Gen. Journal Line")
    begin
    end;

    procedure CheckCI(CI: Code[40]): Boolean
    begin
    end;

    procedure CheckMandateID(TestID: Text[35]; Caption: Text[30])
    begin
    end;

    procedure ClearMandate(MandateId: Text[35]; AccountType: Option Customer,Vendor; AccountNo: Code[20])
    begin
    end;

    procedure NewMandate(OldMandate: Text[35]) NewID: Text[35]
    begin
    end;

    procedure MakeIBAN(CountryCode: Code[2]; BankCode: Code[34]; AccountNo: Code[34]; Spacer: Boolean; SWIFTCode: Code[50]; ShowError: Boolean) IBAN: Code[50]
    begin
    end;

    procedure Ansi2Ascii(_String: Text[1024]): Text[1024]
    begin
    end;


    procedure Ascii2Ansi(_String: Text[1024]): Text[1024]
    begin
    end;

    procedure CheckCustEntry(var CustEntry: Record "Cust. Ledger Entry")
    begin
    end;

    procedure CheckVendEntry(var VendEntry: Record "Vendor Ledger Entry")
    begin
    end;

    procedure CalcSEPATargetDueDate(BaseDueDate: Date; SEPADueDays: Integer; var TargetDays: Integer; var TargetDueDate: Date)
    begin
    end;

    procedure CalcSEPADDDate(BaseDueDate: Date; SEPADueDays: Integer; var TargetDays: Integer; var TargetDueDate: Date)
    begin
    end;

    procedure CustBankMand2BankMand(CustBankAcc: Record "Customer Bank Account")
    begin
    end;

    procedure VendBankMand2BankMand(VendBankAcc: Record "Vendor Bank Account")
    begin
    end;

    procedure SingleBankMand2BankMand(SingleBankAcc: Record "Single Pmt. Bank Account")
    begin
    end;

    procedure CreateIBANSWIFT(var IBAN: Code[50]; var SWIFTCode: Code[50]; CountryRegionCode: Code[10]; BankBranchCode: Text[50]; BankAccountNo: Text[50])
    begin
    end;

    procedure ValidateMandate(MandateID: Code[50]; PostingDate: Date; AmountLCY: Decimal; var PaymentBankCode: Code[20])
    begin
    end;

    procedure CreateMandateID(var MandateID: Code[50]; IBAN: Code[50]; AccType: Integer; AccNo: Code[20]; "Code": Code[20]; SinglePmt: Boolean): Boolean
    begin
    end;

    procedure CreateMandateIDSystem(var MandateID: Code[50]; AccType: Integer; AccNo: Code[20]; "Code": Code[20]): Boolean
    begin
    end;

    procedure UpdateSinglePmtFromSalesHeader(FromSalesHeader: Record "Sales Header"; ToSalesHeader: Record "Sales Header")
    begin
    end;

    procedure UpdateSinglePmtFromPurchHeader(FromPurchHeader: Record "Purchase Header"; ToPurchHeader: Record "Purchase Header")
    begin
    end;

    procedure DeleteSinglePmtFromPurchHeader(PurchHeader: Record "Purchase Header")
    begin
    end;

    procedure DeleteSinglePmtFromSalesHeader(SalesHeader: Record "Sales Header")
    begin
    end;

    procedure CheckNewHead(PaymentType: Record "Payment Type Code"; var PaymentHead: Record "Payment Proposal Head"; var PaymentHead3: Record "Payment Proposal Head"; PmtMethod: Record "Payment Method"; var LimitExceeded: Boolean; Amount: Decimal; EntryCounter: Integer; MaxDocNewHead: Integer; DocNo: Code[35]; ExtDocNo: Code[35]; var PurposeText: Text[500])
    begin
    end;

    procedure CheckUserDefValues(var PaymentType: Record "Payment Type Code"; PmtMethod: Record "Payment Method"; PaymentHead: Record "Payment Proposal Head")
    begin
    end;

    procedure CheckPurposeFromBank(var PurposeFromBank: Boolean; var PaymentHead: Record "Payment Proposal Head"; var CustomerBankAccount: Record "Customer Bank Account"; var VendorBankAccount: Record "Vendor Bank Account"; var Rows: array[15, 2] of Text[35]; var Row: Integer)
    begin
    end;

    procedure FillPurposeFromBank(var PaymentHead: Record "Payment Proposal Head"; Rows: array[15, 2] of Text[35])
    begin
    end;

    procedure ClearReasonRows(var PaymentHead: Record "Payment Proposal Head")
    begin
    end;

    procedure FillReasonRows(var PaymentHead: Record "Payment Proposal Head"; Rows: array[15, 2] of Text[35])
    begin
    end;

    procedure CreateReasonRows(var PaymentHead: Record "Payment Proposal Head"; var PaymentLine: Record "Payment Proposal Line"; PaymentType: Record "Payment Type Code"; PaymentProposal: Record "Payment Proposal"; var Rows: array[15, 2] of Text[35]; var SEPARow: Text[140]; Row: Integer; Width: Integer; MaxDoc: Integer)
    begin
    end;

    procedure FillNewPmtLine(AccountType: Option "G/L Account",Customer,Vendor,"Bank Account",,,Employee; PaymentProposal: Record "Payment Proposal"; var PaymentHead: Record "Payment Proposal Head"; var PaymentLine: Record "Payment Proposal Line"; LineNo: Integer; EntryNo: Integer; PaymentOK: Boolean; DiscountOK: Boolean; UserDefLine: Boolean)
    begin
    end;

    procedure CheckSingleInPmtHeader(AccountType: Option "G/L Account",Customer,Vendor,"Bank Account"; var PmtHead: Record "Payment Proposal Head"; CustLedgEntry: Record "Cust. Ledger Entry"; VendLedgEntry: Record "Vendor Ledger Entry")
    begin
    end;

    procedure GetSepaCor1(): Code[10]
    begin
    end;


    procedure GetSepaUrgent(): Code[10]
    begin
    end;


    procedure SEPA_String_utf8(InStr: Text[250]) OutStr: Text[250]
    begin
    end;

    procedure SepaText(String: Text[255]; MaxLen: Integer; ExtendedCharset: Boolean): Text[1024]
    begin
    end;

    procedure Encode(Para: Char) Result: Char
    begin
    end;

    procedure StrToUtf8(TextPara: Text[1024]; XML: Boolean) Result: Text[1024]
    begin
    end;

    procedure CheckTargetDate(TestDate: Date): Boolean
    begin
    end;

    procedure ChangeCustMandateStatus(var CustBankAcc: Record "Customer Bank Account")
    begin
    end;

    procedure ChangeVendMandateStatus(var VendBankAcc: Record "Vendor Bank Account")
    begin
    end;

    procedure GetSEPADueDays(Type: Option CORE,B2B,COR1; Frequency: Option "One-Off",Recurrent; Status: Option " ",First,Recurring,Final; PaymentType: Code[10]): Integer
    begin
    end;

    procedure GETDDExecDate(CustLedgEntry: Record "Cust. Ledger Entry"; ReCalculate: Boolean): Date
    begin
    end;

    procedure GetDDSalesHeadExecDate(SalesHeader: Record "Sales Header"): Date
    begin
    end;

    procedure GetDDSalesInvExecDate(SalesInvHeader: Record "Sales Invoice Header"): Date
    begin
    end;

    procedure GetDDSalesCrMemoExecDate(SalesCrMemoHeader: Record "Sales Cr.Memo Header"): Date
    begin
    end;

    procedure GetDDServiceHeadExecDate(ServiceHeader: Record "Service Header"): Date
    begin
    end;

    procedure GetDDServiceInvExecDate(ServiceInvHeader: Record "Service Invoice Header"): Date
    begin
    end;

    procedure GetDDServiceCrMemoExecDate(ServiceCrMemoHeader: Record "Service Cr.Memo Header"): Date
    begin
    end;

    procedure SetPaymentSetup()
    begin
    end;

    procedure GetPaymentSetup()
    begin
    end;

    procedure OnDeleteGenJnlLine(GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure CheckIBAN(IBANCode: Code[100]): Boolean
    begin
    end;

    procedure ShowPurposeTextLine()
    begin
    end;

    procedure ShowPurposeTextHead()
    begin
    end;

    procedure PurposeText(var PaymentHead: Record "Payment Proposal Head"; var PaymentLine: Record "Payment Proposal Line"; PurposeText: Text[35]) PText: Text[250]
    begin
    end;

    procedure PurposeTextMaxLen(var PaymentHead: Record "Payment Proposal Head"; var PaymentLine: Record "Payment Proposal Line"; PurposeText: Text[35]) PText: Text[250]
    begin
    end;

    procedure PurposeTextHead(var PaymentHead: Record "Payment Proposal Head"; PurposeText: Text[35]) PText: Text[250]
    begin
    end;

    procedure CheckPercentCodes(Text: Text[250]; var PaymentLine: Record "Payment Proposal Line"; var PaymentHead: Record "Payment Proposal Head"; PaymentType: Record "Payment Type Code"): Text[250]
    begin
    end;

    procedure CheckPercentCodesHead(Text: Text[250]; PaymentHead: Record "Payment Proposal Head"): Text[250]
    begin
    end;

    procedure SearchDefaultCustBank(var DefaultBank: Record "Customer Bank Account"; var CustBankAccount: Record "Customer Bank Account"; var OK: Boolean; AccNo: Code[20]; PmtMethodCode: Code[10]; PmtTypeCode: Code[10]; PmtBankCode: Code[20])
    begin
    end;

    procedure SearchDefaultVendBank(var DefaultBank: Record "Vendor Bank Account"; var VendBankAccount: Record "Vendor Bank Account"; var OK: Boolean; AccNo: Code[20]; PmtMethodCode: Code[10]; PmtTypeCode: Code[10]; PmtBankCode: Code[20])
    begin
    end;

    procedure GetPaymentProposalInfo(EntryNo: Integer; Type: Option Customer,Vendor; var PaymentProposalCode: Code[10]; var PaymentProposalStatus: Option " ",Open,Finished,Released,"Payment Done","Posting in Process",Posted; var PaymentProposalTemplate: Code[10]; var JournalLineNo: Integer; var PartialPayment: Boolean; RemDifOrigin: Boolean; var PostedPmtHeadBuffer: Record "Code Buffer" temporary)
    begin
    end;

    procedure LookUpSinglePmtInfo(Type: Integer; EntryNo: Integer; Selection: Integer): Text[50]
    begin
    end;

    procedure OpenBankAccFromProposal(PmtPropHead: Record "Payment Proposal Head")
    begin
    end;

    procedure ValidateClearingSystemID(ClearingSystemID: Text[5]): Boolean
    begin
    end;

    procedure InsertClearingSystemIDs()
    begin
    end;

    procedure DeleteWarningLineRepresentEntr(PaymentHead: Record "Payment Proposal Head")
    begin
    end;

    procedure CheckIfGLLineFromPaymentHead(GenJnlLine: Record "Gen. Journal Line"): Boolean
    begin
    end;

    procedure SetSilent()
    begin
    end;

    procedure CheckIfSinglePmtExists(var GenJnlLine: Record "Gen. Journal Line"; XGenJnlLine: Record "Gen. Journal Line"; IsAccount: Boolean)
    begin
    end;

    procedure CV_ValidateDefInstCode(PmtMethodCode: Code[10]; DefaultInstructionCode: Code[10])
    begin
    end;

    procedure CV_LookUpDefInstCode(PmtMethodCode: Code[10]; var DefaultInstructionCode: Code[10])
    begin
    end;

    procedure UpdateCBInfoFromPmtInfo(var CustomerBankAccount: Record "Customer Bank Account"; PmtInfoCode: Record "Payment Information Code")
    begin
    end;

    procedure UpdateVBInfoFromPmtInfo(var VendorBankAccount: Record "Vendor Bank Account"; PmtInfoCode: Record "Payment Information Code")
    begin
    end;

    procedure UpdateBBInfoFromPmtInfo(var BankAccount: Record "Bank Account"; PmtInfoCode: Record "Payment Information Code")
    begin
    end;

    procedure PrintIBANInBlocks(IBAN: Code[50]): Text[70]
    begin
    end;

    procedure MergePmtPropHead(PmtProposalHead: Record "Payment Proposal Head")
    begin
    end;

    procedure CreateBankAccMandateUsage(PmtProposal: Record "Payment Proposal"; PmtProposalHead: Record "Payment Proposal Head"; var BankAccMandate: Record "Bank Account Mandate")
    begin
    end;

    procedure DeleteBankAccMandateUsage(PmtProposal: Record "Payment Proposal")
    begin
    end;

    procedure CalculateSHA256Hash(FileName: Text; var HashValue: Text)
    begin
    end;

    procedure CheckEntryApplied(EntryNo: Integer; AccountNo: Code[20]; DocType: Option " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund; DocNo: Code[20]; Type: Integer; var IsApplied: Boolean): Boolean
    begin
    end;

    procedure CalcUserDefValues(var PaymentType: Record "Payment Type Code"; PmtMethod: Record "Payment Method"; LimitLinesPerHead: Integer; MinPosPaymentNote: Integer; Type: Integer)
    begin
    end;

    procedure CalcMaxLines(var EntryCountTableTemp: Record "Payment Type Code"; var EntryCounter: Integer; PaymentTypeCode: Code[10])
    begin
    end;

    procedure FinishPaymentLine(var PaymentLine: Record "Payment Proposal Line"; PaymentProposal: Record "Payment Proposal"; IsApplied: Boolean; PostingDate: Date)
    begin
    end;

    procedure FillPmtHeadFromSinglePayment(var PaymentHead: Record "Payment Proposal Head"; SinglePmtBankAccount: Record "Single Pmt. Bank Account"; BankAccMandate: Record "Bank Account Mandate")
    begin
    end;

    procedure OnInitReportPmtSuggestion(var PaymentProposal: Record "Payment Proposal"; PreSetHeader: Boolean; DiscountOption: Option "Always Discount","As Entered","Always in Period","None")
    begin
    end;

    procedure OnPreReportPmtSuggestion(var PaymentProposal: Record "Payment Proposal"; var FirstLine: Integer; var LineNo: Integer; PreSetHeader: Boolean)
    begin
    end;

    procedure OnPostReportPmtSuggestion(PaymentProposalTemplate: Record "Payment Proposal Template"; PaymentProposal: Record "Payment Proposal"; PaymentHead: Record "Payment Proposal Head"; PaymentLine: Record "Payment Proposal Line"; var Customer2: Record Customer; var Vendor2: Record Vendor; var CustLedgEntries: Record "Cust. Ledger Entry"; var VendLedgEntries: Record "Vendor Ledger Entry"; FirstLine: Integer; LineNo: Integer; PreSetHeader: Boolean; CreatedMessage: Boolean; PmtDescription: Text[50]; IsAutomaticSuggestion: Boolean; Type: Integer)
    begin
    end;

    procedure OnLookUpGenJnlLineBranchCode(var Rec: Record "Gen. Journal Line")
    begin
    end;

    procedure MoveSinglePmtBankAccount(GenJnlLine: Record "Gen. Journal Line"; GenJnlLine3: Record "Gen. Journal Line")
    begin
    end;

    procedure CalcDefaultSEPADDBankAccMandate(var BankAccMandate: Record "Bank Account Mandate"; var PaymentType: Record "Payment Type Code"; CustLedgerEntry: Record "Cust. Ledger Entry"; var OK: Boolean; var SEPA_PaymentTypeCode: Code[10]; PaymentProposal: Record "Payment Proposal"; PaymentHead: Record "Payment Proposal Head"; Customer: Record Customer; ShowError: Boolean)
    begin
    end;

    procedure VerifyISO11649(ISOreference: Text[35]; CompleteReference: Boolean) CheckDigit: Code[2]
    begin
    end;

    procedure IsNumeric(Text: Text[1024]): Boolean
    begin
    end;

    procedure FillDocSendingProf(var DocumentSendingProfile: Record "Document Sending Profile")
    begin
    end;

    procedure SetSpecValDocSendingProf(var DocumentSendingProfile: Record "Document Sending Profile"; SendingOption: Integer)
    begin
    end;

    procedure PmtRef_String(InStr: Text[250]; TargetLength: Integer; ToUppercase: Boolean) OutStr: Text[250]
    begin
    end;

    procedure GetUnicodeCategory(SingleChar: Text): Text
    begin
    end;

    procedure GetUnicodeCodepoint(SingleChar: Text): Text
    begin
    end;

    procedure SetFileEncIsUTF8_16_WS(NewFileEncIsUTF8_16_WS: Boolean)
    begin
    end;

    procedure SetFullUnicodeCharset(NewAllowAllUnicodeChars: Boolean)
    begin
    end;

    procedure SetCHISOcharset(NewAllowCHISOchars: Boolean)
    begin
    end;

    procedure SendMandate(BankAccMandate: Record "Bank Account Mandate"; ReportID: Integer)
    begin
    end;

    procedure SendRecords(RepID: Integer; AccNo: Code[20]; MandateID: Code[35]; IsCustomer: Boolean)
    begin
    end;

    procedure SendProfile(var DocumentSendingProfile: Record "Document Sending Profile"; IsCustomer: Boolean; AccNo: Code[20]; MandateID: Code[35]; RepID: Integer)
    begin
    end;

    procedure MakeMsgIdTimeStamp(Date: Date): Text[40]
    begin
    end;

    procedure EmptyFunction1()
    begin
    end;

    procedure EmptyFunction2()
    begin
    end;

    procedure CustVendBankCodeOnRename(Type: Integer; VendCustNo: Code[20]; BankCode: Code[20])
    begin
    end;

    procedure IsSepaOrSepaDDPmtType(PmtTypeCode: Code[10]): Boolean
    begin
    end;

    procedure IsSepaPmtType(PmtTypeCode: Code[10]): Boolean
    begin
    end;

    procedure IsSepaDDPmtType(PmtTypeCode: Code[10]): Boolean
    begin
    end;

    procedure IsIsoOrSepaPmtType(PmtTypeCode: Code[10]): Boolean
    begin
    end;

    procedure IsIsoPmtType(PmtTypeCode: Code[10]): Boolean
    begin
    end;

    procedure IsCheckPmtType(PmtTypeCode: Code[10]): Boolean
    begin
    end;

    procedure IsApplicationPmtType(PmtTypeCode: Code[10]): Boolean
    begin
    end;

    procedure IsMTPmtType(PmtTypeCode: Code[10]; AllMT10n: Boolean): Boolean
    begin
    end;

    procedure IsAZVOrAZVEURPmtType(PmtTypeCode: Code[10]): Boolean
    begin
    end;

    procedure IsAZVPmtType(PmtTypeCode: Code[10]): Boolean
    begin
    end;

    procedure IsAZVEURPmtType(PmtTypeCode: Code[10]): Boolean
    begin
    end;

    procedure IsDTAUSPmtType(PmtTypeCode: Code[10]): Boolean
    begin
    end;

    procedure PurposeTextAddGL(var PaymentLine: Record "Payment Proposal Line"; PurposeTextVar: Text[150]; var Row: Integer; var Rows: array[15, 2] of Text[35]; Width: Integer; var PaymentHeader: Record "Payment Proposal Head"; PmtType: Record "Payment Type Code"; var TooLongTextInserted: Boolean)
    begin
    end;

    procedure PurposeTextAdd(var PaymentLine: Record "Payment Proposal Line"; PurposeTextVar: Text[35]; var Row: Integer; var Rows: array[15, 2] of Text[35]; Width: Integer; var PaymentHeader: Record "Payment Proposal Head"; PmtType: Record "Payment Type Code"; var TooLongTextInserted: Boolean)
    begin
    end;
}