codeunit 5157998 "OPplus Standard"
{
    Permissions = TableData "Registered Pmt. Interface" = rimd;
    SingleInstance = true;

    trigger OnRun()
    begin
    end;

    procedure InsertLicense(PmtInterface: Record "Pmt. Import Interface")
    begin
    end;

    procedure CheckLicense(PmtInterface: Record "Pmt. Import Interface")
    begin
    end;
}