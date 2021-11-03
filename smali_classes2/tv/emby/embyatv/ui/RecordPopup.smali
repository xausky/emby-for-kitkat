.class public Ltv/emby/embyatv/ui/RecordPopup;
.super Ljava/lang/Object;
.source "RecordPopup.java"


# instance fields
.field HOURS:Ljava/lang/String;

.field MINUTE:Ljava/lang/String;

.field MINUTES:Ljava/lang/String;

.field final NORMAL_HEIGHT:I

.field final SERIES_HEIGHT:I

.field X_EPISODES:Ljava/lang/String;

.field mActivity:Ltv/emby/embyatv/base/BaseActivity;

.field mAnchorView:Landroid/view/View;

.field mAnyChannel:Landroid/widget/CheckBox;

.field mAnyTime:Landroid/widget/CheckBox;

.field mCancelButton:Landroid/widget/Button;

.field mCurrentOptions:Ltv/emby/embyatv/model/CombinedTimerInfo;

.field mDTimeline:Landroid/widget/LinearLayout;

.field mDTitle:Landroid/widget/TextView;

.field mKeep:Landroid/widget/Spinner;

.field mKeepDisplayOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mOkButton:Landroid/widget/Button;

.field mOnlyNew:Landroid/widget/CheckBox;

.field mPaddingDisplayOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPaddingValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mPopup:Landroid/widget/PopupWindow;

.field mPosLeft:I

.field mPosTop:I

.field mPostPadding:Landroid/widget/Spinner;

.field mPrePadding:Landroid/widget/Spinner;

.field mProgramId:Ljava/lang/String;

.field mRecordSeries:Z

.field mSelectedView:Ltv/emby/embyatv/ui/IRecordingIndicatorView;

.field mSeriesOptions:Landroid/view/View;

