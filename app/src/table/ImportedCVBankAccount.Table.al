table 5157831 "Imported C/V Bank Account"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // EA   24.11.17   Extended Application
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'Imported C/V Bank Account';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Account Type"; Option)
        {
            BlankZero = true;
            Caption = 'Account Type';
            DataClassification = SystemMetadata;
            OptionCaption = ',Customer,Vendor';
            OptionMembers = ,Customer,Vendor;
        }
        field(2; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            DataClassification = SystemMetadata;
            NotBlank = true;
            TableRelation = if ("Account Type" = const(Customer)) Customer
            else
            if ("Account Type" = const(Vendor)) Vendor;
        }
        field(3; "Code"; Code[20])
        {
            Caption = 'Code';
            DataClassification = SystemMetadata;
            NotBlank = true;
        }
        field(4; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }
        field(5; "Name 2"; Text[50])
        {
            Caption = 'Name 2';
            DataClassification = CustomerContent;
        }
        field(6; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = SystemMetadata;
        }
        field(7; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
            DataClassification = SystemMetadata;
        }
        field(8; "Bank Branch No."; Text[20])
        {
            Caption = 'Bank Branch No.';
            DataClassification = CustomerContent;
        }
        field(9; "Bank Account No."; Text[34])
        {
            Caption = 'Bank Account No.';
            DataClassification = CustomerContent;
        }
        field(10; IBAN; Code[50])
        {
            Caption = 'IBAN';
            DataClassification = CustomerContent;
        }
        field(11; "SWIFT Code"; Code[20])
        {
            Caption = 'SWIFT Code';
            DataClassification = CustomerContent;
        }
        field(12; "Hash Value Branch / Acc. No."; Text[50])
        {
            Caption = 'Hash Value Branch / Acc. No.';
            DataClassification = CustomerContent;
        }
        field(13; "Hash Value IBAN"; Text[50])
        {
            Caption = 'Hash Value IBAN';
            DataClassification = CustomerContent;
        }
        field(14; "Hash Value SWIFT / Acc. No."; Text[50])
        {
            Caption = 'Hash Value SWIFT / Acc. No.';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(Key1; "Account Type", "Account No.", "Code")
        {
            Clustered = true;
        }
        key(Key2; "Bank Branch No.", "Bank Account No.")
        {
        }
        key(Key3; "Hash Value IBAN")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(Brick; "Account No.", "Code", "Hash Value SWIFT / Acc. No.", "Hash Value IBAN")
        {
        }
    }
}

