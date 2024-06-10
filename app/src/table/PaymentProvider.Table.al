table 5157827 "Payment Provider"
{
    Caption = 'Payment Provider';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(3; "User ID"; Text[50])
        {
            Caption = 'User ID';
        }
        field(4; Password; Text[50])
        {
            Caption = 'Password';
            ExtendedDatatype = Masked;
        }
        field(5; Credential; Text[50])
        {
            Caption = 'Credential';
        }
        field(6; Signature; BLOB)
        {
            Caption = 'Signature';
        }
        field(7; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,PayPal,CAMT,SEPA';
            OptionMembers = " ",PayPal,CAMT,SEPA;
        }
        field(8; Protocol; Option)
        {
            Caption = 'Protocol';
            OptionCaption = ' ,All,Error';
            OptionMembers = " ",All,Error;
        }
        field(9; "Webservice URL"; Text[100])
        {
            Caption = 'Webservice URL';
        }
        field(10; "Codeunit Webservice"; Integer)
        {
            Caption = 'Codeunit Webservice';
        }
        field(15; Testmode; Boolean)
        {
            Caption = 'Testmode';
        }
        field(16; "Request Bank Account List"; Boolean)
        {
            Caption = 'Request Bank Account List';
        }
        field(17; "Log Streams"; Boolean)
        {
            Caption = 'Log Streams';
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
        fieldgroup(DropDown; "Code", Description, Type)
        {
        }
    }
}