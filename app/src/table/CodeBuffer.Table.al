table 5157999 "Code Buffer"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // OPP  24.11.17   OPplus general
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'Code Buffer';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = SystemMetadata;
        }
        field(11; Dec1; Decimal)
        {
            Caption = 'Dec1';
            DataClassification = SystemMetadata;
        }
        field(12; Dec2; Decimal)
        {
            Caption = 'Dec2';
            DataClassification = SystemMetadata;
        }
        field(13; Dec3; Decimal)
        {
            Caption = 'Dec3';
            DataClassification = SystemMetadata;
        }
        field(21; Bool1; Boolean)
        {
            Caption = 'Bool1';
            DataClassification = SystemMetadata;
        }
        field(22; Bool2; Boolean)
        {
            Caption = 'Bool2';
            DataClassification = SystemMetadata;
        }
        field(23; Bool3; Boolean)
        {
            Caption = 'Bool3';
            DataClassification = SystemMetadata;
        }
        field(31; Int1; Integer)
        {
            Caption = 'Int1';
            DataClassification = SystemMetadata;
        }
        field(32; Int2; Integer)
        {
            Caption = 'Int2';
            DataClassification = SystemMetadata;
        }
        field(33; Int3; Integer)
        {
            Caption = 'Int3';
            DataClassification = SystemMetadata;
        }
        field(41; Text1; Text[50])
        {
            Caption = 'Text1';
            DataClassification = SystemMetadata;
        }
        field(42; Text2; Text[50])
        {
            Caption = 'Text2';
            DataClassification = SystemMetadata;
        }
        field(43; Text3; Text[50])
        {
            Caption = 'Text3';
            DataClassification = SystemMetadata;
        }
        field(51; Code1; Code[20])
        {
            Caption = 'Code1';
            DataClassification = SystemMetadata;
        }
        field(52; Code2; Code[20])
        {
            Caption = 'Code2';
            DataClassification = SystemMetadata;
        }
        field(53; Code3; Code[20])
        {
            Caption = 'Code3';
            DataClassification = SystemMetadata;
        }
        field(61; Option1; Option)
        {
            Caption = 'Option1';
            DataClassification = SystemMetadata;
            OptionCaption = 'Opt0,Opt1,Opt2';
            OptionMembers = Opt0,Opt1,Opt2;
        }
        field(62; Option2; Option)
        {
            Caption = 'Option2';
            DataClassification = SystemMetadata;
            OptionCaption = 'Opt0,Opt1,Opt2';
            OptionMembers = Opt0,Opt1,Opt2;
        }
        field(63; Option3; Option)
        {
            Caption = 'Option3';
            DataClassification = SystemMetadata;
            OptionCaption = 'Opt0,Opt1,Opt2';
            OptionMembers = Opt0,Opt1,Opt2;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

