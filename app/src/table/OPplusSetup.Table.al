table 5157802 "OPplus Setup"
{
    Caption = 'OPplus Setup';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Primary Key"; Code[20])
        {
            Caption = 'Primary Key';
            DataClassification = SystemMetadata;
        }
        field(2; "Filename Pmt. Interface File"; Code[80])
        {
            Caption = 'Default Pmt. Import File';
            DataClassification = SystemMetadata;
        }
        field(3; "Pmt. Import Journal Nos."; Code[20])
        {
            Caption = 'Pmt. Import Journal Nos.';
            DataClassification = SystemMetadata;
            TableRelation = "No. Series";
        }
        field(4; "Consider Payment Date"; Boolean)
        {
            Caption = 'Consider Payment Date';
            DataClassification = SystemMetadata;
        }
        field(5; "Allow Multiple Payment"; Boolean)
        {
            Caption = 'Allow Multiple Payment';
            DataClassification = SystemMetadata;
        }
        field(6; "Split Posting with Ext. Appl."; Boolean)
        {
            Caption = 'Split Posting with Ext. Appl.';
            DataClassification = SystemMetadata;
        }
        field(7; "Limit Apply Pmt. Discount"; Decimal)
        {
            Caption = 'Limit Apply Pmt. Discount';
            DataClassification = SystemMetadata;
        }
        field(8; "Close Ext. Apply with Enter"; Boolean)
        {
            Caption = 'Close Ext. Apply with Enter';
            DataClassification = SystemMetadata;
        }
        field(9; "ESC equals OK in Ext. Apply"; Boolean)
        {
            Caption = 'ESC equals OK in Ext. Apply';
            DataClassification = SystemMetadata;
        }
        field(10; "Pmt. Discount Tolerance Days"; Integer)
        {
            Caption = 'Pmt. Discount Tolerance Days';
            DataClassification = SystemMetadata;
        }
        field(11; "Min. Length Customer No."; Integer)
        {
            Caption = 'Min. Length Customer No.';
            DataClassification = SystemMetadata;
            MaxValue = 20;
            MinValue = 0;
        }
        field(12; "Poole Position Cust. Doc. No."; Integer)
        {
            Caption = 'Cust. Document No. Offset';
            DataClassification = SystemMetadata;
        }
        field(13; "Valid Signs in Document"; Code[20])
        {
            Caption = 'Valid Signs in Document';
            DataClassification = SystemMetadata;
        }
        field(14; "Pmt. Discount Tolerance Amount"; Decimal)
        {
            Caption = 'Pmt. Discount Tolerance Amount';
            DataClassification = SystemMetadata;

            trigger OnValidate()
            begin
                if "Pmt. Discount Tolerance Amount" = 0 then
                    "Pmt. Discount Tolerance %" := 0;
            end;
        }
        field(15; "Color Applied Entry"; Integer)
        {
            Caption = 'Color Applied Entry';
            DataClassification = SystemMetadata;
        }
        field(16; "Color Local Application"; Integer)
        {
            Caption = 'Color Local Apply';
            DataClassification = SystemMetadata;
        }
        field(17; "Color Partial Application"; Integer)
        {
            Caption = 'Color Partial Apply';
            DataClassification = SystemMetadata;
        }
        field(18; "Skip Leading Zero"; Boolean)
        {
            Caption = 'Skip Leading Zero';
            DataClassification = SystemMetadata;
        }
        field(19; "Min. Length Vendor No."; Integer)
        {
            Caption = 'Min. Length Vendor No.';
            DataClassification = SystemMetadata;
            MaxValue = 20;
            MinValue = 0;
        }
        field(20; "Post Pmt. Sum"; Boolean)
        {
            Caption = 'Post Pmt. Sum';
            DataClassification = SystemMetadata;
        }
        field(21; "Text Pmt. Application Posting"; Text[30])
        {
            Caption = 'Text Pmt. Application Posting';
            DataClassification = SystemMetadata;
        }
        field(22; "Text Balance Posting"; Text[30])
        {
            Caption = 'Text Balance Posting';
            DataClassification = SystemMetadata;
        }
        field(23; "Text Pmt. Sum Posting"; Text[30])
        {
            Caption = 'Text Pmt. Sum Posting';
            DataClassification = SystemMetadata;
        }
        field(24; "Text Rounding Posting"; Text[30])
        {
            Caption = 'Text Rounding Posting';
            DataClassification = SystemMetadata;
        }
        field(25; "Text Application Posting"; Text[30])
        {
            Caption = 'Text Application Posting';
            DataClassification = SystemMetadata;
        }
        field(26; "Delete Import File"; Option)
        {
            Caption = 'Delete Import File';
            DataClassification = SystemMetadata;
            OptionCaption = 'Ask,Yes,No';
            OptionMembers = Ask,Yes,No;
        }
        field(27; "Poole Pos. Cust. Ext. Doc. No."; Integer)
        {
            Caption = 'Ext. Cust. Document No. Offset';
            DataClassification = SystemMetadata;
        }
        field(28; "Analyze Cust. Doc. No."; Boolean)
        {
            Caption = 'Analyze Customer Doc. No.';
            DataClassification = SystemMetadata;
            InitValue = true;
        }
        field(29; "Analyze Cust. Ext. Doc. No."; Boolean)
        {
            Caption = 'Analyze Customer Ext. Doc. No.';
            DataClassification = SystemMetadata;
            InitValue = false;
        }
        field(30; "Analyze Vend. Doc. No."; Boolean)
        {
            Caption = 'Analyze Vendor Doc. No.';
            DataClassification = SystemMetadata;
            InitValue = false;
        }
        field(31; "Analyze Vend. Ext. Doc. No."; Boolean)
        {
            Caption = 'Analyze Ext. Vendor Doc. No.';
            DataClassification = SystemMetadata;
            InitValue = true;
        }
        field(32; "Min. Length Customer Doc. No."; Integer)
        {
            Caption = 'Min. Length Customer Doc. No.';
            DataClassification = SystemMetadata;
            MaxValue = 20;
            MinValue = 0;
        }
        field(33; "Min. Length Vendor Doc. No."; Integer)
        {
            Caption = 'Min. Length Vendor Doc. No.';
            DataClassification = SystemMetadata;
            MaxValue = 20;
            MinValue = 0;
        }
        field(34; "Min. Length Cust. Ext. Doc."; Integer)
        {
            Caption = 'Min. Length Customer Ext. Doc. No.';
            DataClassification = SystemMetadata;
            MaxValue = 20;
            MinValue = 0;
        }
        field(35; "Min. Length Vendor Ext. Doc."; Integer)
        {
            Caption = 'Min. Length Vendor Ext. Doc. No.';
            DataClassification = SystemMetadata;
            MaxValue = 20;
            MinValue = 0;
        }
        field(36; "Use Appl. Texts in Single App."; Boolean)
        {
            Caption = 'Use Appl. Texts in Single Application';
            DataClassification = SystemMetadata;
        }
        field(37; "Dim. for Pmt. Disc. Corr."; Option)
        {
            Caption = 'Dimensions for Pmt. Disc. Corr.';
            DataClassification = SystemMetadata;
            InitValue = "Gen. Jnl. Line (if empty VAT Entry)";
            OptionCaption = 'VAT Entries,Gen. Jnl. Line (Always),Not Empty Gen. Jnl. Line,G/L Account (Always),Gen. Jnl. Line (if empty VAT Entry),G/L Account (if empty VAT Entry)';
            OptionMembers = "VAT Entries","Gen. Jnl. Line (Always)","Not Empty Gen. Jnl. Line","G/L Account (Always)","Gen. Jnl. Line (if empty VAT Entry)","G/L Account (if empty VAT Entry)";
        }
        field(38; "Dim. for Apply Line Details"; Option)
        {
            Caption = 'Dim. for Apply Line Details';
            DataClassification = SystemMetadata;
            OptionCaption = 'Gen. Jnl. Line,Applied Entry,Not Empty Gen. Jnl. Line';
            OptionMembers = "Gen. Jnl. Line","Applied Entry","Not Empty Gen. Jnl. Line";
        }
        field(39; "Analyze Customer Bank Acc. No."; Boolean)
        {
            Caption = 'Analyze Customer Bank Acc. No.';
            DataClassification = SystemMetadata;
        }
        field(40; "Analyze Vendor Bank Acc. No."; Boolean)
        {
            Caption = 'Analyze Vendor Bank Acc. No.';
            DataClassification = SystemMetadata;
        }
        field(41; "Bank Import Interface"; Code[20])
        {
            Caption = 'Default Interface';
            DataClassification = SystemMetadata;
            TableRelation = "CSV Port" WHERE(BankImport = CONST(true));
        }
        field(42; "MT940 Import Path"; Text[100])
        {
            Caption = 'MT940 Import Path';
        }
        field(43; "MT940 Backup Path"; Text[100])
        {
            Caption = 'MT940 Backup Path';
        }
        field(44; "MT940 File Extension"; Code[10])
        {
            Caption = 'MT940 File Extension';
        }
        field(45; "Association Nos."; Code[20])
        {
            Caption = 'Association Nos.';
            DataClassification = SystemMetadata;
            TableRelation = "No. Series";
        }
        field(46; "Pmt. Import Interface Nos."; Code[20])
        {
            Caption = 'Pmt. Import Interface Nos.';
            DataClassification = SystemMetadata;
            TableRelation = "No. Series";
        }
        field(47; "Color Appl. Status Open"; Integer)
        {
            Caption = 'Color Appl. Status Open';
            DataClassification = SystemMetadata;
        }
        field(48; "Color Appl. Status Accounted"; Integer)
        {
            Caption = 'Color Appl. Status Accounted';
            DataClassification = SystemMetadata;
        }
        field(49; "Color Appl. Status Finished"; Integer)
        {
            Caption = 'Color Appl. Status Finished';
            DataClassification = SystemMetadata;
        }
        field(50; "Print Cash Report when Posting"; Boolean)
        {
            Caption = 'Print Cash Report when Posting';
            DataClassification = SystemMetadata;
        }
        field(51; "URL latest Rates"; Text[250])
        {
            Caption = 'URL latest Rates';
            DataClassification = SystemMetadata;
        }
        field(52; "URL all previous Rates"; Text[250])
        {
            Caption = 'URL all previous Rates';
            DataClassification = SystemMetadata;
        }
        field(53; "Regard On Hold on Cust. Ent."; Boolean)
        {
            Caption = 'Regard On Hold on Cust. Entries';
            DataClassification = SystemMetadata;
            InitValue = false;
        }
        field(54; "Regard On Hold on Vend. Ent."; Boolean)
        {
            Caption = 'Regard On Hold on Vend. Entries';
            DataClassification = SystemMetadata;
            InitValue = false;
        }
        field(55; "Analyze Sales Orders"; Boolean)
        {
            Caption = 'Analyze Sales Orders';
            DataClassification = SystemMetadata;
            InitValue = true;
        }
        field(56; "Analyze Purch. Orders"; Boolean)
        {
            Caption = 'Analyze Purch. Orders';
            DataClassification = SystemMetadata;
            InitValue = false;
        }
        field(57; "Insert Customer Bank Acc. No."; Boolean)
        {
            Caption = 'Insert Customer Bank Acc. No.';
            DataClassification = SystemMetadata;
        }
        field(58; "Insert Vendor Bank Acc. No."; Boolean)
        {
            Caption = 'Insert Vendor Bank Acc. No.';
            DataClassification = SystemMetadata;
        }
        field(59; "Color Appl. Status System"; Integer)
        {
            Caption = 'Color Appl. Status System';
            DataClassification = SystemMetadata;
        }
        field(60; "Analyze Cust. Ledger Amount"; Boolean)
        {
            Caption = 'Analyze Cust. Ledger Amount';
            DataClassification = SystemMetadata;
        }
        field(61; "Analyze Vendor Ledger Amount"; Boolean)
        {
            Caption = 'Analyze Vendor Ledger Amount';
            DataClassification = SystemMetadata;
        }
        field(62; "Priority Search Bank Accounts"; Option)
        {
            Caption = 'Priority Search Bank Accounts';
            DataClassification = SystemMetadata;
            OptionCaption = 'Before Purpose Texts,After Purpose Texts';
            OptionMembers = "Before Purpose Texts","After Purpose Texts";
        }
        field(63; "Filter Customer No."; Text[50])
        {
            Caption = 'Filter Customer No.';
            DataClassification = SystemMetadata;
        }
        field(64; "Filter Vendor No."; Text[50])
        {
            Caption = 'Filter Vendor No.';
            DataClassification = SystemMetadata;
        }
        field(65; "Filter Customer Document No."; Text[50])
        {
            Caption = 'Filter Customer Document No.';
            DataClassification = SystemMetadata;
        }
        field(66; "Customer Balance Application"; Boolean)
        {
            Caption = 'Customer Balance Application';
            DataClassification = SystemMetadata;
        }
        field(67; "Vendor Balance Application"; Boolean)
        {
            Caption = 'Vendor Balance Application';
            DataClassification = SystemMetadata;
        }
        field(68; "Customer Acc. without Entries"; Boolean)
        {
            Caption = 'Accept Customer accounting without entries';
            DataClassification = SystemMetadata;
        }
        field(69; "Vendor Acc. without Entries"; Boolean)
        {
            Caption = 'Accept Vendor accounting without entries';
            DataClassification = SystemMetadata;
        }
        field(70; "Max. Length Customer Doc. No."; Integer)
        {
            Caption = 'Max. Length Customer Doc. No.';
            DataClassification = SystemMetadata;
            MaxValue = 20;
            MinValue = 0;
        }
        field(71; "Max. Length Vendor Doc. No."; Integer)
        {
            Caption = 'Max. Length Vendor Doc. No.';
            DataClassification = SystemMetadata;
            MaxValue = 20;
            MinValue = 0;
        }
        field(72; "Max. Length Cust. Ext. Doc."; Integer)
        {
            Caption = 'Max. Length Customer Ext. Doc. No.';
            DataClassification = SystemMetadata;
            MaxValue = 20;
            MinValue = 0;
        }
        field(73; "Max. Length Vendor Ext. Doc."; Integer)
        {
            Caption = 'Max. Length Vendor Ext. Doc. No.';
            DataClassification = SystemMetadata;
            MaxValue = 20;
            MinValue = 0;
        }
        field(74; "Max. Length Customer No."; Integer)
        {
            Caption = 'Max. Length Customer No.';
            DataClassification = SystemMetadata;
            MaxValue = 20;
            MinValue = 0;
        }
        field(75; "Max. Length Vendor No."; Integer)
        {
            Caption = 'Max. Length Vendor No.';
            DataClassification = SystemMetadata;
            MaxValue = 20;
            MinValue = 0;
        }
        field(76; "Poole Position Vend. Doc. No."; Integer)
        {
            Caption = 'Vend. Document No. Offset';
            DataClassification = SystemMetadata;
        }
        field(77; "Poole Pos. Vend. Ext. Doc. No."; Integer)
        {
            Caption = 'Ext. Vend. Document No. Offset';
            DataClassification = SystemMetadata;
        }
        field(78; "URL Rates latest 90 Days"; Text[250])
        {
            Caption = 'URL Rates latest 90 Days';
            DataClassification = SystemMetadata;
        }
        field(79; "Cust. Document No. Length"; Integer)
        {
            Caption = 'Cust. Document No. Length';
            DataClassification = SystemMetadata;
            MinValue = 0;
        }
        field(80; "Ext. Cust. Document No. Length"; Integer)
        {
            Caption = 'Ext. Cust. Document No. Length';
            DataClassification = SystemMetadata;
            MinValue = 0;
        }
        field(81; "Vend. Document No. Length"; Integer)
        {
            Caption = 'Vend. Document No. Length';
            DataClassification = SystemMetadata;
            MinValue = 0;
        }
        field(82; "Ext. Vend. Document No. Length"; Integer)
        {
            Caption = 'Ext. Vend. Document No. Length';
            DataClassification = SystemMetadata;
            MinValue = 0;
        }
        field(83; "Hyperlink Color"; Boolean)
        {
            Caption = 'Hyperlink Color';
            DataClassification = SystemMetadata;
        }
        field(84; "Allow Document Date From"; Date)
        {
            Caption = 'Allow Document Date From';
            DataClassification = SystemMetadata;
        }
        field(85; "Allow Document Date To"; Date)
        {
            Caption = 'Allow Document Date To';
            DataClassification = SystemMetadata;
        }
        field(86; "On Hold Returned Direct Debit"; Code[3])
        {
            Caption = 'On Hold Returned Direct Debit';
            DataClassification = SystemMetadata;
        }
        field(87; "Analyze Pmt. Transactions"; Boolean)
        {
            Caption = 'Analyze Pmt. Transactions';
            DataClassification = SystemMetadata;
            InitValue = false;
        }
        field(88; "Priority Search Pmt. Transact."; Option)
        {
            Caption = 'Priority Search Pmt. Transactions';
            DataClassification = SystemMetadata;
            OptionCaption = 'Before Purpose Texts,After Purpose Texts';
            OptionMembers = "Before Purpose Texts","After Purpose Texts";
        }
        field(93; "Default URL for ECB Import"; Option)
        {
            Caption = 'Default URL for ECB Import';
            DataClassification = SystemMetadata;
            OptionCaption = 'Latest,Last 90 Days,Previous';
            OptionMembers = Latest,"Last 90 Days",Previous;
        }
        field(94; "Exch. Rate LCY applies FCY"; Option)
        {
            Caption = 'Exch. Rate LCY applies FCY';
            DataClassification = SystemMetadata;
            OptionCaption = 'Standard,GenJnlLine';
            OptionMembers = Standard,GenJnlLine;
        }
        field(95; "Exch. Rate FCY applies FCY"; Option)
        {
            Caption = 'Exch. Rate FCY applies FCY';
            DataClassification = SystemMetadata;
            OptionCaption = 'Standard,Original Factor';
            OptionMembers = Standard,"Original Factor";
        }
        field(96; "Calc Gain/Loss on G/L Account"; Option)
        {
            Caption = 'Calc. Gain/Loss on G/L Account';
            DataClassification = SystemMetadata;
            OptionCaption = 'Standard,Yes,No';
            OptionMembers = Standard,Yes,No;
        }
        field(97; "Create Pmt. Import Logfile"; Boolean)
        {
            Caption = 'Create Pmt. Import Logfile';
            DataClassification = SystemMetadata;
        }
        field(100; "Logfile Path Name"; Text[100])
        {
            Caption = 'Logfile Path Name';
            DataClassification = SystemMetadata;
        }
        field(101; "Cash Book Balance Check"; Option)
        {
            Caption = 'Cash Book Balance Check';
            DataClassification = SystemMetadata;
            OptionCaption = 'On Input,On Post,None';
            OptionMembers = "On Input","On Post","None";
        }
        field(102; "Start EA editable"; Boolean)
        {
            Caption = 'Start Ext. Application in Edit Mode';
            DataClassification = SystemMetadata;
        }
        field(103; "Update Version"; Code[10])
        {
            Caption = 'Update Version';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(104; "Call before Directory Import"; Text[100])
        {
            Caption = 'Call before Directory Import';
            DataClassification = SystemMetadata;
        }
        field(106; "Create Local Temporary File"; Boolean)
        {
            Caption = 'Create Local Temporary File';
            DataClassification = SystemMetadata;
        }
        field(107; "Blocked Bank Acc. Nos."; Code[20])
        {
            Caption = 'Blocked Bank Account Nos.';
            DataClassification = SystemMetadata;
            TableRelation = "No. Series";
        }
        field(108; "Use Account-Texts for Entries"; Boolean)
        {
            Caption = 'Use Account-Texts for Entries Purchase';
            DataClassification = SystemMetadata;
        }
        field(109; "Days Due Consideration"; Integer)
        {
            Caption = 'Days Due Consideration';
            DataClassification = SystemMetadata;
        }
        field(110; "Commit after Entries"; Integer)
        {
            Caption = 'Commit after n imported Entries';
            DataClassification = SystemMetadata;
            MaxValue = 1000;
            MinValue = 0;
        }
        field(111; "Wait MS after Commit"; Integer)
        {
            Caption = 'Wait n ms after Commit';
            DataClassification = SystemMetadata;
            MaxValue = 10000;
            MinValue = 0;
        }
        field(112; "Pmt. Discount Tolerance %"; Decimal)
        {
            Caption = 'Pmt. Discount Tolerance %';
            DataClassification = SystemMetadata;
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(113; "Search Cust./Vend. over Assoc."; Boolean)
        {
            Caption = 'Search for Linked Entries via Association No.';
            DataClassification = SystemMetadata;
            Description = 'EXT';
        }
        field(114; "Action if Balance in Appl."; Option)
        {
            Caption = 'Action if Balance in Application <> 0';
            DataClassification = SystemMetadata;
            OptionCaption = 'New Line,Options';
            OptionMembers = NewLine,Options;
        }
        field(115; "Posting Method in Ext. App."; Option)
        {
            Caption = 'Posting Method in Ext. Application';
            DataClassification = SystemMetadata;
            OptionCaption = 'Application splitting (OPplus Standard),One Application Line (NAV Standard)';
            OptionMembers = ApplicationLineSplitting,SingleApplicationLine;
        }
        field(116; "CAMT Import Path"; Text[100])
        {
            Caption = 'CAMT Import Path';
        }
        field(117; "CAMT Backup Path"; Text[100])
        {
            Caption = 'CAMT Backup Path';
        }
        field(118; "CAMT File Extension"; Code[10])
        {
            Caption = 'CAMT File Extension';
        }
        field(121; "Def. Appl. Bal. Debit Acc."; Code[20])
        {
            Caption = 'Default Application Bal. Debit Account';
        }
        field(122; "Def. Appl. Bal. Credit Acc."; Code[20])
        {
            Caption = 'Default Application Bal. Credit Account';
        }
        field(123; "Def. Action if Bal. in Appl."; Option)
        {
            BlankZero = true;
            Caption = 'Default Action if Balance in Application';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Create a new line,Keep payment open,Post as payment discount,Create a new G/L Line';
            OptionMembers = " ",NewLine,KeepPayment,PmtDiscount,NewAccount;
        }
        field(124; "Analyze Reminder/Fin. Charge"; Boolean)
        {
            Caption = 'Analyze Reminder/Fin. Charge';
            DataClassification = SystemMetadata;
        }
        field(125; "Always fill Application Info"; Boolean)
        {
            Caption = 'Always fill Application Info';
            DataClassification = SystemMetadata;
        }
        field(126; "Open Ext. App. with Filter"; Boolean)
        {
            Caption = 'Open Ext. Application with filter on "Applied only" if any.';
            DataClassification = SystemMetadata;
        }
        field(127; "Pmt. Discount if overpaid"; Boolean)
        {
            Caption = 'Payment Discount if overpaid';
            DataClassification = SystemMetadata;
        }
        field(128; "No. of Character Statement No."; Integer)
        {
            Caption = 'No. of Character Statement No.';
            DataClassification = SystemMetadata;
        }
        field(129; "Pmt. Disc. Tol. Multiple App."; Boolean)
        {
            Caption = 'Payment Discount Tolance if Multiple Application';
            DataClassification = SystemMetadata;
        }
        field(130; "Document Date filled by"; Option)
        {
            Caption = 'Document Date filled by';
            DataClassification = SystemMetadata;
            OptionCaption = 'Value Date,Posting Date';
            OptionMembers = "Value Date","Posting Date";
        }
        field(131; "Pmt. Method Code Returned DD"; Code[10])
        {
            Caption = 'Payment Method Returned Direct Debit';
            DataClassification = SystemMetadata;
            TableRelation = "Payment Method";
        }
        field(132; "Use Acc.-Texts for Entries Sa."; Boolean)
        {
            Caption = 'Use Account-Texts for Entries Sales';
            DataClassification = SystemMetadata;
        }
        field(133; "Analyze Sales Shipment"; Boolean)
        {
            Caption = 'Analyze Sales Shipment';
            DataClassification = SystemMetadata;
            InitValue = true;
        }
        field(136; "Codeunit Webservice"; Integer)
        {
            Caption = 'Codeunit Webservice';
        }
        field(137; "Unzip CAMT Archive"; Boolean)
        {
            Caption = 'Unzip CAMT Archive';
        }
        field(138; "CAMT Archive File Mask"; Text[30])
        {
            Caption = 'CAMT Archive File Mask';
            DataClassification = SystemMetadata;
        }
        field(139; "Priority Search Accounts"; Option)
        {
            Caption = 'Priority Search Accounts';
            DataClassification = SystemMetadata;
            OptionCaption = 'Entry before Account,Account before Entry';
            OptionMembers = Entry,Account;
        }
        field(142; "Keep Dim. Validating Bal. Acc."; Boolean)
        {
            Caption = 'Keep Dimensions Validating Balance Account';
            DataClassification = SystemMetadata;
        }
        field(143; "Default G/L Acc. for BC Code"; Code[20])
        {
            Caption = 'Default G/L Acc. for BC Code';
            DataClassification = SystemMetadata;
            TableRelation = "G/L Account";
        }
        field(144; "Proxy Address"; Text[250])
        {
            Caption = 'Proxy Address';
            DataClassification = OrganizationIdentifiableInformation;
        }
        field(145; "Proxy Port"; Integer)
        {
            Caption = 'Proxy Port';
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    procedure GetPath()
    begin
    end;

    procedure GetExtendedText(): Text[30]
    begin
    end;

    procedure ShowPurposeText()
    begin
    end;

    procedure ShowPmtImpPurposeText()
    begin
    end;

    procedure GetVersion()
    begin
    end;

    procedure ShowCSVPortText()
    begin
    end;
}