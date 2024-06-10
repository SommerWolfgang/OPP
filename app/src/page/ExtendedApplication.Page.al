page 5157807 "Extended Application"
{
    procedure SetLine(GenJnlLine2: Record "Gen. Journal Line"; _IsAccount: Boolean)
    begin
    end;

    procedure GetRest() BalanceAmt: Decimal
    begin
    end;

    procedure GetRestLCY() BalanceAmtLCY: Decimal
    begin
    end;

    procedure GetGainLoss() GainLoss: Decimal
    begin
    end;

    procedure GetPostingAction(): Integer
    begin
    end;

    procedure GetPostingAccount(): Code[20]
    begin
    end;

    procedure ReadPmtAdvice()
    begin
    end;
}