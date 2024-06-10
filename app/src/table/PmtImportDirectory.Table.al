table 5157813 "Pmt. Import Directory"
{
    Caption = 'Pmt. Import Directory';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'No.';
            DataClassification = SystemMetadata;
        }
        field(2; "File Type"; Option)
        {
            Caption = 'File Type';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,MT940,CSV Port,CREMUL,BESR,REMADV,Credit Card,CAMT,CAMT54';
            OptionMembers = "None",MT940,"CSV Port",CREMUL,BESR,REMADV,"Credit Card",CAMT,CAMT54;
        }
        field(3; Path; Text[250])
        {
            Caption = 'Path';
            DataClassification = SystemMetadata;
        }
        field(4; "Backup Path"; Text[250])
        {
            Caption = 'Backup Path';
            DataClassification = SystemMetadata;
        }
        field(5; "File Mask"; Text[30])
        {
            Caption = 'File Mask';
            DataClassification = SystemMetadata;
        }
        field(6; "CSV Port"; Code[20])
        {
            Caption = 'CSV Port';
            DataClassification = SystemMetadata;
        }
        field(7; "Unzip CAMT Archive"; Boolean)
        {
            Caption = 'Unzip CAMT Archive';
        }
        field(8; "CAMT Archive File Mask"; Text[30])
        {
            Caption = 'CAMT Archive File Mask';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "File Type")
        {
        }
    }
    procedure RestoreDirectory()
    begin
    end;


    procedure RestoreFile(Interface: Code[20]; FileName: Text[250])
    begin
    end;

    procedure GetPath(FieldNumber: Integer)
    begin
    end;

    procedure InFilemask(NamePara: Text[250]): Boolean
    begin
    end;

    procedure ProcessBESR(ImportFilename: Text[1024]): Integer
    begin
    end;

    procedure ProcessCC(Importfilename: Text[1024]): Integer
    begin
    end;

    procedure ProcessCREMUL(ImportFilename: Text[1024]): Integer
    begin
    end;

    procedure ProcessCSV(Importfilename: Text[1024]; PortCode: Code[20]): Integer
    begin
    end;

    procedure ProcessMT940(Importfilename: Text[1024]; IsWebService: Boolean): Integer
    begin
    end;

    procedure ProcessCAMT(ImportFilename: Text[1024]; IsWebService: Boolean): Integer
    begin
    end;

    procedure ProcessCAMT54(ImportFilename: Text[1024]): Integer
    begin
    end;

    procedure ImportDirectories(SetupDir: Boolean; RecNo: Integer)
    begin
    end;

    procedure GetWorkFiles(Folder: Text[1024])
    begin
    end;
}