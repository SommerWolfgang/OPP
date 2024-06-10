table 5157913 "Bank Account Mandate"
{
    Caption = 'Bank Account Mandate';
    DataClassification = SystemMetadata;
    fields
    {
        field(1; "Account Type"; Option)
        {
            Caption = 'Account Type';
            DataClassification = SystemMetadata;
            NotBlank = true;
            OptionCaption = 'Customer,Vendor';
            OptionMembers = Customer,Vendor;
        }
        field(2; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            DataClassification = SystemMetadata;
            NotBlank = true;
        }
        field(3; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(4; "Code"; Code[20])
        {
            Caption = 'Code';
            DataClassification = SystemMetadata;
        }
        field(5; "Mandate ID"; Code[35])
        {
            Caption = 'Mandate Id';
            DataClassification = CustomerContent;
        }
        field(6; IBAN; Code[50])
        {
            Caption = 'IBAN';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(7; "SWIFT Code"; Code[20])
        {
            Caption = 'SWIFT Code';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(10; "Mandate Date"; Date)
        {
            Caption = 'Mandate Date';
            DataClassification = SystemMetadata;
        }
        field(11; "Mandate Type"; Option)
        {
            Caption = 'SEPA Type';
            DataClassification = SystemMetadata;
            OptionCaption = 'CORE,B2B';
            OptionMembers = CORE,B2B;
        }
        field(12; "Mandate Frequency"; Option)
        {
            Caption = 'Type of Mandate';
            DataClassification = SystemMetadata;
            InitValue = "Recurrent Payment";
            OptionCaption = 'One-off Payment,Recurrent Payment';
            OptionMembers = "One-off Payment","Recurrent Payment";
        }
        field(14; "Mandate On Behalf of Owner"; Boolean)
        {
            Caption = 'On Behalf of Owner';
            DataClassification = SystemMetadata;
        }
        field(15; "Mandate Is Electronic"; Boolean)
        {
            Caption = 'e-Mandate';
            DataClassification = SystemMetadata;
        }
        field(16; "Mandate Last Used"; Date)
        {
            Caption = 'Last Used';
            DataClassification = SystemMetadata;
        }
        field(17; "Mandate Status"; Option)
        {
            BlankZero = true;
            Caption = 'Status of Mandate';
            DataClassification = SystemMetadata;
            InitValue = FRST;
            OptionCaption = ' ,First,Recurring,Final';
            OptionMembers = " ",FRST,RCUR,FNAL;
        }
        field(20; "Maximum Amount"; Decimal)
        {
            Caption = 'Maximum Amount';
            DataClassification = SystemMetadata;
        }
        field(21; "Maximum Usage"; Integer)
        {
            Caption = 'Maximum Usage';
            DataClassification = SystemMetadata;
        }
        field(22; "Valid from Date"; Date)
        {
            Caption = 'Valid from Date';
            DataClassification = SystemMetadata;
        }
        field(23; "Valid to Date"; Date)
        {
            Caption = 'Valid to Date';
            DataClassification = SystemMetadata;
        }
        field(24; Usage; Integer)
        {
            Caption = 'Usage';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(25; "Single Payment"; Boolean)
        {
            Caption = 'Single Payment';
            DataClassification = SystemMetadata;
        }
        field(27; OrgnlMndtId; Code[35])
        {
            Caption = 'OrgnlMndtId';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(28; "Alt. Creditor Identifier"; Code[38])
        {
            Caption = 'Alt. Creditor Identifier';
            DataClassification = OrganizationIdentifiableInformation;
        }
    }

    keys
    {
        key(Key1; "Mandate ID")
        {
            Clustered = true;
        }
        key(Key2; "Account Type", "Account No.", "Code", "Mandate ID")
        {
        }
    }

    procedure Is_Valid(PostingDate: Date; PmtAmt: Decimal) IsValid: Boolean
    begin
    end;

    procedure CheckCustEntryBeforeDelete()
    begin
    end;

    procedure CheckVendEntryBeforeDelete()
    begin
    end;
}