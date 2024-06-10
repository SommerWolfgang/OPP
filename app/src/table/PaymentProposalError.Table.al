table 5157898 "Payment Proposal Error"
{
    Caption = 'Payment Proposal Error';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            DataClassification = SystemMetadata;
            NotBlank = true;
        }
        field(2; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
            DataClassification = SystemMetadata;
            NotBlank = true;
        }
        field(3; "Journal Line No."; Integer)
        {
            Caption = 'Journal Line No.';
            DataClassification = SystemMetadata;
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = SystemMetadata;
        }
        field(5; "Error Description"; Text[250])
        {
            Caption = 'Error Description';
            DataClassification = SystemMetadata;
        }
        field(6; "Warning Message"; Boolean)
        {
            Caption = 'Warning Message';
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(Key1; "Journal Template Name", "Journal Batch Name", "Journal Line No.", "Line No.")
        {
            Clustered = true;
        }
    }
}