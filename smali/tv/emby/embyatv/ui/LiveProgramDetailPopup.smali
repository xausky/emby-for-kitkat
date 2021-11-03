.class public Ltv/emby/embyatv/ui/LiveProgramDetailPopup;
.super Ljava/lang/Object;
.source "LiveProgramDetailPopup.java"


# instance fields
.field final MOVIE_HEIGHT:I

.field final NORMAL_HEIGHT:I

.field mActivity:Ltv/emby/embyatv/base/BaseActivity;

.field mAnchor:Landroid/view/View;

.field mDButtonRow:Landroid/widget/LinearLayout;

.field mDInfoRow:Landroid/widget/LinearLayout;

.field mDRecordInfo:Landroid/widget/TextView;

.field mDSimilarRow:Landroid/widget/LinearLayout;

.field mDSummary:Landroid/widget/TextView;

.field mDTimeline:Landroid/widget/LinearLayout;

.field mDTitle:Landroid/widget/TextView;

.field mFirstButton:Landroid/widget/Button;

.field mPlayAction:Lmediabrowser/apiinteraction/EmptyResponse;

.field mPlayButton:Landroid/widget/Button;

.field mPopup:Landroid/widget/PopupWindow;

.field mPosLeft:I

.field mPosTop:I

.field mProgram:Lmediabrowser/model/dto/BaseItemDto;

.field private mRecordPopup:Ltv/emby/embyatv/ui/RecordPopup;

.field mRecordingSettingsButton:Landroid/widget/Button;

.field mSelectedProgramView:Ltv/emby/embyatv/ui/ProgramGridCell;

.field mSeriesSettingsButton:Landroid/widget/Button;

.field mTuneAction:Lmediabrowser/apiinteraction/EmptyResponse;


