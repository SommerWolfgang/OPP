page 5157964 "Extended Application VE"
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

    procedure GetPostingAction(): Integer
    begin
    end;

    procedure GetPostingAccount(): Code[20]
    begin
    end;

    procedure DelAppLine()
    begin
    end;

    procedure GetCurrencyCode(): Code[10]
    begin
    end;

    procedure ExternalApplication(EntryNo: Integer; NewGenJnlLine: Record "Gen. Journal Line"; NewRealPercent: Decimal; NewUserInput: Boolean; NewCheckDate: Boolean; NewKeepDifference: Boolean; NewAppDate: Date; NewCurrCode: Code[10]; NewRndPrec: Decimal)
    begin
    end;
}