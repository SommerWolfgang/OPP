table 5157821 "SEPA Error Code"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // EA   25.03.14   Extended Application
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'SEPA Error Code';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            DataClassification = SystemMetadata;
        }
        field(2; "Text Code Supplement"; Text[3])
        {
            Caption = 'Text Code Supplement';
            DataClassification = SystemMetadata;
        }
        field(3; "Import to Account No."; Code[20])
        {
            Caption = 'Import to Account No.';
            DataClassification = SystemMetadata;
            TableRelation = "Bank Account";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(4; "SEPA Return Reason"; Text[50])
        {
            Caption = 'SEPA Return Reason';
            DataClassification = SystemMetadata;
        }
        field(5; Description; Text[80])
        {
            Caption = 'Description';
            DataClassification = SystemMetadata;
        }
        field(6; "Create Follow Up"; Boolean)
        {
            Caption = 'Create Follow Up';
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(Key1; "Code", "Import to Account No.")
        {
            Clustered = true;
        }
        key(Key2; "Text Code Supplement")
        {
        }
    }

    fieldgroups
    {
    }
}

