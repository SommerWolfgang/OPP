table 5157917 "Pmt. Transaction Schema"
{
    Caption = 'Pmt. Transaction Schema';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Payment Type Code"; Code[10])
        {
            Caption = 'Payment Type Code';
            DataClassification = SystemMetadata;
            NotBlank = true;
            TableRelation = "Payment Type Code";
        }
        field(2; "Country/Region Code Ben. Bank"; Code[10])
        {
            Caption = 'Country/Region Code Ben. Bank';
            DataClassification = SystemMetadata;
            TableRelation = "Country/Region";
        }
        field(3; "Ben. BIC/SWIFT Code/Branch No."; Code[20])
        {
            Caption = 'Ben. Bank BIC/SWIFT/Branch No.';
            DataClassification = SystemMetadata;
        }
        field(5; "Country/Region Code Ord. Bank"; Code[10])
        {
            Caption = 'Country/Region Code Ord. Bank';
            DataClassification = SystemMetadata;
            TableRelation = "Country/Region";
        }
        field(10; "Ben. Bank Code required"; Option)
        {
            Caption = 'Ben. Bank Code required';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(20; "Content Ben. Bank Code"; Option)
        {
            Caption = 'Content Ben. Bank Code';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Bank Branch Code,SWIFT/BIC Code,SWIFT/BIC if not empty';
            OptionMembers = " ","Bank Branch Code","SWIFT/BIC Code","SWIFT/BIC if not empty";
        }
        field(22; "Transfer Postal Address"; Option)
        {
            Caption = 'Transfer Postal Address';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(25; "Ben. BIC mandatory"; Option)
        {
            Caption = 'Ben. Bank BIC mandatory';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(30; "Ben. Bank Account required"; Option)
        {
            Caption = 'Ben. Bank Account required';
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(40; "Content Ben. Account No."; Option)
        {
            Caption = 'Content Ben. Account No.';
            OptionCaption = ' ,Bank Account No. (BBAN),IBAN,IBAN if not empty';
            OptionMembers = " ","Bank Account No. (BBAN)",IBAN,"IBAN if not empty";
        }
        field(50; "Ord. Bank Code required"; Option)
        {
            Caption = 'Ord. Bank Code required';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(60; "Content Ord. Bank Code"; Option)
        {
            Caption = 'Content Ord. Bank Code';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Bank Branch Code,SWIFT/BIC Code,SWIFT/BIC if not empty';
            OptionMembers = " ","Bank Branch Code","SWIFT/BIC Code","SWIFT/BIC if not empty";
        }
        field(70; "Ord. Bank Account required"; Option)
        {
            Caption = 'Ord. Bank Account required';
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(80; "Content Ord. Account No."; Option)
        {
            Caption = 'Content Ord. Account No.';
            OptionCaption = ' ,Bank Account No. (BBAN),IBAN,IBAN if not empty';
            OptionMembers = " ","Bank Account No. (BBAN)",IBAN,"IBAN if not empty";
        }
        field(90; "Ben. Routing No. required"; Option)
        {
            Caption = 'Ben. Routing No. required';
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(100; "Content Ben. Routing No."; Option)
        {
            Caption = 'Content Ben. Routing No.';
            OptionCaption = ' ,Routing No.,Transit No.,Routing No. if not empty';
            OptionMembers = " ","Routing No.","Transit No.","Routing No. if not empty";
        }
        field(110; "Verify Clearing System Code"; Option)
        {
            Caption = 'Verify Clearing System Code';
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(120; "Clearing System Member Schema"; Option)
        {
            Caption = 'Clearing System Member Schema';
            OptionCaption = ' ,<ClrSysId>+<MmbId>,Only <MmbId>';
            OptionMembers = " ","<ClrSysId>+<MmbId>","Only <MmbId>";
        }
        field(121; "Pmt. Transact. SvcLvl required"; Option)
        {
            Caption = 'Pmt. Transact. SvcLvl required';
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(130; "Ben. Cntry. req. if BIC is N/A"; Option)
        {
            Caption = 'Ben. Bank Cntry. required if BIC is N/A';
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(140; "Full address of Ben. Bank req."; Option)
        {
            Caption = 'Full address of Ben. Bank req.';
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(150; "Eval. Curr. Amt. Dec. Places"; Option)
        {
            Caption = 'Eval. Curr. Amt. Dec. Places';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(160; "Positioning of Charge Bearer"; Option)
        {
            Caption = 'Positioning of Charge Bearer';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,File Header,Individual Transaction';
            OptionMembers = " ","File Header","Individual Transaction";
        }
        field(170; "InstrId required"; Option)
        {
            Caption = 'Instruction Identification (InstrId) required';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Yes(unique per file),No,Yes (unique per transaction)';
            OptionMembers = " ",Yes,No,"Yes(unique TrfTx)";
        }
        field(180; "No Addr. f. Ben. Bank w. BIC"; Option)
        {
            Caption = 'No Addr. f. Ben. Bank w. BIC';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(200; "Orderer Bank Code used"; Code[50])
        {
            Caption = 'Orderer Bank Code used';
            DataClassification = SystemMetadata;
            Description = 'Internal';
            Editable = false;
        }
        field(201; "Orderer Account No. used"; Code[50])
        {
            Caption = 'Orderer Account No. used';
            DataClassification = SystemMetadata;
            Description = 'Internal';
            Editable = false;
        }
        field(202; "Ben. Bank Code used"; Code[50])
        {
            Caption = 'Ben. Bank Code used';
            DataClassification = SystemMetadata;
            Description = 'Internal';
            Editable = false;
        }
        field(203; "Ben. Account No. used"; Code[50])
        {
            Caption = 'Ben. Account No. used';
            DataClassification = SystemMetadata;
            Description = 'Internal';
            Editable = false;
        }
        field(204; "Ben. Routing/Transit No. used"; Code[50])
        {
            Caption = 'Ben. Routing/Transit No. used';
            DataClassification = SystemMetadata;
            Description = 'Internal';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Payment Type Code", "Country/Region Code Ben. Bank", "Ben. BIC/SWIFT Code/Branch No.", "Country/Region Code Ord. Bank")
        {
            Clustered = true;
        }
    }
    procedure GetPmtTransactSchemaPmtHead(var PmtTransactionSchema: Record "Pmt. Transaction Schema"; PmtHead: Record "Payment Proposal Head")
    begin
    end;

    procedure GetTransScheme(var PmtTransSchema: Record "Pmt. Transaction Schema"; PmtHead: Record "Payment Proposal Head"; MappedOrdCountryCode: Code[10]; MappedBenCountryCode: Code[10]): Boolean
    begin
    end;

    procedure CopyTransScheme(PmtTransSchemaFound: Record "Pmt. Transaction Schema"; var PmtTransSchemaUsed: Record "Pmt. Transaction Schema")
    begin
    end;
}