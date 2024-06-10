table 5157919 "Payment Type Buffer"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // PMT  15.01.16   OPplus Payment
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'Payment Type Buffer';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = SystemMetadata;
        }
        field(2; "Payment Type Code"; Code[10])
        {
            Caption = 'Payment Type Code';
            DataClassification = SystemMetadata;
        }
        field(3; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            DataClassification = SystemMetadata;
        }
        field(4; "Payment Direction"; Option)
        {
            Caption = 'Payment Direction';
            DataClassification = SystemMetadata;
            Editable = false;
            OptionCaption = 'Both,Incoming,Outgoing';
            OptionMembers = Both,Incoming,Outgoing;
        }
        field(5; "Payment Amount"; Decimal)
        {
            Caption = 'Payment Amount';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(6; "Payment Amount (LCY)"; Decimal)
        {
            Caption = 'Payment Amount (LCY)';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(7; Description; Text[50])
        {
            Caption = 'Posting Description';
            DataClassification = SystemMetadata;
        }
        field(8; "Payment Discount Amount"; Decimal)
        {
            Caption = 'Payment Discount Amount';
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Payment Type Code", "Currency Code", "Payment Direction")
        {
        }
    }

    fieldgroups
    {
    }
}

