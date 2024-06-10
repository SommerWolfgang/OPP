codeunit 5157998 "OPplus Standard"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // STD  01.10.12   OPplus Standard Edition
    //                 - Object created
    // -----------------------------------------------------

    Permissions = TableData "Registered Pmt. Interface" = rimd;
    SingleInstance = true;

    trigger OnRun()
    begin
    end;

    var
        RegPmtInterface: Record "Registered Pmt. Interface";
        FinanceTools: Codeunit FinanceTools;

    [Scope('Internal')]
    procedure InsertLicense(PmtInterface: Record "Pmt. Import Interface")
    var
        Text001: Label 'You are not allowed to insert new interfaces. Please contact your dealer.';
    begin
        RegPmtInterface.SetFilter("Goes to Company", '<>%1', '');
        RegPmtInterface.SetFilter("Copy to Interface Code", '=%1', '');
        if RegPmtInterface.Count > 20 then
            Error(Text001);
        if not RegPmtInterface.Get(PmtInterface.GUIDCode) then begin
            RegPmtInterface.GUIDCode := PmtInterface.GUIDCode;
            RegPmtInterface.Code := PmtInterface.Code;
            RegPmtInterface."Is in Company" := CompanyName;
            RegPmtInterface."Goes to Company" := PmtInterface."Import to Company";
            FinanceTools.InsertRegInterfaceData(RegPmtInterface, PmtInterface, true);
            RegPmtInterface.Insert;
        end;
    end;

    [Scope('Internal')]
    procedure CheckLicense(PmtInterface: Record "Pmt. Import Interface")
    var
        Text001: Label 'You are not allowed to insert new interfaces. Please contact your dealer.';
    begin
        RegPmtInterface.SetFilter("Goes to Company", '<>%1', '');
        RegPmtInterface.SetFilter("Copy to Interface Code", '=%1', '');
        if RegPmtInterface.Count > 20 then
            Error(Text001);
    end;
}

