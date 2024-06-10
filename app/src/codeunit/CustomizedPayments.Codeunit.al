codeunit 5157896 "Customized Payments"
{
    trigger OnRun()
    begin
    end;

    procedure PmtSetup()
    begin
    end;

    procedure Create_Pmt(var _PmtProposal: Record "Payment Proposal"; New: Boolean): Boolean
    begin
    end;

    procedure Repeat_Pmt(var _PmtProposal: Record "Payment Proposal")
    begin
    end;

    procedure Check_Validity(PmtHead2: Record "Payment Proposal Head")
    begin
    end;

    procedure Get_Dummy(): Code[10]
    begin
    end;
}