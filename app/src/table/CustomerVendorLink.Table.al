table 5157815 "Customer / Vendor Link"
{
    Caption = 'Customer / Vendor Link';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            DataClassification = SystemMetadata;
            NotBlank = true;
        }
        field(2; "Customer Name"; Text[100])
        {
            CalcFormula = lookup(Customer.Name where("No." = field("Customer No.")));
            Caption = 'Customer Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3; "Customer City"; Text[50])
        {
            CalcFormula = lookup(Customer.City where("No." = field("Customer No.")));
            Caption = 'Customer City';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            DataClassification = SystemMetadata;
            NotBlank = true;
        }
        field(5; "Vendor Name"; Text[100])
        {
            CalcFormula = lookup(Vendor.Name where("No." = field("Vendor No.")));
            Caption = 'Vendor Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "Vendor City"; Text[50])
        {
            CalcFormula = lookup(Vendor.City where("No." = field("Vendor No.")));
            Caption = 'Vendor City';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(11; "Global Dimension 1 Filter"; Code[20])
        {
            Caption = 'Global Dimension 1 Filter';
            CaptionClass = '1,3,1';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(1));
        }
        field(12; "Global Dimension 2 Filter"; Code[20])
        {
            Caption = 'Global Dimension 2 Filter';
            CaptionClass = '1,3,2';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(2));
        }
        field(13; "Currency Filter"; Code[10])
        {
            Caption = 'Currency Filter';
            FieldClass = FlowFilter;
            TableRelation = Currency;
        }
        field(20; "Linked Vendor Balance (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - sum("Detailed Vendor Ledg. Entry"."Amount (LCY)" where("Vendor No." = field("Vendor No."),
                                                                                   "Initial Entry Global Dim. 1" = field("Global Dimension 1 Filter"),
                                                                                   "Initial Entry Global Dim. 2" = field("Global Dimension 2 Filter"),
                                                                                   "Currency Code" = field("Currency Filter")));
            Caption = 'Linked Vendor Balance (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(21; "Linked Vendor Net Change (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - sum("Detailed Vendor Ledg. Entry"."Amount (LCY)" where("Vendor No." = field("Vendor No."),
                                                                                   "Initial Entry Global Dim. 1" = field("Global Dimension 1 Filter"),
                                                                                   "Initial Entry Global Dim. 2" = field("Global Dimension 2 Filter"),
                                                                                   "Posting Date" = field("Date Filter"),
                                                                                   "Currency Code" = field("Currency Filter")));
            Caption = 'Linked Vendor Net Change (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(22; "Linked Customer Balance (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" where("Customer No." = field("Customer No."),
                                                                                 "Initial Entry Global Dim. 1" = field("Global Dimension 1 Filter"),
                                                                                 "Initial Entry Global Dim. 2" = field("Global Dimension 2 Filter"),
                                                                                 "Currency Code" = field("Currency Filter")));
            Caption = 'Linked Customer Balance (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(23; "Linked Cust. Net Change (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" where("Customer No." = field("Customer No."),
                                                                                 "Initial Entry Global Dim. 1" = field("Global Dimension 1 Filter"),
                                                                                 "Initial Entry Global Dim. 2" = field("Global Dimension 2 Filter"),
                                                                                 "Posting Date" = field("Date Filter"),
                                                                                 "Currency Code" = field("Currency Filter")));
            Caption = 'Linked Customer Net Change (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(31; "Linked Vendor Balance at Date"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - sum("Detailed Vendor Ledg. Entry"."Amount (LCY)" where("Vendor No." = field("Vendor No."),
                                                                                   "Initial Entry Global Dim. 1" = field("Global Dimension 1 Filter"),
                                                                                   "Initial Entry Global Dim. 2" = field("Global Dimension 2 Filter"),
                                                                                   "Currency Code" = field("Currency Filter"),
                                                                                   "Posting Date" = field(upperlimit("Date Filter"))));
            Caption = 'Linked Vendor Balance at Date (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(32; "Linked Cust. Balance at Date"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" where("Customer No." = field("Customer No."),
                                                                                 "Initial Entry Global Dim. 1" = field("Global Dimension 1 Filter"),
                                                                                 "Initial Entry Global Dim. 2" = field("Global Dimension 2 Filter"),
                                                                                 "Currency Code" = field("Currency Filter"),
                                                                                 "Posting Date" = field(upperlimit("Date Filter"))));
            Caption = 'Linked Cust. Balance at Date (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(40; "Pmt. Account No."; Code[20])
        {
            Caption = 'Pmt. Account No.';
            DataClassification = SystemMetadata;
            TableRelation = "G/L Account";
        }
    }

    keys
    {
        key(Key1; "Customer No.", "Vendor No.")
        {
            Clustered = true;
        }
        key(Key2; "Vendor No.", "Customer No.")
        {
        }
    }
}