table 5157907 "Pmt. Proposal Head AZV Detail"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // AZV  13.01.10   OPplus DTAZV
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'Pmt. Proposal Head AZV Detail';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Gen. Journal Template"; Code[10])
        {
            Caption = 'Gen. Journal Template';
            DataClassification = SystemMetadata;
            NotBlank = true;
        }
        field(2; "Gen. Journal Line"; Integer)
        {
            Caption = 'Gen. Journal Line';
            DataClassification = SystemMetadata;
        }
        field(3; "Gen. Journal Batch"; Code[10])
        {
            Caption = 'Gen. Journal Batch';
            DataClassification = SystemMetadata;
            NotBlank = true;
        }
        field(4; Reference; Text[27])
        {
            Caption = 'Reference';
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(Key1; "Gen. Journal Template", "Gen. Journal Batch", "Gen. Journal Line")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

