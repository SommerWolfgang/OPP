codeunit 5157960 "OPplus Clearing AT"
{
    trigger OnRun()
    begin
    end;

    procedure Create_Pmt_AT(PmtProposal: Record "Payment Proposal"; var FileCreated: Boolean): Boolean
    begin
        FileCreated := false;
    end;

    procedure SplitIBAN(var Branch: Text[30]; var Acct: Text[30]; Marker: Code[10])
    begin
        Branch := '';
        Acct := '';
    end;

    procedure CreateRolePmtAT()
    begin
    end;
}