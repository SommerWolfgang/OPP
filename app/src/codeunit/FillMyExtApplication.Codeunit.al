codeunit 5157807 "Fill My Ext. Application"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // EA   01.09.14   Extended Application
    //                 - Object created
    // -----------------------------------------------------


    trigger OnRun()
    begin
        // These functions are always executed when creating a new Ext. Application
    end;

    [Scope('Internal')]
    procedure FillMyAppLineFromCustLedgEntry(var AppLine: Record "Application Line"; CustLedgerEntry: Record "Cust. Ledger Entry"; Customer: Record Customer)
    begin
        // Use this code to fill your customer specific fields into Payment Proposal Line
        // AppLine."My Field 1" := CustLedgerEntry."My Field 1"
    end;

    [Scope('Internal')]
    procedure FillMyAppLineFromVendLedgEntry(var AppLine: Record "Application Line"; VendLedgerEntry: Record "Vendor Ledger Entry"; Vendor: Record Vendor)
    begin
        // Use this code to fill your customer specific fields into Payment Proposal Line
        // AppLine."My Field 1" := VendLedgerEntry."My Field 1"
    end;

    [Scope('Internal')]
    procedure FillMyAppLineFromGLEntry(var AppLine: Record "Application Line"; GLEntry: Record "G/L Entry"; GLAccout: Record "G/L Account")
    begin
        // Use this code to fill your customer specific fields into Payment Proposal Line
        // AppLine."My Field 1" := GLEntry."My Field 1"
    end;
}

