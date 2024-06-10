table 5158000 "Registered Pmt. Interface"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // EA   01.11.12   Extended Application
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'Registered Pmt. Interface';
    DataClassification = SystemMetadata;
    DataPerCompany = false;

    fields
    {
        field(1; GUIDCode; Guid)
        {
            Caption = 'Registration Key';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(2; "Is in Company"; Text[30])
        {
            Caption = 'Is in Company';
            DataClassification = OrganizationIdentifiableInformation;
            Editable = false;
            TableRelation = Company;
        }
        field(3; "Goes to Company"; Text[30])
        {
            Caption = 'Goes to Company';
            DataClassification = OrganizationIdentifiableInformation;
            Editable = false;
            TableRelation = Company;
        }
        field(4; "Code"; Code[20])
        {
            Caption = 'Code';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(5; "Prefix Document No."; Code[10])
        {
            Caption = 'Prefix Document No.';
            DataClassification = SystemMetadata;
        }
        field(6; "Interface Account No."; Code[50])
        {
            Caption = 'Interface Account No.';
            DataClassification = OrganizationIdentifiableInformation;
        }
        field(7; "Import to Company"; Text[30])
        {
            Caption = 'Import to Company';
            DataClassification = OrganizationIdentifiableInformation;
            TableRelation = Company;
        }
        field(8; "Interface Bank-ID"; Code[50])
        {
            Caption = 'Interface Bank-ID';
            DataClassification = OrganizationIdentifiableInformation;
        }
        field(9; "Interface Currency-ID"; Code[3])
        {
            Caption = 'Interface Currency-ID';
            DataClassification = SystemMetadata;
        }
        field(10; "Convert ANSI To ASCII"; Boolean)
        {
            Caption = 'Convert ANSI To ASCII';
            DataClassification = SystemMetadata;
        }
        field(11; "Import to Account Type"; Option)
        {
            Caption = 'Import to Account Type';
            DataClassification = SystemMetadata;
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";
        }
        field(12; "Import to Account No."; Code[20])
        {
            Caption = 'Import to Account No.';
            DataClassification = SystemMetadata;
        }
        field(13; "General Interface"; Code[20])
        {
            Caption = 'General Interface';
            DataClassification = SystemMetadata;
            Enabled = false;
        }
        field(14; "Import via MT940"; Boolean)
        {
            Caption = 'Import via MT940';
            DataClassification = SystemMetadata;
        }
        field(15; "Unstructured Purposes"; Boolean)
        {
            Caption = 'Unstructured Purposes';
            DataClassification = SystemMetadata;
        }
        field(16; "Last Statement"; Integer)
        {
            Caption = 'Last Statement';
            DataClassification = SystemMetadata;
        }
        field(17; "Import to Template"; Code[10])
        {
            Caption = 'Import to Journal Template Name';
            DataClassification = SystemMetadata;
        }
        field(18; "Import to Batch"; Code[10])
        {
            Caption = 'Import to Journal Batch Name';
            DataClassification = SystemMetadata;
        }
        field(19; "Imported as"; Option)
        {
            BlankZero = true;
            Caption = 'Imported as';
            DataClassification = SystemMetadata;
            InitValue = "Bal. Account";
            OptionCaption = ',Account,Bal. Account';
            OptionMembers = ,Account,"Bal. Account";
        }
        field(20; "Fill Description as"; Option)
        {
            BlankZero = true;
            Caption = 'Fill description with';
            DataClassification = SystemMetadata;
            InitValue = Purpose;
            OptionCaption = ' ,Orderer,Posting Description,Purpose';
            OptionMembers = " ",Orderer,"Posting Description",Purpose;
        }
        field(21; "Last Statement No."; Code[10])
        {
            Caption = 'Last Statement No.';
            DataClassification = SystemMetadata;
        }
        field(22; "One Bal. Account per Register"; Boolean)
        {
            Caption = 'One Bal. Account per Register';
            DataClassification = SystemMetadata;
        }
        field(23; "Disable Application"; Boolean)
        {
            Caption = 'Disable Application';
            DataClassification = SystemMetadata;
        }
        field(24; "Treat as Bank Statement"; Boolean)
        {
            Caption = 'Treat as Bank Statement';
            DataClassification = SystemMetadata;
        }
        field(25; "Delete Entries after Posting"; Boolean)
        {
            Caption = 'Delete Entries after Posting';
            DataClassification = SystemMetadata;
        }
        field(26; "Mark MT942 as Statement"; Boolean)
        {
            Caption = 'Mark MT942 as Statement';
            DataClassification = SystemMetadata;
        }
        field(27; "Import Interim Entries"; Boolean)
        {
            Caption = 'Import Interim Entries';
            DataClassification = SystemMetadata;
        }
        field(28; "Process MBS"; Boolean)
        {
            Caption = 'Process 940b/CAMT54 Files';
            DataClassification = SystemMetadata;
        }
        field(29; "Check Payment Sign"; Boolean)
        {
            Caption = 'Check sign';
            DataClassification = SystemMetadata;
        }
        field(30; "Use Declared Amounts"; Boolean)
        {
            Caption = 'Use "Declared" Amounts';
            DataClassification = SystemMetadata;
        }
        field(31; "Created At"; DateTime)
        {
            Caption = 'Created on';
            DataClassification = SystemMetadata;
        }
        field(32; "Created From"; Code[50])
        {
            Caption = 'Created by';
            DataClassification = EndUserIdentifiableInformation;
        }
        field(33; "Last Statement Date"; Date)
        {
            Caption = 'Last Statement Date';
            DataClassification = SystemMetadata;
        }
        field(34; "Import in two Lines"; Boolean)
        {
            Caption = 'Import in two Lines';
            DataClassification = SystemMetadata;
        }
        field(35; "Use Orig. Curr. Code"; Boolean)
        {
            Caption = 'Use Orig. Curr. Code in Bank Import';
            DataClassification = SystemMetadata;
        }
        field(36; "SVWZ-Tag not Provided"; Boolean)
        {
            Caption = 'SVWZ-Tag not Provided';
            DataClassification = SystemMetadata;
        }
        field(38; New; Boolean)
        {
            Caption = 'New';
            DataClassification = SystemMetadata;
        }
        field(45; "Preallocation Statement No."; Option)
        {
            Caption = 'Preallocation Statement No.';
            DataClassification = SystemMetadata;
            OptionCaption = 'Counter,Date';
            OptionMembers = Counter,Date;
        }
        field(46; "Find Statement No. first"; Option)
        {
            Caption = 'Find Statement No. first';
            DataClassification = SystemMetadata;
            OptionCaption = 'LglSeqNb,ElctrncSeqNb';
            OptionMembers = LglSeqNb,ElctrncSeqNb;
        }
        field(49; "Check Bankbalance"; Option)
        {
            Caption = 'Check Bank Balance';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Message,Error';
            OptionMembers = " ",Message,Error;
        }
        field(50; "Copy to Interface Code"; Code[20])
        {
            Caption = 'Copy to Interface';
            DataClassification = SystemMetadata;
            TableRelation = "Pmt. Import Interface";
        }
    }

    keys
    {
        key(Key1; GUIDCode)
        {
            Clustered = true;
        }
        key(Key2; "Code", "Goes to Company")
        {
        }
    }
    procedure ManageInsertInterface(PmtImportInterface: Record "Pmt. Import Interface")
    begin
    end;

    procedure ManageDeleteInterface(PmtImportInterface: Record "Pmt. Import Interface")
    begin
    end;

    procedure ManageUpdateInterface(PmtInterface: Record "Pmt. Import Interface")
    begin
    end;

    procedure AltOPplusSetupExists(): Boolean
    begin
    end;
}