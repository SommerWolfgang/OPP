table 5157862 "Ledger Entry Comment Line"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // VAL  01.11.08   Views and Lists
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'Ledger Entry Comment Line';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Table Name"; Option)
        {
            Caption = 'Table Name';
            DataClassification = SystemMetadata;
            OptionCaption = 'Customer,Vendor,G/L Account,Item,Gen. Journal Line';
            OptionMembers = Customer,Vendor,"G/L Account",Item,"Gen. Journal Line";
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = SystemMetadata;
            TableRelation = if ("Table Name" = const("G/L Account")) "G/L Account"
            else
            if ("Table Name" = const(Customer)) Customer
            else
            if ("Table Name" = const(Vendor)) Vendor
            else
            if ("Table Name" = const(Item)) Item;
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = SystemMetadata;
        }
        field(4; "Date"; Date)
        {
            Caption = 'Date';
            DataClassification = SystemMetadata;
        }
        field(5; "Code"; Code[10])
        {
            Caption = 'Code';
            DataClassification = SystemMetadata;
        }
        field(6; Comment; Text[80])
        {
            Caption = 'Comment';
            DataClassification = SystemMetadata;
        }
        field(7; "User ID"; Code[50])
        {
            Caption = 'User ID';
            DataClassification = EndUserIdentifiableInformation;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(8; Printed; Boolean)
        {
            Caption = 'Printed';
            DataClassification = SystemMetadata;
        }
        field(9; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = SystemMetadata;
        }
        field(10; Amount; Decimal)
        {
            Caption = 'Amount';
            DataClassification = SystemMetadata;
        }
        field(11; "Remaining Amount"; Decimal)
        {
            Caption = 'Remaining Amount';
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(Key1; "Table Name", "No.", "Entry No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; Printed, "Table Name", "No.", "Entry No.", "Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

