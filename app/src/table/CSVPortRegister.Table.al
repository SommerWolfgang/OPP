table 5157807 "CSV Port Register"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // EA   01.11.08   Extended Application
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'CSV Port Register';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'No.';
            DataClassification = SystemMetadata;
        }
        field(3; "Processed at Date"; Date)
        {
            Caption = 'Processed at Date';
            DataClassification = SystemMetadata;
        }
        field(4; Direction; Option)
        {
            Caption = 'Direction';
            DataClassification = SystemMetadata;
            OptionCaption = 'Import,Export,Datapool';
            OptionMembers = Import,Export,Datapool;
        }
        field(5; "Table No."; Integer)
        {
            Caption = 'Table No.';
            DataClassification = SystemMetadata;
        }
        field(6; "Table Caption"; Text[250])
        {
            CalcFormula = lookup(Object.Caption where(Type = const(Table),
                                                       ID = field("Table No.")));
            Caption = 'Table Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "File Name"; Text[250])
        {
            Caption = 'Filename';
            DataClassification = SystemMetadata;
        }
        field(8; "Records Total"; Integer)
        {
            Caption = 'Total';
            DataClassification = SystemMetadata;
        }
        field(9; "Records Inserted"; Integer)
        {
            Caption = 'Inserted';
            DataClassification = SystemMetadata;
        }
        field(10; "Records Modified"; Integer)
        {
            Caption = 'Modified Records';
            DataClassification = SystemMetadata;
        }
        field(11; "Records Skipped"; Integer)
        {
            Caption = 'Skipped';
            DataClassification = SystemMetadata;
        }
        field(12; "Processed at Time"; Time)
        {
            Caption = 'Processed at Time';
            DataClassification = SystemMetadata;
        }
        field(13; "User ID"; Code[50])
        {
            Caption = 'User';
            DataClassification = EndUserIdentifiableInformation;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;

            trigger OnLookup()
            var
                UserMgt: Codeunit "User Management";
            begin
                UserMgt.LookupUserID("User ID");
            end;
        }
        field(14; "Port Code"; Code[20])
        {
            Caption = 'CSV Port';
            DataClassification = SystemMetadata;
            TableRelation = "CSV Port";
        }
        field(15; "Port Description"; Text[50])
        {
            CalcFormula = lookup("CSV Port".Description where(Code = field("Port Code")));
            Caption = 'Port Description';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

