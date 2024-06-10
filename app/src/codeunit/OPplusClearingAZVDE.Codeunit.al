codeunit 5157894 "OPplus Clearing AZV DE"
{
    TableNo = "Payment Proposal";

    trigger OnRun()
    begin
    end;

    procedure AZVSetup()
    begin
    end;

    procedure GetAZV(): Code[10]
    begin
    end;

    procedure GetAZVEUR(): Code[10]
    begin
    end;

    procedure TypeQ(Bundesbank: Boolean)
    begin
    end;

    procedure TypeT(NoOfReports: Integer; StatisticsKey: Text[1]; AccountToCharge: Text[21])
    begin
    end;

    procedure TypeZ()
    begin
    end;

    procedure Create_AZV(var _PmtProposal: Record "Payment Proposal"; var FileCreated: Boolean): Boolean
    begin
    end;

    procedure Create_AZVFile()
    begin
    end;

    procedure AZVText(TextPara: Text[255]; MaxLen: Integer): Text[255]
    begin
    end;

    procedure AZVISO_Country(BIC: Code[30]): Code[2]
    begin
    end;

    procedure AZVNumber(TextPara: Text[30]; MaxLen: Integer): Text[30]
    begin
    end;

    procedure AZVDate(DatePara: Date): Text[6]
    begin
    end;

    procedure AZVCurrency(Curr: Code[10]): Code[3]
    begin
    end;

    procedure AZV_CreateStatistics(_PmtProposal: Record "Payment Proposal"; LinePara: Integer)
    begin
    end;

    procedure AZV_SetDefaults(Pmt: Record "Payment Proposal")
    begin
    end;

    procedure TypeV()
    begin
    end;

    procedure TypeW()
    begin
    end;

    procedure CheckSetupAndDetail(CheckDetail: Boolean)
    begin
    end;

    procedure SetSilent()
    begin
    end;

    procedure CreateRoleDTAZV()
    begin
    end;

    procedure IsPmtAZV(PmtCode: Code[10]): Boolean
    begin
    end;

    procedure CheckAZVPayment(var PmtHead: Record "Payment Proposal Head")
    begin
    end;

    procedure CheckInstructionAndFees(var PmtHead: Record "Payment Proposal Head"; EuroPayment: Boolean)
    begin
    end;

    procedure GetAZVAddInfo(var PmtHead: Record "Payment Proposal Head"): Text[30]
    begin
    end;

    procedure SetWebService(Flag: Boolean)
    begin
    end;

    procedure Create_AZV_viaWS(var _PmtProposal: Record "Payment Proposal"; PmtTypeCode: Code[10]; var FileName: Text[250]): Boolean
    begin
    end;

    procedure GetStream(var NewBlob: Record TempBlob)
    begin
    end;
}