codeunit 5157804 "CSV Port Procedures"
{
    trigger OnRun()
    begin
    end;

    procedure RunPreview(PortCode: Code[20])
    begin
    end;

    procedure Import(PortCode: Code[20]; Filename: Text[1024]; PreviewPara: Boolean): Integer
    begin
    end;

    procedure Export(PortCode: Code[20])
    begin
    end;

    procedure CSVPortImpEx(CSVPort: Record "CSV Port"; CodeVar: Code[20]; Export2: Boolean): Integer
    begin
    end;

    procedure RestoreStandardInterfaces(IsBatch: Boolean)
    begin
    end;

    procedure CopyInterface(Rec: Record "CSV Port"): Code[20]
    begin
    end;

    procedure GetColsFromTable(PortCode: Code[20]; Append: Boolean)
    begin
    end;

    procedure GetColsFromFile(PortCode: Code[20]; Append: Boolean)
    begin
    end;

    procedure GetColsFromUser(PortCode: Code[20]; Append: Boolean)
    begin
    end;

    procedure GetFileName(FileNamePara: Text[1024]; "Code": Code[20]): Text[1024]
    begin
    end;

    procedure LineProcedures(PortCode: Code[20]; ProcessOption: Option Process,NoProcess,"Trigger",NoTrigger,Deflate,Inflate)
    begin
    end;

    procedure ClearCRLFinDeli(FileName: Text[1024]; PortCode: Code[20])
    begin
    end;
}