table 5157900 "Single Pmt. Bank Account"
{
    Caption = 'Single Pmt. Bank Account';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Account Type"; Option)
        {
            Caption = 'Account Type';
            DataClassification = SystemMetadata;
            OptionCaption = 'G/L Account,Customer,Vendor';
            OptionMembers = "G/L Account",Customer,Vendor;
        }
        field(2; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = SystemMetadata;
        }
        field(3; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(4; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            ClosingDates = true;
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(5; "Document Type"; Option)
        {
            Caption = 'Document Type';
            DataClassification = SystemMetadata;
            Editable = false;
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(6; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(10; "Bank Code"; Code[20])
        {
            Caption = 'Bank Code';
            DataClassification = SystemMetadata;
            NotBlank = true;
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
        field(17; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }
        field(18; "Name 2"; Text[50])
        {
            Caption = 'Name 2';
            DataClassification = CustomerContent;
        }
        field(19; Address; Text[50])
        {
            Caption = 'Address';
            DataClassification = CustomerContent;
        }
        field(20; "Address 2"; Text[50])
        {
            Caption = 'Address 2';
            DataClassification = CustomerContent;
        }
        field(21; City; Text[30])
        {
            Caption = 'City';
            DataClassification = CustomerContent;
        }
        field(22; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            DataClassification = CustomerContent;
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(23; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            DataClassification = CustomerContent;
            TableRelation = "Country/Region";
        }
        field(24; "Bank Country/Region Code"; Code[10])
        {
            Caption = 'Bank Country/Region Code';
            DataClassification = SystemMetadata;
            TableRelation = "Country/Region";
        }
        field(30; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            DataClassification = SystemMetadata;
        }
        field(31; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
            DataClassification = SystemMetadata;
        }
        field(32; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = SystemMetadata;
        }
        field(33; "Bank Account Owner"; Text[50])
        {
            Caption = 'Alternative Account Owner';
            DataClassification = CustomerContent;
        }
        field(34; "Alt. Creditor Identifier"; Code[38])
        {
            Caption = 'Alt. Creditor Identifier';
            DataClassification = OrganizationIdentifiableInformation;
        }
        field(78; "Mandate ID"; Code[40])
        {
            Caption = 'Mandate Id';
            DataClassification = CustomerContent;
        }
        field(79; "Mandate Date"; Date)
        {
            Caption = 'Mandate Date';
            DataClassification = SystemMetadata;
            Description = 'SEPA DD';
        }
        field(80; "Payment Type Code"; Code[10])
        {
            Caption = 'Payment Type Code';
            DataClassification = SystemMetadata;
            TableRelation = "Payment Type Code";
        }
        field(82; "Bank Name 2"; Text[50])
        {
            Caption = 'Bank Name 2';
            DataClassification = SystemMetadata;
        }
        field(83; "Bank Address"; Text[50])
        {
            Caption = 'Bank Address';
            DataClassification = SystemMetadata;
        }
        field(84; "Bank Address 2"; Text[50])
        {
            Caption = 'Bank Address 2';
            DataClassification = SystemMetadata;
        }
        field(85; "Bank City"; Text[30])
        {
            Caption = 'Bank City';
            DataClassification = SystemMetadata;
        }
        field(86; "Bank Post Code"; Code[20])
        {
            Caption = 'Bank Post Code';
            DataClassification = SystemMetadata;
            TableRelation = if ("Country/Region Code" = const('')) "Post Code"
            else
            if ("Country/Region Code" = filter(<> '')) "Post Code" where("Country/Region Code" = field("Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5157898; "Mandate Type"; Option)
        {
            Caption = 'SEPA Type';
            DataClassification = SystemMetadata;
            Description = 'PMT';
            OptionCaption = 'CORE,B2B';
            OptionMembers = CORE,B2B;
        }
        field(5157899; "Mandate Frequency"; Option)
        {
            Caption = 'Type of Mandate';
            DataClassification = SystemMetadata;
            Description = 'PMT';
            InitValue = "Recurrent Payment";
            OptionCaption = 'One-off Payment,Recurrent Payment';
            OptionMembers = "One-off Payment","Recurrent Payment";
        }
        field(5157900; "Mandate Is Electronic"; Boolean)
        {
            Caption = 'e-Mandate';
            DataClassification = SystemMetadata;
            Description = 'PMT';
        }
        field(5157901; "Mandate On Behalf of Owner"; Boolean)
        {
            Caption = 'On Behalf of Owner';
            DataClassification = SystemMetadata;
            Description = 'PMT';
        }
        field(5157902; "Mandate Last Used"; Date)
        {
            Caption = 'Last Used';
            DataClassification = SystemMetadata;
            Description = 'PMT';
        }
        field(5157903; "Mandate Status"; Option)
        {
            BlankZero = true;
            Caption = 'Status of Mandate';
            DataClassification = SystemMetadata;
            Description = 'PMT';
            InitValue = FRST;
            OptionCaption = ' ,First,Recurring,Final';
            OptionMembers = " ",FRST,RCUR,FNAL;
        }
    }

    keys
    {
        key(Key1; "Account Type", "Entry No.", "Journal Template Name", "Journal Batch Name", "Line No.", "Document Type", "Document No.")
        {
            Clustered = true;
        }
    }

    procedure CreateIBANSWIFT()
    begin
    end;
}