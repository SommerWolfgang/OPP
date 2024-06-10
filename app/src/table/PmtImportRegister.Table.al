table 5157808 "Pmt. Import Register"
{
    Caption = 'Pmt. Import Register';
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
            CalcFormula = count("Pmt. Import Line" where("Import Register No." = field("No.")));
            Caption = 'No. of Lines imported';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; Amount; Decimal)
        {
            CalcFormula = sum("Pmt. Import Line".Amount where("Import Register No." = field("No.")));
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
        field(9; "DTA-Format Type"; Code[2])
        {
            Caption = 'DTA-Format Type';
            DataClassification = SystemMetadata;
        }
        field(10; "DTA-Format Control BBNo."; Decimal)
        {
            Caption = 'DTA-Format Control BBNo.';
            DataClassification = SystemMetadata;
            DecimalPlaces = 0 : 0;
        }
        field(11; "DTA-Format Control Account"; Decimal)
        {
            Caption = 'DTA-Format Control Account';
            DataClassification = SystemMetadata;
            DecimalPlaces = 0 : 0;
        }
        field(12; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            DataClassification = SystemMetadata;
            Editable = false;
            TableRelation = "No. Series";
        }
        field(13; "No. of Entries Skipped"; Integer)
        {
            Caption = 'No. of Entries Skipped';
            DataClassification = SystemMetadata;
        }
        field(14; "Total No. of Entries"; Integer)
        {
            Caption = 'Total No. of Entries';
            DataClassification = SystemMetadata;
        }
        field(15; "Import in Acc. No."; Code[20])
        {
            CalcFormula = lookup("Pmt. Import Line"."Import in Acc. No." where("Import Register No." = field("No.")));
            Caption = 'Import in Acc. No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; "No. of posted Entries"; Integer)
        {
            CalcFormula = count("Pmt. Import Line" where("Import Register No." = field("No."),
                                                          Posted = const(true)));
            Caption = 'No. of posted lines';
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
        field(18; "Pmt. Import Interface"; Code[20])
        {
            Caption = 'Pmt. Import Interface';
            DataClassification = SystemMetadata;
            Editable = false;
            TableRelation = "Pmt. Import Interface";
        }
        field(19; "In Progress"; Boolean)
        {
            Caption = 'In Progress';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(20; "No. of not posted Entries"; Integer)
        {
            CalcFormula = count("Pmt. Import Line" where("Import Register No." = field("No."),
                                                          Posted = const(false)));
            Caption = 'No. of not posted Lines';
            Editable = false;
            FieldClass = FlowField;
        }
        field(21; "Statement Ending Balance"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
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
            AutoFormatExpression = "Currency Code";
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
        field(27; "Original Register No."; Code[20])
        {
            Caption = 'Original Register No.';
            DataClassification = SystemMetadata;
            Editable = false;
            TableRelation = "Pmt. Import Register";
        }
        field(10000; "Actual Statement No."; Integer)
        {
            Caption = 'Statement No. in File';
            DataClassification = SystemMetadata;
            Description = 'OPP6.00: MT940 new';
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
        key(Key3; "In Progress")
        {
        }
        key(Key4; "Pmt. Import Interface")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", "Pmt. Import Interface", "Import Date", "Import in Acc. No.", "Statement No.", "No. of not posted Entries", "Statement Ending Balance")
        {
        }
    }
}