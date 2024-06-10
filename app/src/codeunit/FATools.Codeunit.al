codeunit 5483220 "FA Tools"
{
    Permissions = TableData "FA Ledger Entry" = m;

    trigger OnRun()
    begin
    end;

    procedure SetupFA()
    begin
    end;

    procedure GetOPPFASetup()
    begin
    end;

    procedure SetSilent()
    begin
    end;

    procedure CheckFAforQty(FA: Record "Fixed Asset")
    begin
    end;

    procedure CheckQtyAndAmt(FA: Record "Fixed Asset"; Scrapping: Boolean; Correction: Boolean; DeprBookCode: Code[10]; Qty: Decimal; Amount: Decimal; FAPostingType: Option "Acquisition Cost",Depreciation,"Write-Down",Appreciation,"Custom 1","Custom 2",Disposal,Maintenance)
    begin
    end;

    procedure PrepareSalesPurch(var InvPostingBuffer: Record "Invoice Post. Buffer"; FaNo: Code[20]; QtyToInvoice: Decimal)
    begin
    end;

    procedure PrepareFromWizard(var GenJnlLine: Record "Gen. Journal Line"; GenJnlLineWizard: Record "Gen. Journal Line")
    begin
    end;

    procedure CalcRoundingBookValue(DeprBookCode: Code[10]; DeprAmount: Decimal; BookValue: Decimal): Decimal
    begin
    end;

    procedure CalcPmtDiscAmt(DeprBookCode: Code[10]; GenJnlLine: Record "Gen. Journal Line"; FAAmount: Decimal; VATAmount: Decimal; var FAPmtDiscPerc: Decimal; var FAPmtDiscPossGross: Decimal; var FAPmtDiscPossNet: Decimal)
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

    procedure PostFADuplicateFromGLRegister(RegisterNo: Integer; GLRegister: Boolean)
    begin
    end;

    procedure GetTemplateAndBatchAndPost(DeprBookCode: Code[10]; DocumentNo: Code[20]; FANo: Code[20])
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

    procedure TestAndGetScrappingGLAccount(FALedgEntry: Record "FA Ledger Entry"; FAPostingGr: Record "FA Posting Group"; FAPostingType: Option Acquisition,Depr,WriteDown,Appr,Custom1,Custom2,Disposal,Maintenance,Gain,Loss,"Book Value Gain","Book Value Loss"; var GLAccNo: Code[20]): Boolean
    begin
    end;

    procedure NewFAFromTemplateGJLine(var GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure NewFAFromTemplateFALine(var FAJnlLine: Record "FA Journal Line")
    begin
    end;

    procedure NewFAFromTemplatePurchLine(var PurchLine: Record "Purchase Line")
    begin
    end;

    procedure ClearFANoReverseTA(FALedgEntry: Record "FA Ledger Entry"): Boolean
    begin
    end;

    procedure CreateRoleFA()
    begin
    end;

    procedure SetUseDuplicationList(DeprBookCode: Code[10]; var UseDuplicationList: Boolean)
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

    procedure ClearUseDuplicationListFromDuplicate(var UseDuplicationList: Boolean): Boolean
    begin
    end;

    procedure OnAfterValidatePostingDatePartialRetirement(var FAReclassJournalLine: Record "FA Reclass. Journal Line"; DateType: Integer)
    begin
    end;

    procedure CheckFAJLine(FA: Record "Fixed Asset"; GenJnlLine: Record "Gen. Journal Line"; FAJnlLine: Record "FA Journal Line"; GenJnlPosting: Boolean)
    begin
    end;

    procedure GetSalesAccNo(TempFAGLPostBuf: Record "FA G/L Posting Buffer" temporary; var FAPostingGr: Record "FA Posting Group")
    begin
    end;

    procedure FillAllocationBufferFromFA(FALedgerEntry: Record "FA Ledger Entry"; var TempFAGLPostBuf: Record "FA G/L Posting Buffer" temporary; FAPostingType: Option Acquisition,Depr,WriteDown,Appr,Custom1,Custom2,Disposal,Maintenance,Gain,Loss,"Book Value Gain","Book Value Loss"; AllocAmount: Decimal; TotalAllocAmount: Decimal; DeprBookCode: Code[10]; PostingGrCode: Code[10]; GlobalDim1Code: Code[20]; GlobalDim2Code: Code[20]; GLAccNo: Code[20]; DimSetID: Integer; var NextEntryNo: Integer; GLEntryNo: Integer; var NumberOfEntries: Integer; AutomaticEntry: Boolean; Correction: Boolean; OrgGenJnlLine: Boolean; NetDisp: Boolean) Result: Boolean
    begin
    end;

    procedure ReverseInsertFromFAEntry(var TempReversalEntry: Record "Reversal Entry" temporary; var TempRevertTransactionNo: Record "Integer" temporary; var FALedgEntry: Record "FA Ledger Entry"; Number: Integer; RevType: Option Transaction,Register; var NextLineNo: Integer)
    begin
    end;

    procedure FillFAQuanity(FaNo: Code[20]; Quantity: Integer)
    begin
    end;

    procedure InsertTempFAClass(var FAClass: Record "FA Class" temporary)
    begin
    end;

    procedure CalcUseFullLifeText(FANo: Code[20]; DeprBookCode: Code[10]): Text[30]
    begin
    end;

    procedure SkipRecord(FA: Record "Fixed Asset"; FADeprBook: Record "FA Depreciation Book"; StartingDate: Date; EndingDate: Date): Boolean
    begin
    end;

    procedure MakeGroupHeadLine(FixedAsset: Record "Fixed Asset"; GroupTotals: Option " ","FA Class","FA Subclass","FA Location","Main Asset","Global Dimension 1","Global Dimension 2","FA Posting Group"; var GroupHeadLine: array[2] of Text)
    begin
    end;

    procedure SetGroupKey(var FixedAsset: Record "Fixed Asset"; GroupTotals: Option " ","FA Class","FA Subclass","FA Location","Main Asset","Global Dimension 1","Global Dimension 2","FA Posting Group")
    begin
    end;

    procedure MakeGroupCodeName(GroupTotals: Option " ","FA Class","FA Subclass","FA Location","Main Asset","Global Dimension 1","Global Dimension 2","FA Posting Group"; var GroupCodeName: Text; var GroupCode: Text)
    begin
    end;

    procedure CalcAgeFullMonth(FADeprBook: Record "FA Depreciation Book"; DisposalDate: Date): Text
    begin
    end;

    procedure CreateFAFromTemplate(FAT: Record "Fixed Asset Template"; var FA: Record "Fixed Asset"; FACreateNoSeries: Boolean; FACreateNo: Boolean; FATemplateCode: Code[20]; var FANo: Code[20]; FAComponentTo: Code[20]; FANoSeries: Code[20]; DeprStartingDate: Date; FADescription1: Text; FADescription2: Text; FASerialNo: Text; DimSetID: Integer)
    begin
    end;

    procedure CreateFAAndPostRetirement(var FAReclassJnlLine: Record "FA Reclass. Journal Line"; FA: Record "Fixed Asset"; FACreateNoSeries: Boolean; FACreateNo: Boolean; FAAsComponentTo: Boolean; OpenJournal: Boolean; SalesInvoice: Boolean; var FANo: Code[20]; FANoSeries: Code[20]; RetirementBalAccNo: Code[20]; NewFALocation: Code[10]; NewDimCode: array[8] of Code[20]; RemainingQty: Decimal; QtyToRetire: Decimal; ProceedsOnDisposal: Decimal; RetirementType: Option Sale,Scrapping; RetirementBalAccType: Option "G/L Account",Customer; FADescription: Text)
    begin
    end;
}