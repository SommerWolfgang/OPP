codeunit 5157862 "Views and Lists Tools"
{
    Permissions = TableData "G/L Account" = rm,
                  TableData "G/L Entry" = rm,
                  TableData Customer = rm,
                  TableData "Cust. Ledger Entry" = rm,
                  TableData Vendor = rm,
                  TableData "Vendor Ledger Entry" = rm,
                  TableData "Issued Reminder Line" = rd,
                  TableData "Reminder/Fin. Charge Entry" = rd,
                  TableData "Fixed Asset" = r,
                  TableData "FA Ledger Entry" = r;

    trigger OnRun()
    begin
    end;

    procedure QuickSearchSetup()
    begin
    end;

    procedure ShowGLAccDoc(Rec: Record "G/L Entry")
    begin
    end;

    procedure Cust_Last_Payment(No: Code[20]) Total: Decimal
    begin
    end;

    procedure Cust_Last_PmtDate(No: Code[20]) PostDate: Date
    begin
    end;

    procedure Cust_DrillDown_LastPmt(No: Code[20])
    begin
    end;

    procedure Cust_Open_Entries(No: Code[20]) Total: Decimal
    begin
    end;

    procedure Cust_Due_Entries(No: Code[20]) Total: Decimal
    begin
    end;

    procedure Cust_Show_BalAcc(CustLedgEntries: Record "Cust. Ledger Entry"; var BalAccountInfo: array[2] of Text[100])
    begin
    end;

    procedure Vend_Last_Payment(No: Code[20]) Total: Decimal
    begin
    end;

    procedure Vend_Last_PmtDate(No: Code[20]) PostDate: Date
    begin
    end;

    procedure Vend_Drilldown_LastPmt(No: Code[20]) Total: Decimal
    begin
    end;

    procedure Vend_Open_Entries(No: Code[20]) Total: Decimal
    begin
    end;

    procedure Vend_Due_Entries(No: Code[20]) Total: Decimal
    begin
    end;

    procedure Vend_Show_BalAcc(VendLedgEntries: Record "Vendor Ledger Entry"; var BalAccountInfo: array[2] of Text[100])
    begin
    end;

    procedure GLAcc_Show_BalAcc(GLEntry: Record "G/L Entry"; var BalAccountInfo: array[2] of Text[100])
    begin
    end;

    procedure Norm_String(InStr: Text[100]): Text[250]
    var
        Length: Integer;
        n: Integer;
        Dummy: Text[2];
        OutStr: Text[250];
    begin
        InStr := ConvertStr(InStr, 'åáàâéèêíìîóòôúùûÁÀÂÅÉÈÊÍÌÎÓÒÔÚÙÛ', 'aaaaeeeiiiooouuuAAAAEEEIIIOOOUUU');
        InStr := DelChr(UpperCase(InStr));

        Length := StrLen(InStr);
        OutStr := '';

        for n := 1 to Length do begin
            Dummy := CopyStr(InStr, n, 1);
            if StrPos('ABCDEFGHIJKLMNOPQRSTUVWXYZ', Dummy) > 0 then
                OutStr := OutStr + Dummy;
            if StrPos('Ää', Dummy) > 0 then
                OutStr := OutStr + 'AE';
            if StrPos('Öö', Dummy) > 0 then
                OutStr := OutStr + 'OE';
            if StrPos('Üü', Dummy) > 0 then
                OutStr := OutStr + 'UE';
            if Dummy = 'ß' then
                OutStr := OutStr + 'SS';
        end;

        exit(OutStr);
    end;

    [Scope('Internal')]
    procedure GLEntryEdit(var GLE: Record "G/L Entry")
    var
        GenLedgEntry: Record "G/L Entry";
    begin
        GenLedgEntry := GLE;
        GenLedgEntry.LockTable;
        GenLedgEntry.Find;
        GenLedgEntry.Description := GLE.Description;
        // gbedv GLOE -------------------------------------------------- BEGIN
        if GenLedgEntry.Open then
            GenLedgEntry."Applies-to ID" := GLE."Applies-to ID";
        // gbedv GLOE -------------------------------------------------- END
        ReadSetup;
        if VALSetup."G/L Ext. Doc. No. Changeable" then
            GenLedgEntry."External Document No." := GLE."External Document No.";
        GenLedgEntry.Modify;
        GLE := GenLedgEntry;
    end;

    [Scope('Internal')]
    procedure UpdateCLEntry(var CLEntry: Record "Cust. Ledger Entry"; GenJnlLine: Record "Gen. Journal Line")
    var
        Cust: Record Customer;
    begin
        OnBeforeUpdateCLEntry(CLEntry, GenJnlLine);
        CLEntry."Search Amount (LCY)" := GenJnlLine."Amount (LCY)";
        if Cust.Get(CLEntry."Customer No.") then begin
            Cust."Last Posting at" := Today;
            Cust.Modify;
        end;
        if (GenJnlLine."Account Type" in [GenJnlLine."Account Type"::Customer]) and
           (GenJnlLine."Account No." = CLEntry."Customer No.")
        then
            TransferCommentLine(GenJnlLine, GenJnlLine."Account Type"::Customer, CLEntry."Customer No.", CLEntry."Entry No.");
    end;

    [Scope('Internal')]
    procedure UpdateVLEntry(var VLEntry: Record "Vendor Ledger Entry"; GenJnlLine: Record "Gen. Journal Line")
    var
        Vend: Record Vendor;
    begin
        OnBeforeUpdateVLEntry(VLEntry, GenJnlLine);
        VLEntry."Search Amount (LCY)" := GenJnlLine."Amount (LCY)";
        if Vend.Get(VLEntry."Vendor No.") then begin
            Vend."Last Posting at" := Today;
            Vend.Modify;
        end;
        if (GenJnlLine."Account Type" in [GenJnlLine."Account Type"::Vendor]) and
           (GenJnlLine."Account No." = VLEntry."Vendor No.")
        then
            TransferCommentLine(GenJnlLine, GenJnlLine."Account Type"::Vendor, VLEntry."Vendor No.", VLEntry."Entry No.");
    end;

    [Scope('Internal')]
    procedure UpdateGLEntry(GenJnlLine: Record "Gen. Journal Line"; GLEntry: Record "G/L Entry")
    var
        GLAccount: Record "G/L Account";
    begin
        OnBeforeUpdateGLEntry(GLEntry, GenJnlLine);
        if (GenJnlLine."Account Type" in [GenJnlLine."Account Type"::"G/L Account"]) and
           (GenJnlLine."Account No." = GLEntry."G/L Account No.")
        then
            TransferCommentLine(GenJnlLine, GenJnlLine."Account Type"::"G/L Account", GLEntry."G/L Account No.", GLEntry."Entry No.");
        if GLAccount.Get(GLEntry."G/L Account No.") then begin
            if GLAccount."Last Posting at" <> Today then begin
                GLAccount."Last Posting at" := Today;
                GLAccount.Modify;
            end;
        end;
    end;

    [Scope('Internal')]
    procedure ReadSetup()
    begin
        if SetupRead then
            exit;
        if VALSetup.Get then
            SetupRead := true;
    end;

    [Scope('Internal')]
    procedure UpdateLastPostingAt()
    var
        CustLedgEntry: Record "Cust. Ledger Entry";
        Customer: Record Customer;
        GLAccount: Record "G/L Account";
        GLEntry: Record "G/L Entry";
        Vendor: Record Vendor;
        VendLedgEntry: Record "Vendor Ledger Entry";
        Dlg: Dialog;
        RecordCounter: Integer;
    begin
        if Confirm(Text006) then begin
            Dlg.Open(Text009 + '\' + PadStr(Customer.FieldCaption("No."), 20) + ' ' + Text010);

            CustLedgEntry.SetCurrentKey("Customer No.", "Posting Date", "Currency Code");
            VendLedgEntry.SetCurrentKey("Vendor No.", "Posting Date", "Currency Code");
            GLEntry.SetCurrentKey("G/L Account No.", "Posting Date");
            if Customer.FindSet(true, false) then begin
                Dlg.Update(1, Customer.TableCaption);
                RecordCounter := Customer.Count;
                repeat
                    RecordCounter := RecordCounter - 1;
                    if RecordCounter mod 100 = 0 then
                        Dlg.Update(2, Customer."No.");
                    CustLedgEntry.SetRange("Customer No.", Customer."No.");
                    if CustLedgEntry.FindLast then begin
                        Customer."Last Posting at" := CustLedgEntry."Posting Date";
                        Customer.Modify;
                    end;
                until Customer.Next = 0;
            end;
            if Vendor.FindSet(true, false) then begin
                Dlg.Update(1, Vendor.TableCaption);
                RecordCounter := Vendor.Count;
                repeat
                    RecordCounter := RecordCounter - 1;
                    if RecordCounter mod 100 = 0 then
                        Dlg.Update(2, Vendor."No.");
                    VendLedgEntry.SetRange("Vendor No.", Vendor."No.");
                    if VendLedgEntry.FindLast then begin
                        Vendor."Last Posting at" := VendLedgEntry."Posting Date";
                        Vendor.Modify;
                    end;
                until Vendor.Next = 0;
            end;
            if GLAccount.FindSet(true, false) then begin
                Dlg.Update(1, GLAccount.TableCaption);
                RecordCounter := GLAccount.Count;
                repeat
                    RecordCounter := RecordCounter - 1;
                    if RecordCounter mod 100 = 0 then
                        Dlg.Update(2, GLAccount."No.");
                    GLEntry.SetRange("G/L Account No.", GLAccount."No.");
                    if GLEntry.FindLast then begin
                        GLAccount."Last Posting at" := GLEntry."Posting Date";
                        GLAccount.Modify;
                    end;
                until GLAccount.Next = 0;
            end;
            Dlg.Close;
            Message(Text008);
        end else
            Error(Text007);
    end;

    [Scope('Internal')]
    procedure DeleteCommentLines(GenJnlLine: Record "Gen. Journal Line")
    var
        LedgerEntryCommentLine: Record "Ledger Entry Comment Line";
    begin
        LedgerEntryCommentLine.SetRange("Table Name", LedgerEntryCommentLine."Table Name"::"Gen. Journal Line");
        LedgerEntryCommentLine.SetRange("No.", PadStr(GenJnlLine."Journal Template Name", 10, ' ') + GenJnlLine."Journal Batch Name");
        LedgerEntryCommentLine.SetRange("Entry No.", GenJnlLine."Line No.");
        if not LedgerEntryCommentLine.IsEmpty then
            LedgerEntryCommentLine.DeleteAll;
    end;

    [Scope('Internal')]
    procedure TransferCommentLine(GenJnlLine: Record "Gen. Journal Line"; AccType: Option "G/L Account",Customer,Vendor,"Bank Account","Fixed Asset","IC Partner"; AccNo: Code[20]; EntryNo: Integer)
    var
        LedgerEntryCommentLine: Record "Ledger Entry Comment Line";
        LedgerEntryCommentLine2: Record "Ledger Entry Comment Line";
    begin
        LedgerEntryCommentLine.SetRange("Table Name", LedgerEntryCommentLine."Table Name"::"Gen. Journal Line");
        LedgerEntryCommentLine.SetRange("No.", PadStr(GenJnlLine."Journal Template Name", 10, ' ') +
                                                     GenJnlLine."Journal Batch Name");
        LedgerEntryCommentLine.SetRange("Entry No.", GenJnlLine."Line No.");
        if LedgerEntryCommentLine.FindSet() then begin
            repeat
                LedgerEntryCommentLine2.TransferFields(LedgerEntryCommentLine);
                case AccType of
                    AccType::"G/L Account":
                        LedgerEntryCommentLine2."Table Name" := LedgerEntryCommentLine2."Table Name"::"G/L Account";
                    AccType::Customer:
                        LedgerEntryCommentLine2."Table Name" := LedgerEntryCommentLine2."Table Name"::Customer;
                    AccType::Vendor:
                        LedgerEntryCommentLine2."Table Name" := LedgerEntryCommentLine2."Table Name"::Vendor;
                end;
                LedgerEntryCommentLine2."No." := AccNo;
                LedgerEntryCommentLine2."Entry No." := EntryNo;
                LedgerEntryCommentLine2.Insert;
            until LedgerEntryCommentLine.Next = 0;
        end;
    end;

    [Scope('Internal')]
    procedure UpdatePostinGroupTotal(var PostingGroupBuffer: Record "Ledger Entry Comment Line"; IsCust: Boolean; PostingGroup: Code[20]; CurrencyCode: Code[10]; AmountFCY: Decimal; AmountLCY: Decimal)
    var
        LastLineNo: Integer;
    begin
        with PostingGroupBuffer do begin
            Reset;
            if IsCust then
                SetRange("Table Name", "Table Name"::Customer)
            else
                SetRange("Table Name", "Table Name"::Vendor);
            SetRange("No.", PostingGroup);
            if not FindLast then
                LastLineNo := 10
            else
                LastLineNo := "Line No." + 10;

            SetRange(Code, CurrencyCode);
            if FindFirst then begin
                Amount := Amount + AmountFCY;
                "Remaining Amount" := "Remaining Amount" + AmountLCY;
                Modify;
            end else begin
                if IsCust then
                    "Table Name" := "Table Name"::Customer
                else
                    "Table Name" := "Table Name"::Vendor;
                "Line No." := LastLineNo;
                "No." := PostingGroup;
                Code := CurrencyCode;
                Amount := AmountFCY;
                "Remaining Amount" := AmountLCY;
                Insert;
            end;
        end;
    end;

    [Scope('Internal')]
    procedure Show_BalAcc(var BalAccountInfo: array[2] of Text[100]; AccountNo: Code[20]; AccountType: Option "G/L Account",Customer,Vendor,"Bank Account","Fixed Asset","IC Partner"; EntryPositive: Boolean; TransactionNo: Integer; DocumentNo: Code[20]; PostingDate: Date)
    var
        BalBankTemp: Record "Code Buffer" temporary;
        BalCustAccTemp: Record "Code Buffer" temporary;
        BalFATemp: Record "Code Buffer" temporary;
        BalGLAccTemp: Record "Code Buffer" temporary;
        BalVendAccTemp: Record "Code Buffer" temporary;
        "Query": Query "Bal. Accounts per Transaction";
        i: Integer;
    begin
        // NAV 2013 and higher ...
        ReadSetup;
        Clear(BalAccountInfo);

        if VALSetup."Search Bal. Account" = VALSetup."Search Bal. Account"::"via Transaction" then
            Query.SetRange(Transaction_No_Filter, TransactionNo)
        else begin
            Query.SetRange(Document_No_Filter, DocumentNo);
            Query.SetRange(Posting_Date_Filter, PostingDate);
        end;

        Query.Open;
        while (Query.Read) and (i < 6) do begin
            if ((Query.Vendor_No <> '') and (Query.Vendor_No <> AccountNo) and (AccountType = AccountType::Vendor)) or
               ((Query.Vendor_No <> '') and (AccountType <> AccountType::Vendor))
            then begin
                if not BalVendAccTemp.Get(Query.Vendor_No) then begin
                    BalVendAccTemp."No." := Query.Vendor_No;
                    BalVendAccTemp.Insert;
                    BalAccountInfo[1] := Query.Vendor_No;
                    BalAccountInfo[2] := Query.Vend_Name;
                    i += 1;
                end;
            end;
            if ((Query.Customer_No <> '') and (Query.Customer_No <> AccountNo) and (AccountType = AccountType::Customer)) or
               ((Query.Customer_No <> '') and (AccountType <> AccountType::Customer))
            then begin
                if not BalCustAccTemp.Get(Query.Customer_No) then begin
                    BalCustAccTemp."No." := Query.Customer_No;
                    BalCustAccTemp.Insert;
                    BalAccountInfo[1] := Query.Customer_No;
                    BalAccountInfo[2] := Query.Cust_Name;
                    i += 1;
                end;
            end;
            if (Query.Bank_Account_No <> '') then begin
                if not BalBankTemp.Get(Query.Bank_Account_No) then begin
                    BalBankTemp."No." := Query.Bank_Account_No;
                    BalBankTemp.Insert;
                    BalAccountInfo[1] := Query.Bank_Account_No;
                    BalAccountInfo[2] := Query.Bank_Name;
                    i += 1;
                end;
            end;
            if (Query.FA_No <> '') then begin
                if not BalFATemp.Get(Query.FA_No) then begin
                    BalFATemp."No." := Query.FA_No;
                    BalFATemp.Insert;
                    BalAccountInfo[1] := Query.FA_No;
                    if VALSetup."Show with FA Postings" = VALSetup."Show with FA Postings"::"FA Name" then
                        BalAccountInfo[2] := Query.FA_Name;
                    i += 1;
                end;
            end;
            if ((Query.G_L_Account_No <> '') and ((not Query.System_Created_Entry) or (Query.Gen_Posting_Type > 0))) then begin
                if (EntryPositive and (Query.Amount < 0)) or
                   (not EntryPositive and (Query.Amount > 0)) then begin
                    if ((AccountType = AccountType::"G/L Account") and (Query.G_L_Account_No <> AccountNo)) or
                       (AccountType <> AccountType::"G/L Account")
                    then begin
                        if not BalGLAccTemp.Get(Query.G_L_Account_No) then begin
                            BalGLAccTemp."No." := Query.G_L_Account_No;
                            BalGLAccTemp.Insert;
                            BalAccountInfo[1] := Query.G_L_Account_No;
                            BalAccountInfo[2] := Query.G_L_Account_Name;
                            i += 1;
                        end;
                    end;
                end;
            end;
        end;
        if BalAccountInfo[1] = '' then begin
            Query.Open;
            while (Query.Read) and (i < 6) do begin
                if ((Query.G_L_Account_No <> '') and (Query.Gen_Posting_Type > 0)) then begin
                    if (EntryPositive and (Query.Amount < 0)) or
                       (not EntryPositive and (Query.Amount > 0)) then begin
                        if ((AccountType = AccountType::"G/L Account") and (Query.G_L_Account_No <> AccountNo)) or
                           (AccountType <> AccountType::"G/L Account")
                        then begin
                            if not BalGLAccTemp.Get(Query.G_L_Account_No) then begin
                                BalGLAccTemp."No." := Query.G_L_Account_No;
                                BalGLAccTemp.Insert;
                                BalAccountInfo[1] := Query.G_L_Account_No;
                                BalAccountInfo[2] := Query.G_L_Account_Name;
                                i += 1;
                            end;
                        end;
                    end;
                end;
            end;
        end;
        if BalAccountInfo[1] = '' then begin
            Query.Open;
            while (Query.Read) and (i < 6) do begin
                if (Query.G_L_Account_No <> '') then begin
                    if (EntryPositive and (Query.Amount < 0)) or
                       (not EntryPositive and (Query.Amount > 0)) then begin
                        if ((AccountType = AccountType::"G/L Account") and (Query.G_L_Account_No <> AccountNo)) or
                            (AccountType <> AccountType::"G/L Account")
                        then begin
                            if not BalGLAccTemp.Get(Query.G_L_Account_No) then begin
                                BalGLAccTemp."No." := Query.G_L_Account_No;
                                BalGLAccTemp.Insert;
                                BalAccountInfo[1] := Query.G_L_Account_No;
                                BalAccountInfo[2] := Query.G_L_Account_Name;
                                i += 1;
                            end;
                        end;
                    end;
                end;
            end;
        end;
        if i > 1 then begin
            i := 0;
            Clear(BalAccountInfo);
            BalAccountInfo[1] := Text005;
            if BalVendAccTemp.FindSet then
                repeat
                    i += 1;
                    if i < 6 then
                        BalAccountInfo[2] := CopyStr(BalAccountInfo[2] + BalVendAccTemp."No." + ';', 1, 50)
                until BalVendAccTemp.Next = 0;
            if BalCustAccTemp.FindSet then
                repeat
                    i += 1;
                    if i < 6 then
                        BalAccountInfo[2] := CopyStr(BalAccountInfo[2] + BalCustAccTemp."No." + ';', 1, 50)
                until BalCustAccTemp.Next = 0;
            if BalBankTemp.FindSet then
                repeat
                    i += 1;
                    if i < 6 then
                        BalAccountInfo[2] := CopyStr(BalAccountInfo[2] + BalBankTemp."No." + ';', 1, 50)
                until BalBankTemp.Next = 0;
            if BalFATemp.FindSet then
                repeat
                    i += 1;
                    if i < 6 then
                        BalAccountInfo[2] := CopyStr(BalAccountInfo[2] + BalFATemp."No." + ';', 1, 50)
                until BalFATemp.Next = 0;
            if BalGLAccTemp.FindSet then
                repeat
                    i += 1;
                    if i < 6 then
                        BalAccountInfo[2] := CopyStr(BalAccountInfo[2] + BalGLAccTemp."No." + ';', 1, 50)
                until BalGLAccTemp.Next = 0;
            BalAccountInfo[2] := DelChr(BalAccountInfo[2], '>', ';');
            if i >= 6 then
                BalAccountInfo[2] := CopyStr(BalAccountInfo[2] + '...', 1, MaxStrLen(BalAccountInfo[2]));
        end;
    end;

    [Scope('Internal')]
    procedure CancelReminder(IssRemHeader: Record "Issued Reminder Header")
    var
        CustLedgerEntry: Record "Cust. Ledger Entry";
        IssuedReminderHeader: Record "Issued Reminder Header";
        IssuedReminderLine: Record "Issued Reminder Line";
        ReminderFinChargeEntry: Record "Reminder/Fin. Charge Entry";
        ReminderCommentLine: Record "Reminder Comment Line";
        VendLedgerEntry: Record "Vendor Ledger Entry";
        OPplusLicInfo: Codeunit "OPplus License Information";
        NotLastRemErr: Label 'You can''t cancel this reminder because there are already more recent registered reminders for one or more entries.';
    begin
        // Check if last Reminder
        IssuedReminderLine.SetRange("Reminder No.", IssRemHeader."No.");
        if IssuedReminderLine.FindSet then begin
            repeat
                if IssuedReminderLine."Entry No." <> 0 then begin
                    CustLedgerEntry.Get(IssuedReminderLine."Entry No.");
                    if CustLedgerEntry."Last Issued Reminder Level" > IssRemHeader."Reminder Level" then
                        Error(NotLastRemErr);
                end;
                // gbedv EXT ------------------------------------------------- BEGIN
                if OPplusLicInfo.IsExtended then begin
                    if IssuedReminderLine."Vendor Ledger Entry No." <> 0 then begin
                        VendLedgerEntry.Get(IssuedReminderLine."Vendor Ledger Entry No.");
                        if VendLedgerEntry."Last Issued Reminder Level" > IssRemHeader."Reminder Level" then
                            Error(NotLastRemErr);
                    end;
                end;
            // gbedv EXT ------------------------------------------------- END
            until IssuedReminderLine.Next = 0;
        end;

        // Delete Reminder Comment line
        ReminderCommentLine.SetRange(Type, ReminderCommentLine.Type::"Issued Reminder");
        ReminderCommentLine.SetRange("No.", IssRemHeader."No.");
        ReminderCommentLine.DeleteAll;

        // Adjust Customer Ledger Entry Reminder Level
        ReminderFinChargeEntry.SetRange(Type, ReminderFinChargeEntry.Type::Reminder);
        ReminderFinChargeEntry.SetRange("No.", IssRemHeader."No.");
        ReminderFinChargeEntry.SetFilter("Vendor Ledger Entry No.", '0');
        if ReminderFinChargeEntry.FindSet then begin
            repeat
                CustLedgerEntry.Get(ReminderFinChargeEntry."Customer Entry No.");
                if (CustLedgerEntry."Last Issued Reminder Level" > 0)
                then begin
                    CustLedgerEntry."Last Issued Reminder Level" := CustLedgerEntry."Last Issued Reminder Level" - 1;
                    CustLedgerEntry.Modify;
                end;
            until ReminderFinChargeEntry.Next = 0;
        end;

        // gbedv EXT ------------------------------------------------- BEGIN
        // Adjust Vendor Ledger Entry Reminder Level
        if OPplusLicInfo.IsExtended then begin
            ReminderFinChargeEntry.SetRange(Type, ReminderFinChargeEntry.Type::Reminder);
            ReminderFinChargeEntry.SetRange("No.", IssRemHeader."No.");
            ReminderFinChargeEntry.SetFilter("Vendor Ledger Entry No.", '<>0');
            if ReminderFinChargeEntry.FindSet then begin
                repeat
                    VendLedgerEntry.Get(ReminderFinChargeEntry."Vendor Ledger Entry No.");
                    if (VendLedgerEntry."Last Issued Reminder Level" > 0)
                    then begin
                        VendLedgerEntry."Last Issued Reminder Level" := VendLedgerEntry."Last Issued Reminder Level" - 1;
                        VendLedgerEntry.Modify;
                    end;
                until ReminderFinChargeEntry.Next = 0;
            end;
        end;
        // gbedv EXT ------------------------------------------------- END

        // Delete Reminder/ Fin. Charge Entry
        ReminderFinChargeEntry.SetRange("Vendor Ledger Entry No.");
        ReminderFinChargeEntry.DeleteAll;

        // Delete Reminder Lines
        IssuedReminderLine.SetRange("Reminder No.", IssRemHeader."No.");
        IssuedReminderLine.DeleteAll;

        // Delete Reminder Header
        IssuedReminderHeader.Get(IssRemHeader."No.");
        IssuedReminderHeader.Delete;
    end;

    [Scope('Internal')]
    procedure SendBalAckMail(ReportID: Integer; AccNo: Code[20]; AllBalAcks: Boolean; "Filter": Text)
    begin
        ReadSetup;

        if (not VALSetup."Print Bal. Ack. Page 1 Ship.") and (not VALSetup."Print Bal. Ack. Page 2 Ship.") and (not VALSetup."Print Bal. Ack. Page 3 Ship.") then
            Error(SetupBalAckShipErr);
        if AllBalAcks then begin
            if Confirm(SendBalAckAutoQst) then
                SendRecords(true, ReportID, AccNo, Filter);
        end else
            SendRecords(false, ReportID, AccNo, '');

        Message(BalAckSendMsg);
    end;

    [Scope('Internal')]
    procedure SendRecords(Automatic: Boolean; RepID: Integer; AccNo: Code[20]; "Filter": Text)
    var
        Customer: Record Customer;
        DocumentSendingProfile: Record "Document Sending Profile";
        Vendor: Record Vendor;
    begin
        DocumentSendingProfile.SetGlobalReportUsage(RepID);
        if RepID = OPplusLicenseInformation.WhatAreBalAckReports(0) then begin
            VALSetup.TestField("Rem. Terms Code Bal. Ack.Cust.");
            if not Automatic then begin
                if DocumentSendingProfile.LookupProfile(AccNo, true, true) then
                    SendProfile(DocumentSendingProfile, Automatic, true, AccNo, RepID);
            end else begin
                Customer.SetFilter("No.", Filter);
                Customer.SetFilter("Bal. Ack. Shipping Type", '<>0');
                if Customer.FindSet then begin
                    repeat
                        if Customer."Bal. Ack. Shipping Type" = Customer."Bal. Ack. Shipping Type"::Email then
                            SetSpecValDocSendingProf(DocumentSendingProfile, 2)
                        else
                            if Customer."Bal. Ack. Shipping Type" = Customer."Bal. Ack. Shipping Type"::Letter then
                                SetSpecValDocSendingProf(DocumentSendingProfile, 1);
                        FillDocSendingProf(DocumentSendingProfile, RepID);
                        SendProfile(DocumentSendingProfile, Automatic, true, Customer."No.", RepID);
                    until Customer.Next = 0;
                end;
            end;
        end else
            if RepID = OPplusLicenseInformation.WhatAreBalAckReports(1) then begin
                VALSetup.TestField("Rem. Terms Code Bal. Ack.Vend.");
                if not Automatic then begin
                    if DocumentSendingProfile.LookUpProfileVendor(AccNo, true, true) then
                        SendProfile(DocumentSendingProfile, Automatic, false, AccNo, RepID);
                end else begin
                    Vendor.SetFilter("No.", Filter);
                    Vendor.SetFilter("Bal. Ack. Shipping Type", '<>0');
                    if Vendor.FindSet then begin
                        repeat
                            if Vendor."Bal. Ack. Shipping Type" = Vendor."Bal. Ack. Shipping Type"::Email then
                                SetSpecValDocSendingProf(DocumentSendingProfile, 2)
                            else
                                if Vendor."Bal. Ack. Shipping Type" = Vendor."Bal. Ack. Shipping Type"::Letter then
                                    SetSpecValDocSendingProf(DocumentSendingProfile, 1);
                            FillDocSendingProf(DocumentSendingProfile, RepID);
                            SendProfile(DocumentSendingProfile, Automatic, false, Vendor."No.", RepID);
                        until Vendor.Next = 0;
                    end;
                end;
            end;
    end;

    [Scope('Internal')]
    procedure SendProfile(var DocumentSendingProfile: Record "Document Sending Profile"; Automatic: Boolean; IsCustomer: Boolean; AccNo: Code[20]; RepID: Integer)
    var
        Customer: Record Customer;
        Vendor: Record Vendor;
        DocTxt: Label 'Bal. Ack. %1 from %2';
        DocName: Text;
    begin
        ReadSetup;
        DocumentSendingProfile.SetGlobalAutomatic(Automatic);
        if Format(VALSetup."Date Form. App. Date Bal. Ack.") <> '' then
            DocName := StrSubstNo(DocTxt, AccNo, CalcDate(VALSetup."Date Form. App. Date Bal. Ack.", WorkDate))
        else
            DocName := StrSubstNo(DocTxt, AccNo, WorkDate);

        if IsCustomer then begin
            Customer.SetRange("No.", AccNo);
            Customer.Get(AccNo);
            DocumentSendingProfile.SendOPplusDocument(RepID, Customer, AccNo, AccNo, DocName, Customer.FieldNo("No."), Customer.FieldNo("No."), 1);
        end else begin
            Vendor.SetRange("No.", AccNo);
            Vendor.Get(AccNo);
            DocumentSendingProfile.SendOPplusDocument(RepID, Vendor, AccNo, AccNo, DocName, Vendor.FieldNo("No."), Vendor.FieldNo("No."), 2);
        end;
    end;

    [Scope('Internal')]
    procedure FillDocSendingProf(var DocumentSendingProfile: Record "Document Sending Profile"; BalAckReport: Integer)
    var
        CustomTxt: Label 'Custom';
    begin
        DocumentSendingProfile.Code := CustomTxt;
        DocumentSendingProfile.Description := CustomTxt;
        DocumentSendingProfile."E-Mail Attachment" := DocumentSendingProfile."E-Mail Attachment"::PDF;
        DocumentSendingProfile.Disk := DocumentSendingProfile.Disk::No;
        DocumentSendingProfile."Electronic Document" := DocumentSendingProfile."Electronic Document"::No;
        DocumentSendingProfile.Default := true;
        DocumentSendingProfile."Send To" := DocumentSendingProfile."Send To"::Email;
        DocumentSendingProfile.Usage := BalAckReport;
        DocumentSendingProfile."One Related Party Selected" := true;
    end;

    [Scope('Internal')]
    procedure SetSpecValDocSendingProf(var DocumentSendingProfile: Record "Document Sending Profile"; SendingOption: Integer)
    begin
        // SendingOption = 1 = Printer
        // SendingOption = 2 = Mail
        if SendingOption = 1 then begin
            DocumentSendingProfile.Printer := DocumentSendingProfile.Printer::"Yes (Use Default Settings)";
            DocumentSendingProfile."E-Mail" := DocumentSendingProfile."E-Mail"::No;
        end else
            if SendingOption = 2 then begin
                DocumentSendingProfile."E-Mail" := DocumentSendingProfile."E-Mail"::"Yes (Use Default Settings)";
                DocumentSendingProfile.Printer := DocumentSendingProfile.Printer::No;
            end;
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeUpdateCLEntry(var CLEntry: Record "Cust. Ledger Entry"; var GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeUpdateVLEntry(var VLEntry: Record "Vendor Ledger Entry"; var GenJnlLine: Record "Gen. Journal Line")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeUpdateGLEntry(var GLEntry: Record "G/L Entry"; var GenJnlLine: Record "Gen. Journal Line")
    begin
    end;
}

