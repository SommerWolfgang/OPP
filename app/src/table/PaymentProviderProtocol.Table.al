table 5157828 "Payment Provider Protocol"
{
    Caption = 'Payment Provider Protocol';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Payment Provider Code"; Code[20])
        {
            Caption = 'Payment Provider Code';
        }
        field(4; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(5; "Tenant ID"; Text[128])
        {
            Caption = 'Tenant ID';
        }
        field(6; Company; Text[30])
        {
            Caption = 'Company';
        }
        field(7; Method; Text[30])
        {
            Caption = 'Method';
        }
        field(8; Response; Text[250])
        {
            Caption = 'Response';
        }
        field(9; "User ID"; Code[50])
        {
            Caption = 'User ID';
        }
        field(10; "Date/Time"; DateTime)
        {
            Caption = 'Date/Time';
        }
        field(11; Stream; BLOB)
        {
            Caption = 'Stream';
        }
        field(12; IBAN; Code[50])
        {
            Caption = 'IBAN';
        }
        field(13; "Statement No."; Integer)
        {
            Caption = 'Statement No. in File';
        }
        field(14; "Pmt. Import Register No."; Code[20])
        {
            Caption = 'Pmt. Import Register No.';
        }
        field(15; "Pmt. Proposal"; Code[10])
        {
            Caption = 'Pmt. Proposal';
        }
        field(16; "Status Request"; Text[100])
        {
            Caption = 'Status Request';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Payment Provider Code")
        {
        }
    }

    procedure DoTheExport()
    begin
    end;

    procedure NewLine(PmtProvider: Record "Payment Provider"): Integer
    begin
    end;
}