table 5157819 "Payment Transaction"
{
    Caption = 'Payment Transaction';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = SystemMetadata;
        }
        field(2; "Pmt. Transaction No."; Code[50])
        {
            Caption = 'Pmt. Transaction No.';
            DataClassification = SystemMetadata;
        }
        field(3; Type; Option)
        {
            Caption = 'Type';
            DataClassification = SystemMetadata;
            OptionCaption = ',Incoming,Outgoing';
            OptionMembers = ,Incoming,Outgoing;
        }
        field(4; "Payment Method Code"; Code[10])
        {
            Caption = 'Payment Method Code';
            DataClassification = AccountData;
            Description = 'PMT';
            TableRelation = "Payment Method";
        }
        field(5; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            DataClassification = SystemMetadata;
            TableRelation = Customer;
        }
        field(6; Amount; Decimal)
        {
            Caption = 'Amount';
            DataClassification = SystemMetadata;
        }
        field(7; "Amount (LCY)"; Decimal)
        {
            Caption = 'Amount (LCY)';
            DataClassification = SystemMetadata;
        }
        field(8; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            DataClassification = SystemMetadata;
            TableRelation = Currency;
        }
        field(9; "Currency Factor"; Decimal)
        {
            Caption = 'Currency Factor';
            DataClassification = SystemMetadata;
        }
        field(10; "Date / Time"; DateTime)
        {
            Caption = 'Date / Time';
            DataClassification = SystemMetadata;
        }
        field(11; "Your Reference"; Text[50])
        {
            Caption = 'Your Reference';
            DataClassification = SystemMetadata;
        }
        field(12; "Order No."; Code[35])
        {
            Caption = 'Order No.';
            DataClassification = SystemMetadata;
        }
        field(13; "External Document No."; Code[35])
        {
            Caption = 'External Document No.';
            DataClassification = SystemMetadata;
        }
        field(14; "External Document No. 2"; Code[35])
        {
            Caption = 'External Document No. 2';
            DataClassification = SystemMetadata;
        }
        field(15; "External Document No. 3"; Code[35])
        {
            Caption = 'External Document No. 3';
            DataClassification = SystemMetadata;
        }
        field(16; "Responsibility Center"; Code[10])
        {
            Caption = 'Responsibility Center';
            DataClassification = SystemMetadata;
            TableRelation = "Responsibility Center";
        }
        field(17; "No. of Log Entries"; Integer)
        {
            CalcFormula = count("Payment Transaction Entry" where("Payment Transaction Entry No." = field("Entry No.")));
            Caption = 'No. of Log Entries';
            Editable = false;
            FieldClass = FlowField;
        }
        field(18; "Assigned Amount"; Decimal)
        {
            CalcFormula = sum("Payment Transaction Entry".Amount where("Payment Transaction Entry No." = field("Entry No.")));
            Caption = 'Assigned Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; "Pmt. Service Provider"; Code[10])
        {
            Caption = 'Pmt. Service Provider';
            DataClassification = SystemMetadata;
        }
        field(21; "Pmt. Import Entry No."; Integer)
        {
            Caption = 'Pmt. Import Entry No.';
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Pmt. Transaction No.")
        {
        }
        key(Key3; "Order No.")
        {
        }
        key(Key4; "External Document No.")
        {
        }
        key(Key5; "External Document No. 2")
        {
        }
        key(Key6; "External Document No. 3")
        {
        }
    }
}