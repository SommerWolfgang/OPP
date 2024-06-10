table 5158001 "Object Run"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // OPP  01.07.15   OPplus general
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'Object Run';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Object Type"; Option)
        {
            Caption = 'Object Type';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Table,,Report,,Codeunit,XMLPort,,Page,Query';
            OptionMembers = " ","Table",,"Report",,"Codeunit","XMLPort",,"Page","Query";
        }
        field(2; "Object ID"; Integer)
        {
            Caption = 'Object ID';
            DataClassification = SystemMetadata;
            NotBlank = true;
            TableRelation = if ("Object Type" = filter(> " ")) AllObjWithCaption."Object ID" where("Object Type" = field("Object Type"));
        }
        field(3; "Created By"; Code[50])
        {
            Caption = 'Created By';
            DataClassification = EndUserIdentifiableInformation;
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(4; "Start ID"; Code[10])
        {
            Caption = 'Start ID';
            DataClassification = SystemMetadata;
        }
        field(5; Description; Text[250])
        {
            Caption = 'Description';
            DataClassification = SystemMetadata;
        }
        field(6; "Object Name"; Text[30])
        {
            CalcFormula = lookup(Object.Name where(Type = field("Object Type"),
                                                    ID = field("Object ID")));
            Caption = 'Object Name';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Object Type", "Object ID")
        {
            Clustered = true;
        }
        key(Key2; "Start ID")
        {
        }
    }
}