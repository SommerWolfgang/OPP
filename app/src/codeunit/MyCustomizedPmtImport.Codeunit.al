codeunit 5157808 "My Customized Pmt. Import"
{
    trigger OnRun()
    begin
    end;

    procedure SearchVendFromBankDoc(var GenJnlLine: Record "Gen. Journal Line"; var IsFound: Boolean; var CVTokenTemp: Record "Token Buffer" temporary; var CVAccTokenTemp: Record "Token Buffer" temporary; var CVExtTokenTemp: Record "Token Buffer" temporary; OPplusSetup: Record "OPplus Setup"; var PmtImportLine: Record "Pmt. Import Line"; FullText: Text[1024]; Log: Boolean; var LogStream: OutStream)
    begin
        IsFound := false;
    end;

    procedure SearchCustFromBankDoc(var GenJnlLine: Record "Gen. Journal Line"; var IsFound: Boolean; var CVTokenTemp: Record "Token Buffer" temporary; var CVAccTokenTemp: Record "Token Buffer" temporary; var CVExtTokenTemp: Record "Token Buffer" temporary; OPplusSetup: Record "OPplus Setup"; var PmtImportLine: Record "Pmt. Import Line"; FullText: Text[1024]; Log: Boolean; var LogStream: OutStream)
    begin
        IsFound := false;
    end;

    procedure SearchVendEntryFromBankDoc(var GenJnlLine: Record "Gen. Journal Line"; var IsFound: Boolean; var CVTokenTemp: Record "Token Buffer" temporary; var CVDocTokenTemp: Record "Token Buffer" temporary; var CVExtTokenTemp: Record "Token Buffer" temporary; OPplusSetup: Record "OPplus Setup"; var PmtImportLine: Record "Pmt. Import Line"; FullText: Text[1024]; Log: Boolean; var LogStream: OutStream)
    begin
        IsFound := false;
    end;

    procedure SearchCustEntryFromBankDoc(var GenJnlLine: Record "Gen. Journal Line"; var IsFound: Boolean; var CVTokenTemp: Record "Token Buffer" temporary; var CVDocTokenTemp: Record "Token Buffer" temporary; var CVExtTokenTemp: Record "Token Buffer" temporary; OPplusSetup: Record "OPplus Setup"; var PmtImportLine: Record "Pmt. Import Line"; FullText: Text[1024]; Log: Boolean; var LogStream: OutStream)
    begin
        IsFound := false;
    end;
}