table 5157811 "Accounting Rule"
{
    Caption = 'Accounting Rule';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; Catchword; Code[50])
        {
            Caption = 'Catchword';
            DataClassification = SystemMetadata;
            NotBlank = true;
        }
        field(2; "Field No."; Integer)
        {
            BlankZero = true;
            Caption = 'FieldNo';
            DataClassification = SystemMetadata;
            TableRelation = Field."No." where(TableNo = const(5157809));
        }
        field(3; "Posting Description"; Text[50])
        {
            Caption = 'Posting Description';
            DataClassification = SystemMetadata;
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
        field(6; "Document Type"; Option)
        {
            Caption = 'Document Type';
            DataClassification = SystemMetadata;
            InitValue = Payment;
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(7; "Disable Import"; Boolean)
        {
            Caption = 'Disable Import';
            DataClassification = SystemMetadata;
        }
        field(8; "Account Type"; Option)
        {
            Caption = 'Account Type';
            DataClassification = SystemMetadata;
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";
        }
        field(9; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            DataClassification = SystemMetadata;
        }
        field(10; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            CaptionClass = '1,2,1';
            DataClassification = SystemMetadata;
        }
        field(11; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            CaptionClass = '1,2,2';
            DataClassification = SystemMetadata;
        }
        field(12; "Amount 2nd Line"; Decimal)
        {
            Caption = 'Amount 2nd Line';
            DataClassification = SystemMetadata;
        }
        field(13; "Account Type 2nd Line"; Option)
        {
            Caption = 'Account Type 2nd Line';
            DataClassification = SystemMetadata;
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";
        }
        field(14; "Account No. 2nd Line"; Code[20])
        {
            Caption = 'Account No. 2nd Line';
            DataClassification = SystemMetadata;
        }
        field(15; "Disable Application"; Boolean)
        {
            Caption = 'Disable Application';
            DataClassification = SystemMetadata;
        }
        field(16; "Transit Entry"; Boolean)
        {
            Caption = 'Transit Entry';
            DataClassification = SystemMetadata;
        }
        field(17; "Shortcut Dim. 1 Code 2nd Line"; Code[20])
        {
            Caption = 'Shortcut Dim. 1 Code 2nd Line';
            CaptionClass = '1,2,1,2. ';
            DataClassification = SystemMetadata;
        }
        field(18; "Shortcut Dim. 2 Code 2nd Line"; Code[20])
        {
            Caption = 'Shortcut Dim. 2 Code 2nd Line';
            CaptionClass = '1,2,2,2. ';
            DataClassification = SystemMetadata;
        }
        field(19; "Import to Account No."; Code[20])
        {
            Caption = 'Import to Account No.';
            DataClassification = SystemMetadata;
        }
        field(20; "Posting Description 2nd Line"; Text[50])
        {
            Caption = 'Posting Description 2nd Line';
            DataClassification = SystemMetadata;
        }
        field(21; "Check Only Account Type"; Boolean)
        {
            Caption = 'Check only account type';
            DataClassification = SystemMetadata;
        }
        field(22; "No."; Integer)
        {
            Caption = 'No.';
            DataClassification = SystemMetadata;
        }
        field(23; "Amount Filter"; Option)
        {
            BlankZero = true;
            Caption = 'Amount Filter';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Positive,Negative';
            OptionMembers = " ","Positive Only","Negative Only";
        }
        field(24; "Analyze Amount"; Decimal)
        {
            Caption = 'Analyze Amount';
            DataClassification = SystemMetadata;
        }
        field(25; Payback; Boolean)
        {
            Caption = 'Payback';
            DataClassification = SystemMetadata;
        }
        field(26; "Abbreviations Charges 2nd Line"; Text[30])
        {
            Caption = 'Abbreviations Charges 2nd Line';
            DataClassification = SystemMetadata;
        }
        field(27; "Field Separator Reason Text"; Text[1])
        {
            Caption = 'Field Separator';
            DataClassification = SystemMetadata;
        }
        field(28; "Decimal Separator Charges"; Option)
        {
            Caption = 'Decimal Separator Charges';
            DataClassification = SystemMetadata;
            OptionCaption = 'Comma,Period';
            OptionMembers = Comma,Period;
        }
        field(29; "Mark as Finished"; Boolean)
        {
            Caption = 'Mark as Finished';
            DataClassification = SystemMetadata;
        }
        field(30; "Process as Discount in REMADV"; Boolean)
        {
            Caption = 'Mark as Discount in REMADV';
            DataClassification = SystemMetadata;
        }
        field(31; "Gen. Prod. Posting Group"; Code[20])
        {
            Caption = 'Gen. Prod. Posting Group';
            DataClassification = SystemMetadata;
        }
        field(32; "VAT Prod. Posting Group"; Code[20])
        {
            Caption = 'VAT Prod. Posting Group';
            DataClassification = SystemMetadata;
        }
        field(33; "Gen. Bus. Posting Group"; Code[20])
        {
            Caption = 'Gen. Bus. Posting Group';
            DataClassification = SystemMetadata;
        }
        field(34; "VAT Bus. Posting Group"; Code[20])
        {
            Caption = 'VAT Bus. Posting Group';
            DataClassification = SystemMetadata;
        }
        field(35; "Gen. Posting Type"; Option)
        {
            Caption = 'Gen. Posting Type';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Purchase,Sale';
            OptionMembers = " ",Purchase,Sale;

            trigger OnValidate()
            begin
                if "Gen. Posting Type" <> 0 then
                    TestField("Account Type", "Account Type"::"G/L Account");
            end;
        }
        field(36; "Gen. Prod. Posting Group 2nd"; Code[20])
        {
            Caption = 'Gen. Prod. Posting Group 2nd Line';
            DataClassification = SystemMetadata;
        }
        field(37; "VAT Prod. Posting Group 2nd"; Code[20])
        {
            Caption = 'VAT Prod. Posting Group 2nd Line';
            DataClassification = SystemMetadata;
        }
        field(38; "Gen. Bus. Posting Group 2nd"; Code[20])
        {
            Caption = 'Gen. Bus. Posting Group 2nd Line';
            DataClassification = SystemMetadata;
        }
        field(39; "VAT Bus. Posting Group 2nd"; Code[20])
        {
            Caption = 'VAT Bus. Posting Group 2nd Line';
            DataClassification = SystemMetadata;
        }
        field(40; "Gen. Posting Type 2nd"; Option)
        {
            Caption = 'Gen. Posting Type 2nd Line';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Purchase,Sale';
            OptionMembers = " ",Purchase,Sale;
        }
        field(41; "Shortcut Dimension 3 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 3 Code';
            CaptionClass = '1,2,3';
            DataClassification = SystemMetadata;
        }
        field(42; "Shortcut Dimension 4 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 4 Code';
            CaptionClass = '1,2,4';
            DataClassification = SystemMetadata;
        }
        field(43; "Shortcut Dimension 5 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 5 Code';
            CaptionClass = '1,2,5';
            DataClassification = SystemMetadata;
        }
        field(44; "Shortcut Dimension 6 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 6 Code';
        }
        field(45; "Shortcut Dimension 7 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 7 Code';
        }
        field(46; "Shortcut Dimension 8 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 8 Code';
        }
        field(47; "Shortcut Dim. 3 Code 2nd Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 3 Code 2nd Line';
        }
        field(48; "Shortcut Dim. 4 Code 2nd Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 4 Code 2nd Line';
        }
        field(49; "Shortcut Dim. 5 Code 2nd Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 5 Code 2nd Line';
        }
        field(50; "Shortcut Dim. 6 Code 2nd Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 6 Code 2nd Line';
        }
        field(51; "Shortcut Dim. 7 Code 2nd Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 7 Code 2nd Line';
        }
        field(52; "Shortcut Dim. 8 Code 2nd Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 8 Code 2nd Line';
        }
        field(53; "Gen. Posting Type 3rd"; Option)
        {
            Caption = 'Gen. Posting Type 3rd Line';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Purchase,Sale';
            OptionMembers = " ",Purchase,Sale;
        }
        field(54; "Gen. Bus. Posting Group 3rd"; Code[20])
        {
            Caption = 'Gen. Bus. Posting Group 3rd Line';
            DataClassification = SystemMetadata;
        }
        field(55; "Gen. Prod. Posting Group 3rd"; Code[20])
        {
            Caption = 'Gen. Prod. Posting Group 3rd Line';
            DataClassification = SystemMetadata;
        }
        field(56; "VAT Bus. Posting Group 3rd"; Code[20])
        {
            Caption = 'VAT Bus. Posting Group 3rd Line';
            DataClassification = SystemMetadata;
        }
        field(57; "VAT Prod. Posting Group 3rd"; Code[20])
        {
            Caption = 'VAT Prod. Posting Group 3rd Line';
            DataClassification = SystemMetadata;
        }
        field(58; "Shortcut Dim. 1 Code 3rd Line"; Code[20])
        {
            Caption = 'Shortcut Dim. 1 Code 3rd Line';
            CaptionClass = '1,2,1,3. ';
            DataClassification = SystemMetadata;
        }
        field(59; "Shortcut Dim. 2 Code 3rd Line"; Code[20])
        {
            Caption = 'Shortcut Dim. 2 Code 3rd Line';
            CaptionClass = '1,2,2,3. ';
            DataClassification = SystemMetadata;
        }
        field(60; "Shortcut Dim. 3 Code 3rd Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 3 Code 3rd Line';
            CaptionClass = '1,2,3,3. ';
            DataClassification = SystemMetadata;
        }
        field(61; "Shortcut Dim. 4 Code 3rd Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 4 Code 3rd Line';
            CaptionClass = '1,2,4,3. ';
            DataClassification = SystemMetadata;
        }
        field(62; "Shortcut Dim. 5 Code 3rd Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 5 Code 3rd Line';
        }
        field(63; "Shortcut Dim. 6 Code 3rd Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 6 Code 3rd Line';
        }
        field(64; "Shortcut Dim. 7 Code 3rd Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 7 Code 3rd Line';
        }
        field(65; "Shortcut Dim. 8 Code 3rd Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 8 Code 3rd Line';
        }
        field(66; "Amount 3rd Line"; Decimal)
        {
            Caption = 'Amount 3rd Line';
            DataClassification = SystemMetadata;

        }
        field(67; "Account Type 3rd Line"; Option)
        {
            Caption = 'Account Type 3rd Line';
            DataClassification = SystemMetadata;
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";

        }
        field(68; "Account No. 3rd Line"; Code[20])
        {
            Caption = 'Account No. 3rd Line';
            DataClassification = SystemMetadata;
        }
        field(69; "Posting Description 3rd Line"; Text[50])
        {
            Caption = 'Posting Description 3rd Line';
            DataClassification = SystemMetadata;
        }
        field(70; "Gen. Posting Type 4th"; Option)
        {
            Caption = 'Gen. Posting Type 4th';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Purchase,Sale';
            OptionMembers = " ",Purchase,Sale;
        }
        field(71; "Gen. Bus. Posting Group 4th"; Code[20])
        {
            Caption = 'Gen. Bus. Posting Group 4th';
            DataClassification = SystemMetadata;
        }
        field(72; "Gen. Prod. Posting Group 4th"; Code[20])
        {
            Caption = 'Gen. Prod. Posting Group 4th';
            DataClassification = SystemMetadata;
        }
        field(73; "VAT Bus. Posting Group 4th"; Code[20])
        {
            Caption = 'VAT Bus. Posting Group 4th';
            DataClassification = SystemMetadata;
        }
        field(74; "VAT Prod. Posting Group 4th"; Code[20])
        {
            Caption = 'VAT Prod. Posting Group 4th';
            DataClassification = SystemMetadata;
        }
        field(75; "Shortcut Dim. 1 Code 4th Line"; Code[20])
        {
            Caption = 'Shortcut Dim. 1 Code 4th Line';
        }
        field(76; "Shortcut Dim. 2 Code 4th Line"; Code[20])
        {
            Caption = 'Shortcut Dim. 2 Code 4th Line';
        }
        field(77; "Shortcut Dim. 3 Code 4th Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 3 Code 4th Line';
        }
        field(78; "Shortcut Dim. 4 Code 4th Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 4 Code 4th Line';
        }
        field(79; "Shortcut Dim. 5 Code 4th Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 5 Code 4th Line';
        }
        field(80; "Shortcut Dim. 6 Code 4th Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 6 Code 4th Line';
        }
        field(81; "Shortcut Dim. 7 Code 4th Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 7 Code 4th Line';
        }
        field(82; "Shortcut Dim. 8 Code 4th Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 8 Code 4th Line';
        }
        field(83; "Amount 4th Line"; Decimal)
        {
            Caption = 'Amount 4th Line';
            DataClassification = SystemMetadata;
        }
        field(84; "Account Type 4th Line"; Option)
        {
            Caption = 'Account Type 4th Line';
            DataClassification = SystemMetadata;
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";
        }
        field(85; "Account No. 4th Line"; Code[20])
        {
            Caption = 'Account No. 4th Line';
            DataClassification = SystemMetadata;
        }
        field(86; "Posting Description 4th Line"; Text[50])
        {
            Caption = 'Posting Description 4th Line';
            DataClassification = SystemMetadata;
        }
        field(87; "BC Code Filter"; Text[20])
        {
            Caption = 'BC Code Filter';
            DataClassification = SystemMetadata;
        }
        field(88; "Document Type 2nd Line"; Option)
        {
            Caption = 'Document Type 2nd Line';
            DataClassification = SystemMetadata;
            InitValue = Payment;
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(89; "Document Type 3rd Line"; Option)
        {
            Caption = 'Document Type 3rd Line';
            DataClassification = SystemMetadata;
            InitValue = Payment;
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(90; "Document Type 4th Line"; Option)
        {
            Caption = 'Document Type 4th Line';
            DataClassification = SystemMetadata;
            InitValue = Payment;
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(91; "Insert per Doc."; Boolean)
        {
            Caption = 'Insert per Document';
            DataClassification = SystemMetadata;
        }
        field(92; Delcredere; Boolean)
        {
            Caption = 'Del credere';
            DataClassification = SystemMetadata;
        }
        field(93; "VAT Marker"; Boolean)
        {
            Caption = 'VAT Marker';
            DataClassification = SystemMetadata;
        }
        field(94; "Fees from CSV-Port"; Boolean)
        {
            Caption = 'Fees from CSV-Port';
            DataClassification = SystemMetadata;
        }
        field(95; "Amount without Fees"; Boolean)
        {
            Caption = 'Amount without Fees';
            DataClassification = SystemMetadata;
        }
        field(96; "Draw Sign of Fees"; Boolean)
        {
            Caption = 'Draw Sign of Fees';
            DataClassification = SystemMetadata;
        }
        field(97; Factor; Decimal)
        {
            Caption = 'Factor';
            DataClassification = SystemMetadata;
        }
        field(98; "Percent 2nd Line"; Decimal)
        {
            Caption = 'Percent from Amount 2nd Line';
            DataClassification = SystemMetadata;
            DecimalPlaces = 2 : 4;
        }
        field(99; "Percent 3rd Line"; Decimal)
        {
            Caption = 'Percent from Amount 3rd Line';
            DataClassification = SystemMetadata;
        }
        field(100; "Percent 4th Line"; Decimal)
        {
            Caption = 'Percent from Amount 4th Line';
            DataClassification = SystemMetadata;
        }
        field(101; "Reduce Amount 2nd Line"; Boolean)
        {
            Caption = 'Reduce Amount 2nd Line?';
            DataClassification = SystemMetadata;
        }
        field(102; "Reduce Amount 3rd Line"; Boolean)
        {
            Caption = 'Reduce Amount 3rd Line?';
            DataClassification = SystemMetadata;
        }
        field(103; "Reduce Amount 4th Line"; Boolean)
        {
            Caption = 'Reduce Amount 4th Line?';
            DataClassification = SystemMetadata;
        }
        field(104; "Basis of Calc. 3rd Line"; Option)
        {
            Caption = 'Basis for calculation of percentage 3rd Line';
            DataClassification = SystemMetadata;
            InitValue = "Orig. Amount";
            OptionCaption = 'reduced Amount,orig. Amount';
            OptionMembers = "reduced Amount","Orig. Amount";
        }
        field(105; "Basis of Calc. 4th Line"; Option)
        {
            Caption = 'Basis for calculation of percentage 4th Line';
            DataClassification = SystemMetadata;
            InitValue = "Orig. Amount";
            OptionCaption = 'reduced Amount,orig. Amount';
            OptionMembers = "reduced Amount","Orig. Amount";
        }
        field(106; "REMADV Debit"; Boolean)
        {
            Caption = 'REMADV Debit';
            DataClassification = SystemMetadata;
        }
        field(107; "Delcredere 2nd Line"; Boolean)
        {
            Caption = 'Del credere 2nd Line';
            DataClassification = SystemMetadata;
            Description = 'Remadv Typ Markant';
        }
        field(108; "Delcredere 3rd Line"; Boolean)
        {
            Caption = 'Del credere 3rd Line';
            DataClassification = SystemMetadata;
            Description = 'Remadv Typ Markant';
        }
        field(109; "Delcredere 4th Line"; Boolean)
        {
            Caption = 'Del credere 4th Line';
            DataClassification = SystemMetadata;
            Description = 'Remadv Typ Markant';
        }
        field(110; "Abbreviations Charges 3rd Line"; Text[30])
        {
            Caption = 'Abbreviations Charges 3rd Line';
            DataClassification = SystemMetadata;
        }
        field(111; "Abbreviations Charges 4th Line"; Text[30])
        {
            Caption = 'Abbreviations Charges 4th Line';
            DataClassification = SystemMetadata;
        }
        field(112; "Suppress Zero Lines 2nd Line"; Boolean)
        {
            Caption = 'Suppress Zero Lines 2nd Line';
            DataClassification = SystemMetadata;
        }
        field(113; "Suppress Zero Lines 3rd Line"; Boolean)
        {
            Caption = 'Suppress Zero Lines 3rd Line';
            DataClassification = SystemMetadata;
        }
        field(114; "Suppress Zero Lines 4th Line"; Boolean)
        {
            Caption = 'Suppress Zero Lines 4th Line';
            DataClassification = SystemMetadata;
        }
        field(115; "Document No. Match needed"; Boolean)
        {
            Caption = 'Document No. Match needed';
            DataClassification = SystemMetadata;
        }
        field(116; "Max. Amount"; Decimal)
        {
            Caption = 'Max. Amount';
            DataClassification = SystemMetadata;
        }
        field(119; "Text Extract 1"; Option)
        {
            Caption = 'Text Extract 1';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Reason Row 1,Reason Row 2,Reason Row 3,Reason Row 4';
            OptionMembers = " ","Reason Row 1","Reason Row 2","Reason Row 3","Reason Row 4";
        }
        field(120; "Extract 1 from Position"; Integer)
        {
            Caption = 'Extract 1 from Position';
            DataClassification = SystemMetadata;
        }
        field(121; "Extract 1 No. of Char."; Integer)
        {
            Caption = 'Extract 1 No. of Characters';
            DataClassification = SystemMetadata;
        }
        field(122; "Text Extract 2"; Option)
        {
            Caption = 'Text Extract 2';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Reason Row 1,Reason Row 2,Reason Row 3,Reason Row 4';
            OptionMembers = " ","Reason Row 1","Reason Row 2","Reason Row 3","Reason Row 4";
        }
        field(123; "Extract 2 from Position"; Integer)
        {
            Caption = 'Extract 2 from Position';
            DataClassification = SystemMetadata;
        }
        field(124; "Extract 2 No. of Char."; Integer)
        {
            Caption = 'Extract 2 No. of Characters';
            DataClassification = SystemMetadata;
        }
        field(125; "Pmt. Import Interface Code"; Code[20])
        {
            Caption = 'Pmt. Import Interface Code';
            DataClassification = SystemMetadata;
        }
        field(126; "No. of Adv. Accounting Rules"; Integer)
        {
            CalcFormula = count("Advanced Accounting Rule" where("No." = field("No.")));
            Caption = 'No. of Advanced Accounting Rules';
            Editable = false;
            FieldClass = FlowField;
        }
        field(129; "Keep Document No."; Boolean)
        {
            Caption = 'Keep Document No. (when splitting)';
            DataClassification = SystemMetadata;
        }
        field(130; "Calculate Fees from 2nd Line"; Option)
        {
            Caption = 'Calculate Fees 2nd Line from';
            DataClassification = SystemMetadata;
            OptionCaption = 'Fee+Fee1+Fee2+Fee3,Fee1+Fee2+Fee3,Fee,Fee1,Fee2,Fee3,None';
            OptionMembers = "Fee+Fee1+Fee2+Fee3","Fee1+Fee2+Fee3",Fee,Fee1,Fee2,Fee3,"None";

            trigger OnValidate()
            begin
                if "Calculate Fees from 2nd Line" <> "Calculate Fees from 2nd Line"::None then begin
                    "Amount 2nd Line" := 0;
                    "Percent 2nd Line" := 0;
                end;
            end;
        }
        field(131; "Alt. Bal. Account Type"; Option)
        {
            Caption = 'Alt. Bal. Account Type';
            DataClassification = SystemMetadata;
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";

            trigger OnValidate()
            begin
                Validate("Alt. Bal. Account No.", '');
            end;
        }
        field(132; "Alt. Bal. Account No."; Code[20])
        {
            Caption = 'Alt. Bal. Account No.';
            DataClassification = SystemMetadata;
            TableRelation = if ("Alt. Bal. Account Type" = const("G/L Account")) "G/L Account"
            else
            if ("Alt. Bal. Account Type" = const(Customer)) Customer
            else
            if ("Alt. Bal. Account Type" = const(Vendor)) Vendor
            else
            if ("Alt. Bal. Account Type" = const("Bank Account")) "Bank Account";
        }
        field(133; "Calculate Fees from 3rd Line"; Option)
        {
            Caption = 'Calculate Fees 3rd Line from';
            DataClassification = SystemMetadata;
            OptionCaption = 'None,Fee1+Fee2+Fee3,Fee,Fee1,Fee2,Fee3,Fee+Fee1+Fee2+Fee3';
            OptionMembers = "None","Fee1+Fee2+Fee3",Fee,Fee1,Fee2,Fee3,"Fee+Fee1+Fee2+Fee3";

            trigger OnValidate()
            begin
                if "Calculate Fees from 3rd Line" <> "Calculate Fees from 3rd Line"::None then begin
                    "Amount 3rd Line" := 0;
                    "Percent 3rd Line" := 0;
                end;
            end;
        }
        field(134; "Calculate Fees from 4th Line"; Option)
        {
            Caption = 'Calculate Fees 4th Line from';
            DataClassification = SystemMetadata;
            OptionCaption = 'None,Fee1+Fee2+Fee3,Fee,Fee1,Fee2,Fee3,Fee+Fee1+Fee2+Fee3';
            OptionMembers = "None","Fee1+Fee2+Fee3",Fee,Fee1,Fee2,Fee3,"Fee+Fee1+Fee2+Fee3";

            trigger OnValidate()
            begin
                if "Calculate Fees from 4th Line" <> "Calculate Fees from 4th Line"::None then begin
                    "Amount 4th Line" := 0;
                    "Percent 4th Line" := 0;
                end;
            end;
        }
        field(135; "Character to find Fee 2nd Line"; Integer)
        {
            Caption = 'Characters to find Fee 2nd Line';
            DataClassification = SystemMetadata;
        }
        field(136; "Character to find Fee 3rd Line"; Integer)
        {
            Caption = 'Characters to find Fee 3rd Line';
            DataClassification = SystemMetadata;
        }
        field(137; "Character to find Fee 4th Line"; Integer)
        {
            Caption = 'Characters to find Fee 4th Line';
            DataClassification = SystemMetadata;
        }
        field(138; "Import to Account Type"; Option)
        {
            Caption = 'Import to Account Type';
            DataClassification = SystemMetadata;
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";

            trigger OnValidate()
            begin
                "Import to Account No." := '';
            end;
        }
        field(139; "Add. Bal. Account Type 2nd"; Option)
        {
            Caption = 'Add. Bal. Account Type 2nd Line';
            DataClassification = SystemMetadata;
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";

            trigger OnValidate()
            begin
                Validate("Add. Bal. Account No. 2nd", '');
            end;
        }
        field(140; "Add. Bal. Account No. 2nd"; Code[20])
        {
            Caption = 'Add. Bal. Account No. 2nd Line';
            DataClassification = SystemMetadata;
            TableRelation = if ("Add. Bal. Account Type 2nd" = const("G/L Account")) "G/L Account"
            else
            if ("Add. Bal. Account Type 2nd" = const(Customer)) Customer
            else
            if ("Add. Bal. Account Type 2nd" = const(Vendor)) Vendor
            else
            if ("Add. Bal. Account Type 2nd" = const("Bank Account")) "Bank Account";
        }
        field(141; "Add. Bal. Account Type 3rd"; Option)
        {
            Caption = 'Add. Bal. Account Type 3rd Line';
            DataClassification = SystemMetadata;
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";

            trigger OnValidate()
            begin
                Validate("Add. Bal. Account No. 3rd", '');
            end;
        }
        field(142; "Add. Bal. Account No. 3rd"; Code[20])
        {
            Caption = 'Add. Bal. Account No. 3rd Line';
            DataClassification = SystemMetadata;
            TableRelation = if ("Add. Bal. Account Type 3rd" = const("G/L Account")) "G/L Account"
            else
            if ("Add. Bal. Account Type 3rd" = const(Customer)) Customer
            else
            if ("Add. Bal. Account Type 3rd" = const(Vendor)) Vendor
            else
            if ("Add. Bal. Account Type 3rd" = const("Bank Account")) "Bank Account";
        }
        field(143; "Add. Bal. Account Type 4th"; Option)
        {
            Caption = 'Add. Bal. Account Type 4th Line';
            DataClassification = SystemMetadata;
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";

            trigger OnValidate()
            begin
                Validate("Add. Bal. Account No. 4th", '');
            end;
        }
        field(144; "Add. Bal. Account No. 4th"; Code[20])
        {
            Caption = 'Add. Bal. Account No. 4th Line';
            DataClassification = SystemMetadata;
            TableRelation = if ("Add. Bal. Account Type 4th" = const("G/L Account")) "G/L Account"
            else
            if ("Add. Bal. Account Type 4th" = const(Customer)) Customer
            else
            if ("Add. Bal. Account Type 4th" = const(Vendor)) Vendor
            else
            if ("Add. Bal. Account Type 4th" = const("Bank Account")) "Bank Account";
        }
        field(145; "Copy to Add. Interface"; Boolean)
        {
            Caption = 'Copy to Add. Interface';
            DataClassification = SystemMetadata;

            trigger OnValidate()
            begin
                if not "Copy to Add. Interface" then
                    "Compressed Import" := false;
            end;
        }
        field(146; "Compressed Import"; Boolean)
        {
            Caption = 'Compressed Import';
            DataClassification = SystemMetadata;

            trigger OnValidate()
            begin
                if "Compressed Import" then
                    TestField("Copy to Add. Interface");
            end;
        }
        field(147; "Import to Template"; Code[10])
        {
            Caption = 'Import to Journal Template Name';
            DataClassification = SystemMetadata;

            trigger OnLookup()
            var
                GenJnlTemplate: Record "Gen. Journal Template";
            begin
                GenJnlTemplate.FindSet();
                if PAGE.RunModal(0, GenJnlTemplate) = ACTION::LookupOK then begin
                    "Import to Template" := GenJnlTemplate.Name;
                    Validate("Import to Template");
                end;
            end;

            trigger OnValidate()
            begin
                "Import to Batch" := '';
            end;
        }
        field(148; "Import to Batch"; Code[10])
        {
            Caption = 'Import to Journal Batch Name';
            DataClassification = SystemMetadata;

            trigger OnLookup()
            var
                GenJnlBatch: Record "Gen. Journal Batch";
            begin
                GenJnlBatch.SetRange("Journal Template Name", "Import to Template");
                GenJnlBatch.FindSet();
                if PAGE.RunModal(0, GenJnlBatch) = ACTION::LookupOK then begin
                    "Import to Batch" := GenJnlBatch.Name;
                    Validate("Import to Batch");
                end;
            end;

            trigger OnValidate()
            var
                GenJnlBatch: Record "Gen. Journal Batch";
            begin
                if "Import to Batch" <> '' then
                    GenJnlBatch.Get("Import to Template", "Import to Batch");
            end;
        }
        field(150; "Date Formula 2nd Line"; DateFormula)
        {
            Caption = 'Date Formula 2nd Line';
            DataClassification = SystemMetadata;

            trigger OnValidate()
            begin
                if CalcDate("Date Formula 2nd Line", Today) <> Today then
                    TestField("Add. Bal. Account No. 2nd");
            end;
        }
        field(151; "Date Formula 3rd Line"; DateFormula)
        {
            Caption = 'Date Formula 3rd Line';
            DataClassification = SystemMetadata;

            trigger OnValidate()
            begin
                if CalcDate("Date Formula 3rd Line", Today) <> Today then
                    TestField("Add. Bal. Account No. 3rd");
            end;
        }
        field(152; "Date Formula 4th Line"; DateFormula)
        {
            Caption = 'Date Formula 4th Line';
            DataClassification = SystemMetadata;

            trigger OnValidate()
            begin
                if CalcDate("Date Formula 4th Line", Today) <> Today then
                    TestField("Add. Bal. Account No. 4th");
            end;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; Catchword, "Import to Account No.", "Field No.")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Catchword, "Catchword 2", "Import to Account No.")
        {
        }
    }
    procedure CheckCatchword(CatchwordCheck: Code[30])
    begin
    end;
}