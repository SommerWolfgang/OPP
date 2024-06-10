report 5157810 "Pmt. Import via MT940"
{
    procedure ProcessFile()
    begin
    end;

    procedure ProcessStream()
    begin
    end;

    procedure InitReport(Filename: Text[1024]; Verbose: Boolean): Text[255]
    begin
    end;

    procedure InitReportForWebService(var TempBlob2: Record TempBlob temporary; FileName: Text[100]) Success: Boolean
    begin
    end;

    procedure FinishReport(): Integer
    begin
    end;

    procedure mbsExitFilename(): Text[1024]
    begin
    end;

    procedure mbsGetOrderer(Textpara: Text[128]; var Acc: Text[100]; var Bank: Text[100])
    begin
        Acc := '';
        Bank := '';
    end;

    procedure SetStartingDateTime(StartingDateTime: DateTime)
    begin
    end;
}