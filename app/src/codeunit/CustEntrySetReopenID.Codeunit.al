codeunit 5157819 "Cust. Entry-SetReopen-ID"
{
    Permissions = TableData "Cust. Ledger Entry" = m;
    trigger OnRun()
    begin
    end;

    procedure SetReopenID(var CustLedgEntry: Record "Cust. Ledger Entry"; AppliesToID: Code[50])
    begin
    end;
}