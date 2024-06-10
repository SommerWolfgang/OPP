table 5483223 "FA Posting Setup"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // FA   24.11.17   Fixed Asset
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'FA Posting Setup';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "FA Posting Group"; Code[10])
        {
            Caption = 'FA Posting Group';
            DataClassification = SystemMetadata;
            NotBlank = true;
            TableRelation = "FA Posting Group";
        }
        field(2; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            DataClassification = SystemMetadata;
            NotBlank = true;
            TableRelation = "Gen. Business Posting Group";
        }
        field(3; "Sales Acc. on Disp. (Gain)"; Code[20])
        {
            Caption = 'Sales Acc. on Disp. (Gain)';
            DataClassification = SystemMetadata;
            TableRelation = "G/L Account";

            trigger OnValidate()
            begin
                CheckGLAcc("Sales Acc. on Disp. (Gain)", false);
            end;
        }
        field(4; "Sales Acc. on Disp. (Loss)"; Code[20])
        {
            Caption = 'Sales Acc. on Disp. (Loss)';
            DataClassification = SystemMetadata;
            TableRelation = "G/L Account";

            trigger OnValidate()
            begin
                CheckGLAcc("Sales Acc. on Disp. (Loss)", false);
            end;
        }
    }

    keys
    {
        key(Key1; "FA Posting Group", "Gen. Bus. Posting Group")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(Brick; "FA Posting Group")
        {
        }
    }

    local procedure CheckGLAcc(AccNo: Code[20]; DirectPosting: Boolean)
    var
        GLAcc: Record "G/L Account";
    begin
        if AccNo = '' then
            exit;
        GLAcc.Get(AccNo);
        GLAcc.CheckGLAcc();
        if DirectPosting then
            GLAcc.TestField("Direct Posting");
    end;
}

