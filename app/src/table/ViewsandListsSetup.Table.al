table 5157863 "Views and Lists Setup"
{
    Caption = 'Views and Lists Setup';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = SystemMetadata;
        }
        field(2; "Use Section Lining"; Boolean)
        {
            Caption = 'Use Section Lining';
            DataClassification = SystemMetadata;
            InitValue = true;
        }
        field(3; "Show Bal. Account"; Boolean)
        {
            Caption = 'Show Bal. Account';
            DataClassification = SystemMetadata;
            InitValue = true;
        }
        field(4; "Search Bal. Account"; Option)
        {
            Caption = 'Search Bal. Account';
            DataClassification = SystemMetadata;
            OptionCaption = 'Via Transaction No.,Via Document No.';
            OptionMembers = "via Transaction","via Document";
        }
        field(5; "Show with FA Postings"; Option)
        {
            Caption = 'Show with FA Postings';
            DataClassification = SystemMetadata;
            OptionCaption = 'FA Name,Bal. Account';
            OptionMembers = "FA Name","Bal. Account";
        }
        field(6; "Cust. Ext. Doc. No. Changeable"; Boolean)
        {
            Caption = 'Cust. Ext. Doc. No. Changeable';
            DataClassification = SystemMetadata;
        }
        field(7; "Vend. Ext. Doc. No. Changeable"; Boolean)
        {
            Caption = 'Vend. Ext. Doc. No. Changeable';
            DataClassification = SystemMetadata;
        }
        field(8; "G/L Ext. Doc. No. Changeable"; Boolean)
        {
            Caption = 'G/L Ext. Doc. No. Changeable';
            DataClassification = SystemMetadata;
        }
        field(9; "Cust. Description Changeable"; Boolean)
        {
            Caption = 'Cust. Description Changeable';
            DataClassification = SystemMetadata;
        }
        field(10; "Vend. Description Changeable"; Boolean)
        {
            Caption = 'Vend. Description Changeable';
            DataClassification = SystemMetadata;
        }
        field(11; "G/L Description Changeable"; Boolean)
        {
            Caption = 'G/L Description Changeable';
            DataClassification = SystemMetadata;
        }
        field(12; "Hyperlink Color"; Boolean)
        {
            Caption = 'Hyperlink colored';
            DataClassification = SystemMetadata;
        }
        field(13; "Rem. Terms Code Bal. Ack.Cust."; Code[10])
        {
            Caption = 'Rem. Terms Code for Bal. Ack.-Mail-Text Customer';
        }
        field(14; "Rem. Terms Code Bal. Ack.Vend."; Code[10])
        {
            Caption = 'Rem. Terms Code for Bal. Ack.-Mail-Text Vendor';
        }
        field(15; "Email Sender"; Text[80])
        {
            Caption = 'Email Sender';
        }
        field(16; "Email Sender Name"; Text[30])
        {
            Caption = 'Email Sender Name';
        }
        field(17; "Bal. Ack. PDF File Path"; Code[250])
        {
            Caption = 'Bal. Ack. PDF File Path';
        }
        field(18; "Date Form. App. Date Bal. Ack."; DateFormula)
        {
            Caption = 'Date Formula Appointed Date Bal. Ack.';
            DataClassification = SystemMetadata;
        }
        field(19; "Print Bal. Ack. Page 1 Ship."; Boolean)
        {
            Caption = 'Print Page 1 Bal. Ack. Shipping';
            DataClassification = SystemMetadata;
        }
        field(20; "Print Bal. Ack. Page 2 Ship."; Boolean)
        {
            Caption = 'Print Page 2 Bal. Ack. Shipping';
            DataClassification = SystemMetadata;
        }
        field(21; "Print Bal. Ack. Page 3 Ship."; Boolean)
        {
            Caption = 'Print Page 3 Bal. Ack. Shipping';
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

    procedure GetVersion()
    begin
    end;


    procedure Setup()
    begin
    end;

    procedure SetSilent()
    begin
    end;
}