codeunit 5157898 "OPplus Clearing DE"
{
    trigger OnRun()
    begin
    end;

    procedure Create_DTAUS(var _PmtProposal: Record "Payment Proposal"; var FileCreated: Boolean): Boolean
    begin
        FileCreated := false;
    end;
}