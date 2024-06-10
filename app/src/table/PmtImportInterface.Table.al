table 5157810 "Pmt. Import Interface"
{
    Caption = 'Pmt. Import Interface';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            DataClassification = SystemMetadata;
        }
        field(4; "Prefix Document No."; Code[10])
        {
            Caption = 'Prefix Document No.';
            DataClassification = SystemMetadata;
        }
        field(6; "Interface Account No."; Code[50])
        {
            Caption = 'Interface Account No.';
            DataClassification = SystemMetadata;
        }
        field(7; "Import to Company"; Text[30])
        {
            Caption = 'Import to Company';
        }
        field(8; "Interface Bank-ID"; Code[50])
        {
            Caption = 'Interface Bank-ID';
        }
        field(10; "Interface Currency-ID"; Code[3])
        {
            Caption = 'Interface Currency-ID';
        }
        field(11; "Convert ANSI To ASCII"; Boolean)
        {
            Caption = 'Convert ANSI To ASCII';
        }
        field(12; "Import to Account Type"; Option)
        {
            Caption = 'Import to Account Type';
            DataClassification = SystemMetadata;
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";
        }
        field(13; "Import to Account No."; Code[20])
        {
            Caption = 'Import to Account No.';
        }
        field(14; "General Interface"; Code[20])
        {
            Caption = 'General Interface';
            Enabled = false;
        }
        field(16; "Import via MT940"; Boolean)
        {
            Caption = 'Import via MT940';
        }
        field(17; "Unstructured Purposes"; Boolean)
        {
            Caption = 'Unstructured Purposes';
        }
        field(18; "Last Statement"; Integer)
        {
            Caption = 'Last Statement';
        }
        field(19; "Import to Template"; Code[10])
        {
            Caption = 'Import to Journal Template Name';
        }
        field(20; "Import to Batch"; Code[10])
        {
            Caption = 'Import to Journal Batch Name';
        }
        field(21; "Imported as"; Option)
        {
            BlankZero = true;
            Caption = 'Imported as';
            DataClassification = SystemMetadata;
            InitValue = "Bal. Account";
            OptionCaption = ',Account,Bal. Account';
            OptionMembers = ,Account,"Bal. Account";
        }
        field(22; "Fill Description as"; Option)
        {
            BlankZero = true;
            Caption = 'Fill description with';
            DataClassification = SystemMetadata;
            InitValue = Purpose;
            OptionCaption = ' ,Orderer,Posting Description,Purpose';
            OptionMembers = " ",Orderer,"Posting Description",Purpose;
        }
        field(23; "Last Statement No."; Code[10])
        {
            Caption = 'Last Statement No.';
        }
        field(24; "One Bal. Account per Register"; Boolean)
        {
            Caption = 'One Bal. Account per Register';
        }
        field(25; "Disable Application"; Boolean)
        {
            Caption = 'Disable Application';
        }
        field(26; "Treat as Bank Statement"; Boolean)
        {
            Caption = 'Treat as Bank Statement';
        }
        field(27; "Delete Entries after Posting"; Boolean)
        {
            Caption = 'Delete Entries after Posting';
        }
        field(28; "Mark MT942 as Statement"; Boolean)
        {
            Caption = 'Mark MT942 as Statement';
        }
        field(29; "Import Interim Entries"; Boolean)
        {
            Caption = 'Import Interim Entries';
            DataClassification = SystemMetadata;
        }
        field(30; "Process MBS"; Boolean)
        {
            Caption = 'Process 940b/CAMT54 Files';
            DataClassification = SystemMetadata;
        }
        field(35; "Check Payment Sign"; Boolean)
        {
            Caption = 'Check sign';
            DataClassification = SystemMetadata;
        }
        field(36; GUIDCode; Guid)
        {
            Caption = 'GUIDCode';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(37; "Use Declared Amounts"; Boolean)
        {
            Caption = 'Use "Declared" Amounts';
            DataClassification = SystemMetadata;
        }
        field(38; "Created At"; DateTime)
        {
            Caption = 'Created on';
            DataClassification = SystemMetadata;
        }
        field(39; "Created From"; Code[50])
        {
            Caption = 'Created by';
            DataClassification = EndUserIdentifiableInformation;
        }
        field(40; "Last Statement Date"; Date)
        {
            Caption = 'Last Statement Date';
            DataClassification = SystemMetadata;
        }
        field(41; "Import in two Lines"; Boolean)
        {
            Caption = 'Import in two Lines';
            DataClassification = SystemMetadata;
        }
        field(42; "Use Orig. Curr. Code"; Boolean)
        {
            Caption = 'Use Orig. Curr. Code in Bank Import';
            DataClassification = SystemMetadata;
        }
        field(43; "SVWZ-Tag not Provided"; Boolean)
        {
            Caption = 'SVWZ-Tag not Provided';
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
        field(47; "Payment Provider Code Input"; Code[20])
        {
            Caption = 'Payment Provider Code Input';
        }
        field(48; "Payment Provider Bank-ID"; Code[50])
        {
            Caption = 'Payment Provider Bank-ID';
        }
        field(49; "Check Bankbalance"; Option)
        {
            Caption = 'Check Bank Balance';
            OptionCaption = ' ,Message,Error';
            OptionMembers = " ",Message,Error;
        }
        field(50; "Copy to Interface Code"; Code[20])
        {
            Caption = 'Copy to Interface';
        }
        field(10000; New; Boolean)
        {
            Caption = 'New';
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; "Interface Currency-ID", "Interface Bank-ID", "Interface Account No.")
        {
        }
        key(Key3; "Payment Provider Code Input", "Payment Provider Bank-ID")
        {
        }
        key(Key4; "Payment Provider Bank-ID")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Code", "Interface Currency-ID", "Interface Bank-ID", "Interface Account No.")
        {
        }
    }
    procedure PreparePmtImport(): Boolean
    begin
    end;

    procedure CheckInterface()
    begin
    end;

    procedure AltOPplusSetupExists(): Boolean
    begin
    end;

    procedure CheckTemplateName(CurrentJnlTemplateName: Code[10]; var CurrentJnlBatchName: Code[10]; CompName: Text[30])
    begin
        CurrentJnlBatchName := '';
    end;
}