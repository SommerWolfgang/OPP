table 5157805 "CSV Port"
{
    Caption = 'CSV Port';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            DataClassification = SystemMetadata;
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = SystemMetadata;
        }
        field(3; Direction; Option)
        {
            Caption = 'Direction';
            DataClassification = SystemMetadata;
            OptionCaption = 'Import,Export';
            OptionMembers = Import,Export;
        }
        field(4; Encoding; Option)
        {
            Caption = 'Text Format external File';
            DataClassification = SystemMetadata;
            OptionCaption = 'Navision,Windows';
            OptionMembers = ASCII,ANSI;
        }
        field(5; "Format Date"; Text[40])
        {
            Caption = 'Date Format';
            DataClassification = SystemMetadata;
        }
        field(6; "Format Decimals"; Text[40])
        {
            Caption = 'Decimals Format';
            DataClassification = SystemMetadata;
        }
        field(7; "File Name"; Text[250])
        {
            Caption = 'Filename';
            DataClassification = SystemMetadata;
        }
        field(9; Separator; Text[10])
        {
            Caption = 'Separator';
            DataClassification = SystemMetadata;
            InitValue = ';';
        }
        field(10; "Table No."; Integer)
        {
            Caption = 'Table';
            DataClassification = SystemMetadata;
        }
        field(11; "Table Caption"; Text[50])
        {
            Caption = 'Table Caption';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(12; BoolFormat; Option)
        {
            Caption = 'Format Bool. Fields';
            DataClassification = SystemMetadata;
            OptionCaption = 'Ja/Nein,Yes/No,Wahr/Falsch,True/False,0/1';
            OptionMembers = "Ja/Nein","Yes/No","Wahr/Falsch","True/False","0/1";
        }
        field(13; Amounts; Option)
        {
            Caption = 'Amounts';
            DataClassification = SystemMetadata;
            OptionCaption = 'As Saved,Absolute,Change Sign';
            OptionMembers = AsSaved,Absolute,Invert;
        }
        field(14; OnFoundSkip; Boolean)
        {
            Caption = 'Skip Existing Records';
            DataClassification = SystemMetadata;
            Description = 'csv2.0';
        }
        field(15; LineLen; Integer)
        {
            Caption = 'Length of Line';
            DataClassification = SystemMetadata;
            Description = 'csv2.0';
            MaxValue = 1024;
            MinValue = 0;
        }
        field(18; Delimiter; Option)
        {
            Caption = 'Delimiter';
            DataClassification = SystemMetadata;
            OptionCaption = '<none>," (double),'' (single)';
            OptionMembers = "none",double,single;
        }
        field(19; ExportFieldNames; Boolean)
        {
            Caption = 'Export Field Names';
            DataClassification = SystemMetadata;
        }
        field(20; Zero2Text; Boolean)
        {
            Caption = 'Zero as Empty String';
            DataClassification = SystemMetadata;
        }
        field(21; "Trigger"; Boolean)
        {
            Caption = 'Execute OnModify/OnInsertTriggers';
            DataClassification = SystemMetadata;
            InitValue = true;
        }
        field(24; SkipLines; Integer)
        {
            Caption = 'Skip Lines';
            DataClassification = SystemMetadata;
        }
        field(25; BoolCase; Option)
        {
            Caption = 'Bool. Fields Case';
            DataClassification = SystemMetadata;
            OptionCaption = 'lower,upper,mixed';
            OptionMembers = Lower,Upper,Mixed;
        }
        field(26; TextCase; Option)
        {
            Caption = 'Case of Text Fields';
            DataClassification = SystemMetadata;
            OptionCaption = 'as saved,lowercase,uppercase';
            OptionMembers = "as saved",lower,upper;
        }
        field(49; KeyString; Text[250])
        {
            Caption = 'Sort By Key';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(50; KeyIndex; Integer)
        {
            Caption = 'KeyIndex';
            DataClassification = SystemMetadata;
        }
        field(51; "Asc./Desc."; Option)
        {
            Caption = 'Asc./Desc.';
            DataClassification = SystemMetadata;
            OptionCaption = 'ascending,descending';
            OptionMembers = asc,desc;
        }
        field(54; Logfile; Boolean)
        {
            Caption = 'Update Logfile';
            DataClassification = SystemMetadata;
        }
        field(60; DropLines; Integer)
        {
            Caption = 'Drop Lines';
            DataClassification = SystemMetadata;
        }
        field(61; "Delete LF without CR in File"; Boolean)
        {
            Caption = 'Delete <LF> without <CR> in File';
            DataClassification = SystemMetadata;
        }
        field(62; "Delete CRLF within Delimiter"; Boolean)
        {
            Caption = 'Delete <CR><LF> within Delimiter in File';
            DataClassification = SystemMetadata;
        }
        field(138; BankImport; Boolean)
        {
            Caption = 'BankImport';
            DataClassification = SystemMetadata;
        }
        field(139; Avis; Boolean)
        {
            Caption = 'Remittance Advice';
            DataClassification = SystemMetadata;
        }
        field(140; "Delete Import File"; Option)
        {
            Caption = 'Delete Import File';
            DataClassification = SystemMetadata;
            OptionCaption = 'Ask,Yes,No,Backup';
            OptionMembers = Ask,Yes,No,Backup;
        }
        field(141; DecimalSep; Text[1])
        {
            Caption = 'Decimal Separator';
            DataClassification = SystemMetadata;
            InitValue = ',';
        }
        field(142; ThousandSep; Text[1])
        {
            Caption = 'Thousands Separator';
            DataClassification = SystemMetadata;
            InitValue = '.';
        }
        field(143; FixCol; Boolean)
        {
            Caption = 'Fixed Col. Pos.';
            DataClassification = SystemMetadata;
            Description = 'FixCol';
        }
        field(144; XML; Boolean)
        {
            Caption = 'XML';
            DataClassification = SystemMetadata;
            Description = 'csv2.0';
        }
        field(145; LogLastOnly; Boolean)
        {
            Caption = 'Log the last import/export only.';
            DataClassification = SystemMetadata;
            Description = 'csv2.0';
        }
        field(146; FilterStr; Text[30])
        {
            Caption = 'Filterstring';
            DataClassification = SystemMetadata;
        }
        field(147; "Filter As Exclude"; Boolean)
        {
            Caption = 'Use Filter to exclude';
            DataClassification = SystemMetadata;
        }
        field(148; "OnValidate-Trigger"; Boolean)
        {
            Caption = 'Execute OnValidate-Triggers';
            DataClassification = SystemMetadata;
        }
        field(149; "Handle Existing Recs"; Option)
        {
            Caption = 'Existing Records';
            DataClassification = SystemMetadata;
            OptionCaption = 'Skip,Overwrite,Complete';
            OptionMembers = Skip,Ovwerwrite,Complete;
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }
}