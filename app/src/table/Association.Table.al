table 5157814 Association
{
    Caption = 'Association';
    DataClassification = CustomerContent;

    fields
    {
        field(1; Type; Option)
        {
            BlankZero = true;
            Caption = 'Type';
            DataClassification = SystemMetadata;
            InitValue = Customer;
            NotBlank = true;
            OptionCaption = ',Customer,Vendor';
            OptionMembers = ,Customer,Vendor;
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = SystemMetadata;
            TableRelation = Association."No.";
        }
        field(3; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }
        field(4; "Search Name"; Code[50])
        {
            Caption = 'Search Name';
            DataClassification = CustomerContent;
        }
        field(5; "Name 2"; Text[50])
        {
            Caption = 'Name 2';
            DataClassification = CustomerContent;
        }
        field(6; Address; Text[50])
        {
            Caption = 'Address';
            DataClassification = CustomerContent;
        }
        field(7; "Address 2"; Text[50])
        {
            Caption = 'Address 2';
            DataClassification = CustomerContent;
        }
        field(8; City; Text[30])
        {
            Caption = 'City';
            DataClassification = CustomerContent;
        }
        field(9; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
            DataClassification = CustomerContent;
        }
        field(10; "Telex No."; Text[20])
        {
            Caption = 'Telex No.';
            DataClassification = CustomerContent;
        }
        field(11; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(12; "Global Dimension 1 Filter"; Code[20])
        {
            Caption = 'Global Dimension 1 Filter';
            CaptionClass = '1,3,1';
            FieldClass = FlowFilter;
        }
        field(13; "Global Dimension 2 Filter"; Code[20])
        {
            Caption = 'Global Dimension 2 Filter';
            CaptionClass = '1,3,2';
            FieldClass = FlowFilter;
        }
        field(14; "Currency Filter"; Code[10])
        {
            Caption = 'Currency Filter';
            FieldClass = FlowFilter;
            TableRelation = Currency;
        }
        field(15; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            DataClassification = CustomerContent;
        }
        field(16; "Salespers./Purch. Code"; Code[20])
        {
            Caption = 'Salespers./Purch. Code';
            DataClassification = SystemMetadata;
        }
        field(18; "Fax No."; Text[30])
        {
            Caption = 'Fax No.';
            DataClassification = CustomerContent;
        }
        field(19; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            DataClassification = CustomerContent;
        }
        field(20; County; Text[30])
        {
            Caption = 'County';
            DataClassification = CustomerContent;
        }
        field(21; "E-Mail"; Text[80])
        {
            Caption = 'E-Mail';
            DataClassification = CustomerContent;
        }
        field(22; "Home Page"; Text[80])
        {
            Caption = 'Home Page';
            DataClassification = CustomerContent;
        }
        field(23; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(24; "Leading Account No."; Code[20])
        {
            Caption = 'Leading Account No.';
            DataClassification = SystemMetadata;
        }
        field(25; "Pmt. Account No."; Code[20])
        {
            Caption = 'Pmt. Account No.';
            DataClassification = SystemMetadata;
        }
        field(26; "Keep old Entries"; Boolean)
        {
            Caption = 'Keep old Entries';
            DataClassification = SystemMetadata;
        }
        field(27; "Association Credit Limit (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Assoc. Credit Limit (LCY)';
            DataClassification = SystemMetadata;
        }
        field(28; "Check Credit Limit"; Boolean)
        {
            Caption = 'Check Credit Limit';
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(Key1; Type, "No.")
        {
            Clustered = true;
        }
        key(Key2; Type, "Leading Account No.")
        {
        }
    }
    procedure UpdateAssocEntries(Assoc: Record Association)
    begin
    end;
}