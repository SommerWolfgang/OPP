table 5483222 "FA Template Depreciation Book"
{
    Caption = 'FA Template Depreciation Book';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "FA Template No."; Code[20])
        {
            Caption = 'FA Template No.';
            DataClassification = SystemMetadata;
            NotBlank = true;
            TableRelation = "Fixed Asset Template";
        }
        field(2; "Depreciation Book Code"; Code[10])
        {
            Caption = 'Depreciation Book Code';
            DataClassification = SystemMetadata;
            NotBlank = true;
            TableRelation = "Depreciation Book";
        }
        field(3; "Depreciation Method"; Option)
        {
            Caption = 'Depreciation Method';
            DataClassification = SystemMetadata;
            OptionCaption = 'Straight-Line,Declining-Balance 1,Declining-Balance 2,DB1/SL,DB2/SL,User-Defined,Manual';
            OptionMembers = "Straight-Line","Declining-Balance 1","Declining-Balance 2","DB1/SL","DB2/SL","User-Defined",Manual;
        }
        field(5; "Straight-Line %"; Decimal)
        {
            Caption = 'Straight-Line %';
            DataClassification = SystemMetadata;
            DecimalPlaces = 2 : 8;
            MinValue = 0;
        }
        field(6; "No. of Depreciation Years"; Decimal)
        {
            BlankZero = true;
            Caption = 'No. of Depreciation Years';
            DataClassification = SystemMetadata;
            DecimalPlaces = 2 : 8;
            MinValue = 0;

        }
        field(7; "No. of Depreciation Months"; Decimal)
        {
            BlankZero = true;
            Caption = 'No. of Depreciation Months';
            DataClassification = SystemMetadata;
            DecimalPlaces = 2 : 8;
            MinValue = 0;
        }
        field(8; "Fixed Depr. Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Fixed Depr. Amount';
            DataClassification = SystemMetadata;
            MinValue = 0;
        }
        field(9; "Declining-Balance %"; Decimal)
        {
            Caption = 'Declining-Balance %';
            DataClassification = SystemMetadata;
            DecimalPlaces = 2 : 8;
            MaxValue = 100;
            MinValue = 0;
        }
        field(10; "Depreciation Table Code"; Code[10])
        {
            Caption = 'Depreciation Table Code';
            DataClassification = SystemMetadata;
            TableRelation = "Depreciation Table Header";
        }
        field(11; "Final Rounding Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Final Rounding Amount';
            DataClassification = SystemMetadata;
            MinValue = 0;
        }
        field(12; "Ending Book Value"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Ending Book Value';
            DataClassification = SystemMetadata;
            MinValue = 0;
        }
        field(13; "FA Posting Group"; Code[10])
        {
            Caption = 'FA Posting Group';
            DataClassification = SystemMetadata;
            TableRelation = "FA Posting Group";
        }
        field(40; "FA Exchange Rate"; Decimal)
        {
            Caption = 'FA Exchange Rate';
            DataClassification = SystemMetadata;
            DecimalPlaces = 4 : 4;
            MinValue = 0;
        }
        field(41; "Fixed Depr. Amount below Zero"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Fixed Depr. Amount below Zero';
            DataClassification = SystemMetadata;
            MinValue = 0;
        }
        field(42; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(44; "Use FA Ledger Check"; Boolean)
        {
            Caption = 'Use FA Ledger Check';
            DataClassification = SystemMetadata;
            InitValue = true;
        }
        field(46; "Depr. below Zero %"; Decimal)
        {
            BlankZero = true;
            Caption = 'Depr. below Zero %';
            DataClassification = SystemMetadata;
            DecimalPlaces = 2 : 8;
            MinValue = 0;
        }
        field(52; "Accum. Depr. % (Custom 1)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Accum. Depr. % (Custom 1)';
            DataClassification = SystemMetadata;
            DecimalPlaces = 2 : 8;
            MaxValue = 100;
            MinValue = 0;
        }
        field(53; "Depr. This Year % (Custom 1)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Depr. This Year % (Custom 1)';
            DataClassification = SystemMetadata;
            DecimalPlaces = 2 : 8;
            MaxValue = 100;
            MinValue = 0;
        }
        field(54; "Property Class (Custom 1)"; Option)
        {
            Caption = 'Property Class (Custom 1)';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Personal Property,Real Property';
            OptionMembers = " ","Personal Property","Real Property";
        }
        field(55; Description; Text[30])
        {
            Caption = 'Description';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(58; "FA Add.-Currency Factor"; Decimal)
        {
            Caption = 'FA Add.-Currency Factor';
            DataClassification = SystemMetadata;
            DecimalPlaces = 0 : 15;
            MinValue = 0;
        }
        field(59; "Use Half-Year Convention"; Boolean)
        {
            Caption = 'Use Half-Year Convention';
            DataClassification = SystemMetadata;
        }
        field(60; "Use DB% First Fiscal Year"; Boolean)
        {
            Caption = 'Use DB% First Fiscal Year';
            DataClassification = SystemMetadata;
        }
        field(63; "Ignore Def. Ending Book Value"; Boolean)
        {
            Caption = 'Ignore Def. Ending Book Value';
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(Key1; "FA Template No.", "Depreciation Book Code")
        {
            Clustered = true;
        }
    }

    procedure GetExchangeRate(): Decimal
    begin
    end;

    procedure LinearMethod(): Boolean
    begin
    end;

    procedure DecliningMethod(): Boolean
    begin
    end;

    procedure UserDefinedMethod(): Boolean
    begin
    end;

    procedure TestHalfYearConventionMethod(): Boolean
    begin
    end;

    procedure DeprMethodError()
    begin
    end;

    procedure Caption(): Text[120]
    begin
    end;
}