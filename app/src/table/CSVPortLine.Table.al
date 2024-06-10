table 5157806 "CSV Port Line"
{
    Caption = 'CSV Port Line';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            DataClassification = SystemMetadata;
            NotBlank = true;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = SystemMetadata;
            NotBlank = true;
        }
        field(3; "Table No."; Integer)
        {
            Caption = 'Table No.';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(4; "Field No."; Integer)
        {
            Caption = 'Field No.';
            DataClassification = SystemMetadata;
        }
        field(5; "Processing Only"; Boolean)
        {
            Caption = 'Process only';
            DataClassification = SystemMetadata;
        }
        field(6; Position; Integer)
        {
            Caption = 'Column';
            DataClassification = SystemMetadata;
        }
        field(7; "Field Name"; Text[30])
        {
            Caption = 'Field Name';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(10; Amounts; Option)
        {
            Caption = 'Amounts';
            DataClassification = SystemMetadata;
            InitValue = Default;
            OptionCaption = 'As Saved,Absolute,Change Sign,<Default>';
            OptionMembers = AsSaved,Absolute,Invert,Default;
        }
        field(12; "Text before"; Text[30])
        {
            Caption = 'Prefix';
            DataClassification = SystemMetadata;
        }
        field(13; "Text after"; Text[30])
        {
            Caption = 'Suffix';
            DataClassification = SystemMetadata;
        }
        field(14; "Inc/Dec"; Integer)
        {
            Caption = 'increase/decrease';
            DataClassification = SystemMetadata;
        }
        field(15; Factor; Decimal)
        {
            Caption = 'Factor';
            DataClassification = SystemMetadata;
        }
        field(16; "Column Description"; Text[30])
        {
            Caption = 'Description';
            DataClassification = SystemMetadata;
        }
        field(17; "Space before Field"; Boolean)
        {
            Caption = 'Space before Field';
            DataClassification = SystemMetadata;
        }
        field(18; "Space after Field"; Boolean)
        {
            Caption = 'Space after Field';
            DataClassification = SystemMetadata;
        }
        field(20; Colwidth; Integer)
        {
            Caption = 'Column Width';
            DataClassification = SystemMetadata;
            MinValue = 0;
        }
        field(21; Padding; Option)
        {
            Caption = 'Padding';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Left,Right';
            OptionMembers = " ",Left,Right;
        }
        field(22; PadChar; Text[1])
        {
            Caption = 'Padding Char.';
            DataClassification = SystemMetadata;
        }
        field(23; LeftDrop; Integer)
        {
            Caption = 'Drop Left';
            DataClassification = SystemMetadata;
        }
        field(24; RightDrop; Integer)
        {
            Caption = 'Drop Right';
            DataClassification = SystemMetadata;
        }
        field(34; FieldClass; Text[30])
        {
            Caption = 'Field Class';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(35; FieldType; Text[30])
        {
            Caption = 'FieldType';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(43; TextCase; Option)
        {
            Caption = 'Case of Text Fields';
            DataClassification = SystemMetadata;
            InitValue = Default;
            OptionCaption = 'As Saved,Lowercase,Uppercase,<Default>';
            OptionMembers = AsSaved,Lower,Upper,Default;
        }
        field(50; Formatstring; Text[30])
        {
            Caption = 'Format String / Fixed Text';
            DataClassification = SystemMetadata;
        }
        field(51; Exportfilter; Text[250])
        {
            Caption = 'Exportfilter';
            DataClassification = SystemMetadata;
            Description = 'Exportfilter';
        }
        field(55; ContentLength; Integer)
        {
            Caption = 'Fieldlength';
            DataClassification = SystemMetadata;
        }
        field(56; StartPos; Integer)
        {
            Caption = 'From Column';
            DataClassification = SystemMetadata;
            MinValue = 0;
        }
        field(57; EndPos; Integer)
        {
            Caption = 'To Column';
            DataClassification = SystemMetadata;
            MinValue = 0;
        }
        field(58; SkipTrigger; Boolean)
        {
            Caption = 'Don´t Validate';
            DataClassification = SystemMetadata;
        }
        field(59; CustomProcID; Integer)
        {
            Caption = 'Custom. Proc. ID';
            DataClassification = SystemMetadata;
            Description = 'Future use / Customization';
        }
        field(60; "Auto Increment"; Boolean)
        {
            Caption = 'Auto Increment';
            DataClassification = SystemMetadata;
        }
        field(61; "Increment Value"; Integer)
        {
            Caption = 'Increment Value';
            DataClassification = SystemMetadata;
        }
        field(62; Fieldlinking; Boolean)
        {
            Caption = 'Used for Fieldlink';
            DataClassification = SystemMetadata;
        }
        field(63; Importfilter; Text[250])
        {
            Caption = 'Import Filter';
            DataClassification = SystemMetadata;
        }
        field(64; "Formula included"; Boolean)
        {
            Caption = 'Formula included';
            DataClassification = SystemMetadata;
        }
        field(65; ValidatePosition; Integer)
        {
            Caption = 'Validate on Position';
            DataClassification = SystemMetadata;
        }
        field(66; "Ext. Mapping"; Boolean)
        {
            Caption = 'Ext. Mapping';
            DataClassification = SystemMetadata;
        }
        field(68; "No. Series"; Code[20])
        {
            Caption = 'Use No. Series';
            DataClassification = SystemMetadata;
        }
        field(69; NoDeletingSpacesBeforeAndAfter; Boolean)
        {
            Caption = 'Do not delete spaces before and after value';
            DataClassification = SystemMetadata;
        }
        field(70; "Content Length Left Right"; Option)
        {
            Caption = 'Keep Contentlegnth from';
            DataClassification = SystemMetadata;
            OptionCaption = 'Left,Right';
            OptionMembers = Left,Right;
        }
    }

    keys
    {
        key(Key1; "Code", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Code", "Table No.", Position)
        {
        }
        key(Key3; "Code", ValidatePosition)
        {
        }
    }
    procedure ShowMapping()
    begin
    end;
}