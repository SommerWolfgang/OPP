table 5157901 "Payment Proposal Template"
{
    Caption = 'Payment Proposal Template';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            DataClassification = SystemMetadata;
            OptionCaption = ',Customer,Vendor,G/L Account,Employee';
            OptionMembers = ,Customer,Vendor,"G/L Account",Employee;
        }
        field(2; Name; Code[8])
        {
            Caption = 'Name';
            DataClassification = SystemMetadata;
            NotBlank = true;
        }
        field(3; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = SystemMetadata;
        }
        field(5; "Account Filter 1"; Text[250])
        {
            Caption = 'Account Filter 1';
            DataClassification = SystemMetadata;
        }
        field(6; "Account Filter 2"; Text[250])
        {
            Caption = 'Account Filter 2';
            DataClassification = SystemMetadata;
        }
        field(7; "Account Filter 3"; Text[250])
        {
            Caption = 'Account Filter 3';
            DataClassification = SystemMetadata;
        }
        field(8; "Account Filter 4"; Text[250])
        {
            Caption = 'Account Filter 4';
            DataClassification = SystemMetadata;
        }
        field(9; "Ledger Entry Filter 1"; Text[250])
        {
            Caption = 'Ledger Entry Filter 1';
            DataClassification = SystemMetadata;
        }
        field(10; "Ledger Entry Filter 2"; Text[250])
        {
            Caption = 'Ledger Entry Filter 2';
            DataClassification = SystemMetadata;
        }
        field(11; "Include All"; Boolean)
        {
            Caption = 'Include All';
            DataClassification = SystemMetadata;
        }
        field(12; "Association Payment"; Boolean)
        {
            Caption = 'Association Payment';
            DataClassification = SystemMetadata;
        }
        field(13; "Cust. / Vend. Linking"; Boolean)
        {
            Caption = 'Cust. / Vend. Linking';
            DataClassification = SystemMetadata;
        }
        field(14; "Bal. Account Type"; Option)
        {
            Caption = 'Account Type';
            DataClassification = SystemMetadata;
            InitValue = "Bank Account";
            OptionCaption = 'G/L Account,,,Bank Account';
            OptionMembers = "G/L Account",,,"Bank Account";
        }
        field(15; "Bal. Account No."; Code[20])
        {
            Caption = 'Bank Account No.';
            DataClassification = SystemMetadata;
            TableRelation = if ("Bal. Account Type" = const("G/L Account")) "G/L Account"
            else
            if ("Bal. Account Type" = const("Bank Account")) "Bank Account";
        }
        field(16; "Use Payment Type Code"; Code[10])
        {
            Caption = 'Use Payment Type Code';
            DataClassification = SystemMetadata;
            TableRelation = "Payment Type Code";
        }
        field(17; "With Backlog"; Boolean)
        {
            Caption = 'With Backlog';
            DataClassification = SystemMetadata;
        }
        field(18; DiscountOption; Option)
        {
            Caption = 'DiscountOption';
            DataClassification = SystemMetadata;
            OptionCaption = 'Always Discount,As Entered,,,Always in Period,None';
            OptionMembers = "Always Discount","Entered Date","Next Date","Last Date","Always in Period","None";
        }
        field(22; "Summarize Per Pmt. Head"; Boolean)
        {
            Caption = 'Summarize per Pmt. Head';
            DataClassification = SystemMetadata;
        }
        field(23; "Only settled Accounts"; Boolean)
        {
            Caption = 'Only settled Accounts';
            DataClassification = SystemMetadata;
        }
        field(24; "Attend SEPA Due Date at DD"; Boolean)
        {
            Caption = 'Attend SEPA Due Date at Direct Debit';
            DataClassification = SystemMetadata;
        }
        field(25; "Line Sorting"; Option)
        {
            Caption = 'Line Sorting';
            DataClassification = SystemMetadata;
            OptionCaption = 'Due Date,Document Date,Document No.,External Document No.';
            OptionMembers = DueDate,DocDate,DocNo,ExtDocNo;
        }
        field(26; "Include on Hold"; Boolean)
        {
            Caption = 'Include on Hold';
            DataClassification = SystemMetadata;
        }
        field(27; "Pmt. Suggestion No. Series"; Code[20])
        {
            Caption = 'Pmt. Suggestion No. Series';
            DataClassification = SystemMetadata;
            TableRelation = "No. Series";
        }
        field(28; "Pmt. Interval Due Date"; DateFormula)
        {
            Caption = 'Pmt. Interval Due Date';
            DataClassification = SystemMetadata;
        }
        field(29; "Pmt. Interval Disc. Date"; DateFormula)
        {
            Caption = 'Pmt. Interval Disc. Date';
            DataClassification = SystemMetadata;
        }
        field(30; "Pmt. Interval Posting Date"; DateFormula)
        {
            Caption = 'Pmt. Interval Posting Date';
            DataClassification = SystemMetadata;
        }
        field(31; "Pmt. Interval Execution Date"; DateFormula)
        {
            Caption = 'Pmt. Interval Execution Date';
            DataClassification = SystemMetadata;
        }
        field(32; "Last Call"; DateTime)
        {
            Caption = 'Last Call';
            DataClassification = SystemMetadata;
        }
        field(33; "Last Error"; Text[250])
        {
            Caption = 'Last Error';
            DataClassification = SystemMetadata;
        }
        field(34; "Recurring Frequency"; DateFormula)
        {
            Caption = 'Recurring Frequency';
            DataClassification = SystemMetadata;
        }
        field(35; "Next Call"; Date)
        {
            Caption = 'Next Call';
            DataClassification = SystemMetadata;
        }
        field(36; "Recurring Method"; Option)
        {
            Caption = 'Recurring Method';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Date Formula,Target Calendar';
            OptionMembers = " ","Date Formula","Target Calendar";
        }
        field(37; "Email Notification User"; Code[50])
        {
            Caption = 'Email Notification User';
            DataClassification = EndUserIdentifiableInformation;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
    }

    keys
    {
        key(Key1; Type, Name)
        {
            Clustered = true;
        }
    }
}