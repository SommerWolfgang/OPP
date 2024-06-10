table 5157897 "Payment Proposal Line"
{
    Caption = 'Payment Proposal Line';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            DataClassification = SystemMetadata;
            NotBlank = true;
        }
        field(2; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
            DataClassification = SystemMetadata;
            NotBlank = true;
        }
        field(3; "Journal Line No."; Integer)
        {
            Caption = 'Journal Line No.';
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
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account,,,Employee';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account",,,Employee;
        }
        field(6; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            DataClassification = SystemMetadata;
            NotBlank = true;
        }
        field(7; "Applies-to Doc. Type"; Option)
        {
            Caption = 'Applies-to Doc. Type';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(8; "Applies-to Doc. No."; Code[20])
        {
            Caption = 'Applies-to Doc. No.';
            DataClassification = SystemMetadata;
        }
        field(9; "Original Remaining Amount"; Decimal)
        {
            Caption = 'Original Remaining Amount';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(10; "Posting Payment Discount"; Decimal)
        {
            Caption = 'Posting Payment Discount';
            DataClassification = SystemMetadata;
            Editable = true;
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
            DataClassification = CustomerContent;
        }
        field(14; "Payment Text"; Text[50])
        {
            Caption = 'Payment Text';
            DataClassification = SystemMetadata;
        }
        field(15; "Original Pmt. Discount %"; Decimal)
        {
            Caption = 'Original Pmt. Discount %';
            DataClassification = SystemMetadata;
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(16; "Payment Discount Allowed"; Boolean)
        {
            Caption = 'Payment Discount Allowed';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(17; "Appln. Remaining Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Appln. Remaining Amount';
            DataClassification = SystemMetadata;
        }
        field(21; "Original Amount"; Decimal)
        {
            Caption = 'Original Amount';
            DataClassification = SystemMetadata;
        }
        field(22; "Posting Applied Amount"; Decimal)
        {
            Caption = 'Posting Applied Amount';
            DataClassification = SystemMetadata;
            Editable = true;

        }
        field(23; "Payment Description"; Text[50])
        {
            Caption = 'Payment Description';
            DataClassification = SystemMetadata;
        }
        field(24; "Due Date"; Date)
        {
            Caption = 'Due Date';
            DataClassification = SystemMetadata;
        }
        field(25; "Discount Date"; Date)
        {
            Caption = 'Discount Date';
            DataClassification = SystemMetadata;
        }
        field(26; "Orig. Posting Date"; Date)
        {
            Caption = 'Orig. Posting Date';
            DataClassification = SystemMetadata;
        }
        field(27; "Document Date"; Date)
        {
            Caption = 'Document Date';
            DataClassification = SystemMetadata;
        }
        field(28; "External Document No."; Code[35])
        {
            Caption = 'External Document No.';
            DataClassification = SystemMetadata;
        }
        field(29; "Payment Discount Possible"; Decimal)
        {
            Caption = 'Payment Discount Possible';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(30; "Pmt. Account Type"; Option)
        {
            Caption = 'Pmt. Account Type';
            DataClassification = SystemMetadata;
            OptionCaption = 'G/L Account,Customer,Vendor';
            OptionMembers = "G/L Account",Customer,Vendor;
        }
        field(31; "Pmt. Account No."; Code[20])
        {
            Caption = 'Pmt. Account No.';
            DataClassification = SystemMetadata;
        }
        field(32; "Payment Type Code"; Code[10])
        {
            Caption = 'Payment Type Code';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(33; "Orig. Payment Method"; Code[10])
        {
            Caption = 'Orig. Payment Method';
            DataClassification = AccountData;
            Editable = false;
            TableRelation = "Payment Method";
        }
        field(34; Counter; Decimal)
        {
            Caption = 'Counter';
            DataClassification = SystemMetadata;
            Editable = false;
            InitValue = 1;
        }
        field(35; "On Hold"; Code[3])
        {
            Caption = 'On Hold';
            DataClassification = SystemMetadata;
        }
        field(36; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            CaptionClass = '1,2,1';
            DataClassification = SystemMetadata;
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(1));
        }
        field(37; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            CaptionClass = '1,2,2';
            DataClassification = SystemMetadata;
        }
        field(38; "Sell-to/Buy-from No."; Code[20])
        {
            Caption = 'Sell-to/Buy-from No.';
            DataClassification = SystemMetadata;
        }
        field(39; "Orig. Currency Code"; Code[10])
        {
            Caption = 'Orig. Currency Code';
            DataClassification = SystemMetadata;
            Editable = false;
            TableRelation = Currency;
        }
        field(40; "Payment Discount %"; Decimal)
        {
            Caption = 'Payment Discount %';
            DataClassification = SystemMetadata;
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(41; Color; Integer)
        {
            Caption = 'Color';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(42; "Pmt. Disc. % Original"; Decimal)
        {
            Caption = 'Pmt. Disc. % Original';
            DataClassification = SystemMetadata;
            DecimalPlaces = 0 : 5;
        }
        field(43; "Reminder Level"; Integer)
        {
            CalcFormula = max("Reminder/Fin. Charge Entry"."Reminder Level" where("Customer Entry No." = field("ID Applied-Entry"),
                                                                                   Type = const(Reminder)));
            Caption = 'Reminder Level';
            Editable = false;
            FieldClass = FlowField;
        }
        field(44; "Association Sort Code"; Code[20])
        {
            Caption = 'Association Sort Code';
            DataClassification = SystemMetadata;
        }
        field(45; "Entry Comment"; Boolean)
        {
            Caption = 'Entry Comment';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(46; "Sales/Purch. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Sales/Purch. (LCY)';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(47; "Orig. Document No."; Code[20])
        {
            Caption = 'Orig. Document No.';
            DataClassification = SystemMetadata;
        }
        field(48; "Pmt. Disc. Given (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Pmt. Disc. Given (LCY)';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(49; "Original Amt. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Original Amt. (LCY)';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(50; "Pmt. Posting Date"; Date)
        {
            Caption = 'Pmt. Posting Date';
            DataClassification = SystemMetadata;
        }
        field(51; "Pmt. Currency Code"; Code[10])
        {
            Caption = 'Pmt. Currency Code';
            DataClassification = SystemMetadata;
        }
        field(52; "Payment allowed"; Boolean)
        {
            Caption = 'Payment allowed';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(53; "Discount allowed"; Boolean)
        {
            Caption = 'Pmt. Discount allowed';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(54; "Allow Application"; Boolean)
        {
            Caption = 'Allow Application';
            DataClassification = SystemMetadata;
            Editable = false;
            InitValue = true;
        }
        field(55; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = SystemMetadata;
        }
        field(56; "Pmt. Disc. Tolerance Date"; Date)
        {
            Caption = 'Pmt. Disc. Tolerance Date';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(57; "Pmt. Amount (LCY)"; Decimal)
        {
            Caption = 'Pmt. Amount (LCY)';
            DataClassification = SystemMetadata;
        }
        field(58; "Currency Factor"; Decimal)
        {
            Caption = 'Currency Factor';
            DataClassification = SystemMetadata;
        }
        field(59; "Original Currency Factor"; Decimal)
        {
            Caption = 'Original Currency Factor';
            DataClassification = SystemMetadata;
            Description = 'PMT CC';
            Editable = false;
        }
        field(95; "Orig. Remaining Amt. (LCY)"; Decimal)
        {
            Caption = 'Orig. Remaining Amt. (LCY)';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(99; "Man. Payment Text"; Boolean)
        {
            Caption = 'Manual Payment Text';
            DataClassification = SystemMetadata;
        }
        field(50018; "Abw. Verwendungszweck"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(5157960; "Customer Reference No."; Code[35])
        {
            Caption = 'Customer Reference No.';
            DataClassification = CustomerContent;
            Description = 'PMT';
        }
    }

    keys
    {
        key(Key1; "Journal Template Name", "Journal Batch Name", "Journal Line No.", "Line No.")
        {
            Clustered = true;
            SumIndexFields = "Original Remaining Amount", "Posting Payment Discount", "Posting Applied Amount", Counter, "Pmt. Amount (LCY)";
        }
        key(Key2; "Journal Template Name", "Journal Batch Name", "Payment Type Code")
        {
            SumIndexFields = "Posting Applied Amount", "Pmt. Amount (LCY)";
        }
        key(Key3; "ID Applied-Entry")
        {
        }
        key(Key4; "Journal Template Name", "Journal Batch Name", "Journal Line No.", "ID Applied-Entry")
        {
        }
        key(Key5; "Journal Template Name", "Journal Batch Name", "Due Date")
        {
        }
        key(Key6; "Journal Template Name", "Journal Batch Name", "External Document No.")
        {
        }
        key(Key7; "Journal Template Name", "Journal Batch Name", "Applies-to Doc. No.")
        {
        }
        key(Key8; "Journal Template Name", "Journal Batch Name", "Document Date")
        {
        }
        key(Key9; "Journal Template Name", "Journal Batch Name", "Journal Line No.", "Account Type", "Account No.")
        {
        }
    }
    procedure CheckStatus()
    begin
    end;


    procedure GetSetup()
    begin
    end;

    procedure ResetPmtLine()
    begin
    end;

    procedure TestApplication()
    begin
    end;

    procedure CalculatedRemAmount() RemAmt: Decimal
    begin
    end;

    procedure ApplicationSet()
    begin
    end;

    procedure ApplicationRemove()
    begin
    end;

    procedure CalcApplnAmount(Amt: Decimal; CCode: Code[10])
    begin
    end;

    procedure Navi()
    begin
    end;

    procedure LedgerComment()
    begin
    end;

    procedure CreateAppLineDetail()
    begin
    end;

    procedure EditPmt()
    begin
    end;

    procedure ChangeEntry()
    begin
    end;

    procedure GetCurrency()
    begin
    end;

    procedure DeleteLine()
    begin
    end;

    procedure CreatePmtText()
    begin
    end;

    procedure CheckPercentCodes(Text: Text[250]): Text[250]
    begin
    end;

    procedure CheckPmtPostingDateCurrency()
    begin
    end;

    procedure CheckSummarizePerPmtHead(CalledByCreatePosting: Boolean; OnAccount: Boolean)
    begin
    end;
}