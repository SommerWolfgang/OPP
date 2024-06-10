table 5157893 "Payment Type Code"
{
    Caption = 'Payment Type Code';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            DataClassification = SystemMetadata;
            Editable = false;
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(3; "Bank Branch Code required"; Boolean)
        {
            Caption = 'Bank Branch Code required';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(4; "Bank Account No. required"; Boolean)
        {
            Caption = 'Bank Account No. required';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(5; "Bank Branch Code Min. Length"; Integer)
        {
            Caption = 'Bank Branch Code Min. Length';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(6; "Bank Branch Code Max. Length"; Integer)
        {
            Caption = 'Bank Branch Code Max. Length';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(7; "Bank Account No. Min. Length"; Integer)
        {
            Caption = 'Bank Account No. Min. Length';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(8; "Bank Account No. Max. Length"; Integer)
        {
            Caption = 'Bank Account No. Max. Length';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(9; "BIC Code required"; Boolean)
        {
            Caption = 'BIC Code required';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(10; "IBAN required"; Boolean)
        {
            Caption = 'IBAN required';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(11; "Payment Direction"; Option)
        {
            Caption = 'Payment Direction';
            DataClassification = SystemMetadata;
            Editable = false;
            OptionCaption = 'Both,Incoming,Outgoing';
            OptionMembers = Both,Incoming,Outgoing;
        }
        field(12; "Country/Region Code required"; Boolean)
        {
            Caption = 'Country/Region Code required';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(13; "Total Amount"; Decimal)
        {
            Caption = 'Total Amount';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(14; "Separate Currency"; Boolean)
        {
            Caption = 'Separate Currency';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(15; "Fees allowed"; Boolean)
        {
            Caption = 'Fees allowed';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(16; "EUR Payment"; Boolean)
        {
            Caption = 'EUR Payment';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(17; "Total Amount (LCY)"; Decimal)
        {
            Caption = 'Total Amount (LCY)';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(18; "Fixed Currency Code"; Code[3])
        {
            Caption = 'Fixed Currency Code';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(19; "Application only"; Boolean)
        {
            Caption = 'Application only';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(20; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            DataClassification = SystemMetadata;
            Editable = false;
            TableRelation = "Country/Region";
        }
        field(21; "No Settling"; Boolean)
        {
            Caption = 'No Settling';
            DataClassification = SystemMetadata;
            Editable = false;
            InitValue = false;
        }
        field(22; "Create File"; Boolean)
        {
            Caption = 'Create File';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(23; "Four Purposes"; Boolean)
        {
            Caption = 'Four References';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(24; "SWIFT Code required"; Boolean)
        {
            Caption = 'SWIFT Code required';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(25; "Vendor Purpose Text"; Text[30])
        {
            Caption = 'Vendor Purpose Text';
        }
        field(26; "Max. Pos. Payment Note"; Integer)
        {
            Caption = 'Max. Pos. Payment Note';
            DataClassification = SystemMetadata;
        }
        field(27; "Customer Purpose Text"; Text[30])
        {
            Caption = 'Customer Purpose Text';
        }
        field(28; "Payment Note Purpose Text"; Text[30])
        {
            Caption = 'Payment Note Purpose Text';
            DataClassification = SystemMetadata;
        }
        field(29; "Vendor Purpose Text Header"; Text[30])
        {
            Caption = 'Purpose Text Header Vendor';
            DataClassification = SystemMetadata;
        }
        field(30; "Purpose Text Footer"; Text[30])
        {
            Caption = 'Purpose Text Footer';
            DataClassification = SystemMetadata;
        }
        field(31; "Limit Payment Amount (LCY)"; Decimal)
        {
            Caption = 'Limit Payment Amount (LCY)';
            DataClassification = SystemMetadata;
        }
        field(32; "Limit Lines per Head"; Integer)
        {
            Caption = 'New Head per Entry';
            DataClassification = SystemMetadata;
        }
        field(33; "Purposes Lines"; Integer)
        {
            Caption = 'Purposes Lines';
            Editable = false;
        }
        field(34; "Purposes Width"; Integer)
        {
            Caption = 'Purposes Width';
            Editable = false;
        }
        field(35; "Pmt. File Path"; Code[250])
        {
            Caption = 'Pmt. File Path';
        }
        field(36; "File Supplement"; Code[10])
        {
            Caption = 'File Extension';
        }
        field(37; "File Prefix"; Code[10])
        {
            Caption = 'File Prefix';
            DataClassification = SystemMetadata;
        }
        field(38; "Customer Purpose Text Header"; Text[30])
        {
            Caption = 'Customer Purpose Text Header';
            DataClassification = SystemMetadata;
        }
        field(39; "Settled Payment Type Code"; Code[10])
        {
            Caption = 'Settled Payment Type Code';
            DataClassification = SystemMetadata;
            Description = 'EXT';
            TableRelation = "Payment Type Code";
        }
        field(40; "Text Application"; Text[30])
        {
            Caption = 'Text Application';
            DataClassification = SystemMetadata;
        }
        field(41; Inactive; Boolean)
        {
            Caption = 'Inactive';
            DataClassification = SystemMetadata;
        }
        field(43; "Journal Template Name Filter"; Code[10])
        {
            Caption = 'Journal Template Name Filter';
            FieldClass = FlowFilter;
        }
        field(44; "Journal Batch Name Filter"; Code[10])
        {
            Caption = 'Journal Batch Name Filter';
            FieldClass = FlowFilter;
        }
        field(46; "ISO Pmt. Header SvcLvl"; Option)
        {
            Caption = 'ISO Pmt. File Header SvcLvl';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,URGP,NURG,SDVA,PRPT';
            OptionMembers = " ",URGP,NURG,SDVA,PRPT;

            trigger OnValidate()
            begin
                if "ISO Pmt. Header SvcLvl" <> "ISO Pmt. Header SvcLvl"::" " then
                    TestField("ISO Pmt. Default Trans. SvcLvl", "ISO Pmt. Default Trans. SvcLvl"::" ");
            end;
        }
        field(47; "ISO Pmt. Default Trans. SvcLvl"; Option)
        {
            Caption = 'ISO Pmt. Default Trans. SvcLvl';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,URGP,NURG,SDVA,PRPT';
            OptionMembers = " ",URGP,NURG,SDVA,PRPT;

            trigger OnValidate()
            begin
                if "ISO Pmt. Default Trans. SvcLvl" <> "ISO Pmt. Default Trans. SvcLvl"::" " then
                    TestField("ISO Pmt. Header SvcLvl", "ISO Pmt. Header SvcLvl"::" ");
            end;
        }
        field(48; "Instruction Codes Evaluated"; Boolean)
        {
            Caption = 'Instruction Codes are evaluated';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(49; "Default Instruction Code"; Code[10])
        {
            Caption = 'Default Instruction Code';
            DataClassification = SystemMetadata;
            TableRelation = "Payment Supp. Code".Code where(Type = const(Instruction),
                                                             "Payment Type Code" = field(Code));

            trigger OnValidate()
            begin
                // gbedv OPP -------------------------------------------------- BEGIN
                if "Default Instruction Code" <> '' then
                    TestField("Instruction Codes Evaluated", true);
                // gbedv OPP -------------------------------------------------- END
            end;
        }
        field(50; "No. of Payment Heads"; Integer)
        {
            CalcFormula = count("Payment Proposal Head" where("Gen. Journal Template" = field("Journal Template Name Filter"),
                                                               "Gen. Journal Batch" = field("Journal Batch Name Filter"),
                                                               "Payment Type Code" = field(Code)));
            Caption = 'No. of Payment Heads';
            Editable = false;
            FieldClass = FlowField;
        }
        field(51; "No. of Struct. Ref. per Header"; Integer)
        {
            Caption = 'No. of Struct. Ref. per Header';
            DataClassification = SystemMetadata;
        }
        field(52; "Split Pmt. Hd. per Ref. Type"; Boolean)
        {
            Caption = 'Split Pmt. Hd. per Ref. Type';
            DataClassification = SystemMetadata;
        }
        field(5157960; "Min. Amount for Pmt. Split"; Integer)
        {
            Caption = 'Min. Amount for Pmt. Split';
            DataClassification = SystemMetadata;
            Description = 'PMT AT';
        }
        field(5157961; "Max. Amount for Pmt. Split"; Integer)
        {
            Caption = 'Max. Amount for Pmt. Split';
            DataClassification = SystemMetadata;
            Description = 'PMT AT';
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
        fieldgroup(DropDown; "Code", Description)
        {
        }
    }
    procedure PaymentTotalTypeCode(PmtTypeCode: Code[10]; JournalTemplateName: Code[10]; JournalBatchName: Code[10]): Decimal
    begin
    end;
}