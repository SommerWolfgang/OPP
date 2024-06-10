table 5157903 "Bundesbank Report"
{
    Caption = 'Report Bundesbank';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Gen. Journal Template"; Code[10])
        {
            Caption = 'Gen. Journal Template';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(2; "Gen. Journal Batch"; Code[10])
        {
            Caption = 'Gen. Journal Batch';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(3; "Gen. Journal Line"; Integer)
        {
            Caption = 'Gen. Journal Line';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(5; "Trading Type"; Option)
        {
            Caption = 'Trading Type';
            DataClassification = SystemMetadata;
            OptionCaption = 'Transit Trade,Service,Capital Trade';
            OptionMembers = Transit,Service,Capital;
        }
        field(6; "Service No."; Code[10])
        {
            Caption = 'Service No.';
            DataClassification = SystemMetadata;
            TableRelation = "Bundesbank Code";
            ValidateTableRelation = false;
        }
        field(7; Status; Option)
        {
            Caption = 'Status';
            DataClassification = SystemMetadata;
            Description = 'Reserve';
            Editable = false;
            OptionCaption = 'Open,Reported';
            OptionMembers = Open,Reported;
        }
        field(9; "Pmt. Amount"; Decimal)
        {
            Caption = 'Pmt. Amount';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(10; "Country/Region Code"; Code[10])
        {
            Caption = 'Vendor Country';
            DataClassification = SystemMetadata;
            Editable = false;
            TableRelation = "Bundesbank Country";
        }
        field(12; "Pmt. Currency Code"; Code[10])
        {
            Caption = 'Pmt. Currency Code';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(13; "Reported Amount"; Decimal)
        {
            Caption = 'Reported Amount';
            DataClassification = SystemMetadata;
        }
        field(20; "Goods Stored Abroad"; Boolean)
        {
            Caption = 'Goods stored abroad';
            DataClassification = SystemMetadata;
        }
        field(22; "Itemname Goods"; Code[27])
        {
            Caption = 'Item Name Trading Goods';
            DataClassification = SystemMetadata;
        }
        field(23; "Chapter No. Goods"; Code[10])
        {
            Caption = 'Capitel No. Goods';
            DataClassification = SystemMetadata;
        }
        field(24; "Broken Transit"; Boolean)
        {
            Caption = 'Broken transit';
            DataClassification = SystemMetadata;
        }
        field(27; "Due Date Transit"; Date)
        {
            Caption = 'Due Date Transit YYMM';
            DataClassification = SystemMetadata;
        }
        field(28; "Add. Information Transit"; Text[40])
        {
            Caption = 'Add. Information';
            DataClassification = SystemMetadata;
        }
        field(30; "Service Description"; Text[140])
        {
            Caption = 'Service Description';
            DataClassification = SystemMetadata;
        }
        field(32; "Transit Customer Country Code"; Code[10])
        {
            Caption = 'Customer Country';
            DataClassification = SystemMetadata;
        }
        field(33; "Unit Price"; Decimal)
        {
            Caption = 'Unit Price';
            DataClassification = SystemMetadata;
        }
        field(53; "Country of Investment"; Code[10])
        {
            Caption = 'Country Capital Investment';
            DataClassification = SystemMetadata;
        }
        field(54; "Itemname Sold Goods"; Code[27])
        {
            Caption = 'Itemname Sold Goods';
            DataClassification = SystemMetadata;
        }
        field(55; "Chapter No. Sold Goods"; Code[10])
        {
            Caption = 'Chapter No.Sold Goods';
            DataClassification = SystemMetadata;
        }
        field(60; "External Document No."; Code[35])
        {
            Caption = 'External Document No.';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(61; "Applies-to Doc. No."; Code[20])
        {
            Caption = 'Applies-to Doc. No.';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(62; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(63; "Account Type"; Option)
        {
            Caption = 'Account Type';
            DataClassification = SystemMetadata;
            Editable = false;
            OptionCaption = ',Customer,Vendor';
            OptionMembers = ,Customer,Vendor;
        }
        field(70; "Reported at Date"; Date)
        {
            Caption = 'Reported at Date';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(71; "Reported atTme"; Time)
        {
            Caption = 'Reported atTme';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(72; "Reported by"; Code[50])
        {
            Caption = 'Reported by';
            DataClassification = EndUserIdentifiableInformation;
            Editable = false;
        }
        field(73; Positive; Boolean)
        {
            Caption = 'Positive';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(74; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(75; "Posting Month"; Integer)
        {
            Caption = 'Posting Date';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(76; "Line No. Detail"; Integer)
        {
            Caption = 'Line No. Detail';
            DataClassification = SystemMetadata;
        }
        field(77; "Report Type"; Option)
        {
            Caption = 'Reporttype';
            DataClassification = SystemMetadata;
            OptionCaption = 'Z4,,Z10';
            OptionMembers = Z4,,Z10;
        }
        field(78; ISIN; Code[12])
        {
            Caption = 'ISIN';
            DataClassification = SystemMetadata;
        }
        field(79; "ISIN Description"; Text[35])
        {
            Caption = 'ISIN Description';
            DataClassification = SystemMetadata;
        }
        field(80; "Source Gen. Journal Template"; Code[10])
        {
            Caption = 'Source Gen. Journal Template';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(81; "Source Gen. Journal Batch"; Code[10])
        {
            Caption = 'Source Gen. Journal Batch';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(82; "Reporting Date"; Date)
        {
            Caption = 'Reporting Date';
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(Key1; "Gen. Journal Template", "Gen. Journal Batch", "Gen. Journal Line", "Line No.", "Line No. Detail")
        {
            Clustered = true;
        }
        key(Key2; "Trading Type", "Service No.", "Country/Region Code", Positive)
        {
        }
        key(Key3; "Report Type", "Account Type", "Country/Region Code", "Trading Type", "Service No.", "Chapter No. Goods", ISIN, Status, "Reporting Date")
        {
            SumIndexFields = "Pmt. Amount", "Reported Amount";
        }
    }
    // procedure CheckReport(var PmtHead: Record "Payment Proposal Head")
    // begin
    // end;

    procedure RightStr(TextPara: Text[1024]; "Max": Integer): Text[1024]
    begin
    end;

    procedure SetFilterBundesbankReport(var BRFilter: Record "Bundesbank Report"; BR: Record "Bundesbank Report")
    begin
    end;

    procedure ModifyField(var BR: Record "Bundesbank Report"; XBR: Record "Bundesbank Report")
    begin
    end;

    procedure InsertHeader(BR: Record "Bundesbank Report"): Boolean
    begin
    end;

    procedure Navi()
    begin
    end;
}