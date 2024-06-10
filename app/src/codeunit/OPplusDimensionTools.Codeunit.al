codeunit 5157812 "OPplus DimensionTools"
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

    procedure GET_OPPSetup()
    begin
    end;

    procedure UpdateVATEntry(var VATEntry: Record "VAT Entry"; GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure UpdateNewVATEntry(var NewVATEntry: Record "VAT Entry"; VATEntry: Record "VAT Entry")
    begin
    end;

    procedure UpdateDtldCVBuffer(var DtldCVLedgEntryBuf: Record "Detailed CV Ledg. Entry Buffer"; VATEntry2: Record "VAT Entry")
    begin
    end;

    procedure UpdateNewDtldCustLedgEntry(var NewDtldCustLedgEntry: Record "Detailed Cust. Ledg. Entry"; DtldCustLedgEntry2: Record "Detailed Cust. Ledg. Entry")
    begin
    end;

    procedure UpdateNewDtldVendLedgEntry(var NewDtldVendLedgEntry: Record "Detailed Vendor Ledg. Entry"; DtldVendLedgEntry2: Record "Detailed Vendor Ledg. Entry")
    begin
    end;

    procedure DimCheckSystemEntry(GLAcc: Record "G/L Account"; var GLEntry: Record "G/L Entry"; GenJnlLine2: Record "Gen. Journal Line"; var TempGLEntryUpdateBuffer: Record "Integer Buffer" temporary)
    begin
    end;

    procedure DimCheckVATEntry(GLAccNo: Code[20]; GLEntryNo: Integer; GenJnlLine2: Record "Gen. Journal Line"; var TempGLEntryUpdateBuffer: Record "Integer Buffer" temporary; VATEntryNo: Integer)
    begin
    end;

    procedure DimensionUpdate(var GLEntryPmtCorrBuffer: Record "Integer Buffer"; var GLEntry: Record "G/L Entry"; GenJnlLine2: Record "Gen. Journal Line")
    begin
    end;

    procedure VATDimensionUpdate(var GLEntryPmtCorrBuffer: Record "Integer Buffer"; var VATEntry: Record "VAT Entry"; GenJnlLine2: Record "Gen. Journal Line")
    begin
    end;

    procedure SetProcessParameters(_CalledByProcess: Option ,UnapplyEntries)
    begin
    end;

    procedure InsertUnapplyEntryBuffer(var UnapplyEntryBufferTmp: Record "Detailed CV Ledg. Entry Buffer" temporary; TableID: Integer; TableEntryNo: Integer; EntryType: Option ,"Initial Entry",Application,"Unrealized Loss","Unrealized Gain","Realized Loss","Realized Gain","Payment Discount","Payment Discount (VAT Excl.)","Payment Discount (VAT Adjustment)","Appln. Rounding","Correction of Remaining Amount","Payment Tolerance","Payment Discount Tolerance","Payment Tolerance (VAT Excl.)","Payment Tolerance (VAT Adjustment)","Payment Discount Tolerance (VAT Excl.)","Payment Discount Tolerance (VAT Adjustment)")
    begin
    end;

    procedure FillUnApplyVATEntryBuffer(var DtldCustLedgEntry: Record "Detailed Cust. Ledg. Entry"; var UnApplyVATBuffer: Record "VAT Entry")
    begin
    end;

    procedure CheckUnApplyThisVATEntry(var UnApplyVATBuffer: Record "VAT Entry"; VATEntry: Record "VAT Entry"): Boolean
    begin
    end;

    procedure UpdateUnapplyEntryBuffer(var UnapplyEntryBufferTmp: Record "Detailed CV Ledg. Entry Buffer" temporary; AppliedWithEntryNo: Integer)
    begin
    end;

    procedure UpdateGLEntryGlobalDim(GLEntryNo: Integer; GlobalDim: Integer; DimensionValue: Code[20])
    begin
    end;

    procedure CopyApplicationDimensions(var UnapplyEntryBufferTmp: Record "Detailed CV Ledg. Entry Buffer" temporary)
    begin
    end;

    procedure ApplyGetDimValues(var GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure CheckIfDimFromAppliedEntry(GenJnlLine: Record "Gen. Journal Line") DimExsist: Boolean
    begin
    end;

    procedure CheckIfDimFromAccount(GenJnlLine: Record "Gen. Journal Line"): Boolean
    begin
    end;

    procedure ExtApplyCheckDimValuePosting(GenJnlLine2: Record "Gen. Journal Line")
    begin
    end;
}