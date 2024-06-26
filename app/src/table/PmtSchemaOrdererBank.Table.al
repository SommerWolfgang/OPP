table 5157912 "Pmt. Schema Orderer Bank"
{
    Caption = 'Pmt. Schema Orderer Bank';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Bank Account No."; Code[20])
        {
            Caption = 'Bank Account No.';
            DataClassification = SystemMetadata;
            NotBlank = true;
            TableRelation = "Bank Account";
        }
        field(2; "Payment Type Code"; Code[10])
        {
            Caption = 'Payment Type Code';
            DataClassification = SystemMetadata;
            NotBlank = true;
            TableRelation = "Payment Type Code";
        }
        field(3; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            DataClassification = SystemMetadata;
            TableRelation = "Country/Region";
        }
        field(4; "Document xmlns"; Text[80])
        {
            Caption = 'Document xmlns';
            DataClassification = SystemMetadata;

            trigger OnValidate()
            begin
                "Document xmlns" := ProofText("Document xmlns");
            end;
        }
        field(5; "xmlns:xsi"; Text[80])
        {
            Caption = 'xmlns:xsi';
            DataClassification = SystemMetadata;

            trigger OnValidate()
            begin
                "xmlns:xsi" := ProofText("xmlns:xsi");
            end;
        }
        field(6; "xsi:schemaLocation"; Text[128])
        {
            Caption = 'xsi:schemaLocation';
        }
        field(7; EndtoEndID; Option)
        {
            Caption = 'EndtoEndID';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Empty,NOTPROVIDED if Empty,Unique';
            OptionMembers = " ",Empty,"NOTPROVIDED if Empty",Unique;
        }
        field(8; "SWIFT Header"; Option)
        {
            Caption = 'SWIFT Header';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Yes,No,First line only';
            OptionMembers = " ",Yes,No,"First line only";
        }
        field(9; "Segment 50H:"; Option)
        {
            Caption = 'Segment 50H:';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Bank Address,Company Address';
            OptionMembers = " ","Bank Address","Company Address";
        }
        field(10; "Format VIR 2000"; Option)
        {
            Caption = 'Format VIR 2000';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(11; "SEPA Direct Debit Collection"; Option)
        {
            Caption = 'SEPA Collection';
            DataClassification = SystemMetadata;
            Description = '"Not in Use"';
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(12; "SEPA Version SCT"; Option)
        {
            Caption = 'SEPA Transfer Version';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,SEPA 2.7 (2013),SEPA 2.6 (2012),SEPA 3.0 (2016)';
            OptionMembers = " ","SEPA 2.7 (2013)","SEPA 2.6 (2012)","SEPA 3.0 (2016)";
        }
        field(13; "SEPA Version SDD"; Option)
        {
            Caption = 'SEPA DirDeb Version';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,SEPA 2.7 (2013),SEPA 2.6 (2012),SEPA 3.0 (2016)';
            OptionMembers = " ","SEPA 2.7 (2013)","SEPA 2.6 (2012)","SEPA 3.0 (2016)";
        }
        field(14; "SEPA Extd. Charset"; Option)
        {
            Caption = 'SEPA Extd. Charset';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Yes,No';
            OptionMembers = Default,Yes,No;
        }
        field(15; EndToEndTag; Text[14])
        {
            Caption = 'Prefix EndToEndId';
            DataClassification = SystemMetadata;
        }
        field(17; BtchBookg; Option)
        {
            Caption = 'Batch Booking';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(19; EndToEndIdOption; Option)
        {
            Caption = 'EndToEndId';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Unique,None,NOTPROVIDED';
            OptionMembers = Default,Unique,"None",Notprovided;
        }
        field(20; "SEPA Due in Pmt. File"; Option)
        {
            Caption = 'SEPA Due in Pmt. File';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(21; SepaFilePerBatch; Option)
        {
            Caption = 'Separate File per Batch';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(22; "Transfer Postal Address"; Option)
        {
            Caption = 'Transfer Postal Address';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(23; "Clearing Sender ID"; Code[50])
        {
            Caption = 'Clearing Sender ID';
            DataClassification = SystemMetadata;
        }
        field(24; "Clearing Means of Ident."; Option)
        {
            Caption = 'Clearing: Means of Identification';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Name only,Sender ID only,Name and Sender ID';
            OptionMembers = " ","Name only","Sender ID only","Name and Sender ID";
        }
        field(25; "Exp. Curr. Code Orig. Bank Acc"; Option)
        {
            Caption = 'Export Currency Code of Originator Bank Account';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(26; "Creation Time No Fract. Sec."; Option)
        {
            Caption = 'Remove fractions of second in file creation time';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(27; "No Postal Address for InitgPty"; Option)
        {
            Caption = 'No Postal Address for InitgPty';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(28; "Segment 52A"; Option)
        {
            Caption = 'Segment 52A';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(29; "Segment 77B"; Option)
        {
            Caption = 'Segment 77B';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Alt. Reason Row';
            OptionMembers = " ","Alt. Reason Row";
        }
        field(30; "MT: one physical file per Head"; Option)
        {
            Caption = 'MT Formats: one physical file per Pmt. Head';
            OptionCaption = ' ,Yes';
            OptionMembers = " ",Yes;
        }
        field(31; "MT: use line nos. in address"; Option)
        {
            Caption = 'MT Formats: use line nos. in address';
            OptionCaption = ' ,Yes';
            OptionMembers = " ",Yes;
        }
        field(32; "Transfer Customer Reference"; Option)
        {
            Caption = 'Transfer Customer Reference';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(33; "Format Customer Reference"; Option)
        {
            Caption = 'Format Customer Reference';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,CdtrRefInf only,Ref and TP';
            OptionMembers = " ","CdtrRefInf only","Ref and TP";
        }
        field(35; "InitgPty: Placement ID/Address"; Option)
        {
            Caption = 'InitgPty: Placement ID/Address';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,ID+Address,Address+ID';
            OptionMembers = " ","ID+Addr","Addr+ID";
        }
        field(36; "Amendment SMNDA Tag"; Option)
        {
            Caption = 'Amendment SMNDA Tag';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,SEPA 2.7 (2013),SEPA 2.6 (2012),SEPA 3.0 (2016)';
            OptionMembers = " ","SEPA 2.7 (2013)","SEPA 2.6 (2012)","SEPA 3.0 (2016)";
        }
        field(37; "ISO Pmt: Full Unicode Charset"; Option)
        {
            Caption = 'ISO Pmt.: Full Unicode Charset';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(38; "BIC mandatory"; Option)
        {
            Caption = 'BIC mandatory';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(39; "Pmt. Header SvcLvl"; Option)
        {
            Caption = 'Pmt. File Header SvcLvl';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,URGP,NURG,SDVA,PRPT';
            OptionMembers = " ",URGP,NURG,SDVA,PRPT;
        }
        field(41; "ISO Pmt: Group by Currency"; Option)
        {
            Caption = 'ISO Pmt: Group by Currency';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Yes';
            OptionMembers = " ",Yes;
        }
        field(42; "Unstruct. and Struct. Ref."; Option)
        {
            Caption = 'Combine unstruct. und struct. References';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(44; "MT101: Use Short Header"; Option)
        {
            Caption = 'Use short MT101-Header';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(100; "Pain Version"; Integer)
        {
            Caption = 'Pain Version';
            DataClassification = SystemMetadata;
            Description = 'Internal';
        }
        field(101; "Amendment Version"; Integer)
        {
            Caption = 'Amendment Version';
            DataClassification = SystemMetadata;
            Description = 'Internal';
        }
    }

    keys
    {
        key(Key1; "Bank Account No.", "Payment Type Code", "Country/Region Code")
        {
            Clustered = true;
        }
    }
    procedure OnDocumentAssist()
    begin
    end;

    procedure OnXSIAssist()
    begin
    end;

    procedure ONLocationAssist()
    begin
    end;

    procedure ProofText(Text: Text[80]): Text[80]
    begin
    end;

    procedure SetDefault(Version: Code[10])
    begin
    end;

    procedure GetOrdererScheme(var SchemaOrdererBank: Record "Pmt. Schema Orderer Bank"; PmtHead: Record "Payment Proposal Head"; MappedCountryCode: Code[10]): Boolean
    begin
    end;

    procedure CopyOrdererScheme(OrdSchemaFound: Record "Pmt. Schema Orderer Bank"; var OrdSchemaUsed: Record "Pmt. Schema Orderer Bank")
    begin
    end;
}