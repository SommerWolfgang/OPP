table 5157908 "Bundesbank Country Supplement"
{

    Caption = 'Bundesbank Country Supplement';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Primary Key"; Integer)
        {
            Caption = 'Primary Key';
            DataClassification = SystemMetadata;
        }
        field(2; Document; BLOB)
        {
            Caption = 'Document';
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }
    procedure DocShowLocal()
    begin
    end;

    procedure DocShowWeb()
    begin
    end;

    procedure DocImport()
    begin
    end;
}