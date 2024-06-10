table 5157822 "SEPA Follow Up"
{
    Caption = 'SEPA Follow Up';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(2; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(3; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            ClosingDates = true;
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(4; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(5; "Pmt. Import Entry No."; Integer)
        {
            Caption = 'Pmt. Import Entry No.';
            DataClassification = SystemMetadata;
            Editable = false;
            TableRelation = "Pmt. Import Line";
        }
        field(6; "Mandate ID"; Code[54])
        {
            Caption = 'Mandate ID';
            DataClassification = CustomerContent;
            Editable = false;
            TableRelation = "Bank Account Mandate";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(7; "Sepa Error Code"; Code[10])
        {
            Caption = 'Sepa Error Code';
            DataClassification = SystemMetadata;
            Editable = false;
            TableRelation = "SEPA Error Code";
        }
        field(8; Description; Text[80])
        {
            CalcFormula = lookup("SEPA Error Code".Description where(Code = field("Sepa Error Code")));
            Caption = 'Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "Done By"; Code[50])
        {
            Caption = 'Done By';
            DataClassification = EndUserIdentifiableInformation;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;

            trigger OnLookup()
            var
                UserMgt: Codeunit "User Management";
            begin
                UserMgt.LookupUserID("Done By");
                if "Done By" <> '' then
                    "Done At" := CurrentDateTime
            end;
        }
        field(10; "Done At"; DateTime)
        {
            Caption = 'Done at';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(11; Note; Text[80])
        {
            Caption = 'Note';
            DataClassification = SystemMetadata;
        }
        field(12; "Account Type"; Option)
        {
            Caption = 'Account Type';
            DataClassification = SystemMetadata;
            Editable = false;
            NotBlank = true;
            OptionCaption = 'Customer,Vendor';
            OptionMembers = Customer,Vendor;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
    }
}