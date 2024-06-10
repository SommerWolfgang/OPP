codeunit 5157900 "OPplus Clearing SEPA DD"
{
    trigger OnRun()
    begin
    end;

    procedure SepaFileDD(PaymentProposal: Record "Payment Proposal"; PmtType: Code[10]; FileName: Text[250]; SEPARepeated: Boolean) Result: Boolean
    begin
    end;

    procedure FillBankAccMandateTemp(var BankAccMandateFill: Record "Bank Account Mandate"; MandatePmtHead: Record "Payment Proposal Head")
    begin
    end;

    procedure FillCustBankAccFromMandateTemp(var CustBankAccFill: Record "Customer Bank Account"; MandatePmtHead: Record "Payment Proposal Head")
    begin
    end;

    procedure FillVendBankAccFromMandateTemp(var VendBankAccFill: Record "Vendor Bank Account"; MandatePmtHead: Record "Payment Proposal Head")
    begin
    end;

    procedure CheckBankAccHistory(BankAccMandateHistory: Record "Bank Account Mandate History"; BankAccMandate: Record "Bank Account Mandate"; PmtProposal: Record "Payment Proposal"; Name: Text[50]; Orderer: Text[100]; Sender: Text[100]; Identifier: Text[50]; Owner: Text[50]): Boolean
    begin
    end;

    procedure CheckBankAccHistoryRepeated(PmtHeadHistory: Record "Payment Proposal Head")
    begin
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

    procedure SetWebService(Flag: Boolean)
    begin
    end;

    procedure GetStream(var NewBlob: Record TempBlob)
    begin
    end;
}