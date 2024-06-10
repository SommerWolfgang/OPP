table 5157853 "G/L Open Entries Setup"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // GLOE 01.11.08   Gen. Ledger Open Entries
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'G/L Open Entries Setup';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = SystemMetadata;
        }
        field(2; "G/L Entry Application"; Code[10])
        {
            Caption = 'G/L Entry Application';
            DataClassification = SystemMetadata;
            TableRelation = "Source Code";
        }
        field(3; "Unapplied G/L Entry Appln."; Code[10])
        {
            Caption = 'Unapplied G/L Entry Appln.';
            DataClassification = SystemMetadata;
            TableRelation = "Source Code";
        }
        field(4; "Create Open Entries"; Option)
        {
            BlankZero = true;
            Caption = 'Create Open Entries';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,All Entries';
            OptionMembers = " ","All Entries";
        }
        field(5; "Balance Account Application"; Code[20])
        {
            Caption = 'Balance Account Application';
            DataClassification = SystemMetadata;
            TableRelation = "G/L Account" where("Account Type" = const(Posting));
        }
        field(6; "Hyperlink Color"; Boolean)
        {
            Caption = 'Hyperlink in report in color';
            DataClassification = SystemMetadata;
        }
        field(7; "Appln. between Currencies"; Option)
        {
            Caption = 'Appln. between Currencies';
            DataClassification = SystemMetadata;
            OptionCaption = 'None,,All';
            OptionMembers = "None",,All;
        }
        field(8; "OP-Acc vs. OP-Acc. not allowed"; Boolean)
        {
            Caption = 'Open Item Acc. vs. Open Item Acc. not allowed';
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
    procedure Setup()
    begin
    end;

    procedure GetVersion()
    begin
    end;

    procedure SetSilent()
    begin
    end;
}