table 5157824 "Pmt. Import Line Archive"
{
    Caption = 'Pmt. Import Line Archive';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = SystemMetadata;
        }
        field(2; "Import Register No."; Code[20])
        {
            Caption = 'Import Register No.';
            DataClassification = SystemMetadata;
            TableRelation = "Pmt. Import Register Archive";
        }
        field(3; "Pmt. Import Interface Code"; Code[20])
        {
            Caption = 'Pmt. Import Interface Code';
            DataClassification = SystemMetadata;
            TableRelation = "Pmt. Import Interface";
        }
        field(4; "Statement No."; Code[20])
        {
            Caption = 'Statement No.';
            DataClassification = SystemMetadata;
        }
        field(5; "Bank-ID"; Code[35])
        {
            Caption = 'Bank-ID';
            DataClassification = CustomerContent;
        }
        field(6; "Bank Account-ID"; Code[50])
        {
            Caption = 'Bank Account-ID';
            DataClassification = CustomerContent;
        }
        field(7; "Currency-ID"; Code[3])
        {
            Caption = 'Currency-ID';
            DataClassification = SystemMetadata;
        }
        field(8; "Value Date"; Date)
        {
            Caption = 'Value Date';
            DataClassification = SystemMetadata;
        }
        field(9; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = SystemMetadata;
        }
        field(10; Reference; Text[35])
        {
            Caption = 'Reference';
            DataClassification = SystemMetadata;
        }
        field(11; "Text Code"; Text[5])
        {
            Caption = 'Text Code';
            DataClassification = SystemMetadata;
        }
        field(12; Amount; Decimal)
        {
            Caption = 'Amount';
            DataClassification = SystemMetadata;
        }
        field(13; "Posting Description"; Text[50])
        {
            Caption = 'Posting Description';
            DataClassification = SystemMetadata;
        }
        field(14; "Text Code Supplement"; Text[3])
        {
            Caption = 'Text Code Supplement';
            DataClassification = SystemMetadata;
        }
        field(15; "Bank Reference"; Text[35])
        {
            Caption = 'Bank Reference';
            DataClassification = SystemMetadata;
        }
        field(16; Infotext; Text[35])
        {
            Caption = 'Infotext';
            DataClassification = SystemMetadata;
        }
        field(17; Applicant; Text[35])
        {
            Caption = 'Applicant';
            DataClassification = CustomerContent;
        }
        field(18; "Applicant 2"; Text[35])
        {
            Caption = 'Applicant 2';
            DataClassification = CustomerContent;
        }
        field(19; "Reason Row 1"; Text[70])
        {
            Caption = 'Reason Row 1';
            DataClassification = SystemMetadata;
        }
        field(20; "Reason Row 2"; Text[70])
        {
            Caption = 'Reason Row 2';
            DataClassification = SystemMetadata;
        }
        field(21; "Reason Row 3"; Text[70])
        {
            Caption = 'Reason Row 3';
            DataClassification = SystemMetadata;
        }
        field(22; "Reason Row 4"; Text[70])
        {
            Caption = 'Reason Row 4';
            DataClassification = SystemMetadata;
        }
        field(23; "Reason Row 5"; Text[70])
        {
            Caption = 'Reason Row 5';
            DataClassification = SystemMetadata;
        }
        field(24; "Reason Row 6"; Text[70])
        {
            Caption = 'Reason Row 6';
            DataClassification = SystemMetadata;
        }
        field(25; "Reason Row 7"; Text[70])
        {
            Caption = 'Reason Row 7';
            DataClassification = SystemMetadata;
        }
        field(26; "Reason Row 8"; Text[70])
        {
            Caption = 'Reason Row 8';
            DataClassification = SystemMetadata;
        }
        field(27; "Reason Row 9"; Text[70])
        {
            Caption = 'Reason Row 9';
            DataClassification = SystemMetadata;
        }
        field(28; "Reason Row 10"; Text[70])
        {
            Caption = 'Reason Row 10';
            DataClassification = SystemMetadata;
        }
        field(29; "Reason Row 11"; Text[70])
        {
            Caption = 'Reason Row 11';
            DataClassification = SystemMetadata;
        }
        field(30; "Reason Row 12"; Text[70])
        {
            Caption = 'Reason Row 12';
            DataClassification = SystemMetadata;
        }
        field(31; "Reason Row 13"; Text[70])
        {
            Caption = 'Reason Row 13';
            DataClassification = SystemMetadata;
        }
        field(32; "Reason Row 14"; Text[70])
        {
            Caption = 'Reason Row 14';
            DataClassification = SystemMetadata;
        }
        field(33; "Additional Info"; Text[16])
        {
            Caption = 'Additional Info';
            DataClassification = SystemMetadata;
        }
        field(34; "Additional Info 2"; Text[10])
        {
            Caption = 'Additional Info 2';
            DataClassification = SystemMetadata;
        }
        field(35; Orderer; Text[50])
        {
            Caption = 'Orderer';
            DataClassification = CustomerContent;
        }
        field(36; "Orderer 2"; Text[50])
        {
            Caption = 'Orderer 2';
            DataClassification = CustomerContent;
        }
        field(37; "Bank Orderer"; Text[35])
        {
            Caption = 'Bank Orderer';
            DataClassification = CustomerContent;
        }
        field(38; "Account Orderer"; Text[50])
        {
            Caption = 'Account Orderer';
            DataClassification = CustomerContent;
        }
        field(39; "Check No."; Code[20])
        {
            Caption = 'Check No.';
            DataClassification = SystemMetadata;
        }
        field(40; "Prima Nota"; Code[10])
        {
            Caption = 'Prima Nota';
            DataClassification = SystemMetadata;
        }
        field(41; "Current Time"; Time)
        {
            Caption = 'Current Time';
            DataClassification = SystemMetadata;
        }
        field(42; "Business Case Code"; Code[20])
        {
            Caption = 'Bank Transaction Code';
            DataClassification = SystemMetadata;
        }
        field(43; "Reversal-ID"; Code[6])
        {
            Caption = 'Reversal-ID';
            DataClassification = SystemMetadata;
        }
        field(44; "Statement Line No."; Integer)
        {
            Caption = 'Statement Line No.';
            DataClassification = SystemMetadata;
        }
        field(45; "Import Date"; Date)
        {
            Caption = 'Import Date';
            DataClassification = SystemMetadata;
        }
        field(46; "Import Time"; Time)
        {
            Caption = 'Import Time';
            DataClassification = SystemMetadata;
        }
        field(47; "User ID"; Code[50])
        {
            Caption = 'User ID';
            DataClassification = EndUserIdentifiableInformation;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;

            trigger OnLookup()
            var
                UserMgt: Codeunit "User Management";
            begin
                UserMgt.LookupUserID("User ID");
            end;
        }
        field(48; "Debit/Credit Indicator"; Code[2])
        {
            Caption = 'Debit/Credit Indicator';
            DataClassification = SystemMetadata;
        }
        field(49; "Posting Key"; Code[4])
        {
            Caption = 'Posting Key';
            DataClassification = SystemMetadata;
        }
        field(50; "Origin Amount"; Decimal)
        {
            Caption = 'Origin Amount';
            DataClassification = SystemMetadata;
        }
        field(51; "Origin Currency"; Code[10])
        {
            Caption = 'Origin Currency';
            DataClassification = SystemMetadata;
        }
        field(52; Fees; Decimal)
        {
            Caption = 'Fees';
            DataClassification = SystemMetadata;
        }
        field(53; "Currency Code Fees"; Code[10])
        {
            Caption = 'Currency Code Fees';
            DataClassification = SystemMetadata;
        }
        field(54; Posted; Boolean)
        {
            Caption = 'Posted';
            DataClassification = SystemMetadata;
        }
        field(55; Company; Text[30])
        {
            Caption = 'Company';
            DataClassification = OrganizationIdentifiableInformation;
            Editable = false;
            TableRelation = Company;
        }
        field(56; "Posted Document No."; Code[20])
        {
            Caption = 'Posted Document No.';
            DataClassification = SystemMetadata;
        }
        field(57; "Provisions Declared"; Decimal)
        {
            Caption = 'Provisions declared';
            DataClassification = SystemMetadata;
        }
        field(58; "Pmt. Discount Declared"; Decimal)
        {
            Caption = 'Pmt. Discount Declared';
            DataClassification = SystemMetadata;
        }
        field(59; "Payment Declared"; Decimal)
        {
            Caption = 'Payment Declared';
            DataClassification = SystemMetadata;
        }
        field(60; "Document No. Declared"; Code[30])
        {
            Caption = 'Document No. Declared';
            DataClassification = SystemMetadata;
        }
        field(61; "Import in Acc. No."; Code[20])
        {
            Caption = 'Import in Acc. No.';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(62; "Import in Acc. Type"; Option)
        {
            Caption = 'Import to Account Type';
            DataClassification = SystemMetadata;
            Editable = false;
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";
        }
        field(63; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            CaptionClass = '1,2,1';
            DataClassification = SystemMetadata;
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(1));
        }
        field(64; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            CaptionClass = '1,2,2';
            DataClassification = SystemMetadata;
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(2));
        }
        field(65; "Application Status"; Option)
        {
            BlankZero = true;
            Caption = 'Application Status';
            DataClassification = SystemMetadata;
            Editable = false;
            OptionCaption = ',Open,Accounted,Finished,System';
            OptionMembers = " ",Open,Accounted,Finished,System;
        }
        field(66; "Accounted by"; Option)
        {
            BlankZero = true;
            Caption = 'Accounted by';
            DataClassification = SystemMetadata;
            Editable = false;
            OptionCaption = ',BC Code,Accounting Rule,Bank Account,Account No.,Document No.,Sales Order,Purch. Order,Ext. Document No.,Pmt. Transaction,EREF';
            OptionMembers = ,"BC Code","Accounting Rule","Bank Account","Account No.","Document No.","Sales Order","Purch. Order","Ext. Document No.","Pmt. Transaction",EREF;
        }
        field(67; "Accounting Rule No."; Integer)
        {
            BlankZero = true;
            Caption = 'Accounting Rule No.';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(68; Interim; Boolean)
        {
            Caption = 'Interim Transaction';
            DataClassification = SystemMetadata;
            Description = 'MT942';
            Editable = false;
        }
        field(69; "Reason Row 15"; Text[70])
        {
            Caption = 'Reason Row 15';
            DataClassification = SystemMetadata;
        }
        field(70; "Reason Row 16"; Text[70])
        {
            Caption = 'Reason Row 16';
            DataClassification = SystemMetadata;
        }
        field(71; "Reason Row 17"; Text[70])
        {
            Caption = 'Reason Row 17';
            DataClassification = SystemMetadata;
        }
        field(72; "Reason Row 18"; Text[70])
        {
            Caption = 'Reason Row 18';
            DataClassification = SystemMetadata;
        }
        field(73; "Reason Row 19"; Text[70])
        {
            Caption = 'Reason Row 19';
            DataClassification = SystemMetadata;
        }
        field(74; "Reason Row 20"; Text[70])
        {
            Caption = 'Reason Row 20';
            DataClassification = SystemMetadata;
        }
        field(75; "Accounting Token"; Code[50])
        {
            Caption = 'Accounting Token';
        }
        field(76; "Accounted by Doc"; Code[50])
        {
            Caption = 'Accounted by Doc';
            DataClassification = SystemMetadata;
        }
        field(77; "Fee 1 Declared"; Decimal)
        {
            Caption = 'Fee 1 Declared';
        }
        field(78; "Fee 2 Declared"; Decimal)
        {
            Caption = 'Fee 2 Declared';
            DataClassification = SystemMetadata;
        }
        field(79; "Fee 3 Declared"; Decimal)
        {
            Caption = 'Fee 3 Declared';
            DataClassification = SystemMetadata;
        }
        field(80; "Account Type Declared"; Option)
        {
            Caption = 'Account Type Declared';
            DataClassification = SystemMetadata;
            Editable = false;
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";
        }
        field(81; "Account No. Declared"; Code[20])
        {
            Caption = 'Account No. Declared';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(82; "Bal. Account Type Declared"; Option)
        {
            Caption = 'Bal. Account Type Declared';
            DataClassification = SystemMetadata;
            Editable = false;
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";
        }
        field(83; "Bal. Account No. Declared"; Code[20])
        {
            Caption = 'Bal. Account No. Declared';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(84; "Mandate ID (MREF)"; Code[54])
        {
            Caption = 'Mandate ID (MREF)';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(85; "EndtoEndID (EREF)"; Code[54])
        {
            Caption = 'EndtoEndID (EREF)';
            DataClassification = CustomerContent;
        }
        field(86; "Creditor ID (CRED)"; Code[54])
        {
            Caption = 'Creditor ID (CRED)';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(87; "Debitor ID (DEBT)"; Code[54])
        {
            Caption = 'Debitor ID (DEBT)';
            DataClassification = CustomerContent;
        }
        field(88; "Sepa Error Code"; Code[10])
        {
            Caption = 'Sepa Error Code';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(89; "Sepa Return Reason"; Text[80])
        {
            CalcFormula = lookup("SEPA Error Code".Description where(Code = field("Sepa Error Code")));
            Caption = 'Sepa Return Reason';
            Editable = false;
            FieldClass = FlowField;
        }
        field(90; "Shortcut Dimension 3 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 3 Code';
            CaptionClass = '1,2,3';
            DataClassification = SystemMetadata;
        }
        field(91; "Shortcut Dimension 4 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 4 Code';
            CaptionClass = '1,2,4';
            DataClassification = SystemMetadata;
        }
        field(92; "Shortcut Dimension 5 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 5 Code';
            CaptionClass = '1,2,5';
            DataClassification = SystemMetadata;
        }
        field(93; "Shortcut Dimension 6 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 6 Code';
            CaptionClass = '1,2,6';
            DataClassification = SystemMetadata;
        }
        field(94; "Shortcut Dimension 7 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 7 Code';
            CaptionClass = '1,2,7';
            DataClassification = SystemMetadata;
        }
        field(95; "Shortcut Dimension 8 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 8 Code';
            CaptionClass = '1,2,8';
            DataClassification = SystemMetadata;
        }
        field(96; "Ultimate Debtor (ABWA)"; Text[50])
        {
            Caption = 'Ultimate Debtor (ABWA)';
            DataClassification = CustomerContent;
        }
        field(97; "Ultimate Creditor (ABWE)"; Text[50])
        {
            Caption = 'Ultimate Creditor (ABWE)';
            DataClassification = CustomerContent;
        }
        field(98; "Refund Amount"; Decimal)
        {
            Caption = 'Refund Amount';
            DataClassification = SystemMetadata;
        }
        field(99; "Ext. Doc. No. Declared"; Code[35])
        {
            Caption = 'Ext. Doc. No. Declared';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(100; "Currency Code Fee 1"; Code[10])
        {
            Caption = 'Currency Code Fee 1';
            DataClassification = SystemMetadata;
        }
        field(101; "Currency Code Fee 2"; Code[10])
        {
            Caption = 'Currency Code Fee 2';
            DataClassification = SystemMetadata;
        }
        field(102; "Currency Code Fee 3"; Code[10])
        {
            Caption = 'Currency Code Fee 3';
            DataClassification = SystemMetadata;
        }
        field(10000; "Statement Start Date"; Date)
        {
            Caption = 'Statement Start Date';
            DataClassification = SystemMetadata;
        }
        field(10001; "MT942-Entry"; Boolean)
        {
            Caption = 'MT942-Entry';
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Import Register No.")
        {
            SumIndexFields = Amount;
        }
        key(Key3; "Import in Acc. No.", "Statement No.", "Statement Line No.")
        {
        }
        key(Key4; "Pmt. Import Interface Code", "Statement No.", Amount)
        {
        }
        key(Key5; "Pmt. Import Interface Code", "Statement No.", "Statement Line No.")
        {
        }
        key(Key6; "Pmt. Import Interface Code", "Statement No.", "Entry No.")
        {
        }
        key(Key7; "Posted Document No.", "Posting Date")
        {
        }
        key(Key8; "Accounting Rule No.")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Import Register No.", "Bank-ID", "Bank Account-ID", "Statement No.")
        {
        }
    }
}