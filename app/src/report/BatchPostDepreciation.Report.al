report 5483227 "Batch Post Depreciation"
{
    Caption = 'Batch Post Depreciation';
    ProcessingOnly = true;
    procedure InitializeRequest(NewDeprBookCode: Code[10]; NewStartingDate: Date; NewEndingDate: Date; NewDocumentNo: Code[20]; NewPostingDescription: Text[50])
    begin
    end;
}