table 5157960 "AT Payment Setup"
{
    Caption = 'AT Payment Setup';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = SystemMetadata;
        }
        field(2; "EDI Directory"; Text[120])
        {
            Caption = 'Output Directory EDI';
            DataClassification = SystemMetadata;
        }
        field(3; "EDI Filename"; Text[30])
        {
            Caption = 'Filename EDI';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(4; "EDI Extension"; Text[4])
        {
            Caption = 'File Extension EDI';
            DataClassification = SystemMetadata;
        }
        field(5; "Currency Code"; Code[3])
        {
            Caption = 'Currency Code';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(6; "Country Code"; Code[3])
        {
            Caption = 'Country Code';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(10; "Update Version"; Code[10])
        {
            Caption = 'Update Version';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(20; "URL Homepage OENB"; Text[250])
        {
            Caption = 'URL Homepage OENB';
            DataClassification = SystemMetadata;
        }
        field(21; "URL BLZ-Download"; Text[250])
        {
            Caption = 'URL BLZ-Download';
            DataClassification = SystemMetadata;
        }
        field(40; "Split Payment From"; Decimal)
        {
            Caption = 'Split Pmt. From';
            DataClassification = SystemMetadata;
            Description = '5.08';
            MinValue = 0;
        }
        field(41; "Split Payment To"; Decimal)
        {
            Caption = 'Split Pmt. To';
            DataClassification = SystemMetadata;
            Description = '5.08';
            MinValue = 0;
        }
        field(100; "New Line per Segment"; Boolean)
        {
            Caption = 'New Line per Segment';
            DataClassification = SystemMetadata;
        }
        field(110; Capitalize; Boolean)
        {
            Caption = 'Capitalize Text';
            DataClassification = SystemMetadata;
        }
        field(111; "EDI-TRF-DocType"; Option)
        {
            Caption = 'EDI Doc. Type TRF';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,:43:EBA:137';
            OptionMembers = " ",":43:EBA:137";
        }
        field(112; "Force Vendor Reference"; Boolean)
        {
            Caption = 'EDI: Force Vendor Reference';
            DataClassification = SystemMetadata;
        }
        field(113; "Message ID Digits Only"; Boolean)
        {
            Caption = 'Message ID Digits Only';
            DataClassification = SystemMetadata;
        }
        field(114; "EDI no IBAN"; Boolean)
        {
            Caption = 'EDI: no IBAN';
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }
    procedure GetVersion()
    begin
    end;

    procedure SetupAT()
    begin
    end;

    procedure GetAT_Dom(): Code[10]
    begin
    end;


    procedure GetAT_DIRDEB(): Code[10]
    begin
    end;


    procedure GetAT_ABBUCH(): Code[10]
    begin
    end;

    procedure GetAT_Int(): Code[10]
    begin
    end;

    procedure Demand4Update()
    begin
    end;

    procedure SetSilent()
    begin
    end;

    procedure IsATPmtType(PmtTypeCode: Code[10]): Boolean
    begin
    end;

    procedure IsATNationalPmtType(PmtTypeCode: Code[10]): Boolean
    begin
    end;
}