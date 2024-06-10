table 5157904 "Bundesbank Country"
{
    Caption = 'Bundesbank Country List';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            DataClassification = SystemMetadata;
            NotBlank = true;
            TableRelation = "Country/Region";
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = SystemMetadata;
        }
        field(3; "EU-Country"; Boolean)
        {
            Caption = 'EU Standard Transmission available';
            DataClassification = SystemMetadata;
        }
        field(4; "EU-Express"; Boolean)
        {
            Caption = 'EU Express Transmission available';
            DataClassification = SystemMetadata;
        }
        field(5; Shortcut; Text[10])
        {
            Caption = 'Shortcut AWV';
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(Key1; "Country/Region Code")
        {
            Clustered = true;
        }
    }
    procedure "ISO-AZV"() RetText: Text[3]
    begin
    end;
}