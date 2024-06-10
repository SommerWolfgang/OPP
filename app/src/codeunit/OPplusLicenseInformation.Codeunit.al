codeunit 5158000 "OPplus License Information"
{
    Permissions = TableData "Registered Pmt. Interface" = rimd;
    SingleInstance = true;

    trigger OnRun()
    begin
    end;

    procedure GetVersion()
    begin
    end;

    procedure GetVersion2(): Text[30]
    begin
    end;

    procedure SetLicenseRead()
    begin
    end;

    procedure GetLicenseInfo()
    begin
    end;

    procedure GetFurtherLicenseInfo(TableID: Integer; var IsLicensed: Boolean; var IsActive: Boolean)
    begin
        IsLicensed := false;
        IsActive := false;
    end;

    procedure IsBasics(): Boolean
    begin
    end;

    procedure IsExtended(): Boolean
    begin
    end;

    procedure IsGLOE(): Boolean
    begin
    end;

    procedure IsVaL(): Boolean
    begin
    end;

    procedure IsAnalysis(): Boolean
    begin
    end;

    procedure IsPmt(): Boolean
    begin
    end;

    procedure IsDTAZV(): Boolean
    begin
    end;

    procedure IsPmtUK(): Boolean
    begin
    end;

    procedure IsPmtCH(): Boolean
    begin
    end;

    procedure IsPmtNL(): Boolean
    begin
    end;

    procedure IsPmtAT(): Boolean
    begin
    end;

    procedure IsPmtFR(): Boolean
    begin
    end;

    procedure IsBasicsLicensed(): Boolean
    begin
    end;

    procedure IsExtendedLicensed(): Boolean
    begin
    end;

    procedure IsGLOELicensed(): Boolean
    begin
    end;

    procedure IsVaLLicensed(): Boolean
    begin
    end;

    procedure IsAnalysisLicensed(): Boolean
    begin
    end;


    procedure IsPmtLicensed(): Boolean
    begin
    end;


    procedure IsDTAZVLicensed(): Boolean
    begin
    end;


    procedure IsPmtUKLicensed(): Boolean
    begin
    end;


    procedure IsPmtCHLicensed(): Boolean
    begin
    end;


    procedure IsPmtNLLicensed(): Boolean
    begin
    end;


    procedure IsPmtATLicensed(): Boolean
    begin
    end;


    procedure IsPmtFRLicensed(): Boolean
    begin
    end;


    procedure IsSBE(): Boolean
    begin
    end;


    procedure IsBasicsOrPmt() BasicsOrPmt: Boolean
    begin
    end;


    procedure IsStandard(): Boolean
    begin
    end;

    procedure IsEnterprise(): Boolean
    begin
    end;

    procedure IsSBELicensed(): Boolean
    begin
    end;

    procedure IsStandardLicensed(): Boolean
    begin
    end;

    procedure IsEnterpriseLicensed(): Boolean
    begin
    end;

    procedure IsFA(): Boolean
    begin
    end;

    procedure IsFALicensed(): Boolean
    begin
    end;

    procedure CreateRoles()
    begin
    end;

    procedure CreatePermission(Role: Code[20]; Type: Integer; FromID: Integer; ToID: Integer; Read: Integer; InsertPermission: Integer; ModifyPermission: Integer; DeletePermission: Integer)
    begin
    end;

    procedure CreateRoleBasis()
    begin
    end;

    procedure CreateRoleExtended()
    begin
    end;

    procedure CreateRoleGLOE()
    begin
    end;

    procedure CreateRoleViews_and_Lists()
    begin
    end;

    procedure CreateRoleAnalysis()
    begin
    end;

    procedure CreateRolePayment()
    begin
    end;

    procedure IsOptionRateLCYFCY(): Integer
    begin
    end;

    procedure IsOptionRateFCYFCY(): Integer
    begin
    end;

    procedure IsOptionTransitGainLoss(): Integer
    begin
    end;

    procedure GetPostAtOnce(): Boolean
    begin
    end;

    procedure SetPostAtOnce(SetPostatOnce2: Boolean)
    begin
    end;

    procedure CountSubString(InString: Text[1024]; SubString: Text[30]) Counter: Integer
    begin
    end;

    procedure Demand4Update(Option: Option ,Basis,Payment,Analysis)
    begin
    end;

    procedure CallBatch(BatchName: Text[250]): Text[30]
    begin
    end;

    procedure ExtractFilename(Filename: Text[1024]): Text[254]
    begin
    end;

    procedure IsExtendedApplication(ExtendedApplication: Boolean; AppliesToID: Code[50]): Boolean
    begin
    end;

    procedure GetDocLineSettingSales(): Boolean
    begin
    end;

    procedure GetDocLineSettingPurch(): Boolean
    begin
    end;

    procedure Convert_UTF8_Sign(Instr: Text[250]): Text
    begin
    end;

    procedure ConvertReservedXMLchars(Instr: Text[250]): Text
    begin
    end;

    procedure GetVATCorrectionEnabled(): Boolean
    begin
    end;

    procedure GetOPvsOPSetting(): Boolean
    begin
    end;

    procedure DoDlgUpdate(): Boolean
    begin
    end;

    procedure IsSkipDimCheck(): Boolean
    begin
    end;

    procedure SetSkipDimCheck(_SkipDimCheck: Boolean)
    begin
    end;

    procedure IsExtPostingMethod(): Boolean
    begin
    end;

    procedure IsStandardExitAction(): Boolean
    begin
    end;

    procedure IsSaveIbanInBlocks(): Boolean
    begin
    end;


    procedure GetOnHoldPayback(): Code[3]
    begin
    end;

    procedure GetExtendedText(): Text
    begin
    end;

    procedure GetPmtMethodCodeReturnedDD(): Text[10]
    begin
    end;

    procedure CheckDemand4UpdateBasics()
    begin
    end;

    procedure CheckDemand4UpdatePayment()
    begin
    end;

    procedure CheckDemand4UpdateAnalysis()
    begin
    end;

    procedure CheckAppliestoID(AppliesToID: Code[50]): Boolean
    begin
    end;

    procedure CheckOPplusEvents()
    begin
    end;

    procedure GetKeepDimension(): Boolean
    begin
    end;

    procedure WhatIsAdviceReport(): Integer
    begin
    end;

    procedure WhatIsMandateReport(): Integer
    begin
    end;

    procedure GetSystemWindowsCodePage(): Text
    begin
    end;

    procedure GetSystemEncodingName(): Text
    begin
    end;

    procedure WhatAreBalAckReports(ExitOption: Option Customer,Vendor): Integer
    begin
    end;

    procedure GetColorAppliedEntry(): Integer
    begin
    end;

    procedure GetColorLocalApplication(): Integer
    begin
    end;

    procedure GetColorPartialApplication(): Integer
    begin
    end;

    procedure FillEntranceDateWithPostingDate(): Boolean
    begin
    end;

    procedure SetRecID(RecID: RecordID)
    begin
    end;

    procedure GetRecID(var RecID: RecordID)
    begin
    end;

    procedure IsPmtDiscOnAcquisitionCost(): Boolean
    begin
    end;
}