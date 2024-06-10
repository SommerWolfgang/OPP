table 5483221 "Fixed Asset Template"
{
    Caption = 'Fixed Asset Template';
    DataCaptionFields = "No.", Description;
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; Description; Text[30])
        {
            Caption = 'Description';
        }
        field(3; "Search Description"; Code[30])
        {
            Caption = 'Search Description';
            DataClassification = SystemMetadata;
        }
        field(4; "Description 2"; Text[30])
        {
            Caption = 'Description 2';
            DataClassification = SystemMetadata;
        }
        field(5; "FA Class Code"; Code[10])
        {
            Caption = 'FA Class Code';
            DataClassification = SystemMetadata;
            TableRelation = "FA Class";
        }
        field(6; "FA Subclass Code"; Code[10])
        {
            Caption = 'FA Subclass Code';
            DataClassification = SystemMetadata;
            TableRelation = "FA Subclass";
        }
        field(7; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            CaptionClass = '1,1,1';
            DataClassification = SystemMetadata;
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(1));

            trigger OnValidate()
            begin
                ValidateShortcutDimCode(1, "Global Dimension 1 Code");
            end;
        }
        field(8; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            CaptionClass = '1,1,2';
            DataClassification = SystemMetadata;
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(2));

            trigger OnValidate()
            begin
                ValidateShortcutDimCode(2, "Global Dimension 2 Code");
            end;
        }
        field(9; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            DataClassification = SystemMetadata;
            TableRelation = Location where("Use As In-Transit" = const(false));
        }
        field(10; "FA Location Code"; Code[10])
        {
            Caption = 'FA Location Code';
            DataClassification = SystemMetadata;
            TableRelation = "FA Location";
        }
        field(11; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            DataClassification = SystemMetadata;
            TableRelation = Vendor;
        }
        field(16; "Responsible Employee"; Code[20])
        {
            Caption = 'Responsible Employee';
            DataClassification = SystemMetadata;
            TableRelation = Employee;
        }
        field(18; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(23; "Maintenance Vendor No."; Code[20])
        {
            Caption = 'Maintenance Vendor No.';
            DataClassification = SystemMetadata;
            TableRelation = Vendor;
        }
        field(28; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            DataClassification = SystemMetadata;
            TableRelation = "No. Series";
        }
        field(29; "FA Posting Group"; Code[20])
        {
            Caption = 'FA Posting Group';
            DataClassification = SystemMetadata;
            TableRelation = "FA Posting Group";
        }
        field(5483220; "With Quantity"; Boolean)
        {
            Caption = 'With Quantity';
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Search Description")
        {
        }
        key(Key3; "FA Class Code")
        {
        }
        key(Key4; "FA Subclass Code")
        {
        }
        key(Key5; "FA Location Code")
        {
        }
        key(Key6; "FA Posting Group")
        {
        }
        key(Key7; Description)
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", Description, "FA Class Code", "With Quantity")
        {
        }
    }
    procedure ValidateShortcutDimCode(FieldNumber: Integer; var ShortcutDimCode: Code[20])
    begin
        ShortcutDimCode := '';
    end;


    procedure AssistEdit(): Boolean
    begin
    end;
}