codeunit 5157902 "OPplus Clearing ISO"
{
    trigger OnRun()
    begin
    end;

    procedure ISOFile(PaymentProposal_: Record "Payment Proposal"; PmtType: Code[10]; var FileName: Text[250]) Result: Boolean
    begin
        FileName := '';
    end;

    procedure cont(Stream: OutStream; Tag: Text[30]; Text: Text[1024])
    begin
    end;

    procedure contAttrib(Stream: OutStream; Tag: Text[30]; Text: Text[1024]; AttribTag: Text[30]; AttribValue: Text[30])
    begin
    end;

    procedure push(Stream: OutStream; Tag: Text[30])
    begin
    end;

    procedure pop(Stream: OutStream)
    begin
    end;
}