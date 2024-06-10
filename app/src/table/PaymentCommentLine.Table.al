table 5157918 "Payment Comment Line"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // PMT  05.05.15   OPplus Payment
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'Comment Line';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Table Name"; Option)
        {
            Caption = 'Table Name';
            DataClassification = SystemMetadata;
            OptionCaption = 'Bank Account Mandat';
            OptionMembers = "Bank Account Mandat";
        }
        field(2; "No."; Code[35])
        {
            Caption = 'No.';
            DataClassification = SystemMetadata;
            TableRelation = if ("Table Name" = const("Bank Account Mandat")) "Bank Account Mandate" where("Mandate ID" = field("No."));
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = SystemMetadata;
        }
        field(4; Date; Date)
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

            trigger OnLookup()
            var
                LoginMgt: Codeunit "User Management";
            begin
                LoginMgt.LookupUserID("User ID");
            end;
        }
    }

    keys
    {
        key(Key1; "Table Name", "No.", "Line No.")
        {
            Clustered = true;
        }
    }
}