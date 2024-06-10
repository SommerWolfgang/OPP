report 5157909 "Payment Translate Functions"
{
    procedure SetReportLanguage(LanguageCode: Code[10])
    begin
    end;

    procedure GetLanguageTextAdvise(var InputOutputString: Text[1024]; PostingDate: Date)
    begin
        InputOutputString := '';
    end;

    procedure GetLanguageTextDocTypeOneSign(var InputOutputString: Code[1]; PaymentLine: Record "Payment Proposal Line")
    begin
        InputOutputString := '';
    end;

    procedure GetLanguageTextDocTypeText(var InputOutputString: Text[30]; PaymentLine: Record "Payment Proposal Line")
    begin
        InputOutputString := '';
    end;

    procedure GetLanguageTextPaymentText(var InputOutputString: Text[30]; PaymentLine: Record "Payment Proposal Line"; FillingOption: Integer)
    begin
        InputOutputString := '';
    end;
}