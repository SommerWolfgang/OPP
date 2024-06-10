codeunit 5157897 "Fill My Payment"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // PMT  01.09.14   OPplus Payment
    //                 - Object created
    // -----------------------------------------------------


    trigger OnRun()
    begin
        // These functions are always executed when creating a new proposal line, head or gen. journal line
    end;

    [Scope('Internal')]
    procedure FillMyPmtHeadFromCustomer(var PmtProposalHead: Record "Payment Proposal Head"; Customer: Record Customer)
    begin
        // Use this code to fill your customer specific fields into Payment Proposal Head
        // PmtProposalHead."My Field 1" := Customer."My Field 1"
    end;

    [Scope('Internal')]
    procedure FillMyPmtHeadFromVendor(var PmtProposalHead: Record "Payment Proposal Head"; Vendor: Record Vendor)
    begin
        // Use this code to fill your customer specific fields into Payment Proposal Head
        // PmtProposalHead."My Field 1" := Vendor."My Field 1"
    end;

    [Scope('Internal')]
    procedure FillMyPmtLineFromCustLedgEntry(var PmtProposalLine: Record "Payment Proposal Line"; CustLedgerEntry: Record "Cust. Ledger Entry")
    begin
        // Use this code to fill your customer specific fields into Payment Proposal Line
        // PmtProposalLine."My Field 1" := CustLedgerEntry."My Field 1"
    end;

    [Scope('Internal')]
    procedure FillMyPmtLineFromVendLedgEntry(var PmtProposalLine: Record "Payment Proposal Line"; VendLedgerEntry: Record "Vendor Ledger Entry")
    begin
        // Use this code to fill your customer specific fields into Payment Proposal Line
        // PmtProposalLine."My Field 1" := VendLedgerEntry."My Field 1"
    end;

    [Scope('Internal')]
    procedure FillMyGenJnlLineFromPmtHead(var GenJnlLine: Record "Gen. Journal Line"; PaymentHead: Record "Payment Proposal Head")
    begin
        // Use this code to fill your payment head specific fields into General Journal Line
        // GenJnlLine."My Field 1" := PaymentHead."My Field 1"
    end;

    [Scope('Internal')]
    procedure FillMyGenJnlLineFromPmtLine(var GenJnlLine: Record "Gen. Journal Line"; PaymentLine: Record "Payment Proposal Line")
    begin
        // Use this code to fill your payment line specific fields into General Journal Line
        // GenJnlLine."My Field 1" := PaymentLine."My Field 1"
    end;
}

