codeunit 5157997 "OPplus Small Business"
{
    Permissions = TableData "Registered Pmt. Interface" = rimd;

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