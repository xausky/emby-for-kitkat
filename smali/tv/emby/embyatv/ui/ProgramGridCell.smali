.class public Ltv/emby/embyatv/ui/ProgramGridCell;
.super Landroid/widget/RelativeLayout;
.source "ProgramGridCell.java"

# interfaces
.implements Ltv/emby/embyatv/ui/IRecordingIndicatorView;


# instance fields
.field private final IND_HEIGHT:I

.field private isFirst:Z

.field private isLast:Z

.field private mActivity:Ltv/emby/embyatv/livetv/ILiveTvGuide;

.field private mBackgroundColor:I

.field private mCellBody:Landroid/widget/RelativeLayout;

.field private mContdIndicator:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mInfoRow:Landroid/widget/LinearLayout;

.field private mProgram:Lmediabrowser/model/dto/BaseItemDto;

.field private mProgramName:Landroid/widget/TextView;

.field private mRecIndicator:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ltv/emby/embyatv/livetv/ILiveTvGuide;Lmediabrowser/model/dto/BaseItemDto;Z)V
    .locals 2

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mBackgroundColor:I

    .line 46
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->IND_HEIGHT:I

    .line 50
    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1, p2, p3, p4}, Ltv/emby/embyatv/ui/ProgramGridCell;->initComponent(Landroid/app/Activity;Ltv/emby/embyatv/livetv/ILiveTvGuide;Lmediabrowser/model/dto/BaseItemDto;Z)V

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/ui/ProgramGridCell;)Ltv/emby/embyatv/livetv/ILiveTvGuide;
    .locals 0

    .line 33
    iget-object p0, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mActivity:Ltv/emby/embyatv/livetv/ILiveTvGuide;

    return-object p0
.end method

