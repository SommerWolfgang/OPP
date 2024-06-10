page 5483224 "Create FA from Template"
{
    procedure SetPurchase()
    begin
    end;

    procedure GetNewFANo(): Code[20]
    begin
    end;

    procedure GetFirstFANoAndAmt(var _FirstFA: Code[20]; var _Amt: Decimal)
    begin
        _FirstFA := '';
        _Amt := 0;
    end;
}