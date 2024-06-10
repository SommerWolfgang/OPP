codeunit 5157895 "Create XMW File"
{
    trigger OnRun()
    begin
    end;

    procedure xmwCreate()
    begin
    end;

    procedure xmwRepeat()
    begin
    end;

    procedure XMW(New: Boolean)
    begin
    end;

    procedure Precheck(file: Boolean)
    begin
    end;

    procedure xmwFile(New: Boolean; Loop: Integer): Boolean
    begin
    end;

    procedure xmwMessage()
    begin
    end;

    procedure xmwLine() Result: Text[1024]
    begin
    end;

    procedure awvText(Textpara: Text[250]) Result: Text[250]
    begin
    end;

    procedure pushAttrib(Name: Text[30]) Result: Text[1024]
    begin
    end;

    procedure push(Name: Text[30]): Text[30]
    begin
    end;

    procedure pop(Name: Text[30]): Text[30]
    begin
    end;

    procedure myText(Name: Text[30]; Value: Text[255]) Result: Text[255]
    begin
    end;

    procedure myPhone(Name: Text[30]; Value: Text[255]) Result: Text[255]
    begin
    end;

    procedure myExtranet(Name: Text[30]; Value: Text[255]) Result: Text[255]
    begin
    end;

    procedure myNumber(Name: Text[30]; Value: Integer) Result: Text[30]
    begin
    end;

    procedure makeISODateTime(Date: Date): Text[40]
    begin
    end;

    procedure makeFileName(Counter: Integer; Id: Code[10]) Result: Text[50]
    begin
    end;

    procedure SetDateFilter(var ReportLine: Record "Bundesbank Report"; FilterText: Text[250]; FilterTextReportedAtDate: Text[250]; FilterTextReportingDate: Text[250])
    begin
    end;

    procedure CreateCSV()
    begin
    end;

    procedure makeFileNameCSV(Counter: Integer; Id: Code[10]) Result: Text[50]
    begin
    end;

    procedure CSVLine(var para1: Text[80]; var para2: Text[80]; var para3: Text[80]; var para4: Text[80]; var para5: Text[80]; var para6: Text[80]; var para7: Text[80]; var para8: Text[80])
    begin
    end;

    procedure paraCSV(Name: Text[30]; var para1: Text[80]; var para2: Text[80]; var para3: Text[80]; var para4: Text[80]; var para5: Text[80]; var para6: Text[80]; var para7: Text[80]; var para8: Text[80])
    begin
    end;

    procedure SetRequestDate(Date: Date)
    begin
    end;

    procedure ResetReportStatus()
    begin
    end;

    procedure SetReportStatus()
    begin
    end;

    procedure CreateCompanyName(Str: Text[50]): Text[50]
    begin
    end;
}