.method private initComponent(Landroid/app/Activity;Ltv/emby/embyatv/livetv/ILiveTvGuide;Lmediabrowser/model/dto/BaseItemDto;Z)V
    .locals 0
    .param p3    # Lmediabrowser/model/dto/BaseItemDto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 54
    iput-object p2, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mActivity:Ltv/emby/embyatv/livetv/ILiveTvGuide;

    .line 55
    iput-object p1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mContext:Landroid/content/Context;

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    if-eqz p4, :cond_0

    const p2, 0x7f0d00b0

    goto :goto_0

    :cond_0
    const p2, 0x7f0d00af

    :goto_0
    const/4 p4, 0x0

    .line 57
    invoke-virtual {p1, p2, p0, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 58
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/ProgramGridCell;->addView(Landroid/view/View;)V

    const p1, 0x7f0a0238

    .line 60
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/ProgramGridCell;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mProgramName:Landroid/widget/TextView;

    .line 61
    iget-object p1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mProgramName:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f0a0180

    .line 62
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/ProgramGridCell;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mInfoRow:Landroid/widget/LinearLayout;

    .line 63
    iget-object p1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mProgramName:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getGuideTextColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    iget-object p1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mProgramName:Landroid/widget/TextView;

    const p2, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 65
    iput-object p3, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mProgram:Lmediabrowser/model/dto/BaseItemDto;

    .line 66
    iget-object p1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mProgramName:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 67
    iget-object p1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mInfoRow:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    const p1, 0x7f0a008f

    .line 68
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/ProgramGridCell;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mCellBody:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a0250

    .line 69
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/ProgramGridCell;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mRecIndicator:Landroid/widget/ImageView;

    const p1, 0x7f0a00ad

    .line 70
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/ProgramGridCell;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mContdIndicator:Landroid/widget/ImageView;

    .line 72
    new-instance p1, Ltv/emby/embyatv/ui/ProgramGridCell$1;

    invoke-direct {p1, p0}, Ltv/emby/embyatv/ui/ProgramGridCell$1;-><init>(Ltv/emby/embyatv/ui/ProgramGridCell;)V

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/ProgramGridCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p3, :cond_1

    .line 79
    invoke-virtual {p0, p3}, Ltv/emby/embyatv/ui/ProgramGridCell;->setProgram(Lmediabrowser/model/dto/BaseItemDto;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getProgram()Lmediabrowser/model/dto/BaseItemDto;
    .locals 1

    .line 210
    iget-object v0, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mProgram:Lmediabrowser/model/dto/BaseItemDto;

    return-object v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_2

    const/16 v0, 0x21

    if-eq p2, v0, :cond_0

    const/16 v0, 0x82

    if-ne p2, v0, :cond_1

    .line 190
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mActivity:Ltv/emby/embyatv/livetv/ILiveTvGuide;

    invoke-interface {v0, p0}, Ltv/emby/embyatv/livetv/ILiveTvGuide;->findBestFocusView(Ltv/emby/embyatv/ui/ProgramGridCell;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    .line 192
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void

    .line 197
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 198
    iget-object p1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mCellBody:Landroid/widget/RelativeLayout;

    const p2, 0x7f080073

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 199
    iget-object p1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mProgramName:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getHighlightedTextColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    iget-object p1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mActivity:Ltv/emby/embyatv/livetv/ILiveTvGuide;

    invoke-interface {p1, p0}, Ltv/emby/embyatv/livetv/ILiveTvGuide;->setSelectedProgram(Ltv/emby/embyatv/ui/ProgramGridCell;)V

    goto :goto_0

    .line 204
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 205
    iget-object p1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mProgramName:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getGuideTextColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    iget-object p1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mCellBody:Landroid/widget/RelativeLayout;

    iget p2, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mBackgroundColor:I

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-ne p1, v0, :cond_2

    .line 166
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getLastNavKeyDown()J

    move-result-wide v2

    const-wide/16 v4, 0x3c

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 170
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ltv/emby/embyatv/livetv/TvManager;->setLastNavKeyDown(J)V

    .line 171
    iget-object v0, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mActivity:Ltv/emby/embyatv/livetv/ILiveTvGuide;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltv/emby/embyatv/livetv/ILiveTvGuide;->onNavKeyAction(Z)V

    .line 174
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    .line 179
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mActivity:Ltv/emby/embyatv/livetv/ILiveTvGuide;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ltv/emby/embyatv/livetv/ILiveTvGuide;->onNavKeyAction(Z)V

    .line 180
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setCellBackground()V
    .locals 2

    .line 145
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getPrefs()Ltv/emby/embyatv/model/LiveTvPrefs;

    move-result-object v0

    iget-boolean v0, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->colorCodeGuide:Z

    if-eqz v0, :cond_4

    .line 146
    iget-object v0, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mProgram:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIsMovie()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/ProgramGridCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mBackgroundColor:I

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mProgram:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIsNews()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/ProgramGridCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mBackgroundColor:I

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mProgram:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIsSports()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/ProgramGridCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mBackgroundColor:I

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mProgram:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIsKids()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/ProgramGridCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mBackgroundColor:I

    goto :goto_0

    .line 155
    :cond_3
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mBackgroundColor:I

    .line 157
    :goto_0
    iget-object v0, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mCellBody:Landroid/widget/RelativeLayout;

    iget v1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :cond_4
    return-void
.end method

.method public setProgram(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 11

    .line 84
    iput-object p1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mProgram:Lmediabrowser/model/dto/BaseItemDto;

    .line 85
    iget-object v0, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mInfoRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 86
    iget-object v0, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mProgramName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p0}, Ltv/emby/embyatv/ui/ProgramGridCell;->setCellBackground()V

    .line 89
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    iget-object v2, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mActivity:Ltv/emby/embyatv/livetv/ILiveTvGuide;

    invoke-interface {v2}, Ltv/emby/embyatv/livetv/ILiveTvGuide;->getCurrentLocalStartDate()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 92
    iget-object v0, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mContdIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v1, 0x41400000    # 12.0f

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 96
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mInfoRow:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mContdIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    :cond_1
    :goto_0
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getPrefs()Ltv/emby/embyatv/model/LiveTvPrefs;

    move-result-object v0

    .line 105
    iget-boolean v1, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->showNewIndicator:Z

    const/16 v2, 0xa

    if-eqz v1, :cond_3

    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->isNew(Lmediabrowser/model/dto/BaseItemDto;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->showPremiereIndicator:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsPremiere()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 106
    :cond_2
    iget-object v1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mContext:Landroid/content/Context;

    iget-object v3, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mInfoRow:Landroid/widget/LinearLayout;

    const-string v4, "  "

    invoke-static {v1, v3, v4, v2}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 107
    iget-object v5, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mContext:Landroid/content/Context;

    iget-object v6, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mInfoRow:Landroid/widget/LinearLayout;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const v3, 0x7f10051f

    invoke-virtual {v1, v3}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xa

    const v9, -0x333334

    const v10, 0x7f0600b9

    invoke-static/range {v5 .. v10}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V

    goto :goto_1

    .line 108
    :cond_3
    iget-boolean v1, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->showPremiereIndicator:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsPremiere()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 109
    iget-object v1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mContext:Landroid/content/Context;

    iget-object v3, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mInfoRow:Landroid/widget/LinearLayout;

    const-string v4, "  "

    invoke-static {v1, v3, v4, v2}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 110
    iget-object v5, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mContext:Landroid/content/Context;

    iget-object v6, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mInfoRow:Landroid/widget/LinearLayout;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const v3, 0x7f100568

    invoke-virtual {v1, v3}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xa

    const v9, -0x777778

    const v10, 0x7f0600c2

    invoke-static/range {v5 .. v10}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V

    goto :goto_1

    .line 111
    :cond_4
    iget-boolean v1, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->showRepeatIndicator:Z

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsRepeat()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 112
    iget-object v1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mContext:Landroid/content/Context;

    iget-object v3, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mInfoRow:Landroid/widget/LinearLayout;

    const-string v4, "  "

    invoke-static {v1, v3, v4, v2}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 113
    iget-object v5, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mContext:Landroid/content/Context;

    iget-object v6, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mInfoRow:Landroid/widget/LinearLayout;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const v3, 0x7f100584

    invoke-virtual {v1, v3}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xa

    const v9, -0x777778

    const v10, 0x7f060076

    invoke-static/range {v5 .. v10}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V

    .line 116
    :cond_5
    :goto_1
    iget-boolean v1, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->showLiveIndicator:Z

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsLive()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 117
    iget-object v1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mContext:Landroid/content/Context;

    iget-object v3, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mInfoRow:Landroid/widget/LinearLayout;

    const-string v4, "  "

    invoke-static {v1, v3, v4, v2}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 118
    iget-object v5, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mContext:Landroid/content/Context;

    iget-object v6, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mInfoRow:Landroid/widget/LinearLayout;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const v3, 0x7f100500

    invoke-virtual {v1, v3}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xa

    const v9, -0x777778

    const v10, 0x7f0600a0

    invoke-static/range {v5 .. v10}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;III)V

    .line 121
    :cond_6
    iget-boolean v1, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->showHDIndicator:Z

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsHD()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getWidth()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getWidth()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0xed8

    if-le v1, v3, :cond_8

    .line 122
    :cond_7
    iget-object v1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mContext:Landroid/content/Context;

    iget-object v3, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mInfoRow:Landroid/widget/LinearLayout;

    const-string v4, "  "

    invoke-static {v1, v3, v4, v2}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 123
    iget-object v1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mContext:Landroid/content/Context;

    iget-object v3, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mInfoRow:Landroid/widget/LinearLayout;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v4

    const v5, 0x7f10043b

    invoke-virtual {v4, v5}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4, v2}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    goto :goto_2

    .line 124
    :cond_8
    iget-boolean v1, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->showHDIndicator:Z

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsHD()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getWidth()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getWidth()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0x4b0

    if-le v1, v3, :cond_a

    .line 125
    :cond_9
    iget-object v1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mContext:Landroid/content/Context;

    iget-object v3, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mInfoRow:Landroid/widget/LinearLayout;

    const-string v4, "  "

    invoke-static {v1, v3, v4, v2}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 126
    iget-object v1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mContext:Landroid/content/Context;

    iget-object v3, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mInfoRow:Landroid/widget/LinearLayout;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v4

    const v5, 0x7f1004d8

    invoke-virtual {v4, v5}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4, v2}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 129
    :cond_a
    :goto_2
    iget-boolean v0, v0, Ltv/emby/embyatv/model/LiveTvPrefs;->showRatingIndicator:Z

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getOfficialRating()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getOfficialRating()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 130
    iget-object v0, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mContext:Landroid/content/Context;

    iget-object v1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mInfoRow:Landroid/widget/LinearLayout;

    const-string v3, "  "

    invoke-static {v0, v1, v3, v2}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 131
    iget-object v0, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mContext:Landroid/content/Context;

    iget-object v1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mInfoRow:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getOfficialRating()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3, v2}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addBlockText(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 134
    :cond_b
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesTimerId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 135
    iget-object v0, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mRecIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getTimerId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    const p1, 0x7f080169

    goto :goto_3

    :cond_c
    const p1, 0x7f08016a

    :goto_3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 136
    :cond_d
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getTimerId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 137
    iget-object p1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mRecIndicator:Landroid/widget/ImageView;

    const v0, 0x7f080166

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 139
    :cond_e
    iget-object p1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mRecIndicator:Landroid/widget/ImageView;

    const v0, 0x7f080062

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    return-void
.end method

.method public setRecSeriesTimer(Ljava/lang/String;)V
    .locals 1

    .line 217
    iget-object v0, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mProgram:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0, p1}, Lmediabrowser/model/dto/BaseItemDto;->setSeriesTimerId(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mRecIndicator:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const p1, 0x7f080169

    goto :goto_0

    :cond_0
    const p1, 0x7f080062

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setRecTimer(Ljava/lang/String;)V
    .locals 1

    .line 213
    iget-object v0, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mProgram:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0, p1}, Lmediabrowser/model/dto/BaseItemDto;->setTimerId(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mRecIndicator:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mProgram:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesTimerId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const p1, 0x7f080169

    goto :goto_0

    :cond_0
    const p1, 0x7f080166

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/ui/ProgramGridCell;->mProgram:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesTimerId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const p1, 0x7f08016a

    goto :goto_0

    :cond_2
    const p1, 0x7f080062

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
