table 5157899 "Payment Posting Setup"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // PMT  01.11.08   OPplus Payment
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'Payment Posting Setup';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Payment Type Code"; Code[10])
        {
            Caption = 'Payment Type Code';
            DataClassification = SystemMetadata;
            TableRelation = "Payment Type Code";
        }
        field(2; "Bank Account"; Code[20])
        {
            Caption = 'Bank Account';
            DataClassification = SystemMetadata;
            TableRelation = "Bank Account";

            trigger OnValidate()
            begin
                if "Bank Account" <> '' then
                    TestField("Payment Type Code");
            end;
        }
        field(4; "Posting Account Type"; Option)
        {
            Caption = 'Posting Account Type';
            DataClassification = SystemMetadata;
            OptionCaption = 'G/L Account,,Vendor,Bank Account';
            OptionMembers = "G/L Account",,Vendor,"Bank Account";

            trigger OnValidate()
            begin
                if "Posting Account Type" = "Posting Account Type"::Vendor then
                    TestField("One Bal. Acc. per Pmt. Line", false);
                "Posting Account No." := '';
            end;
        }
        field(5; "Posting Account No."; Code[20])
        {
            Caption = 'Posting Account No.';
            DataClassification = SystemMetadata;
            TableRelation = if ("Posting Account Type" = const("G/L Account")) "G/L Account"
            else
            if ("Posting Account Type" = const(Vendor)) Vendor
            else
            if ("Posting Account Type" = const("Bank Account")) "Bank Account";
        }
        field(6; "One Bal. Acc. per Pmt. Line"; Boolean)
        {
            Caption = 'One Bal. Acc. per Pmt. Line';
            DataClassification = SystemMetadata;

            trigger OnValidate()
            begin
                if "Posting Account Type" = "Posting Account Type"::Vendor then
                    TestField("One Bal. Acc. per Pmt. Line", false);
                if "One Bal. Acc. per Pmt. Line" then
                    "One Bal. Acc. per Pmt. Head" := false;
            end;
        }
        field(7; "One Bal. Acc. per Pmt. Head"; Boolean)
        {
            Caption = 'One Bal. Acc. per Pmt. Head';
            DataClassification = SystemMetadata;

            trigger OnValidate()
            begin
                if "One Bal. Acc. per Pmt. Head" then
                    "One Bal. Acc. per Pmt. Line" := false;
            end;
        }
    }

    keys
    {
        key(Key1; "Payment Type Code", "Bank Account")
        {
            Clustered = true;
        }
    }

    procedure AccountName(): Text[50]
    begin
    end;
}