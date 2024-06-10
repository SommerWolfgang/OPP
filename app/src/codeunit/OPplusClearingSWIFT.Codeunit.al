codeunit 5157899 "OPplus Clearing SWIFT"
{
    trigger OnRun()
    begin
    end;

    procedure Create_MT10n(var _PmtProposal: Record "Payment Proposal"; PmtCode: Code[10]; New: Boolean; var FileCreated: Boolean): Boolean
    begin
        FileCreated := false;
    end;

    procedure MT101File(New: Boolean; ExecDate: Date): Boolean
    begin
    end;

    procedure MT103File(New: Boolean; ExecDate: Date)
    begin
    end;

    procedure MT104File(New: Boolean; ExecDate: Date)
    begin
    end;
}