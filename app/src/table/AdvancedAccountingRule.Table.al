table 5157825 "Advanced Accounting Rule"
{
    Caption = 'Advanced Accounting Rule';
    DataClassification = CustomerContent;

    fields
    {
        field(1; Catchword; Code[50])
        {
            Caption = 'Catchword';
            NotBlank = true;
        }
        field(2; "Field No."; Integer)
        {
            BlankZero = true;
            Caption = 'FieldNo';
        }
        field(3; "Posting Description"; Text[50])
        {
            Caption = 'Posting Description';
        }
        field(4; "Catchword 2"; Code[50])
        {
            Caption = 'Catchword 2';
            DataClassification = SystemMetadata;
        }
        field(5; "Field Name"; Text[80])
        {
            Caption = 'Fieldname';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(10; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = SystemMetadata;
        }
        field(22; "No."; Integer)
        {
            Caption = 'No.';
            DataClassification = SystemMetadata;
        }
        field(53; "Gen. Posting Type"; Option)
        {
            Caption = 'Gen. Posting Type';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Purchase,Sale';
            OptionMembers = " ",Purchase,Sale;
        }
        field(54; "Gen. Bus. Posting Group"; Code[20])
        {
            Caption = 'Gen. Bus. Posting Group';
            DataClassification = SystemMetadata;
            TableRelation = "Gen. Business Posting Group";
        }
        field(55; "Gen. Prod. Posting Group"; Code[20])
        {
            Caption = 'Gen. Prod. Posting Group';
            DataClassification = SystemMetadata;
            TableRelation = "Gen. Product Posting Group";
        }
        field(56; "VAT Bus. Posting Group"; Code[20])
        {
            Caption = 'VAT Bus. Posting Group';
            DataClassification = SystemMetadata;
            TableRelation = "VAT Business Posting Group";
        }
        field(57; "VAT Prod. Posting Group"; Code[20])
        {
            Caption = 'VAT Prod. Posting Group';
            DataClassification = SystemMetadata;
            TableRelation = "VAT Product Posting Group";
        }
        field(58; "Shortcut Dim. 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dim. 1 Code';
            CaptionClass = '1,2,1,';
            DataClassification = SystemMetadata;
        }
        field(59; "Shortcut Dim. 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dim. 2 Code';
            CaptionClass = '1,2,2,';
            DataClassification = SystemMetadata;
        }
        field(60; "Shortcut Dim. 3 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 3 Code';
            CaptionClass = '1,2,3,';
            DataClassification = SystemMetadata;
        }
        field(61; "Shortcut Dim. 4 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 4 Code';
            CaptionClass = '1,2,4,';
            DataClassification = SystemMetadata;
        }
        field(62; "Shortcut Dim. 5 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 5 Code';
            CaptionClass = '1,2,5,';
        }
        field(63; "Shortcut Dim. 6 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 6 Code';
            CaptionClass = '1,2,6,';
        }
        field(64; "Shortcut Dim. 7 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 7 Code';
            CaptionClass = '1,2,7,';
        }
        field(65; "Shortcut Dim. 8 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 8 Code';
            CaptionClass = '1,2,8,';
        }
        field(66; Amount; Decimal)
        {
            Caption = 'Amount';
        }
        field(67; "Account Type"; Option)
        {
            Caption = 'Account Type';
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";
        }
        field(68; "Account No."; Code[20])
        {
            Caption = 'Account No.';
        }
        field(87; "BC Code Filter"; Text[20])
        {
            Caption = 'BC Code Filter';
        }
        field(89; "Document Type"; Option)
        {
            Caption = 'Document Type';
            InitValue = Payment;
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(99; Percent; Decimal)
        {
            Caption = 'Percent from Amount';
        }
        field(102; "Reduce Amount"; Boolean)
        {
            Caption = 'Reduce Amount?';
        }
        field(104; "Basis of Calculation"; Option)
        {
            Caption = 'Basis for calculation of percentage';
            InitValue = "Orig. Amount";
            OptionCaption = 'Reduced Amount,Orig. Amount';
            OptionMembers = "Reduced Amount","Orig. Amount";
        }
        field(110; "Abbreviations Charges"; Text[30])
        {
            Caption = 'Abbreviations Charges';
        }
        field(113; "Suppress Zero Lines"; Boolean)
        {
            Caption = 'Suppress Zero Lines';
        }
        field(115; "Document No. Match needed"; Boolean)
        {
            Caption = 'Document No. Match needed';
        }
        field(116; "Max. Amount"; Decimal)
        {
            Caption = 'Max. Amount';
        }
        field(117; "Calculate Fees from"; Option)
        {
            Caption = 'Calculate Fees from';
            OptionCaption = 'None,Fee1+Fee2+Fee3,Fee,Fee1,Fee2,Fee3,Fee+Fee1+Fee2+Fee3';
            OptionMembers = "None","Fee1+Fee2+Fee3",Fee,Fee1,Fee2,Fee3,"Fee+Fee1+Fee2+Fee3";
        }
        field(135; "Character to find Fee"; Integer)
        {
            Caption = 'Characters to find Fee';
        }
        field(139; "Add. Bal. Account Type"; Option)
        {
            Caption = 'Add. Bal. Account Type';
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";
        }
        field(140; "Add. Bal. Account No."; Code[20])
        {
            Caption = 'Add. Bal. Account No.';
        }
        field(141; "Add. Date Formula"; DateFormula)
        {
            Caption = 'Date Formula add. Line';
        }
    }

    keys
    {
        key(Key1; "No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; Catchword, "Field No.")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Catchword, "Catchword 2", "Posting Description")
        {
        }
    }

    procedure ValidateShortcutDimCode(FieldNumber: Integer; var ShortcutDimCode: Code[20])
    begin
        ShortcutDimCode := '';
    end;
}