.field mSkipExisting:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Ltv/emby/embyatv/base/BaseActivity;Landroid/view/View;III)V
    .locals 16

    move-object/from16 v0, p0

    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const/16 v2, 0x1d6

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Ltv/emby/embyatv/ui/RecordPopup;->SERIES_HEIGHT:I

    .line 42
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const/16 v2, 0x14a

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Ltv/emby/embyatv/ui/RecordPopup;->NORMAL_HEIGHT:I

    .line 68
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const v2, 0x7f100511

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltv/emby/embyatv/ui/RecordPopup;->MINUTE:Ljava/lang/String;

    .line 69
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const v2, 0x7f100512

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltv/emby/embyatv/ui/RecordPopup;->MINUTES:Ljava/lang/String;

    .line 70
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const v2, 0x7f1004e3

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltv/emby/embyatv/ui/RecordPopup;->HOURS:Ljava/lang/String;

    .line 71
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const v2, 0x7f100615

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltv/emby/embyatv/ui/RecordPopup;->X_EPISODES:Ljava/lang/String;

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xb

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v4

    const v5, 0x7f100532

    invoke-virtual {v4, v5}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Ltv/emby/embyatv/ui/RecordPopup;->MINUTE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2  "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Ltv/emby/embyatv/ui/RecordPopup;->MINUTES:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "3  "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Ltv/emby/embyatv/ui/RecordPopup;->MINUTES:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "5  "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Ltv/emby/embyatv/ui/RecordPopup;->MINUTES:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x4

    aput-object v4, v3, v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "15 "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Ltv/emby/embyatv/ui/RecordPopup;->MINUTES:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x5

    aput-object v4, v3, v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "30 "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Ltv/emby/embyatv/ui/RecordPopup;->MINUTES:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x6

    aput-object v4, v3, v11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "60 "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Ltv/emby/embyatv/ui/RecordPopup;->MINUTES:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x7

    aput-object v4, v3, v12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "90 "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Ltv/emby/embyatv/ui/RecordPopup;->MINUTES:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v13, 0x8

    aput-object v4, v3, v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "2  "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Ltv/emby/embyatv/ui/RecordPopup;->HOURS:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v14, 0x9

    aput-object v4, v3, v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "3  "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Ltv/emby/embyatv/ui/RecordPopup;->HOURS:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v15, 0xa

    aput-object v4, v3, v15

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Ltv/emby/embyatv/ui/RecordPopup;->mPaddingDisplayOptions:Ljava/util/ArrayList;

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/16 v3, 0x78

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/16 v3, 0xb4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const/16 v3, 0x12c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    const/16 v3, 0x384

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    const/16 v3, 0x708

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    const/16 v3, 0xe10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    const/16 v3, 0x1518

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v13

    const/16 v3, 0x1c20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v14

    const/16 v3, 0x2a30

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v15

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Ltv/emby/embyatv/ui/RecordPopup;->mPaddingValues:Ljava/util/ArrayList;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    new-array v2, v6, [Ljava/lang/String;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    const v4, 0x7f100450

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Ltv/emby/embyatv/ui/RecordPopup;->mKeepDisplayOptions:Ljava/util/ArrayList;

    move-object/from16 v1, p1

    .line 77
    iput-object v1, v0, Ltv/emby/embyatv/ui/RecordPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    move-object/from16 v1, p2

    .line 78
    iput-object v1, v0, Ltv/emby/embyatv/ui/RecordPopup;->mAnchorView:Landroid/view/View;

    move/from16 v1, p3

    .line 79
    iput v1, v0, Ltv/emby/embyatv/ui/RecordPopup;->mPosLeft:I

    move/from16 v1, p4

    .line 80
    iput v1, v0, Ltv/emby/embyatv/ui/RecordPopup;->mPosTop:I

    .line 81
    iget-object v1, v0, Ltv/emby/embyatv/ui/RecordPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/base/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0d0099

    const/4 v3, 0x0

    .line 82
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 83
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getDialogBackgroundResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 84
    new-instance v2, Landroid/widget/PopupWindow;

    iget v3, v0, Ltv/emby/embyatv/ui/RecordPopup;->NORMAL_HEIGHT:I

    move/from16 v4, p5

    invoke-direct {v2, v1, v4, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, v0, Ltv/emby/embyatv/ui/RecordPopup;->mPopup:Landroid/widget/PopupWindow;

    .line 85
    iget-object v2, v0, Ltv/emby/embyatv/ui/RecordPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 86
    iget-object v2, v0, Ltv/emby/embyatv/ui/RecordPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 87
    iget-object v2, v0, Ltv/emby/embyatv/ui/RecordPopup;->mPopup:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f0a0307

    .line 88
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Ltv/emby/embyatv/ui/RecordPopup;->mDTitle:Landroid/widget/TextView;

    .line 89
    iget-object v2, v0, Ltv/emby/embyatv/ui/RecordPopup;->mDTitle:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getDefaultFontBold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v2, 0x7f0a0231

    .line 91
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, v0, Ltv/emby/embyatv/ui/RecordPopup;->mPrePadding:Landroid/widget/Spinner;

    .line 92
    iget-object v2, v0, Ltv/emby/embyatv/ui/RecordPopup;->mPrePadding:Landroid/widget/Spinner;

    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v4, v0, Ltv/emby/embyatv/ui/RecordPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    iget-object v7, v0, Ltv/emby/embyatv/ui/RecordPopup;->mPaddingDisplayOptions:Ljava/util/ArrayList;

    const v8, 0x1090008

    invoke-direct {v3, v4, v8, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 93
    iget-object v2, v0, Ltv/emby/embyatv/ui/RecordPopup;->mPrePadding:Landroid/widget/Spinner;

    new-instance v3, Ltv/emby/embyatv/ui/RecordPopup$1;

    invoke-direct {v3, v0}, Ltv/emby/embyatv/ui/RecordPopup$1;-><init>(Ltv/emby/embyatv/ui/RecordPopup;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v2, 0x7f0a022d

    .line 104
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, v0, Ltv/emby/embyatv/ui/RecordPopup;->mPostPadding:Landroid/widget/Spinner;

    .line 105
    iget-object v2, v0, Ltv/emby/embyatv/ui/RecordPopup;->mPostPadding:Landroid/widget/Spinner;

    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v4, v0, Ltv/emby/embyatv/ui/RecordPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    iget-object v7, v0, Ltv/emby/embyatv/ui/RecordPopup;->mPaddingDisplayOptions:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v8, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 106
    iget-object v2, v0, Ltv/emby/embyatv/ui/RecordPopup;->mPostPadding:Landroid/widget/Spinner;

    new-instance v3, Ltv/emby/embyatv/ui/RecordPopup$2;

    invoke-direct {v3, v0}, Ltv/emby/embyatv/ui/RecordPopup$2;-><init>(Ltv/emby/embyatv/ui/RecordPopup;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/4 v2, 0x1

    :goto_0
    const/16 v3, 0x33

    if-ge v2, v3, :cond_1

    .line 119
    iget-object v3, v0, Ltv/emby/embyatv/ui/RecordPopup;->mKeepDisplayOptions:Ljava/util/ArrayList;

    if-le v2, v6, :cond_0

    iget-object v4, v0, Ltv/emby/embyatv/ui/RecordPopup;->X_EPISODES:Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v5

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v4

    const v7, 0x7f100534

    invoke-virtual {v4, v7}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const v2, 0x7f0a0191

    .line 121
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, v0, Ltv/emby/embyatv/ui/RecordPopup;->mKeep:Landroid/widget/Spinner;

    .line 122
    iget-object v2, v0, Ltv/emby/embyatv/ui/RecordPopup;->mKeep:Landroid/widget/Spinner;

    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v4, v0, Ltv/emby/embyatv/ui/RecordPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    iget-object v5, v0, Ltv/emby/embyatv/ui/RecordPopup;->mKeepDisplayOptions:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v8, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 123
    iget-object v2, v0, Ltv/emby/embyatv/ui/RecordPopup;->mKeep:Landroid/widget/Spinner;

    new-instance v3, Ltv/emby/embyatv/ui/RecordPopup$3;

    invoke-direct {v3, v0}, Ltv/emby/embyatv/ui/RecordPopup$3;-><init>(Ltv/emby/embyatv/ui/RecordPopup;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v2, 0x7f0a0208

    .line 136
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Ltv/emby/embyatv/ui/RecordPopup;->mOnlyNew:Landroid/widget/CheckBox;

    const v2, 0x7f0a0053

    .line 137
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Ltv/emby/embyatv/ui/RecordPopup;->mAnyChannel:Landroid/widget/CheckBox;

    const v2, 0x7f0a0054

    .line 138
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Ltv/emby/embyatv/ui/RecordPopup;->mAnyTime:Landroid/widget/CheckBox;

    const v2, 0x7f0a02a0

    .line 139
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Ltv/emby/embyatv/ui/RecordPopup;->mSkipExisting:Landroid/widget/CheckBox;

    const v2, 0x7f0a0293

    .line 141
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Ltv/emby/embyatv/ui/RecordPopup;->mSeriesOptions:Landroid/view/View;

    const v2, 0x7f0a0204

    .line 143
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Ltv/emby/embyatv/ui/RecordPopup;->mOkButton:Landroid/widget/Button;

    .line 144
    iget-object v2, v0, Ltv/emby/embyatv/ui/RecordPopup;->mOkButton:Landroid/widget/Button;

    new-instance v3, Ltv/emby/embyatv/ui/RecordPopup$4;

    invoke-direct {v3, v0}, Ltv/emby/embyatv/ui/RecordPopup$4;-><init>(Ltv/emby/embyatv/ui/RecordPopup;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a008a

    .line 196
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Ltv/emby/embyatv/ui/RecordPopup;->mCancelButton:Landroid/widget/Button;

    .line 197
    iget-object v2, v0, Ltv/emby/embyatv/ui/RecordPopup;->mCancelButton:Landroid/widget/Button;

    new-instance v3, Ltv/emby/embyatv/ui/RecordPopup$5;

    invoke-direct {v3, v0}, Ltv/emby/embyatv/ui/RecordPopup$5;-><init>(Ltv/emby/embyatv/ui/RecordPopup;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0304

    .line 204
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Ltv/emby/embyatv/ui/RecordPopup;->mDTimeline:Landroid/widget/LinearLayout;

    return-void
.end method

.method private getPaddingNdx(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 245
    :goto_0
    iget-object v2, p0, Ltv/emby/embyatv/ui/RecordPopup;->mPaddingValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 246
    iget-object v2, p0, Ltv/emby/embyatv/ui/RecordPopup;->mPaddingValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, p1, :cond_0

    add-int/lit8 v1, v1, -0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private setTimelineRow(Landroid/widget/LinearLayout;Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 4

    .line 263
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 264
    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 266
    :cond_0
    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    .line 267
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Ltv/emby/embyatv/ui/RecordPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 268
    iget-object v2, p0, Ltv/emby/embyatv/ui/RecordPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const v3, 0x7f100530

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 270
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Ltv/emby/embyatv/ui/RecordPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 271
    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getChannelName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    const/4 v2, 0x1

    .line 272
    invoke-virtual {v1, p2, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 273
    iget-object p2, p0, Ltv/emby/embyatv/ui/RecordPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {p2}, Ltv/emby/embyatv/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x1060012

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 274
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 275
    new-instance p2, Landroid/widget/TextView;

    iget-object v1, p0, Ltv/emby/embyatv/ui/RecordPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-direct {p2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->getFriendlyDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/emby/embyatv/ui/RecordPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 259
    iget-object v0, p0, Ltv/emby/embyatv/ui/RecordPopup;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/ui/RecordPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/ui/RecordPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 208
    iget-object v0, p0, Ltv/emby/embyatv/ui/RecordPopup;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/ui/RecordPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setContent(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/model/CombinedTimerInfo;Ltv/emby/embyatv/ui/IRecordingIndicatorView;Z)V
    .locals 1

    .line 212
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/ui/RecordPopup;->mProgramId:Ljava/lang/String;

    .line 213
    iput-object p2, p0, Ltv/emby/embyatv/ui/RecordPopup;->mCurrentOptions:Ltv/emby/embyatv/model/CombinedTimerInfo;

    .line 214
    iput-boolean p4, p0, Ltv/emby/embyatv/ui/RecordPopup;->mRecordSeries:Z

    .line 215
    iput-object p3, p0, Ltv/emby/embyatv/ui/RecordPopup;->mSelectedView:Ltv/emby/embyatv/ui/IRecordingIndicatorView;

    .line 217
    iget-object p3, p0, Ltv/emby/embyatv/ui/RecordPopup;->mDTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object p3, p0, Ltv/emby/embyatv/ui/RecordPopup;->mDTimeline:Landroid/widget/LinearLayout;

    invoke-direct {p0, p3, p1}, Ltv/emby/embyatv/ui/RecordPopup;->setTimelineRow(Landroid/widget/LinearLayout;Lmediabrowser/model/dto/BaseItemDto;)V

    .line 223
    iget-object p1, p0, Ltv/emby/embyatv/ui/RecordPopup;->mPrePadding:Landroid/widget/Spinner;

    invoke-virtual {p2}, Ltv/emby/embyatv/model/CombinedTimerInfo;->getPrePaddingSeconds()I

    move-result p3

    invoke-direct {p0, p3}, Ltv/emby/embyatv/ui/RecordPopup;->getPaddingNdx(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 224
    iget-object p1, p0, Ltv/emby/embyatv/ui/RecordPopup;->mPostPadding:Landroid/widget/Spinner;

    invoke-virtual {p2}, Ltv/emby/embyatv/model/CombinedTimerInfo;->getPostPaddingSeconds()I

    move-result p3

    invoke-direct {p0, p3}, Ltv/emby/embyatv/ui/RecordPopup;->getPaddingNdx(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/Spinner;->setSelection(I)V

    if-eqz p4, :cond_0

    .line 227
    iget-object p1, p0, Ltv/emby/embyatv/ui/RecordPopup;->mPopup:Landroid/widget/PopupWindow;

    iget p3, p0, Ltv/emby/embyatv/ui/RecordPopup;->SERIES_HEIGHT:I

    invoke-virtual {p1, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 228
    iget-object p1, p0, Ltv/emby/embyatv/ui/RecordPopup;->mSeriesOptions:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object p1, p0, Ltv/emby/embyatv/ui/RecordPopup;->mAnyChannel:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Ltv/emby/embyatv/model/CombinedTimerInfo;->getRecordAnyChannel()Z

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 232
    iget-object p1, p0, Ltv/emby/embyatv/ui/RecordPopup;->mOnlyNew:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Ltv/emby/embyatv/model/CombinedTimerInfo;->getRecordNewOnly()Z

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 233
    iget-object p1, p0, Ltv/emby/embyatv/ui/RecordPopup;->mAnyTime:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Ltv/emby/embyatv/model/CombinedTimerInfo;->getRecordAnyTime()Z

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 234
    iget-object p1, p0, Ltv/emby/embyatv/ui/RecordPopup;->mSkipExisting:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Ltv/emby/embyatv/model/CombinedTimerInfo;->getSkipEpisodesInLibrary()Z

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 235
    iget-object p1, p0, Ltv/emby/embyatv/ui/RecordPopup;->mKeep:Landroid/widget/Spinner;

    invoke-virtual {p2}, Ltv/emby/embyatv/model/CombinedTimerInfo;->getKeepUpTo()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 238
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/ui/RecordPopup;->mPopup:Landroid/widget/PopupWindow;

    iget p2, p0, Ltv/emby/embyatv/ui/RecordPopup;->NORMAL_HEIGHT:I

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 239
    iget-object p1, p0, Ltv/emby/embyatv/ui/RecordPopup;->mSeriesOptions:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public show()V
    .locals 5

    .line 253
    iget-object v0, p0, Ltv/emby/embyatv/ui/RecordPopup;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Ltv/emby/embyatv/ui/RecordPopup;->mAnchorView:Landroid/view/View;

    iget v2, p0, Ltv/emby/embyatv/ui/RecordPopup;->mPosLeft:I

    iget v3, p0, Ltv/emby/embyatv/ui/RecordPopup;->mPosTop:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 254
    iget-object v0, p0, Ltv/emby/embyatv/ui/RecordPopup;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    return-void
.end method
