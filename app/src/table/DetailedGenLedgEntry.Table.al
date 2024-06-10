table 5157852 "Detailed Gen. Ledg. Entry"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // GLOE 01.11.08   Gen. Ledger Open Entries
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'Detailed Gen. Ledg. Entry';
    DataCaptionFields = "G/L Account No.";
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = SystemMetadata;
        }
        field(2; "Gen. Ledger Entry No."; Integer)
        {
            Caption = 'Gen. Ledger Entry No.';
            DataClassification = SystemMetadata;
            TableRelation = "G/L Entry";
        }
        field(3; "Entry Type"; Option)
        {
            Caption = 'Entry Type';
            DataClassification = SystemMetadata;
            OptionCaption = ',Initial Entry,Application';
            OptionMembers = ,"Initial Entry",Application;
        }
        field(4; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = SystemMetadata;
        }
        field(5; "Document Type"; Option)
        {
            Caption = 'Document Type';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(6; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = SystemMetadata;
        }
        field(7; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
            DataClassification = SystemMetadata;
        }
        field(9; "G/L Account No."; Code[20])
        {
            Caption = 'G/L Account No.';
            DataClassification = SystemMetadata;
            TableRelation = "G/L Account";
        }
        field(11; "User ID"; Code[50])
        {
            Caption = 'User ID';
            DataClassification = EndUserIdentifiableInformation;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(12; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            DataClassification = SystemMetadata;
            TableRelation = "Source Code";
        }
        field(13; "Transaction No."; Integer)
        {
            Caption = 'Transaction No.';
            DataClassification = SystemMetadata;
        }
        field(14; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
            DataClassification = SystemMetadata;
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(15; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            DataClassification = SystemMetadata;
            TableRelation = "Reason Code";
        }
        field(16; "Debit Amount"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Debit Amount';
            DataClassification = SystemMetadata;
        }
        field(17; "Credit Amount"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Credit Amount';
            DataClassification = SystemMetadata;
        }
        field(21; "Initial Entry Global Dim. 1"; Code[20])
        {
            Caption = 'Initial Entry Global Dim. 1';
            DataClassification = SystemMetadata;
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(1));
        }
        field(22; "Initial Entry Global Dim. 2"; Code[20])
        {
            Caption = 'Initial Entry Global Dim. 2';
            DataClassification = SystemMetadata;
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(2));
        }
        field(35; "Initial Document Type"; Option)
        {
            Caption = 'Initial Document Type';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(36; "Applied Ledger Entry No."; Integer)
        {
            Caption = 'Applied Ledger Entry No.';
            DataClassification = SystemMetadata;
        }
        field(37; Unapplied; Boolean)
        {
            Caption = 'Unapplied';
            DataClassification = SystemMetadata;
        }
        field(38; "Unapplied by Entry No."; Integer)
        {
            Caption = 'Unapplied by Entry No.';
            DataClassification = SystemMetadata;
            TableRelation = "Detailed Gen. Ledg. Entry";
        }
        field(42; "Application No."; Integer)
        {
            Caption = 'Application No.';
            DataClassification = SystemMetadata;
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Gen. Ledger Entry No.", "Posting Date")
        {
        }
        key(Key3; "Gen. Ledger Entry No.", "Entry Type", "Posting Date")
        {
            MaintainSIFTIndex = false;
            MaintainSQLIndex = false;
            SumIndexFields = Amount, "Debit Amount", "Credit Amount";
        }
        key(Key4; "G/L Account No.", "Posting Date", "Entry Type")
        {
            SumIndexFields = Amount, "Debit Amount", "Credit Amount";
        }
        key(Key5; "G/L Account No.", "Initial Document Type", "Document Type")
        {
            SumIndexFields = Amount;
        }
        key(Key6; "Document No.", "Document Type", "Posting Date")
        {
        }
        key(Key7; "Applied Ledger Entry No.", "Entry Type")
        {
        }
        key(Key8; "Transaction No.", "G/L Account No.", "Entry Type")
        {
        }
        key(Key9; "Application No.", "G/L Account No.", "Entry Type")
        {
        }
    }

    fieldgroups
    {
    }
}

