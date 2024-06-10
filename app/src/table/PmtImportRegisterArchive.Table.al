table 5157823 "Pmt. Import Register Archive"
{
    Caption = 'Pmt. Import Register Archive';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = SystemMetadata;
            NotBlank = true;
        }
        field(2; "Port Code"; Code[20])
        {
            Caption = 'File Format';
            DataClassification = SystemMetadata;
        }
        field(3; Filename; Text[250])
        {
            Caption = 'Filename';
            DataClassification = SystemMetadata;
        }
        field(4; "No. of Entries"; Integer)
        {
            CalcFormula = count("Pmt. Import Line Archive" where("Import Register No." = field("No.")));
            Caption = 'No. of Lines imported';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; Amount; Decimal)
        {
            CalcFormula = sum("Pmt. Import Line Archive".Amount where("Import Register No." = field("No.")));
            Caption = 'Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "Import Date"; Date)
        {
            Caption = 'Import Date';
            DataClassification = SystemMetadata;
        }
        field(7; "Import Time"; Time)
        {
            Caption = 'Import Time';
            DataClassification = SystemMetadata;
        }
        field(8; "User ID"; Code[50])
        {
            Caption = 'User ID';
            DataClassification = EndUserIdentifiableInformation;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(12; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            DataClassification = SystemMetadata;
            Editable = false;
            TableRelation = "No. Series";
        }
        field(15; "Import in Acc. No."; Code[20])
        {
            CalcFormula = lookup("Pmt. Import Line"."Import in Acc. No." where("Import Register No." = field("No.")));
            Caption = 'Import in Acc. No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(17; "Statement No."; Code[20])
        {
            CalcFormula = lookup("Pmt. Import Line"."Statement No." where("Import Register No." = field("No.")));
            Caption = 'Statement No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(21; "Statement Ending Balance"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Statement Ending Balance';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(22; "Statement Date"; Date)
        {
            Caption = 'Statement Date';
            DataClassification = SystemMetadata;
        }
        field(23; "Balance Last Statement"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Balance Last Statement';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(24; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            DataClassification = SystemMetadata;
            TableRelation = Currency;
        }
        field(25; Interim; Boolean)
        {
            Caption = 'Interim Transaction';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(26; "Data from Company"; Text[30])
        {
            Caption = 'Data from Company';
            DataClassification = OrganizationIdentifiableInformation;
            TableRelation = Company;
        }
        field(10000; "Actual Statement No."; Integer)
        {
            Caption = 'Statement No. in File';
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Import Date")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", "Import Date", "Import in Acc. No.", "Statement No.", "Statement Ending Balance")
        {
        }
    }
}