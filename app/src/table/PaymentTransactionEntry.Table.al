table 5157820 "Payment Transaction Entry"
{
    Caption = 'Payment Transaction Ledger Entry';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Ledger Type"; Option)
        {
            Caption = 'Ledger Type';
            DataClassification = SystemMetadata;
            OptionCaption = 'Reservation,Refund,Capturing,Cancellation';
            OptionMembers = Reservation,Refund,Capturing,Cancellation;
        }
        field(3; "Payment Method Code"; Code[10])
        {
            Caption = 'Payment Method Code';
            DataClassification = SystemMetadata;
            TableRelation = "Payment Method";
        }
        field(4; "Payment Transaction Entry No."; Integer)
        {
            Caption = 'Payment Transaction Entry No.';
            DataClassification = SystemMetadata;
            TableRelation = "Payment Transaction";
        }
        field(5; "Message Type"; Option)
        {
            Caption = 'Message Type';
            DataClassification = SystemMetadata;
            OptionCaption = 'Information,Warning,Error';
            OptionMembers = Information,Warning,Error;
        }
        field(6; "Message Text"; Text[250])
        {
            Caption = 'Message Text';
            DataClassification = SystemMetadata;
        }
        field(7; "Date / Time"; DateTime)
        {
            Caption = 'Date / Time';
            DataClassification = SystemMetadata;
        }
        field(8; "User ID"; Code[50])
        {
            Caption = 'User ID';
            DataClassification = EndUserIdentifiableInformation;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;

            trigger OnLookup()
            var
                UserMgt: Codeunit "User Management";
            begin
                UserMgt.LookupUserID("User ID");
            end;
        }
        field(9; Open; Boolean)
        {
            Caption = 'Open';
            DataClassification = SystemMetadata;
        }
        field(10; "Currency Factor"; Decimal)
        {
            Caption = 'Currency Factor';
            DataClassification = SystemMetadata;
            DecimalPlaces = 0 : 15;
            Editable = false;
            MinValue = 0;
        }
        field(11; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            DataClassification = SystemMetadata;
            TableRelation = Currency;
        }
        field(12; Amount; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'Amount';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(13; "Amount (LCY)"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'Amount (LCY)';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(14; "Source ID"; Integer)
        {
            Caption = 'Source ID';
            DataClassification = SystemMetadata;
        }
        field(15; "Source Type"; Integer)
        {
            Caption = 'Source Type';
            DataClassification = SystemMetadata;
        }
        field(16; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Payment Transaction Entry No.")
        {
            SumIndexFields = Amount, "Amount (LCY)";
        }
    }

    fieldgroups
    {
    }
}