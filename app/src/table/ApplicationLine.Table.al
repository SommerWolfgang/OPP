table 5157803 "Application Line"
{
    Caption = 'Application Line';
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
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = SystemMetadata;
            NotBlank = true;
        }
        field(3; "Account Type"; Option)
        {
            Caption = 'Account Type';
            DataClassification = SystemMetadata;
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account,Fixed Asset';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account","Fixed Asset";
        }
        field(4; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            DataClassification = SystemMetadata;
        }
        field(5; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            ClosingDates = true;
            DataClassification = SystemMetadata;
        }
        field(6; "Document Type"; Option)
        {
            Caption = 'Document Type';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(7; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = SystemMetadata;
        }
        field(8; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = SystemMetadata;
        }
        field(11; "Original Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'Original Amount';
            DataClassification = SystemMetadata;
        }
        field(12; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            DataClassification = SystemMetadata;
        }
        field(13; "Orig. Remaining Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'Original Remaining Amount';
            DataClassification = SystemMetadata;
        }
        field(14; "Orig. Remaining Amt. (LCY)"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'Orig. Remaining Amt. (LCY)';
            DataClassification = SystemMetadata;
        }
        field(16; "Appln. Remaining Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Appln. Remaining Amount';
            DataClassification = SystemMetadata;
        }
        field(22; "Sell-to/Buy-from No."; Code[20])
        {
            Caption = 'Sell-to/Buy-from No.';
            DataClassification = SystemMetadata;
        }
        field(23; "Posting Group"; Code[20])
        {
            Caption = 'Posting Group';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(24; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            CaptionClass = '1,2,1';
            DataClassification = SystemMetadata;
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(1));
        }
        field(25; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            CaptionClass = '1,2,2';
            DataClassification = SystemMetadata;
        }
        field(30; "Payment Discount Allowed"; Boolean)
        {
            Caption = 'Payment Discount Allowed';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(34; "On Hold"; Code[3])
        {
            Caption = 'On Hold';
            DataClassification = SystemMetadata;
        }
        field(35; "Applies-to Doc. Type"; Option)
        {
            Caption = 'Applies-to Doc. Type';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(36; "Applies-to Doc. No."; Code[20])
        {
            Caption = 'Applies-to Doc. No.';
            DataClassification = SystemMetadata;
        }
        field(38; "Due Date"; Date)
        {
            Caption = 'Due Date';
            DataClassification = SystemMetadata;
        }
        field(39; "Pmt. Discount Date"; Date)
        {
            Caption = 'Pmt. Discount Date';
            DataClassification = SystemMetadata;
        }
        field(40; "Payment Discount %"; Decimal)
        {
            Caption = 'Payment Discount %';
            DataClassification = SystemMetadata;
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(48; "Applies-to ID"; Code[50])
        {
            Caption = 'Applies-to ID';
            DataClassification = SystemMetadata;
        }
        field(50; "Business Unit Code"; Code[20])
        {
            Caption = 'Business Unit Code';
            DataClassification = SystemMetadata;
            TableRelation = "Business Unit";
        }
        field(51; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
            DataClassification = SystemMetadata;
            NotBlank = true;
            TableRelation = "Gen. Journal Batch".Name where("Journal Template Name" = field("Journal Template Name"));
        }
        field(62; "Allow Application"; Boolean)
        {
            Caption = 'Allow Application';
            DataClassification = SystemMetadata;
            InitValue = true;
        }
        field(74; "Original Currency Factor"; Decimal)
        {
            Caption = 'Original Currency Factor';
            DataClassification = SystemMetadata;
            DecimalPlaces = 0 : 15;
            Description = 'PMT CC';
        }
        field(76; "Document Date"; Date)
        {
            Caption = 'Document Date';
            ClosingDates = true;
            DataClassification = SystemMetadata;
        }
        field(77; "External Document No."; Code[35])
        {
            Caption = 'External Document No.';
            DataClassification = SystemMetadata;
        }
        field(78; "Source Type"; Option)
        {
            Caption = 'Source Type';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Customer,Vendor,Bank Account,Fixed Asset';
            OptionMembers = " ",Customer,Vendor,"Bank Account","Fixed Asset";
        }
        field(79; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            DataClassification = SystemMetadata;
        }
        field(80; "Pmt. Discount Possible"; Decimal)
        {
            Caption = 'Pmt. Discount possible';
            DataClassification = SystemMetadata;
        }
        field(81; "Posting Applied Amount"; Decimal)
        {
            Caption = 'Posting Applied Amount';
            DataClassification = SystemMetadata;
        }
        field(82; "Posting Payment Discount"; Decimal)
        {
            Caption = 'Posting Payment Discount';
            DataClassification = SystemMetadata;
        }
        field(83; "Orig. Payment Discount %"; Decimal)
        {
            Caption = 'Orig. Payment Discount %';
            DataClassification = SystemMetadata;
        }
        field(84; "ID Applied-Entry"; Integer)
        {
            Caption = 'ID Applied-Entry';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(85; "Absolute Amount"; Decimal)
        {
            Caption = 'Absolute Amount';
            DataClassification = SystemMetadata;
        }
        field(86; "Bank Document No."; Integer)
        {
            Caption = 'Bank Document No.';
            DataClassification = SystemMetadata;
        }
        field(87; Color; Integer)
        {
            Caption = 'Color';
            DataClassification = SystemMetadata;
        }
        field(88; "Pmt. Disc. % Original"; Decimal)
        {
            Caption = 'Pmt. Disc. % Original';
            DataClassification = SystemMetadata;
            DecimalPlaces = 0 : 5;
        }
        field(89; "Payment Text"; Text[50])
        {
            Caption = 'Payment Text';
            DataClassification = SystemMetadata;
        }
        field(90; "Pmt. Disc. Given (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Pmt. Disc. Given (LCY)';
            DataClassification = SystemMetadata;
        }
        field(91; "Original Amt. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Original Amt. (LCY)';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(92; "Reminder Level"; Integer)
        {
            CalcFormula = max("Reminder/Fin. Charge Entry"."Reminder Level" where("Customer Entry No." = field("ID Applied-Entry"),
                                                                                   Type = const(Reminder)));
            Caption = 'Reminder Level';
            Editable = false;
            FieldClass = FlowField;
        }
        field(93; "Association Sort Code"; Code[20])
        {
            Caption = 'Association Sort Code';
            DataClassification = SystemMetadata;
        }
        field(94; "Journal Line No."; Integer)
        {
            Caption = 'Journal Line No.';
            DataClassification = SystemMetadata;
        }
        field(95; "Entry Comment"; Boolean)
        {
            Caption = 'Entry Comment';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(96; "Sales/Purch. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Sales/Purch. (LCY)';
            DataClassification = SystemMetadata;
        }
        field(97; "Account Name"; Text[100])
        {
            Caption = 'Account Name';
            DataClassification = SystemMetadata;
        }
        field(98; "Application Amt. 2"; Decimal)
        {
            Caption = 'Application Amt. 2';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(99; "Pmt. Disc. Tolerance Date"; Date)
        {
            Caption = 'Pmt. Disc. Tolerance Date';
            DataClassification = SystemMetadata;
        }
        field(100; "Max. Payment Tolerance"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'Max. Payment Tolerance';
            DataClassification = SystemMetadata;
        }
        field(101; "Appln. Currency Factor"; Decimal)
        {
            Caption = 'Appln. Currency Factor';
            DataClassification = SystemMetadata;
            DecimalPlaces = 0 : 15;
            Description = 'PMT CC';
            MinValue = 0;
        }
        field(102; "Posting Applied Amt. (LCY)"; Decimal)
        {
            Caption = 'Posting Applied Amount (LCY)';
            DataClassification = SystemMetadata;
            Description = 'PMT CC';
        }
        field(103; "Posting Payment Disc. (LCY)"; Decimal)
        {
            Caption = 'Posting Payment Discount (LCY)';
            DataClassification = SystemMetadata;
            Description = 'PMT CC';
        }
        field(104; "Appln. Remaining Amt. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Appln. Remaining Amount (LCY)';
            DataClassification = SystemMetadata;
            Description = 'PMT CC';
        }
        field(110; "Original Applies-to ID"; Code[50])
        {
            Caption = 'Original Applies-to ID';
            DataClassification = SystemMetadata;
        }
        field(111; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            DataClassification = SystemMetadata;
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(112; "Original Amount (FCY)"; Decimal)
        {
            Caption = 'Original Amount (FCY)';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(113; "Bank Fee Amount"; Decimal)
        {
            Caption = 'Bank Fee Amount';
            DataClassification = SystemMetadata;
        }
        field(114; "Currency Gain/Loss Amount"; Decimal)
        {
            Caption = 'Currency Gain/Loss Amount';
            DataClassification = SystemMetadata;
        }
        field(115; "Orig. Currency Code"; Code[10])
        {
            Caption = 'Orig. Currency Code';
            DataClassification = SystemMetadata;
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Journal Template Name", "Journal Batch Name", "Journal Line No.", "Line No.")
        {
            Clustered = true;
            SumIndexFields = "Posting Applied Amount", "Posting Payment Discount", "Posting Applied Amt. (LCY)";
        }
        key(Key2; "Journal Template Name", "Journal Batch Name", "Journal Line No.", "Posting Date", "Document No.")
        {
        }
        key(Key3; "Journal Template Name", "Journal Batch Name", "Journal Line No.", "Absolute Amount")
        {
        }
        key(Key4; "Journal Template Name", "Journal Batch Name", "Journal Line No.", "Account Type", "Account No.")
        {
        }
        key(Key5; "Journal Template Name", "Journal Batch Name", "Journal Line No.", "Document No.", "Posting Date")
        {
        }
        key(Key6; "Journal Template Name", "Journal Batch Name", "Journal Line No.", "Orig. Remaining Amount")
        {
        }
        key(Key7; "Journal Template Name", "Journal Batch Name", "Journal Line No.", "Document Date")
        {
        }
        key(Key8; "Journal Template Name", "Journal Batch Name", "Journal Line No.", "External Document No.")
        {
        }
        key(Key9; "Journal Template Name", "Journal Batch Name", "Journal Line No.", "Association Sort Code", "Document Date")
        {
        }
        key(Key10; "Journal Template Name", "Journal Batch Name", "Journal Line No.", "Due Date", "Document No.")
        {
        }
        key(Key11; "Journal Template Name", "Journal Batch Name", "Journal Line No.", "Pmt. Discount Date", "Document No.")
        {
        }
    }

    procedure TestApplication()
    begin
    end;

    procedure CalculatedDiscount() PmtDiscAmt: Decimal
    begin
    end;

    procedure CalculatedApplication() ApplAmt: Decimal
    begin
    end;

    procedure CalculatedApplicationLCY() ApplAmt: Decimal
    begin
    end;

    procedure CalculatedPercent() Percent: Decimal
    begin
    end;

    procedure CalculatedRemAmount(): Decimal
    begin
    end;

    procedure ApplicationSet()
    begin
    end;

    procedure ApplicationPost(var AppAmt: Decimal; var PmtDiscAmt: Decimal)
    begin
        AppAmt := 0;
        PmtDiscAmt := 0;
    end;

    procedure BalanceApplication(var BalanceAmount2: Decimal)
    begin
        BalanceAmount2 := 0;
    end;

    procedure RealDiscount(Percent: Decimal; RealDisc: Decimal) PmtDiscPct: Decimal
    begin
    end;

    procedure CustGetLedgEntries()
    begin
    end;

    procedure VendGetLedgEntries()
    begin
    end;

    procedure CalcApplied()
    begin
    end;

    procedure DelAppLine()
    begin
    end;

    procedure GetCurrencyCode(): Code[10]
    begin
    end;

    procedure SetActData(NewGenJnlLine: Record "Gen. Journal Line"; NewRealPercent: Decimal; NewUserInput: Boolean; NewCheckDate: Boolean; NewKeepDifference: Boolean; NewAppDate: Date; NewCurrCode: Code[10]; NewRndPrec: Decimal)
    begin
    end;

    procedure EntryComment()
    begin
    end;

    procedure CustGetCVSettling(var EnableCVSettling2: Boolean)
    begin
        EnableCVSettling2 := false;
    end;

    procedure VendGetCVSettling(var EnableCVSettling2: Boolean)
    begin
        EnableCVSettling2 := false;
    end;

    procedure GLAccGetLedgEntries()
    begin
    end;
}
