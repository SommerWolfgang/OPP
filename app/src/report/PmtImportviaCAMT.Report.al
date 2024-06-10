report 5157817 "Pmt. Import via CAMT"
{
   procedure ProcessUstrdSVWZ(var _PmtDocument: Record "Pmt. Import Line"; var EntryDtl: BigText)
    begin
    end;

    procedure ProcessAddtlNtryInf(var _PmtDocument: Record "Pmt. Import Line"; var EntryDtl: BigText; MaxReasonRow: Integer) Result: Boolean
    begin
    end;

    procedure ProcessAddtlNtryInfMT940TriggerTags(var _PmtDocument: Record "Pmt. Import Line"; var EntryDtl: BigText; MaxReasonRow: Integer) Result: Boolean
    begin
    end;
}