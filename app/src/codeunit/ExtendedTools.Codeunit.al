codeunit 5157806 "Extended Tools"
{
    Permissions = TableData "Cust. Ledger Entry" = rm,
                  TableData "Vendor Ledger Entry" = rm,
                  TableData "Reminder Line" = rm,
                  TableData "Issued Reminder Line" = rm;
    trigger OnRun()
    begin
    end;

    procedure Cust_Open_Entries_Assoc(No: Code[20]) Total: Decimal
    begin
    end;

    procedure Vend_Open_Entries_Assoc(No: Code[20]) Total: Decimal
    begin
    end;

    procedure Cust_Due_Entries_Assoc(var Customer2: Record Customer) Total: Decimal
    begin
    end;

    procedure Vend_Due_Entries_Assoc(var Vendor2: Record Vendor) Total: Decimal
    begin
    end;

    procedure GenJnlLineCreditLimitCheck(GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    procedure ShowGenJnlLineNotificationDetails(CreditLimitNotification: Notification)
    begin
    end;

    procedure ShowSalesHeadNotificationDetails(CreditLimitNotification: Notification)
    begin
    end;

    procedure ShowSalesLineNotificationDetails(CreditLimitNotification: Notification)
    begin
    end;

    procedure UpgradeExtendedData()
    begin
    end;
}