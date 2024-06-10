table 5157883 "VAT G/L Entry Buffer"
{
    Caption = 'VAT G/L Entry Buffer';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "G/L Account No."; Code[20])
        {
            Caption = 'G/L Account No.';
            DataClassification = SystemMetadata;
        }
        field(2; Name; Text[50])
        {
            Caption = 'Description';
            DataClassification = SystemMetadata;
        }
        field(3; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
            DataClassification = SystemMetadata;
        }
        field(4; "VAT Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'VAT Amount';
            DataClassification = SystemMetadata;
        }
        field(5; "Reason Code-Filter"; Code[10])
        {
            Caption = 'Reason Code-Filter';
            DataClassification = SystemMetadata;
            TableRelation = "Reason Code";
        }
        field(6; "Gen. Posting Type"; Option)
        {
            Caption = 'Gen. Posting Type';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Purchase,Sale,Settlement';
            OptionMembers = " ",Purchase,Sale,Settlement;
        }
        field(7; "VAT Bus. Posting Group"; Code[20])
        {
            Caption = 'VAT Bus. Posting Group';
            DataClassification = SystemMetadata;
            TableRelation = "VAT Business Posting Group";
        }
        field(8; "VAT Prod. Posting Group"; Code[20])
        {
            Caption = 'VAT Prod. Posting Group';
            DataClassification = SystemMetadata;
            TableRelation = "VAT Product Posting Group";
        }
        field(9; "Date Range"; Text[30])
        {
            Caption = 'Date Range';
            DataClassification = SystemMetadata;
        }
        field(10; "Global Dimension 1 Filter"; Code[150])
        {
            Caption = 'Global Dimension 1 Filter';
            CaptionClass = '1,3,1';
            DataClassification = SystemMetadata;
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(1));
            ValidateTableRelation = false;
        }
        field(11; "Global Dimension 2 Filter"; Code[150])
        {
            Caption = 'Global Dimension 2 Filter';
            CaptionClass = '1,3,2';
            DataClassification = SystemMetadata;
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(2));
            ValidateTableRelation = false;
        }
        field(12; Company; Text[50])
        {
            Caption = 'Company';
            DataClassification = OrganizationIdentifiableInformation;
        }
        field(13; "Entry Type"; Option)
        {
            Caption = 'Entry Type';
            DataClassification = SystemMetadata;
            OptionCaption = 'G/L Entry,VAT Entry,Total VAT,VAT G/L Account';
            OptionMembers = "G/L Entry","VAT Entry","VAT Total","VAT G/L Account";
        }
        field(14; "Row. No. VAT Statement"; Code[10])
        {
            Caption = 'Row. No. VAT Statement';
            DataClassification = SystemMetadata;
        }
        field(15; "Debit Amount"; Decimal)
        {
            Caption = 'Debit Amount';
            DataClassification = SystemMetadata;
        }
        field(16; "Credit Amount"; Decimal)
        {
            Caption = 'Credit Amount';
            DataClassification = SystemMetadata;
        }
        field(17; "Reverse Charge VAT Amount"; Decimal)
        {
            Caption = 'Reverse Charge VAT Amount';
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(Key1; "Entry Type", "G/L Account No.", "Gen. Posting Type", "VAT Bus. Posting Group", "VAT Prod. Posting Group", Company)
        {
            Clustered = true;
        }
        key(Key2; "Entry Type", "Gen. Posting Type", "VAT Bus. Posting Group", "VAT Prod. Posting Group", Company, "G/L Account No.")
        {
        }
        key(Key3; "Entry Type", "Row. No. VAT Statement", "Gen. Posting Type", "VAT Bus. Posting Group", "VAT Prod. Posting Group", Company, "G/L Account No.")
        {
        }
        key(Key4; "Entry Type", "Row. No. VAT Statement", "G/L Account No.", "Gen. Posting Type", "VAT Bus. Posting Group", "VAT Prod. Posting Group", Company)
        {
        }
    }

    fieldgroups
    {
    }
}

