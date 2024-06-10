table 5157829 "Acc. Rule Field Values Setup"
{
    Caption = 'Accounting Rule Field Values Setup';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'No.';
        }
        field(2; "Field No."; Integer)
        {
            Caption = 'Field No.';
        }
        field(3; "Field Name"; Text[30])
        {
            Caption = 'Field Name';
            Editable = false;
        }
        field(4; "Field Caption"; Text[50])
        {
            Caption = 'Field Caption';
            Editable = false;
        }
        field(5; "Field Type"; Text[30])
        {
            Caption = 'FieldType';
            Editable = false;
        }
        field(6; "Field Value"; Text[250])
        {
            Caption = 'Field Value';
        }
        field(7; Catchword; Code[50])
        {
            CalcFormula = lookup("Accounting Rule".Catchword where("No." = field("No."), "Field No." = filter(0)));
            Caption = 'Catchword';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8; "Field Class"; Text[30])
        {
            Caption = 'Field Class';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "No.", "Field No.")
        {
            Clustered = true;
        }
    }
}