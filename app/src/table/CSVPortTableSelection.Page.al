page 5157815 "CSV Port Table Selection"
{
    Caption = 'CSV Port Table Selection';
    Editable = false;
    PageType = List;
    SourceTable = "Object";
    SourceTableView = sorting(Type, "Company Name", ID) where(Type = const(Table));

    layout
    {
        area(content)
        {
        }
    }
}