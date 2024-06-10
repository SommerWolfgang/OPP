codeunit 5158001 "OPplus Trigger Management"
{
    trigger OnRun()
    begin
    end;

    procedure UpdateCLEntry(var CLEntry: Record "Cust. Ledger Entry"; GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure UpdateVLEntry(var VLEntry: Record "Vendor Ledger Entry"; GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure UpdateGLEntry(var GLEntry: Record "G/L Entry"; GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure UpdateGenJnlLine(var GenJnlLine: Record "Gen. Journal Line"; NextEntryNo: Integer; NextTransactionNo: Integer)
    begin
    end;

    procedure UpdateGenJnlLineBasic(var GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure CountSubString(InString: Text[1024]; SubString: Text[30]) Counter: Integer
    begin
    end;


    procedure UpdateBankAccountsFromSetup(UpdateVia: Option Basis,Payment)
    begin
    end;

    procedure UpdateCustBankAccFromIBAN(var CustomerBankAccount: Record "Customer Bank Account"; UseDialog: Boolean)
    begin
    end;

    procedure UpdateVendBankAccFromIBAN(var VendorBankAccount: Record "Vendor Bank Account"; UseDialog: Boolean)
    begin
    end;

    procedure UpdateSinglePaymentBankAccFromIBAN(var SinglePmtBankAcc: Record "Single Pmt. Bank Account"; UseDialog: Boolean)
    begin
    end;

    procedure UpdatePmtPropHeadBankAccFromIBAN(var PmtProposalHead: Record "Payment Proposal Head"; UseDialog: Boolean)
    begin
    end;

    procedure UpdateHashValues()
    begin
    end;

    procedure UpdateMandateHistory()
    begin
    end;

    procedure UpdGenJnlLineFromPurchLine(var GenJnlLine: Record "Gen. Journal Line"; var InvPostBuffer: Record "Invoice Post. Buffer"; PurchHeader: Record "Purchase Header")
    begin
    end;

    procedure UpdGenJnlLineFromSalesLine(var GenJnlLine: Record "Gen. Journal Line"; var InvPostBuffer: Record "Invoice Post. Buffer"; SalesHeader: Record "Sales Header")
    begin
    end;

    procedure OnValidatePostingDate(var InvoiceEntranceDate: Date; PostingDate: Date)
    begin
    end;

    procedure OnLookupBBranchSwiftCode(var BankAccount: Record "Bank Account"; FromSwift: Boolean; BankAccOld: Record "Bank Account"; CurrFieldNo: Integer)
    begin
    end;

    procedure OnValidateBBranchSwiftCode(var BankAccount: Record "Bank Account"; FromSwift: Boolean; BankAccOld: Record "Bank Account"; CurrFieldNo: Integer)
    begin
    end;

    procedure OnLookupCBankBranchSwiftCode(var CustBankAccount: Record "Customer Bank Account"; FromSwift: Boolean; CBAccOld: Record "Customer Bank Account"; CurrFieldNo: Integer)
    begin
    end;

    procedure OnValidateCBankBranchSwiftCode(var CustBankAccount: Record "Customer Bank Account"; FromSwift: Boolean; CBAccOld: Record "Customer Bank Account"; CurrFieldNo: Integer)
    begin
    end;

    procedure OnLookupVBankBranchSwiftCode(var VendBankAccount: Record "Vendor Bank Account"; FromSwift: Boolean; VBAccOld: Record "Vendor Bank Account"; CurrFieldNo: Integer)
    begin
    end;

    procedure OnValidateVBankBranchSwiftCode(var VendBankAccount: Record "Vendor Bank Account"; FromSwift: Boolean; VBAccOld: Record "Vendor Bank Account"; CurrFieldNo: Integer)
    begin
    end;

    procedure FillAppliedInfo(var GenJnlLine: Record "Gen. Journal Line"; GenJnlLineOld: Record "Gen. Journal Line"; IsAccount: Boolean; ShowError: Boolean; CurrFieldNo: Integer)
    begin
    end;

    procedure SaveIBANInBlocks(var IBAN: Code[50])
    begin
    end;

    procedure CheckIfDimFromAccount(GenJnlLine: Record "Gen. Journal Line"): Boolean
    begin
    end;

    procedure MoveFilesFromTo(SourceDirectory: Text; TargetDirectory: Text; FileName: Text; Filemask: Text): Boolean
    begin
    end;

    procedure IsPaymentAllowed(GenJnlLine: Record "Gen. Journal Line"): Boolean
    begin
    end;

    procedure CheckIfGLLineFromPaymentHead(GenJnlLine: Record "Gen. Journal Line"): Boolean
    begin
    end;

    procedure GetFileInfoFromDirectory(SourceDirectory: Text; TargetDirectory: Text; FileName: Text; Filemask: Text; var TempFiles: Record File): Boolean
    begin
    end;

    procedure CustVendBankIBANOnValidate(Type: Integer; AccNo: Code[20]; BankCode: Code[20]; IBAN: Code[50])
    begin
    end;

    procedure AutomaticEntrySuggestionPmt(var PaymentHead: Record "Payment Proposal Head"; xRecPaymentHead: Record "Payment Proposal Head"; CurrFieldNo: Integer): Boolean
    begin
    end;

    procedure IsImportedAsAccount(GenJnlLine: Record "Gen. Journal Line"): Boolean
    begin
    end;

    procedure ValidOPP_PmtDisc(GenJnlLine: Record "Gen. Journal Line"; ID: Integer): Boolean
    begin
    end;

    procedure ValidOPP_Application(GenJnlLine: Record "Gen. Journal Line"; ID: Integer): Boolean
    begin
    end;

    procedure ValidOPP_PmtDiscAmt(GenJnlLine: Record "Gen. Journal Line"; ID: Integer): Decimal
    begin
    end;

    procedure ValidOPP_AppAmt(GenJnlLine: Record "Gen. Journal Line"; var NewCVLedgEntryBuf: Record "CV Ledger Entry Buffer"; var OldCVLedgEntryBuf2: Record "CV Ledger Entry Buffer") AppliedAmount: Decimal
    begin
    end;

    procedure CLRecalculateAmounts(var CustLedgerEntry: Record "Cust. Ledger Entry"; FromCurrencyCode: Code[10]; ToCurrencyCode: Code[10]; PostingDate: Date; GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure VLRecalculateAmounts(var VendLedgerEntry: Record "Vendor Ledger Entry"; FromCurrencyCode: Code[10]; ToCurrencyCode: Code[10]; PostingDate: Date; GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure CVBufferRecalculateAmounts(var CVBuffer: Record "CV Ledger Entry Buffer"; FromCurrencyCode: Code[10]; ToCurrencyCode: Code[10]; PostingDate: Date; GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure ExchAmount(Amount: Decimal; FromCurrencyCode: Code[10]; ToCurrencyCode: Code[10]; UsePostingDate: Date; GenJnlLine: Record "Gen. Journal Line"): Decimal
    begin
    end;

    procedure CheckValidateAllowed(GenJnlLine: Record "Gen. Journal Line"; ShowError: Boolean; _Fieldcaption: Text[100])
    begin
    end;

    procedure CheckGenJnlLine(GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure CreateAndOpenExcel(var ExcelBuffer: Record "Excel Buffer" temporary; SheetName: Text)
    begin
    end;

    procedure PurchPostPrePmt(PurchHeader: Record "Purchase Header"; var GenJournalLine: Record "Gen. Journal Line")
    begin
    end;

    procedure SalesPostPrePmt(SalesHeader: Record "Sales Header"; var GenJournalLine: Record "Gen. Journal Line")
    begin
    end;

    procedure IsGUIAllowed(): Boolean
    begin
    end;

    procedure GetPmtDiscGiven(DetailedCustLedgEntry: Record "Detailed Cust. Ledg. Entry"; UnApplySpecificPayment: Boolean) PmtDiscGivenLCY: Decimal
    begin
    end;

    procedure GetPmtDiscRcd(DetailedVendLedgEntry: Record "Detailed Vendor Ledg. Entry") PmtDiscRcdLCY: Decimal
    begin
    end;

    procedure CheckApply(ApplGenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure CaptionClassTranslate(CaptionRef: Text): Text[80]
    begin
    end;

    procedure BrowseFolder(Title: Text; DefaultFolderName: Text; ShowNewFolderButton: Boolean): Text
    begin
    end;

    procedure BrowseFolderFile(WindowTitle: Text[50]; DefaultFileName: Text[260]; FilterString: Text[260]; MyAction: Option Open,Save; xField: Text[260]): Code[260]
    begin
    end;

    procedure UpdateMandateUsage()
    begin
    end;

    procedure ExcelBufSetCol(var ExcelBuf: Record "Excel Buffer"; SetCol: Integer)
    begin
    end;

    procedure NavigateShowEntriesOPplus(TableID: Integer; DocNoFilter: Text; PostingDateFilter: Text)
    begin
    end;

    procedure NavigateFindEntriesOPplus(var DocEntry: Record "Document Entry"; DocNoFilter: Text; PostingDateFilter: Text)
    begin
    end;

    procedure ErrorCheckGenJnlLine(var GenJnlLine: Record "Gen. Journal Line"; var ErrorCounter: Integer; var ErrorText: array[50] of Text[250])
    begin
    end;

    procedure ErrorCheckGLAcc(GenJnlLine: Record "Gen. Journal Line"; GLAcc: Record "G/L Account"; var ErrorCounter: Integer; var ErrorText: array[50] of Text[250])
    begin
    end;

    procedure OnOpenOPplusPage(var RecRef: RecordRef)
    begin
    end;

    procedure GetFileInfoFromServerDirectory(SourceDirectory: Text; TargetDirectory: Text; FileName: Text; Filemask: Text; var TempFiles: Record File): Boolean
    begin
    end;

    procedure CalcAZVAddInfo(PmtPropHead: Record "Payment Proposal Head"): Text[30]
    begin
    end;

    procedure IsShiftPostingTypeSalesPurch(var GenJnlLine: Record "Gen. Journal Line"; IsAccount: Boolean): Boolean
    begin
    end;

    procedure GetPmtPropInfosFromVariant(RecordVariant: Variant; var GenJnlTemplate: Code[10]; var GenJnlBatch: Code[10]; var GenJnlLineNo: Integer; var ShippingType: Integer)
    begin
    end;

    procedure GetPmtPropInfosFromRecordID(RecordIDPara: RecordID; var GenJnlTemplate: Code[10]; var GenJnlBatch: Code[10]; var GenJnlLineNo: Integer)
    begin
    end;

    procedure GetCustVendFromRecordID(RecordIDPara: RecordID; var CustCode: Code[20]; var VendCode: Code[20]; IsCust: Boolean)
    begin
    end;

    procedure GetCustVendFromVariant(RecordVariant: Variant; var CustCode: Code[20]; var VendCode: Code[20]; IsCust: Boolean)
    begin
    end;

    procedure GetMandateIDFromRecordID(RecordIDPara: RecordID; var MandateID: Code[20])
    begin
    end;

    procedure GetCustEmailAddress(BillToCustomerNo: Code[20]; ReportUsage: Integer; var CustEmailAddress: Text[250]): Text[250]
    begin
    end;

    procedure GetVendorEmailAddress(BuyFromVendorNo: Code[20]; ReportUsage: Integer; var VendMailAddress: Text[250]): Text[250]
    begin
    end;

    procedure ShowListEmptyNotification(RecordVariant: Variant; SetupOption: Option Basis,Payment,Analysis,FixedAssets,Installment,SchemaOrderer,SchemaTransaction)
    begin
    end;

    procedure OpenSetupDataWizardEa(ListEmptyNotification: Notification)
    begin
    end;

    procedure OpenSetupDataWizardPmt(ListEmptyNotification: Notification)
    begin
    end;

    procedure OpenSetupDataWizardTax(ListEmptyNotification: Notification)
    begin
    end;

    procedure OpenSetupDataWizardSchemaOrderer(ListEmptyNotification: Notification)
    begin
    end;

    procedure OpenSetupDataWizardSchemaTransaction(ListEmptyNotification: Notification)
    begin
    end;

    procedure RoundBookValueInPerDepr(DepreciationBook: Code[10]; DeprAmt: Decimal; BookValue: Decimal): Decimal
    begin
    end;

    procedure CalcFAPmtDisc(DeprBookCode: Code[10]; GenJnlLine: Record "Gen. Journal Line"; FAAmount: Decimal; VATAmount: Decimal; var FALPmtDiscPerc: Decimal; var FALPmtDiscPossGross: Decimal; var FALPmtDiscPossNet: Decimal): Decimal
    begin
    end;

    procedure SetDepriciation(DeprBookCode: Code[10]; FANo: Code[20]; PostingDate: Date; var DeprUntilFAPostingDate: Boolean; var DeprAcquisitionCost: Boolean)
    begin
    end;

    procedure SetDepriciationDisposal(DeprBookCode: Code[10]; FANo: Code[20]; var DeprUntilFAPostingDate: Boolean)
    begin
    end;

    procedure SetFAPostingDate(DeprBookCode: Code[10]; FANo: Code[20]; PostingDate: Date; var FAPostingDate: Date)
    begin
    end;

    procedure SetFAErrorEntryNoSales(var ToSalesLine: Record "Sales Line"; FromSalesLine: Record "Sales Line"; FromDocumentNo: Code[20]; FromPostingDate: Date)
    begin
    end;

    procedure SetFAErrorEntryNoPurch(var ToPurchLine: Record "Purchase Line"; FromPurchLine: Record "Purchase Line"; FromDocumentNo: Code[20]; FromPostingDate: Date)
    begin
    end;

    procedure MoveFAErrorEntryNo(var InvoicePostBuffer: Record "Invoice Post. Buffer"; FAErrorEntryNo: Integer)
    begin
    end;

    procedure SetFAVATCorrection(var GenJnlLine: Record "Gen. Journal Line"; FALedgEntry: Record "FA Ledger Entry")
    begin
    end;

    procedure InsertFACustVendLineCorrection(var GenJnlLine: Record "Gen. Journal Line"; FALedgEntry: Record "FA Ledger Entry")
    begin
    end;

    procedure PostFADuplicateFromPurchHeader(PurchHeader: Record "Purchase Header")
    begin
    end;

    procedure PostFADuplicateFromSalesHeader(SalesHeader: Record "Sales Header")
    begin
    end;

    procedure PostFADuplicateFromRegister(RegisterNo: Integer; GLRegister: Boolean)
    begin
    end;

    procedure SetScrappingFromGJLine(var FALedgEntry: Record "FA Ledger Entry"; GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure SetScrappingFromFAJLine(var FALedgEntry: Record "FA Ledger Entry"; FAJnlLine: Record "FA Journal Line")
    begin
    end;

    procedure SetScrappedDate(var FADeprBook: Record "FA Depreciation Book"; FALedgEntry: Record "FA Ledger Entry"; MinDate: Date)
    begin
    end;

    procedure SetScrappingGJLineFromReverse(var GenJnlLine: Record "Gen. Journal Line"; FALedgEntry: Record "FA Ledger Entry")
    begin
    end;

    procedure SetScrappingFAJLineFromReverse(var FAJnlLine: Record "FA Journal Line"; FALedgEntry: Record "FA Ledger Entry")
    begin
    end;

    procedure ValidateFAFromFAJLine(var FAJnlLine: Record "FA Journal Line")
    begin
    end;

    procedure ValidateFAFromGLJLine(var GenJnlLine: Record "Gen. Journal Line"; var GLAccount: Record "G/L Account"; FANo: Code[20])
    begin
    end;

    procedure ValidateFAFromPurchLine(var PurchaseLine: Record "Purchase Line"; PostingDate: Date)
    begin
    end;

    procedure ValidateFAFromSalesLine(var SalesLine: Record "Sales Line")
    begin
    end;

    procedure TestAndGetGLAccountScrapping(FALedgEntry: Record "FA Ledger Entry"; FAPostingGr: Record "FA Posting Group"; FAPostingType: Option Acquisition,Depr,WriteDown,Appr,Custom1,Custom2,Disposal,Maintenance,Gain,Loss,"Book Value Gain","Book Value Loss"; var GLAccNo: Code[20]): Boolean
    begin
    end;

    procedure PrepareFromWizard(var GenJnlLine: Record "Gen. Journal Line"; GenJnlLineWizard: Record "Gen. Journal Line")
    begin
    end;

    procedure ClearFANoReverseTA(FALedgEntry: Record "FA Ledger Entry")
    begin
    end;

    procedure ClearUseDuplicationListFromDuplicate(var UseDuplicationList: Boolean)
    begin
    end;

    procedure PrepareSalesPurch(var InvPostingBuffer: Record "Invoice Post. Buffer"; FaNo: Code[20]; QtyToInvoice: Decimal)
    begin
    end;

    procedure CheckFAJLine(FA: Record "Fixed Asset"; GenJnlLine: Record "Gen. Journal Line"; FAJnlLine: Record "FA Journal Line"; GenJnlPosting: Boolean)
    begin
    end;

    procedure GetSalesAccNo(TempFAGLPostBuf: Record "FA G/L Posting Buffer" temporary; var FAPostingGr: Record "FA Posting Group")
    begin
    end;

    procedure FillAllocationBufferFromFA(FALedgerEntry: Record "FA Ledger Entry"; var TempFAGLPostBuf: Record "FA G/L Posting Buffer" temporary; FAPostingType: Option Acquisition,Depr,WriteDown,Appr,Custom1,Custom2,Disposal,Maintenance,Gain,Loss,"Book Value Gain","Book Value Loss"; AllocAmount: Decimal; TotalAllocAmount: Decimal; DeprBookCode: Code[10]; PostingGrCode: Code[10]; GlobalDim1Code: Code[20]; GlobalDim2Code: Code[20]; GLAccNo: Code[20]; DimSetID: Integer; var NextEntryNo: Integer; GLEntryNo: Integer; var NumberOfEntries: Integer; AutomaticEntry: Boolean; Correction: Boolean; OrgGenJnlLine: Boolean; NetDisp: Boolean): Boolean
    begin
    end;

    procedure ReverseInsertFromFAEntry(var TempReversalEntry: Record "Reversal Entry" temporary; var TempRevertTransactionNo: Record "Integer" temporary; var FALedgEntry: Record "FA Ledger Entry"; Number: Integer; RevType: Option Transaction,Register; var NextLineNo: Integer)
    begin
    end;

    procedure OpenSetupDataWizardFa(ListEmptyNotification: Notification)
    begin
    end;

    procedure CheckNotificationSchemaOrderer(var Rec: Record "Pmt. Schema Orderer Bank")
    begin
    end;

    procedure CheckNotificationSchemaTransaction(Rec: Record "Pmt. Transaction Schema")
    begin
    end;

    procedure GenerateHyperlink(Bookmark: Text[250]; PageID: Integer): Text
    begin
    end;

    procedure BLOBExportGateway(var TempBlob: Record TempBlob temporary; FileName: Text[250]; FileSupplement: Text)
    begin
    end;

    procedure BLOBImportGateway(var TempBlob: Record TempBlob temporary; FileName: Text; DialogCaption: Text; FileFilter: Text; ExtFilter: Text; ShowErr: Boolean; FixedImportOption: Option " ",Server,Client,Select): Text
    begin
    end;
}