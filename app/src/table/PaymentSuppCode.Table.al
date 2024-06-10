table 5157902 "Payment Supp. Code"
{
    Caption = 'Payment Supp. Code';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            DataClassification = SystemMetadata;
            OptionCaption = 'Federal State,Pmt. Instruction';
            OptionMembers = Bundesland,Instruction;
        }
        field(2; "Code"; Code[10])
        {
            Caption = 'Code';
            DataClassification = SystemMetadata;
        }
        field(3; Description; Text[80])
        {
            Caption = 'Description';
            DataClassification = SystemMetadata;
        }
        field(4; "Code 2"; Code[20])
        {
            Caption = 'Code 2';
            DataClassification = SystemMetadata;
            TableRelation = "Country/Region";
        }
        field(5; Marked; Boolean)
        {
            Caption = 'Marked';
            DataClassification = SystemMetadata;
        }
        field(6; "Payment Type Code"; Code[10])
        {
            Caption = 'Payment Type Code';
            DataClassification = SystemMetadata;
            TableRelation = "Payment Type Code" where(Inactive = const(false));
        }
    }

    keys
    {
        key(Key1; Type, "Code", "Payment Type Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

