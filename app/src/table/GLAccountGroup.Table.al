table 5157884 "G/L Account Group"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // TAX  01.11.08   Balance and Taxes
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'G/L Account Group';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            DataClassification = SystemMetadata;
            NotBlank = true;
        }
        field(2; Description; Text[80])
        {
            Caption = 'Description';
            DataClassification = SystemMetadata;
        }
        field(3; "Acc. Sched. Line Grouping"; Option)
        {
            BlankZero = true;
            Caption = 'Account Schedule Line Grouping';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,G/L Account Group 1,G/L Account Group 2,G/L Account Group 3,G/L Account Group 4';
            OptionMembers = " ","Acc. Group 1","Acc. Group 2","Acc. Group 3","Acc. Group 4";
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

