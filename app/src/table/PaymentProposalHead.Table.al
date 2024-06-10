table 5157896 "Payment Proposal Head"
{
    Caption = 'Payment Proposal Header';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            DataClassification = SystemMetadata;
            NotBlank = true;
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }
        field(3; "Search Name"; Code[50])
        {
            Caption = 'Search Name';
            DataClassification = CustomerContent;
        }
        field(4; "Name 2"; Text[50])
        {
            Caption = 'Name 2';
            DataClassification = CustomerContent;
        }
        field(5; Address; Text[50])
        {
            Caption = 'Address';
            DataClassification = CustomerContent;
        }
        field(6; "Address 2"; Text[50])
        {
            Caption = 'Address 2';
            DataClassification = CustomerContent;
        }
        field(7; City; Text[30])
        {
            Caption = 'City';
            DataClassification = CustomerContent;
        }
        field(8; "Account Type"; Option)
        {
            Caption = 'Account Type';
            DataClassification = SystemMetadata;
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account,,,Employee';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account",,,Employee;

            trigger OnValidate()
            begin
                Validate("Account No.", '');
            end;
        }
        field(9; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            DataClassification = SystemMetadata;
            TableRelation = Language;
        }
        field(10; "Payment Terms Code"; Code[10])
        {
            Caption = 'Payment Terms Code';
            DataClassification = AccountData;
            Editable = false;
            TableRelation = "Payment Terms";
        }
        field(11; "Country/Region Code"; Code[10])
        {
            Caption = 'Cust./Vend. Country/Region Code';
            DataClassification = CustomerContent;
        }
        field(12; "Bank Name"; Text[50])
        {
            Caption = 'Bank Name';
            DataClassification = CustomerContent;
        }
        field(13; "Bank Branch No."; Code[20])
        {
            Caption = 'Bank Branch No.';
            DataClassification = CustomerContent;
        }
        field(14; "Bank Account No."; Code[34])
        {
            Caption = 'Bank Account No.';
            DataClassification = CustomerContent;
        }
        field(15; "Bank BIC Code"; Code[20])
        {
            Caption = 'BIC-Code';
            DataClassification = CustomerContent;
        }
        field(16; "Bank IBAN Code"; Code[50])
        {
            Caption = 'IBAN';
            DataClassification = CustomerContent;
        }
        field(17; "Bank Code"; Code[20])
        {
            Caption = 'Bank Code';
            DataClassification = SystemMetadata;
        }
        field(18; "Orig. Payment Method"; Code[10])
        {
            Caption = 'Orig. Payment Method';
            DataClassification = AccountData;
            Editable = false;
            TableRelation = "Payment Method";
        }
        field(19; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            DataClassification = CustomerContent;
        }
        field(20; "Print Payment Advice"; Boolean)
        {
            Caption = 'Print Payment Advice';
            DataClassification = SystemMetadata;
        }
        field(21; "E-Mail"; Text[80])
        {
            Caption = 'E-Mail';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(23; Posted; Boolean)
        {
            Caption = 'Posted';
            DataClassification = SystemMetadata;
        }
        field(24; "Payment Done"; Boolean)
        {
            Caption = 'Payment Done';
            DataClassification = SystemMetadata;
        }
        field(25; "Payment Type Code"; Code[10])
        {
            Caption = 'Payment Type Code';
            DataClassification = SystemMetadata;
            TableRelation = "Payment Type Code" where(Inactive = const(false));
        }
        field(26; CitySearch; Code[30])
        {
            Caption = 'CitySearch';
            DataClassification = CustomerContent;
        }
        field(28; "Gen. Journal Template"; Code[10])
        {
            Caption = 'Gen. Journal Template';
            DataClassification = SystemMetadata;
            NotBlank = true;
        }
        field(29; "Gen. Journal Line"; Integer)
        {
            Caption = 'Gen. Journal Line';
            DataClassification = SystemMetadata;
        }
        field(30; "Gen. Journal Batch"; Code[10])
        {
            Caption = 'Gen. Journal Batch';
            DataClassification = SystemMetadata;
            NotBlank = true;
        }
        field(31; "Reason Row 1"; Text[35])
        {
            Caption = 'Reason Row 1';
            DataClassification = SystemMetadata;
        }
        field(32; "Reason Row 2"; Text[35])
        {
            Caption = 'Reason Row 2';
            DataClassification = SystemMetadata;
        }
        field(33; "Reason Row 3"; Text[35])
        {
            Caption = 'Reason Row 3';
            DataClassification = SystemMetadata;
        }
        field(34; "Reason Row 4"; Text[35])
        {
            Caption = 'Reason Row 4';
            DataClassification = SystemMetadata;
        }
        field(35; "Reason Row 5"; Text[35])
        {
            Caption = 'Reason Row 5';
            DataClassification = SystemMetadata;
        }
        field(36; "Reason Row 6"; Text[35])
        {
            Caption = 'Reason Row 6';
            DataClassification = SystemMetadata;
        }
        field(37; "Reason Row 7"; Text[35])
        {
            Caption = 'Reason Row 7';
            DataClassification = SystemMetadata;
        }
        field(38; "Reason Row 8"; Text[35])
        {
            Caption = 'Reason Row 8';
            DataClassification = SystemMetadata;
        }
        field(39; "Reason Row 9"; Text[35])
        {
            Caption = 'Reason Row 9';
            DataClassification = SystemMetadata;
        }
        field(40; "Reason Row 10"; Text[35])
        {
            Caption = 'Reason Row 10';
            DataClassification = SystemMetadata;
        }
        field(41; "Reason Row 11"; Text[35])
        {
            Caption = 'Reason Row 11';
            DataClassification = SystemMetadata;
        }
        field(42; "Reason Row 12"; Text[35])
        {
            Caption = 'Reason Row 12';
            DataClassification = SystemMetadata;
        }
        field(43; "Reason Row 13"; Text[35])
        {
            Caption = 'Reason Row 13';
            DataClassification = SystemMetadata;
        }
        field(44; "Reason Row 14"; Text[35])
        {
            Caption = 'Reason Row 14';
            DataClassification = SystemMetadata;
        }
        field(45; "Position Counter"; Decimal)
        {
            CalcFormula = sum("Payment Proposal Line".Counter where("Journal Template Name" = field("Gen. Journal Template"),
                                                                     "Journal Batch Name" = field("Gen. Journal Batch"),
                                                                     "Journal Line No." = field("Gen. Journal Line")));
            Caption = 'Position Counter';
            DecimalPlaces = 0 : 0;
            Editable = false;
            FieldClass = FlowField;
        }
        field(47; Errortext; Text[250])
        {
            CalcFormula = lookup("Payment Proposal Error"."Error Description" where("Journal Template Name" = field("Gen. Journal Template"),
                                                                                     "Journal Batch Name" = field("Gen. Journal Batch"),
                                                                                     "Journal Line No." = field("Gen. Journal Line"),
                                                                                     "Warning Message" = const(false)));
            Caption = 'Errortext';
            Editable = false;
            FieldClass = FlowField;
        }
        field(48; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = SystemMetadata;

            trigger OnValidate()
            begin
                Validate("Pmt. Currency Code");
            end;
        }
        field(50; "Bal. Account No."; Code[20])
        {
            Caption = 'Bal. Account No.';
            DataClassification = SystemMetadata;
        }
        field(51; "Orderer Bank Name"; Text[50])
        {
            Caption = 'Orderer Bank Name';
            DataClassification = OrganizationIdentifiableInformation;
            Editable = false;
        }
        field(52; "Orderer Bank Branch No."; Code[20])
        {
            Caption = 'Orderer Bank Branch No.';
            DataClassification = OrganizationIdentifiableInformation;
            Editable = false;
        }
        field(53; "Orderer Bank Account No."; Code[34])
        {
            Caption = 'Orderer Bank Account No.';
            DataClassification = OrganizationIdentifiableInformation;
            Editable = false;
        }
        field(54; "Orderer Bank BIC Code"; Code[20])
        {
            Caption = 'Orderer Bank BIC Code';
            DataClassification = OrganizationIdentifiableInformation;
            Editable = false;
        }
        field(55; "Orderer Bank IBAN Code"; Code[50])
        {
            Caption = 'Orderer Bank IBAN Code';
            DataClassification = OrganizationIdentifiableInformation;
            Editable = false;
        }
        field(56; "Orderer Country/Region Code"; Code[10])
        {
            Caption = 'Orderer Country/Region Code';
            DataClassification = OrganizationIdentifiableInformation;
            Editable = false;
        }
        field(57; "Bank Country/Region Code"; Code[10])
        {
            Caption = 'Bank Country/Region Code';
            DataClassification = CustomerContent;
        }
        field(58; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(59; "Fax No."; Text[30])
        {
            Caption = 'Fax No.';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(60; "Home Page"; Text[80])
        {
            Caption = 'Home Page';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(61; "Single Payment"; Boolean)
        {
            Caption = 'Single Payment';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(62; "Our Account No."; Text[20])
        {
            Caption = 'Our Account No.';
            DataClassification = SystemMetadata;
        }
        field(63; "Min. Pos. Payment Note"; Integer)
        {
            Caption = 'Min. Pos. Payment Note';
            DataClassification = SystemMetadata;
        }
        field(64; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = SystemMetadata;
        }
        field(65; "Total Amount"; Decimal)
        {
            Caption = 'Total Amount';
            DataClassification = SystemMetadata;
        }
        field(66; "Bank Account Owner"; Text[50])
        {
            Caption = 'Alternative Account Owner';
            DataClassification = CustomerContent;
        }
        field(68; "Foreign Payment Type"; Option)
        {
            Caption = 'Foreign Payment Type';
            DataClassification = SystemMetadata;
            Description = 'DTAZV';
            OptionCaption = 'General,Standard EU,EU Express,SWIFT-Express,Cross-border Transfer';
            OptionMembers = General,"EU Standard","EU Express","SWIFT Express","Cross-border Transfer";
        }
        field(69; "Orderer Bank Currency Code"; Code[10])
        {
            Caption = 'Orderer Bank Currency Code';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(71; Charges; Option)
        {
            Caption = 'Charges';
            DataClassification = SystemMetadata;
            OptionCaption = 'Share,Orderer,Beneficiary';
            OptionMembers = Share,Orderer,Beneficiary;
        }
        field(72; "No. of Reports"; Integer)
        {
            CalcFormula = count("Bundesbank Report" where("Gen. Journal Template" = field("Gen. Journal Template"),
                                                           "Gen. Journal Batch" = field("Gen. Journal Batch"),
                                                           "Gen. Journal Line" = field("Gen. Journal Line")));
            Caption = 'Reports Bundesbank';
            Description = 'DTAZV';
            Editable = false;
            FieldClass = FlowField;
        }
        field(73; "Pmt. Currency Code"; Code[10])
        {
            Caption = 'Pmt. Currency Code';
            DataClassification = SystemMetadata;
        }
        field(78; "Instruction 1"; Code[10])
        {
            Caption = 'Instruction Code';
            DataClassification = SystemMetadata;
        }
        field(79; "Instruction 2"; Code[10])
        {
            Caption = 'Instruction Code 2';
            DataClassification = SystemMetadata;
        }
        field(81; "Instruction 4"; Code[10])
        {
            Caption = 'Instruction Code 4';
            DataClassification = SystemMetadata;
        }
        field(82; "Instruction Info"; Text[25])
        {
            Caption = 'Instruction Add. Info';
            DataClassification = SystemMetadata;
            Description = 'DTAZV';
        }
        field(83; "Pay in Currency"; Code[10])
        {
            Caption = 'Pay in Currency';
            DataClassification = SystemMetadata;
            TableRelation = Currency;
        }
        field(90; "Mandate ID"; Code[40])
        {
            Caption = 'Mandate ID';
            DataClassification = CustomerContent;
        }
        field(91; "Mandate Date"; Date)
        {
            Caption = 'Mandate Date';
            DataClassification = SystemMetadata;
        }
        field(92; "Check Ledger Entry No."; Integer)
        {
            Caption = 'Check Ledger Entry No.';
            DataClassification = SystemMetadata;
        }
        field(93; Priority; Integer)
        {
            Caption = 'Priority';
            DataClassification = SystemMetadata;
        }
        field(94; "Bal. Account Type"; Option)
        {
            Caption = 'Bal. Account Type';
            DataClassification = SystemMetadata;
            OptionCaption = 'G/L Account,,,Bank Account';
            OptionMembers = "G/L Account",,,"Bank Account";
        }
        field(96; "Limit Lines per Head"; Integer)
        {
            Caption = 'Limit Lines per Head';
            DataClassification = SystemMetadata;
        }
        field(98; "Int. Pmt. Method Code"; Code[10])
        {
            Caption = 'Int. Pmt. Method Code';
            DataClassification = AccountData;
            Editable = false;
        }
        field(99; "Int. Bank Code"; Code[34])
        {
            Caption = 'Int. Bank Code';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(102; "Int. Mandate ID"; Code[40])
        {
            Caption = 'Int. Mandate ID';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(103; "SEPA Due Days"; Integer)
        {
            Caption = 'SEPA Due Days';
            DataClassification = SystemMetadata;
        }
        field(104; "Trading Type"; Option)
        {
            Caption = 'Trading Type';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Transit Trade,Service,Capital Trade';
            OptionMembers = " ",Transit,Service,Capital;
        }
        field(105; "Service No."; Code[10])
        {
            Caption = 'Service No.';
            DataClassification = SystemMetadata;
            TableRelation = "Bundesbank Code";
        }
        field(106; "Mandate Status"; Code[4])
        {
            Caption = 'Mandate Status';
            DataClassification = SystemMetadata;
            ValuesAllowed = '', 'FRST', 'RCUR', 'FNAL', 'OOFF';
        }
        field(107; "Mandate Type"; Option)
        {
            Caption = 'Mandate Type';
            DataClassification = SystemMetadata;
            OptionCaption = 'CORE,B2B,COR1';
            OptionMembers = CORE,B2B,COR1;
        }
        field(108; "Alt. Creditor Identifier"; Code[38])
        {
            Caption = 'Alt. Creditor Identifier';
            DataClassification = OrganizationIdentifiableInformation;
        }
        field(109; Updated; Boolean)
        {
            Caption = 'Updated';
            DataClassification = SystemMetadata;
            Description = 'InternalField';
        }
        field(110; "Routing No."; Code[20])
        {
            Caption = 'Routing No.';
        }
        field(120; "Transit No."; Text[20])
        {
            Caption = 'Transit No.';
        }
        field(130; "ISO Pmt. Transaction SvcLvl"; Option)
        {
            Caption = 'ISO Pmt. Transaction SvcLvl';
            OptionCaption = ' ,URGP,NURG,SDVA,PRPT';
            OptionMembers = " ",URGP,NURG,SDVA,PRPT;
        }
        field(140; "Orderer Bank Suppl. Branch Cd."; Code[10])
        {
            Caption = 'Orderer Bank Suppl. Branch Cd.';
        }
        field(144; "SHA-256 Hash Value"; Text[100])
        {
            Caption = 'SHA-256 Hash Value';
            DataClassification = SystemMetadata;
        }
        field(145; "Merge Mark"; Boolean)
        {
            Caption = 'Merge Mark';
            DataClassification = SystemMetadata;
        }
        field(146; "Remittance Inform. Ref. Type"; Option)
        {
            Caption = 'Remittance Inform. Ref. Type';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Unstructured,Structured';
            OptionMembers = " ",Unstructured,Structured;
        }
        field(147; "Advice Shipping Type"; Option)
        {
            Caption = 'Advice Shipping Type';
            DataClassification = SystemMetadata;
            OptionCaption = 'Letter,Fax,Email';
            OptionMembers = Print,Fax,Email;
        }
        field(148; "Bank Name 2"; Text[50])
        {
            Caption = 'Bank Name 2';
            DataClassification = SystemMetadata;
        }
        field(149; "Bank Address"; Text[50])
        {
            Caption = 'Bank Address';
            DataClassification = SystemMetadata;
        }
        field(150; "Bank Address 2"; Text[50])
        {
            Caption = 'Bank Address 2';
            DataClassification = SystemMetadata;
        }
        field(151; "Bank City"; Text[30])
        {
            Caption = 'Bank City';
            DataClassification = SystemMetadata;
        }
        field(152; "Bank Post Code"; Code[20])
        {
            Caption = 'Bank Post Code';
            DataClassification = SystemMetadata;
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(153; "Bank Suppl. Branch Cd."; Code[10])
        {
            Caption = 'Bank Suppl. Branch Code';
            DataClassification = SystemMetadata;
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
        key(Key1; "Gen. Journal Template", "Gen. Journal Batch", "Gen. Journal Line")
        {
            Clustered = true;
        }
        key(Key2; "Gen. Journal Template", "Gen. Journal Batch", "Search Name")
        {
        }
        key(Key3; "Gen. Journal Template", "Gen. Journal Batch", Name)
        {
        }
        key(Key4; "Gen. Journal Template", "Gen. Journal Batch", "Account Type", "Account No.", "Payment Type Code")
        {
        }
        key(Key5; "Gen. Journal Template", "Gen. Journal Batch", CitySearch, "Account No.")
        {
        }
        key(Key6; "Gen. Journal Template", "Gen. Journal Batch", "Post Code", "Account No.")
        {
        }
        key(Key7; "Search Name")
        {
        }
        key(Key8; "Gen. Journal Template", "Gen. Journal Batch", "Payment Type Code", "Account Type", "Account No.")
        {
        }
        key(Key9; "Gen. Journal Template", "Gen. Journal Batch", "Total Amount")
        {
        }
        key(Key10; "Gen. Journal Template", "Gen. Journal Batch", "Bal. Account No.")
        {
            SumIndexFields = "Total Amount";
        }
        key(Key11; "Document No.", "Posting Date")
        {
        }
        key(Key12; "Gen. Journal Template", "Gen. Journal Batch", "Payment Type Code", "SEPA Due Days")
        {
        }
        key(Key13; "Gen. Journal Template", "Gen. Journal Batch", Priority)
        {
        }
        key(Key14; "Account Type", "Account No.", "Mandate ID")
        {
        }
    }
    procedure GetDefaults()
    begin
    end;

    procedure CheckPaymentType()
    begin
    end;

    procedure AddError(Description: Text[250])
    begin
    end;

    procedure AddWarning(Description: Text[250])
    begin
    end;

    procedure CreatePurpose()
    begin
    end;

    procedure ReadSetup()
    begin
    end;

    procedure PmtInfo() HeadInfo: Text[250]
    begin
    end;

    procedure Last_Payment(No: Code[20]) Total: Decimal
    begin
    end;

    procedure DrillDown_LastPmt(No: Code[20])
    begin
    end;

    procedure GetAccountToCharge(): Text[30]
    begin
    end;

    procedure CheckMandateSum(PmtProposalHead: Record "Payment Proposal Head"): Boolean
    begin
    end;

    procedure CheckMandateUse(PmtProposalHead: Record "Payment Proposal Head"): Boolean
    begin
    end;

    procedure CheckMandateDateValid(PmtProposalHead: Record "Payment Proposal Head"): Boolean
    begin
    end;

    procedure CheckMandateDateStart(PmtProposalHead: Record "Payment Proposal Head"): Boolean
    begin
    end;

    procedure CheckMandateExpirationDate(PmtProposalHead: Record "Payment Proposal Head"; PaymentProposal: Record "Payment Proposal"): Boolean
    begin
    end;

    procedure CheckSWIFTCoderequired(BICCode: Code[20]; BICCodeCaption: Text[50])
    begin
    end;

    procedure CheckBICCoderequired(BICCode: Code[20]; BICCodeCaption: Text[50])
    begin
    end;

    procedure CheckIBANrequired(IBAN: Code[50]; IBANCaption: Text[50])
    begin
    end;

    procedure CheckBankBranchRequired(BankBranchCode: Code[20]; BankBranchCodeCaption: Text[50])
    begin
    end;

    procedure CheckAccountNoRequired(BBAN: Code[50]; BBANCaption: Text[50])
    begin
    end;

    procedure CheckRoutingNoRequired(RoutingNo: Code[20]; RoutingNoCaption: Text[50])
    begin
    end;

    procedure CheckTransitNoRequired(TransitNo: Text[30]; TransitNoCaption: Text[50])
    begin
    end;


    procedure CheckServiceLevelRequired(ServicelevelOption: Text[30]; ServicelevelCaption: Text[50])
    begin
    end;

    procedure CheckBenBankAddressRequired(BenBankAddressOption: Text[30]; BenBankAddressCaption: Text[50])
    begin
    end;

    procedure CheckIfNoBICBenBankCntryRequired(BenBankCtryOption: Text[30]; BenBankCtryCaption: Text[50])
    begin
    end;

    procedure WarnOrderBankSchemaMissing(var PmtHead: Record "Payment Proposal Head")
    begin
    end;

    procedure WarnTransSchemaMissing(var PmtHead: Record "Payment Proposal Head")
    begin
    end;

    procedure TransSchemaMissingCheckDefaultValues()
    begin
    end;

    procedure SendRecords(Automatic: Boolean)
    begin
    end;


    procedure SendRecordsSpecified(AutomaticOption: Option Print,Fax,Mail,All)
    begin
    end;


    procedure SendProfile(var DocumentSendingProfile: Record "Document Sending Profile"; Automatic: Boolean)
    begin
    end;

    procedure PreCheckSendAdvice(var PmtProposalHead: Record "Payment Proposal Head")
    begin
    end;

    procedure ShowStandingOrderText()
    begin
    end;
}