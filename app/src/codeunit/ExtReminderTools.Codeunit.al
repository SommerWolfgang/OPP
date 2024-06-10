codeunit 5157820 "Ext. Reminder Tools"
{
    Permissions = TableData "Cust. Ledger Entry" = rm,
                  TableData "Vendor Ledger Entry" = rm,
                  TableData "Reminder/Fin. Charge Entry" = ri;

    trigger OnRun()
    begin
    end;

    procedure VL_ValidateEntryNo_Remline(var ReminderLine: Record "Reminder Line"; CurrFieldNo: Integer; ReminderHeader: Record "Reminder Header")
    begin
    end;

    procedure VL_Lookup_RemLine(var ReminderLine: Record "Reminder Line")
    begin
    end;

    procedure VL_ValidateDocNo_Remline(var ReminderLine: Record "Reminder Line")
    begin
    end;

    procedure VL_LookupDocNo_RemLine(var ReminderLine: Record "Reminder Line")
    begin
    end;

    procedure VL_Lookup_IssuedRemLine(var IssuedReminderLine: Record "Issued Reminder Line")
    begin
    end;

    procedure VL_CalcInterest(var ReminderLine: Record "Reminder Line"; var InterestStartDate: Date; var InterestCalcDate: Date; VendLedgEntry: Record "Vendor Ledger Entry"; ReminderHeader: Record "Reminder Header")
    begin
    end;

    procedure GetCurrCode(FinChargeEntry: Record "Reminder/Fin. Charge Entry"): Code[10]
    begin
    end;

    procedure VL_CreateRemEntry(ReminderHeader: Record "Reminder Header"; ReminderLine: Record "Reminder Line"; IssuedReminderHeader: Record "Issued Reminder Header"; ReminderInterestAmount: Decimal; var NextEntryNo: Integer)
    begin
    end;

    procedure VL_CreateRemLine(ReminderHeader: Record "Reminder Header"; var VendorTemp: Record "Code Buffer"; var VendLedgEntry: Record "Vendor Ledger Entry"; ReminderLevel: Record "Reminder Level"; LineLevel: Integer; var NextLineNo: Integer; ReminderDueDate: Date; ReminderHeaderReq: Record "Reminder Header"; LeadingCust: Record Customer; ReminderTerms: Record "Reminder Terms")
    begin
    end;

    procedure VL_InsertRemLine(var VendorTemp: Record "Code Buffer"; var VendLedgEntry: Record "Vendor Ledger Entry"; ReminderHeaderReq: Record "Reminder Header"; var NextLineNo: Integer; var AmountsNotDueLineInserted: Boolean; ReminderHeader: Record "Reminder Header")
    begin
    end;

    procedure VL_IncludeOnHold(var NextLineNo: Integer; var VendLedgEntryOnHoldTEMP: Record "CV Ledger Entry Buffer"; ReminderHeader: Record "Reminder Header")
    begin
    end;

    procedure MarkVLEntries(var VendLedgEntry: Record "Vendor Ledger Entry"; var VendorTemp: Record "Code Buffer"; var ReminderLevel: Record "Reminder Level"; ReminderTerms: Record "Reminder Terms"; CurrencyCode: Code[10]; var LineLevel: Integer; ReminderDueDate: Date; ReminderHeaderReq: Record "Reminder Header"; IncludeEntriesOnHold: Boolean; var VendLedgEntryOnHoldTEMP: Record "CV Ledger Entry Buffer" temporary; var CustAmount: Decimal; var MakeDoc: Boolean; OverDueEntriesOnly: Boolean; var MaxReminderLevel: Integer; var MaxLineLevel: Integer)
    begin
    end;

    procedure FilterVendLedgEntries(var ReminderLevel2: Record "Reminder Level"; var VendLedgEntry: Record "Vendor Ledger Entry"; ReminderTerms: Record "Reminder Terms")
    begin
    end;

    procedure SetVendReminderLine(var LineLevel2: Integer; Level: Integer; var ReminderDueDate2: Date; VendLedgEntry: Record "Vendor Ledger Entry")
    begin
    end;

    procedure AddCustReminderLine(var NextLineNo: Integer; ReminderHeader: Record "Reminder Header"; AccountNo: Code[20]; LineLevel: Integer)
    begin
    end;

    procedure CollectAccount(InclAssociation: Boolean; CVSettling: Boolean; var LeadingCust: Record Customer; var Cust: Record Customer; var VendorTemp: Record "Code Buffer" temporary): Boolean
    begin
    end;
}