# direct methods
.method public constructor <init>(Ltv/emby/embyatv/base/BaseActivity;ILmediabrowser/apiinteraction/EmptyResponse;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0x21c

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->MOVIE_HEIGHT:I

    .line 43
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0x190

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->NORMAL_HEIGHT:I

    .line 69
    iput-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    .line 70
    iput-object p3, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mTuneAction:Lmediabrowser/apiinteraction/EmptyResponse;

    .line 71
    iput-object p4, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mPlayAction:Lmediabrowser/apiinteraction/EmptyResponse;

    .line 72
    iget-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const-string p3, "layout_inflater"

    invoke-virtual {p1, p3}, Ltv/emby/embyatv/base/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const p3, 0x7f0d00ae

    const/4 p4, 0x0

    .line 73
    invoke-virtual {p1, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 74
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getGuideBackgroundResource()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 75
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p3

    invoke-virtual {p3}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object p3

    .line 76
    new-instance p4, Landroid/widget/PopupWindow;

    iget v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->NORMAL_HEIGHT:I

    invoke-direct {p4, p1, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object p4, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mPopup:Landroid/widget/PopupWindow;

    .line 77
    iget-object p2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mPopup:Landroid/widget/PopupWindow;

    const/4 p4, 0x1

    invoke-virtual {p2, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 78
    iget-object p2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p2, p4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 79
    iget-object p2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mPopup:Landroid/widget/PopupWindow;

    new-instance p4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p4}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p2, p4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object p2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mPopup:Landroid/widget/PopupWindow;

    const p4, 0x7f1100d5

    invoke-virtual {p2, p4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const p2, 0x7f0a0307

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDTitle:Landroid/widget/TextView;

    .line 82
    iget-object p2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDTitle:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p2, 0x7f0a02c9

    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDSummary:Landroid/widget/TextView;

    .line 84
    iget-object p2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDSummary:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 85
    iget-object p2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDSummary:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getSummaryTextColor()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f0a0251

    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDRecordInfo:Landroid/widget/TextView;

    const p2, 0x7f0a0304

    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDTimeline:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0085

    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDButtonRow:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0180

    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDInfoRow:Landroid/widget/LinearLayout;

    const p2, 0x7f0a029f

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDSimilarRow:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/ui/LiveProgramDetailPopup;)Ltv/emby/embyatv/ui/RecordPopup;
    .locals 0

    .line 41
    iget-object p0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mRecordPopup:Ltv/emby/embyatv/ui/RecordPopup;

    return-object p0
.end method

.method private addButton(Landroid/widget/LinearLayout;I)Landroid/widget/Button;
    .locals 2

    .line 417
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 418
    iget-object v1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v1}, Ltv/emby/embyatv/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 419
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setTextColor(I)V

    const/4 p2, 0x1

    const/high16 v1, 0x41400000    # 12.0f

    .line 420
    invoke-virtual {v0, p2, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 421
    iget-object p2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const/16 v1, 0x6e

    invoke-static {p2, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setMaxWidth(I)V

    const p2, 0x7f080094

    .line 422
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 423
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private addRecordingSettingsButton()V
    .locals 3

    .line 371
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mRecordingSettingsButton:Landroid/widget/Button;

    .line 372
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mRecordingSettingsButton:Landroid/widget/Button;

    iget-object v1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v1}, Ltv/emby/embyatv/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1005a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mRecordingSettingsButton:Landroid/widget/Button;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 374
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mRecordingSettingsButton:Landroid/widget/Button;

    const/4 v1, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 375
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mRecordingSettingsButton:Landroid/widget/Button;

    iget-object v1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const/16 v2, 0x6e

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 376
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mRecordingSettingsButton:Landroid/widget/Button;

    const v1, 0x7f080094

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 377
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mRecordingSettingsButton:Landroid/widget/Button;

    iget-object v1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mProgram:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getTimerId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mRecordingSettingsButton:Landroid/widget/Button;

    new-instance v1, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$7;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$7;-><init>(Ltv/emby/embyatv/ui/LiveProgramDetailPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDButtonRow:Landroid/widget/LinearLayout;

    iget-object v1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mRecordingSettingsButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createPlayButton()Landroid/widget/Button;
    .locals 2

    .line 403
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDButtonRow:Landroid/widget/LinearLayout;

    const v1, 0x7f100549

    invoke-direct {p0, v0, v1}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->addButton(Landroid/widget/LinearLayout;I)Landroid/widget/Button;

    move-result-object v0

    .line 404
    new-instance v1, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$9;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$9;-><init>(Ltv/emby/embyatv/ui/LiveProgramDetailPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x8

    .line 411
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-object v0
.end method


# virtual methods
.method public createTuneButton()Landroid/widget/Button;
    .locals 2

    .line 390
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDButtonRow:Landroid/widget/LinearLayout;

    const v1, 0x7f100546

    invoke-direct {p0, v0, v1}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->addButton(Landroid/widget/LinearLayout;I)Landroid/widget/Button;

    move-result-object v0

    .line 391
    new-instance v1, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$8;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$8;-><init>(Ltv/emby/embyatv/ui/LiveProgramDetailPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .line 437
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mRecordPopup:Ltv/emby/embyatv/ui/RecordPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mRecordPopup:Ltv/emby/embyatv/ui/RecordPopup;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/RecordPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mRecordPopup:Ltv/emby/embyatv/ui/RecordPopup;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/RecordPopup;->dismiss()V

    .line 438
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 95
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mPopup:Landroid/widget/PopupWindow;

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

.method public setContent(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/ui/ProgramGridCell;)V
    .locals 11

    .line 99
    iput-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mProgram:Lmediabrowser/model/dto/BaseItemDto;

    .line 100
    iput-object p2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mSelectedProgramView:Ltv/emby/embyatv/ui/ProgramGridCell;

    .line 101
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDButtonRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 103
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v0, "Empty"

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_9

    .line 112
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDSummary:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getOverview()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDSummary:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 114
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDSummary:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDSummary:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 121
    :goto_0
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    iget-object v1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDTimeline:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, p1}, Ltv/emby/embyatv/livetv/TvManager;->setTimelineRow(Landroid/app/Activity;Landroid/widget/LinearLayout;Lmediabrowser/model/dto/BaseItemDto;)V

    .line 124
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    iget-object v1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDInfoRow:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2, v2}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addInfoRow(Landroid/content/Context;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/LinearLayout;ZZ)V

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mFirstButton:Landroid/widget/Button;

    .line 128
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 129
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    .line 130
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    const/16 v4, 0x8

    if-lez v3, :cond_d

    .line 131
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-gez v3, :cond_3

    .line 133
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getTimerId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 135
    invoke-direct {p0}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->createPlayButton()Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mPlayButton:Landroid/widget/Button;

    .line 137
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getTimerId()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$1;

    invoke-direct {v5, p0}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$1;-><init>(Ltv/emby/embyatv/ui/LiveProgramDetailPopup;)V

    invoke-static {v3, v5}, Ltv/emby/embyatv/livetv/TvManager;->findRecordingByTimerAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    .line 146
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->createTuneButton()Landroid/widget/Button;

    goto :goto_1

    .line 148
    :cond_2
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->createTuneButton()Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mFirstButton:Landroid/widget/Button;

    .line 152
    :cond_3
    :goto_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->canManageRecordings()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 153
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsSeries()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v3

    const v5, 0x7f080094

    const/high16 v6, 0x41400000    # 12.0f

    const/4 v7, 0x1

    const/16 v8, 0x6e

    if-eqz v3, :cond_6

    .line 154
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesTimerId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 156
    new-instance v3, Landroid/widget/Button;

    iget-object v9, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-direct {v3, v9}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 157
    iget-object v9, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v9}, Ltv/emby/embyatv/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f100466

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 159
    iget-object v9, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {v9, v8}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 160
    invoke-virtual {v3, v7, v6}, Landroid/widget/Button;->setTextSize(IF)V

    .line 161
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 162
    new-instance v9, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2;

    invoke-direct {v9, p0, p1, p2}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$2;-><init>(Ltv/emby/embyatv/ui/LiveProgramDetailPopup;Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/ui/ProgramGridCell;)V

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v9, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDButtonRow:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 195
    :cond_4
    new-instance v3, Landroid/widget/Button;

    iget-object v9, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-direct {v3, v9}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 196
    iget-object v9, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v9}, Ltv/emby/embyatv/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f100579

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 197
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 198
    invoke-virtual {v3, v7, v6}, Landroid/widget/Button;->setTextSize(IF)V

    .line 199
    iget-object v9, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {v9, v8}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 200
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 201
    new-instance v9, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3;

    invoke-direct {v9, p0}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$3;-><init>(Ltv/emby/embyatv/ui/LiveProgramDetailPopup;)V

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v9, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDButtonRow:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 246
    :goto_2
    new-instance v3, Landroid/widget/Button;

    iget-object v9, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-direct {v3, v9}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mSeriesSettingsButton:Landroid/widget/Button;

    .line 247
    iget-object v3, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mSeriesSettingsButton:Landroid/widget/Button;

    iget-object v9, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v9}, Ltv/emby/embyatv/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f1005a7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v3, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mSeriesSettingsButton:Landroid/widget/Button;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 249
    iget-object v3, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mSeriesSettingsButton:Landroid/widget/Button;

    invoke-virtual {v3, v7, v6}, Landroid/widget/Button;->setTextSize(IF)V

    .line 250
    iget-object v3, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mSeriesSettingsButton:Landroid/widget/Button;

    iget-object v9, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {v9, v8}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 251
    iget-object v3, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mSeriesSettingsButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 252
    iget-object v3, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mSeriesSettingsButton:Landroid/widget/Button;

    iget-object v9, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mProgram:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v9}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesTimerId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    goto :goto_3

    :cond_5
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 253
    iget-object v2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mSeriesSettingsButton:Landroid/widget/Button;

    new-instance v3, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$4;

    invoke-direct {v3, p0}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$4;-><init>(Ltv/emby/embyatv/ui/LiveProgramDetailPopup;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDButtonRow:Landroid/widget/LinearLayout;

    iget-object v3, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mSeriesSettingsButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 262
    :cond_6
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getTimerId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 264
    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 265
    iget-object v3, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v3}, Ltv/emby/embyatv/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x7f100465

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 267
    invoke-virtual {v2, v7, v6}, Landroid/widget/Button;->setTextSize(IF)V

    .line 268
    iget-object v3, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {v3, v8}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 269
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 270
    new-instance v3, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$5;

    invoke-direct {v3, p0, p1, p2}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$5;-><init>(Ltv/emby/embyatv/ui/LiveProgramDetailPopup;Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/ui/ProgramGridCell;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDButtonRow:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 290
    iget-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mFirstButton:Landroid/widget/Button;

    if-nez p1, :cond_7

    iput-object v2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mFirstButton:Landroid/widget/Button;

    .line 291
    :cond_7
    invoke-direct {p0}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->addRecordingSettingsButton()V

    .line 293
    iget-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDRecordInfo:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long p2, v2, v5

    if-gtz p2, :cond_8

    iget-object p2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {p2}, Ltv/emby/embyatv/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f100645

    :goto_4
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_8
    iget-object p2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {p2}, Ltv/emby/embyatv/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f100662

    goto :goto_4

    :goto_5
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 296
    :cond_9
    new-instance p2, Landroid/widget/Button;

    iget-object v2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-direct {p2, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 297
    iget-object v2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v2}, Ltv/emby/embyatv/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100576

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 298
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 299
    invoke-virtual {p2, v7, v6}, Landroid/widget/Button;->setTextSize(IF)V

    .line 300
    iget-object v2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {v2, v8}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 301
    invoke-virtual {p2, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 302
    new-instance v2, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$6;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$6;-><init>(Ltv/emby/embyatv/ui/LiveProgramDetailPopup;)V

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDButtonRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 343
    iget-object v2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mFirstButton:Landroid/widget/Button;

    if-nez v2, :cond_a

    iput-object p2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mFirstButton:Landroid/widget/Button;

    .line 344
    :cond_a
    iget-object p2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDRecordInfo:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesTimerId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    const-string p1, ""

    goto :goto_6

    :cond_b
    iget-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const v2, 0x7f1004a9

    invoke-virtual {p1, v2}, Ltv/emby/embyatv/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_6
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    :cond_c
    :goto_7
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_e

    .line 351
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->createTuneButton()Landroid/widget/Button;

    goto :goto_8

    .line 357
    :cond_d
    iget-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDRecordInfo:Landroid/widget/TextView;

    iget-object p2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {p2}, Ltv/emby/embyatv/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f100570

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->createTuneButton()Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mFirstButton:Landroid/widget/Button;

    .line 364
    :cond_e
    :goto_8
    iget-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDSimilarRow:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 105
    :cond_f
    :goto_9
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->createTuneButton()Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mFirstButton:Landroid/widget/Button;

    .line 106
    iget-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDInfoRow:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 107
    iget-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDTimeline:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 108
    iget-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mDSummary:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show(Landroid/view/View;II)V
    .locals 2

    .line 428
    iput-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mAnchor:Landroid/view/View;

    .line 429
    iput p2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mPosLeft:I

    .line 430
    iput p3, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mPosTop:I

    .line 431
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 432
    iget-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mFirstButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public showRecordingOptions(Z)V
    .locals 7

    .line 444
    iget-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mRecordPopup:Ltv/emby/embyatv/ui/RecordPopup;

    if-nez v0, :cond_0

    new-instance v0, Ltv/emby/embyatv/ui/RecordPopup;

    iget-object v2, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    iget-object v3, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mAnchor:Landroid/view/View;

    iget v4, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mPosLeft:I

    iget v5, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mPosTop:I

    iget-object v1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ltv/emby/embyatv/ui/RecordPopup;-><init>(Ltv/emby/embyatv/base/BaseActivity;Landroid/view/View;III)V

    iput-object v0, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mRecordPopup:Ltv/emby/embyatv/ui/RecordPopup;

    :cond_0
    if-eqz p1, :cond_1

    .line 446
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mProgram:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesTimerId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$10;

    invoke-direct {v2, p0, p1}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$10;-><init>(Ltv/emby/embyatv/ui/LiveProgramDetailPopup;Z)V

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetLiveTvSeriesTimerAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    goto :goto_0

    .line 455
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/ui/LiveProgramDetailPopup;->mProgram:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getTimerId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$11;

    invoke-direct {v2, p0, p1}, Ltv/emby/embyatv/ui/LiveProgramDetailPopup$11;-><init>(Ltv/emby/embyatv/ui/LiveProgramDetailPopup;Z)V

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetLiveTvTimerAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    :goto_0
    return-void
.end method
