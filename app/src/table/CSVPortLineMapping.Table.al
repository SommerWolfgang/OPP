table 5157818 "CSV Port Line Mapping"
{
    Caption = 'CSV Port Line Mapping';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "CSV Port Code"; Code[20])
        {
            Caption = 'CSV Port Code';
            NotBlank = true;
        }
        field(2; "CSV Port Line No."; Integer)
        {
            Caption = 'CSV-Port Line No.';
            NotBlank = true;
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; "Old Value"; Text[50])
        {
            Caption = 'Old Value';
            DataClassification = SystemMetadata;
        }
        field(5; "New Value"; Text[50])
        {
            Caption = 'New Value';
            DataClassification = SystemMetadata;
        }
        field(6; Fieldlinking; Boolean)
        {
            Caption = 'Used for Fieldlink';
            DataClassification = SystemMetadata;
        }
        field(7; NewOldValue; Option)
        {
            Caption = 'New or Old Value';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,old Value,new Value';
            OptionMembers = " ",Old,New;
        }
        field(8; Condition; Option)
        {
            Caption = 'Condition';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,=,<,>,<>';
            OptionMembers = " ","=","<",">","<>";
        }
        field(9; Value1; Text[250])
        {
            Caption = 'Value 1';
            DataClassification = SystemMetadata;
        }
        field(10; ThenRow; Integer)
        {
            Caption = 'Then Row';
            DataClassification = SystemMetadata;
        }
        field(11; Value2; Text[250])
        {
            Caption = 'Value 2';
            DataClassification = SystemMetadata;
        }
        field(12; ValueFromColumn; Integer)
        {
            Caption = 'Value from Row';
            DataClassification = SystemMetadata;
        }
        field(13; StoreOldNewValue; Option)
        {
            Caption = 'Value to write';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,original Value,mapped Value';
            OptionMembers = " ",Old,New;
        }
    }

    keys
    {
        key(Key1; "CSV Port Code", "CSV Port Line No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "CSV Port Code", "CSV Port Line No.", "Old Value")
        {
        }
    }
}