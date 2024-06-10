table 5157915 "Bank Account Mandate History"
{
    Caption = 'Bank Account Mandate History';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Mandate ID"; Code[35])
        {
            Caption = 'Mandate Id';
            DataClassification = CustomerContent;
        }
        field(2; "Version No."; Integer)
        {
            Caption = 'Version No.';
            DataClassification = SystemMetadata;
        }
        field(3; "Account Type"; Option)
        {
            Caption = 'Account Type';
            DataClassification = SystemMetadata;
            NotBlank = true;
            OptionCaption = 'Customer,Vendor';
            OptionMembers = Customer,Vendor;
        }
        field(4; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            DataClassification = SystemMetadata;
            NotBlank = true;
            TableRelation = if ("Account Type" = const(Customer)) Customer
            else
            if ("Account Type" = const(Vendor)) Vendor;
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
            Description = '';
            OptionCaption = 'CORE,B2B';
            OptionMembers = CORE,B2B;
        }
        field(12; "Mandate Frequency"; Option)
        {
            Caption = 'Type of Mandate';
            DataClassification = SystemMetadata;
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
        field(24; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }
        field(25; Identifier; Text[50])
        {
            Caption = 'Identifier';
            DataClassification = CustomerContent;
        }
        field(26; Sender; Text[100])
        {
            Caption = 'Sender';
            DataClassification = CustomerContent;
        }
        field(27; Orderer; Text[100])
        {
            Caption = 'Orderer';
            DataClassification = CustomerContent;
        }
        field(28; Owner; Text[50])
        {
            Caption = 'Owner';
            DataClassification = CustomerContent;
        }
        field(29; Usage; Integer)
        {
            Caption = 'Usage';
            DataClassification = SystemMetadata;
        }
        field(31; "Payment Proposal Date"; Date)
        {
            Caption = 'Payment Proposal Date';
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(Key1; "Mandate ID", "Version No.")
        {
            Clustered = true;
        }
    }
}