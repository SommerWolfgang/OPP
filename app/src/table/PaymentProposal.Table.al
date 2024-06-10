table 5157895 "Payment Proposal"
{
    Caption = 'Payment Proposal';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            DataClassification = SystemMetadata;
            NotBlank = true;
        }
        field(2; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
            DataClassification = SystemMetadata;
            NotBlank = true;
        }
        field(3; "Pmt. Proposal Template Name"; Code[10])
        {
            Caption = 'Pmt. Proposal Template Name';
            DataClassification = SystemMetadata;
        }
        field(4; "Last Discount Date"; Date)
        {
            Caption = 'Discount Date';
            DataClassification = SystemMetadata;
        }
        field(10; "Bal. Account Type"; Option)
        {
            Caption = 'Bal. Account Type';
            DataClassification = SystemMetadata;
            OptionCaption = 'G/L Account,,,Bank Account';
            OptionMembers = "G/L Account",,,"Bank Account";
        }
        field(11; "Bal. Account No."; Code[20])
        {
            Caption = 'Bal. Account No.';
            DataClassification = SystemMetadata;
        }
        field(12; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            ClosingDates = true;
            DataClassification = SystemMetadata;
        }
        field(13; "Document Type"; Option)
        {
            Caption = 'Document Type';
            DataClassification = SystemMetadata;
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(14; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = SystemMetadata;
        }
        field(15; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = SystemMetadata;
        }
        field(16; Status; Option)
        {
            Caption = 'Status';
            DataClassification = SystemMetadata;
            OptionCaption = 'Open,Finished,Released,Payment Done,Posting in Process,Posted';
            OptionMembers = Open,Finished,Released,"Payment Done","Posting in Process",Posted;
        }
        field(22; "Summarize Per Pmt. Head"; Boolean)
        {
            Caption = 'Summarize per Pmt. Head';
            DataClassification = SystemMetadata;
        }
        field(35; "Association Payment"; Boolean)
        {
            Caption = 'Association Payment';
            DataClassification = SystemMetadata;
        }
        field(36; "Pmt. CV Settling"; Boolean)
        {
            Caption = 'Pmt. CV Settling';
            DataClassification = SystemMetadata;
        }
        field(38; "Bank Name"; Text[50])
        {
            Caption = 'Bank Name';
            DataClassification = SystemMetadata;
        }
        field(39; "Bank Branch Code"; Code[20])
        {
            Caption = 'Bank Branch Code';
            DataClassification = OrganizationIdentifiableInformation;
        }
        field(40; "Bank Account No."; Code[34])
        {
            Caption = 'Bank Account No.';
            DataClassification = OrganizationIdentifiableInformation;
        }
        field(41; "Bank BIC Code"; Code[20])
        {
            Caption = 'Bank BIC Code';
            DataClassification = OrganizationIdentifiableInformation;
        }
        field(42; "Bank IBAN"; Code[50])
        {
            Caption = 'Bank IBAN';
            DataClassification = OrganizationIdentifiableInformation;
        }
        field(43; "User ID"; Code[50])
        {
            Caption = 'UserID';
            DataClassification = EndUserIdentifiableInformation;
        }
        field(45; DiscountOption; Option)
        {
            Caption = 'DiscountOption';
            DataClassification = SystemMetadata;
            OptionCaption = 'Always Discount,As Entered,Next Pmt. Date,Last Pmt. Date,Always in Period,None';
            OptionMembers = "Always Discount","Entered Date","Next Date","Last Date","Always in Period","None";
        }
        field(47; "Include All"; Boolean)
        {
            Caption = 'Include All';
            DataClassification = SystemMetadata;
        }
        field(48; "Due Date"; Date)
        {
            Caption = 'Due Date';
            DataClassification = SystemMetadata;
        }
        field(49; "Discount Date"; Date)
        {
            Caption = 'Discount Date';
            DataClassification = SystemMetadata;
        }
        field(50; "Payment Type Filter"; Code[10])
        {
            Caption = 'Payment Type Filter';
            FieldClass = FlowFilter;
            TableRelation = "Payment Type Code";
        }
        field(51; Errortext; Text[250])
        {
            CalcFormula = lookup("Payment Proposal Error"."Error Description" where("Journal Template Name" = field("Journal Template Name"),
                                                                                     "Journal Batch Name" = field("Journal Batch Name"),
                                                                                     "Warning Message" = const(false)));
            Caption = 'Errortext';
            Editable = false;
            FieldClass = FlowField;
        }
        field(52; "Execution Date"; Date)
        {
            Caption = 'Execution Date';
            DataClassification = SystemMetadata;
        }
        field(53; "Use Payment Type Code"; Code[10])
        {
            Caption = 'Use Payment Type Code';
            DataClassification = SystemMetadata;
        }
        field(54; "With Backlog"; Boolean)
        {
            Caption = 'With Backlog';
            DataClassification = SystemMetadata;
        }
        field(55; "Only settled Accounts"; Boolean)
        {
            Caption = 'Only settled Accounts';
            DataClassification = SystemMetadata;
        }
        field(56; "Attend SEPA Due Date at DD"; Boolean)
        {
            Caption = 'Attend SEPA Due Date at Direct Debit';
            DataClassification = SystemMetadata;
        }
        field(57; "Line Sorting"; Option)
        {
            Caption = 'Line Sorting';
            DataClassification = SystemMetadata;
            OptionCaption = 'Due Date,Document Date,Document No.,External Document No.';
            OptionMembers = DueDate,DocDate,DocNo,ExtDocNo;
        }
        field(58; WarningText; Text[250])
        {
            CalcFormula = lookup("Payment Proposal Error"."Error Description" where("Journal Template Name" = field("Journal Template Name"),
                                                                                     "Journal Batch Name" = field("Journal Batch Name"),
                                                                                     "Warning Message" = const(true)));
            Caption = 'Warning';
            Editable = false;
            FieldClass = FlowField;
        }
        field(59; "Released by"; Code[50])
        {
            Caption = 'Released by';
            DataClassification = EndUserIdentifiableInformation;
            Editable = false;
        }
        field(60; "Include on Hold"; Boolean)
        {
            Caption = 'Include on Hold';
            DataClassification = SystemMetadata;
        }
        field(61; "First Discount Date"; Date)
        {
            Caption = 'Discount Date';
            DataClassification = SystemMetadata;
        }
        field(62; "Bank Country/Region Code"; Code[10])
        {
            Caption = 'Bank Country/Region Code';
            DataClassification = SystemMetadata;
            Editable = false;
            TableRelation = "Country/Region";
        }
        field(70; "Orderer Bank Suppl. Branch Cd."; Code[10])
        {
            Caption = 'Orderer Bank Suppl. Branch Cd.';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(71; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            DataClassification = SystemMetadata;
            Editable = false;
            TableRelation = "No. Series";
        }
        field(72; "Standing Order"; Boolean)
        {
            Caption = 'Standing Order';
            DataClassification = SystemMetadata;
        }
        field(73; "Standing Order Interval"; DateFormula)
        {
            Caption = 'Standing Order Interval';
            DataClassification = SystemMetadata;
        }
        field(74; "Last Standing Order Date"; Date)
        {
            Caption = 'Last Standing Order Date';
            DataClassification = SystemMetadata;
        }
        field(75; "Created From Standing Order"; Boolean)
        {
            Caption = 'Created From Standing Order';
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(Key1; "Journal Template Name", "Journal Batch Name")
        {
            Clustered = true;
            MaintainSIFTIndex = false;
        }
        key(Key2; Status)
        {
        }
    }

    procedure DeleteNotPaid()
    begin
    end;

    procedure Refresh()
    begin
    end;

    procedure NewHead()
    begin
    end;

    procedure DeleteDependedTables(PaymentProposal: Record "Payment Proposal")
    begin
    end;

    procedure CreatePaymentProposalFromStandingOrder()
    begin
    end;

    procedure CreateDuePaymentProposalFromStandingOrder()
    begin
    end;
}