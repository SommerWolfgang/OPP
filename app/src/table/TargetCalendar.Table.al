table 5157916 "Target Calendar"
{
    Caption = 'TARGET Calendar';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; Date; Date)
        {
            Caption = 'Date';
            DataClassification = SystemMetadata;
        }
        field(2; Day; Text[31])
        {
            CalcFormula = lookup(Date."Period Name" where("Period Type" = const(Date),
                                                           "Period Start" = field(Date)));
            Caption = 'Day';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = SystemMetadata;
        }
        field(4; "Period No."; Integer)
        {
            CalcFormula = lookup(Date."Period No." where("Period Type" = const(Date),
                                                          "Period Start" = field(Date)));
            Caption = 'Period No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; "Date Type"; Option)
        {
            Caption = 'Date Type';
            DataClassification = SystemMetadata;
            OptionCaption = ',Target Date,DD Date,Credit Transfer Date';
            OptionMembers = ,"Target Date","DD Date","CT Date";
        }
        field(6; "DD / SCT Accomplished"; Boolean)
        {
            Caption = 'Direct Debit / Credit Transfer Accomplished';
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(Key1; Date, "Date Type")
        {
            Clustered = true;
        }
    }
}