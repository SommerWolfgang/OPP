table 5157804 "Application Line Detail"
{
    Caption = 'Application detail line';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            DataClassification = SystemMetadata;
            NotBlank = true;
            TableRelation = "Gen. Journal Template";
        }
        field(2; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
            DataClassification = SystemMetadata;
            NotBlank = true;
            TableRelation = "Gen. Journal Batch".Name where("Journal Template Name" = field("Journal Template Name"));
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = SystemMetadata;
        }
        field(4; "ID Applied-Entry"; Integer)
        {
            Caption = 'ID Applied-Entry';
            DataClassification = SystemMetadata;
        }
        field(5; "Account Type"; Option)
        {
            Caption = 'Account Type';
            DataClassification = SystemMetadata;
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account,Fixed Asset,,Employee';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account","Fixed Asset",,Employee;
        }
        field(6; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            DataClassification = SystemMetadata;
            TableRelation = if ("Account Type" = const("G/L Account")) "G/L Account"
            else
            if ("Account Type" = const(Customer)) Customer
            else
            if ("Account Type" = const(Vendor)) Vendor
            else
            if ("Account Type" = const("Bank Account")) "Bank Account"
            else
            if ("Account Type" = const("Fixed Asset")) "Fixed Asset"
            else
            if ("Account Type" = const(Employee)) Employee;
        }
        field(7; "Applies-to Doc. Type"; Option)
        {
            Caption = 'Applies-to Doc. Type';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(8; "Applies-to Doc. No."; Code[50])
        {
            Caption = 'Applies-to Doc. No.';
            DataClassification = SystemMetadata;
        }
        field(9; Amount; Decimal)
        {
            Caption = 'Amount';
            DataClassification = SystemMetadata;
        }
        field(10; "Posting Payment Discount"; Decimal)
        {
            Caption = 'Posting Payment Discount';
            DataClassification = SystemMetadata;
        }
        field(11; "Posting Group"; Code[20])
        {
            Caption = 'Posting Group';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(12; "Source Type"; Option)
        {
            Caption = 'Source Type';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Customer,Vendor,Bank Account,Fixed Asset';
            OptionMembers = " ",Customer,Vendor,"Bank Account","Fixed Asset";
        }
        field(13; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            DataClassification = SystemMetadata;
            TableRelation = if ("Source Type" = const(Customer)) Customer
            else
            if ("Source Type" = const(Vendor)) Vendor
            else
            if ("Source Type" = const("Bank Account")) "Bank Account"
            else
            if ("Source Type" = const("Fixed Asset")) "Fixed Asset";
        }
        field(14; "Payment Text"; Text[50])
        {
            Caption = 'Payment Text';
            DataClassification = SystemMetadata;
        }
        field(15; "Pmt. Discount %"; Decimal)
        {
            Caption = 'Pmt. Discount %';
            DataClassification = SystemMetadata;
            DecimalPlaces = 0 : 5;
        }
        field(16; "Account Name"; Text[100])
        {
            Caption = 'Account Name';
            DataClassification = CustomerContent;
        }
        field(17; "External Document No."; Code[50])
        {
            Caption = 'External Document No.';
            DataClassification = SystemMetadata;
        }
        field(18; "Amount (LCY)"; Decimal)
        {
            Caption = 'Amount (LCY)';
            DataClassification = SystemMetadata;
            Description = 'PMT CC';
        }
        field(19; "Original Currency Factor"; Decimal)
        {
            Caption = 'Original Currency Factor';
            DataClassification = SystemMetadata;
            DecimalPlaces = 0 : 15;
            Description = 'PMT CC';
        }
        field(20; "Original Currency Code"; Code[10])
        {
            Caption = 'Orig. Currency Code';
            DataClassification = SystemMetadata;
            Description = 'PMT CC';
            TableRelation = Currency;
        }
        field(21; "Remaining Amount (LCY)"; Decimal)
        {
            Caption = 'Remaining Amount (LCY)';
            DataClassification = SystemMetadata;
            Description = 'PMT CC';
        }
    }

    keys
    {
        key(Key1; "Journal Template Name", "Journal Batch Name", "Line No.", "ID Applied-Entry")
        {
            Clustered = true;
            SumIndexFields = Amount, "Posting Payment Discount", "Amount (LCY)";
        }
        key(Key2; "ID Applied-Entry")
        {
        }
    }
}