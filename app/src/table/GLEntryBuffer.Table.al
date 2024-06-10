table 5157886 "G/L Entry Buffer"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // TAX  01.11.08   Balance and Taxes
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'G/L Entry Buffer';
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
        field(3; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            CaptionClass = '1,1,1';
            DataClassification = SystemMetadata;
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(1));
        }
        field(4; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            CaptionClass = '1,1,2';
            DataClassification = SystemMetadata;
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(2));
        }
        field(5; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            DataClassification = SystemMetadata;
            TableRelation = Job;
        }
        field(6; "Dimension Entry No."; Integer)
        {
            Caption = 'Dimension Entry No.';
            DataClassification = SystemMetadata;
        }
        field(7; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            DataClassification = SystemMetadata;
            TableRelation = "Reason Code";
        }
        field(8; "Gen. Posting Type"; Option)
        {
            Caption = 'Gen. Posting Type';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Purchase,Sale,Settlement';
            OptionMembers = " ",Purchase,Sale,Settlement;
        }
        field(9; "Gen. Bus. Posting Group"; Code[20])
        {
            Caption = 'Gen. Bus. Posting Group';
            DataClassification = SystemMetadata;
            TableRelation = "Gen. Business Posting Group";
        }
        field(10; "Gen. Prod. Posting Group"; Code[20])
        {
            Caption = 'Gen. Prod. Posting Group';
            DataClassification = SystemMetadata;
            TableRelation = "Gen. Product Posting Group";
        }
        field(11; "VAT Bus. Posting Group"; Code[20])
        {
            Caption = 'VAT Bus. Posting Group';
            DataClassification = SystemMetadata;
            TableRelation = "VAT Business Posting Group";
        }
        field(12; "VAT Prod. Posting Group"; Code[20])
        {
            Caption = 'VAT Prod. Posting Group';
            DataClassification = SystemMetadata;
            TableRelation = "VAT Product Posting Group";
        }
        field(13; Company; Text[50])
        {
            Caption = 'Company';
            DataClassification = OrganizationIdentifiableInformation;
        }
        field(14; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
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
        field(17; "Beginning Balance"; Decimal)
        {
            Caption = 'Beginning Balance';
            DataClassification = SystemMetadata;
        }
        field(18; "VAT Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'VAT Amount';
            DataClassification = SystemMetadata;
        }
        field(19; "Date Range"; Text[30])
        {
            Caption = 'Date Range';
            DataClassification = SystemMetadata;
        }
        field(30; "Grouped by Posting Groups"; Boolean)
        {
            Caption = 'Grouped by Posting Groups';
            DataClassification = SystemMetadata;
        }
        field(31; "Grouped by VAT Posting Groups"; Boolean)
        {
            Caption = 'Grouped by VAT Posting Groups';
            DataClassification = SystemMetadata;
        }
        field(32; "Grouped by JobNo"; Boolean)
        {
            Caption = 'Grouped by Job No.';
            DataClassification = SystemMetadata;
        }
        field(33; "Grouped by Reason Code"; Boolean)
        {
            Caption = 'Grouped by Reason Code';
            DataClassification = SystemMetadata;
        }
        field(34; "Grouped by glob. Dim. Code 1"; Boolean)
        {
            Caption = 'Grouped by Global Dimension 1 Code';
            DataClassification = SystemMetadata;
        }
        field(35; "Grouped by glob. Dim. Code 2"; Boolean)
        {
            Caption = 'Grouped by Global Dimension 2 Code';
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(Key1; "G/L Account No.", "Gen. Posting Type", "Gen. Bus. Posting Group", "Gen. Prod. Posting Group", "VAT Bus. Posting Group", "VAT Prod. Posting Group", Company, "Global Dimension 1 Code", "Global Dimension 2 Code", "Dimension Entry No.", "Job No.", "Reason Code")
        {
            Clustered = true;
        }
    }
    procedure CreateMapping()
    begin
    end;
}