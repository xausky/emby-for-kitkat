.class public Ltv/emby/embyatv/ui/ChannelGridCell;
.super Landroid/widget/RelativeLayout;
.source "ChannelGridCell.java"


# instance fields
.field private final HEADER_WIDTH:I

.field private mActivity:Ltv/emby/embyatv/livetv/ILiveTvGuide;

.field private mBackgroundColor:I

.field private mChannelImage:Landroid/widget/ImageView;

.field private mChannelName:Landroid/widget/TextView;

.field private mChannelNumber:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ltv/emby/embyatv/livetv/ILiveTvGuide;Lmediabrowser/model/livetv/ChannelInfoDto;)V
    .locals 2

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/16 v1, 0x76

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/ui/ChannelGridCell;->HEADER_WIDTH:I

    .line 44
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/ui/ChannelGridCell;->mBackgroundColor:I

    .line 48
    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1, p2, p3}, Ltv/emby/embyatv/ui/ChannelGridCell;->initComponent(Landroid/app/Activity;Ltv/emby/embyatv/livetv/ILiveTvGuide;Lmediabrowser/model/livetv/ChannelInfoDto;)V

    return-void
.end method

.method private initComponent(Landroid/app/Activity;Ltv/emby/embyatv/livetv/ILiveTvGuide;Lmediabrowser/model/livetv/ChannelInfoDto;)V
    .locals 3
    .param p3    # Lmediabrowser/model/livetv/ChannelInfoDto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 52
    iput-object p2, p0, Ltv/emby/embyatv/ui/ChannelGridCell;->mActivity:Ltv/emby/embyatv/livetv/ILiveTvGuide;

    .line 53
    iput-object p1, p0, Ltv/emby/embyatv/ui/ChannelGridCell;->mContext:Landroid/content/Context;

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x0

    const v0, 0x7f0d0034

    .line 55
    invoke-virtual {p1, v0, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 56
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget v1, p0, Ltv/emby/embyatv/ui/ChannelGridCell;->HEADER_WIDTH:I

    sget v2, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->ROW_HEIGHT:I

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 61
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/ChannelGridCell;->addView(Landroid/view/View;)V

    const p2, 0x7f0a0096

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ltv/emby/embyatv/ui/ChannelGridCell;->mChannelNumber:Landroid/widget/TextView;

    .line 64
    iget-object p2, p0, Ltv/emby/embyatv/ui/ChannelGridCell;->mChannelNumber:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 65
    iget-object p2, p0, Ltv/emby/embyatv/ui/ChannelGridCell;->mChannelNumber:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTabTextColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f0a0095

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ltv/emby/embyatv/ui/ChannelGridCell;->mChannelName:Landroid/widget/TextView;

    const p2, 0x7f0a0094

    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Ltv/emby/embyatv/ui/ChannelGridCell;->mChannelImage:Landroid/widget/ImageView;

    if-eqz p3, :cond_0

    .line 69
    invoke-virtual {p0, p3}, Ltv/emby/embyatv/ui/ChannelGridCell;->setChannel(Lmediabrowser/model/livetv/ChannelInfoDto;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 116
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    const p1, 0x7f080073

    .line 117
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/ChannelGridCell;->setBackgroundResource(I)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 123
    iget p1, p0, Ltv/emby/embyatv/ui/ChannelGridCell;->mBackgroundColor:I

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/ui/ChannelGridCell;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-ne p1, v0, :cond_2

    .line 93
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

    .line 97
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ltv/emby/embyatv/livetv/TvManager;->setLastNavKeyDown(J)V

    .line 98
    iget-object v0, p0, Ltv/emby/embyatv/ui/ChannelGridCell;->mActivity:Ltv/emby/embyatv/livetv/ILiveTvGuide;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltv/emby/embyatv/livetv/ILiveTvGuide;->onNavKeyAction(Z)V

    .line 101
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

    .line 106
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/ui/ChannelGridCell;->mActivity:Ltv/emby/embyatv/livetv/ILiveTvGuide;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ltv/emby/embyatv/livetv/ILiveTvGuide;->onNavKeyAction(Z)V

    .line 107
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setChannel(Lmediabrowser/model/livetv/ChannelInfoDto;)V
    .locals 4

    .line 74
    iget-object v0, p0, Ltv/emby/embyatv/ui/ChannelGridCell;->mChannelNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmediabrowser/model/livetv/ChannelInfoDto;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {p1}, Lmediabrowser/model/livetv/ChannelInfoDto;->getHasPrimaryImage()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Ltv/emby/embyatv/ui/ChannelGridCell;->mChannelName:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 77
    iget-object v0, p0, Ltv/emby/embyatv/ui/ChannelGridCell;->mChannelName:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTabTextColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    iget-object v0, p0, Ltv/emby/embyatv/ui/ChannelGridCell;->mChannelName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmediabrowser/model/livetv/ChannelInfoDto;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object p1, p0, Ltv/emby/embyatv/ui/ChannelGridCell;->mChannelName:Landroid/widget/TextView;

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 80
    iget-object p1, p0, Ltv/emby/embyatv/ui/ChannelGridCell;->mChannelImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    iget-object p1, p0, Ltv/emby/embyatv/ui/ChannelGridCell;->mChannelName:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/ui/ChannelGridCell;->mChannelName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Ltv/emby/embyatv/ui/ChannelGridCell;->mChannelImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Ltv/emby/embyatv/ui/ChannelGridCell;->mContext:Landroid/content/Context;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    invoke-static {p1, v1}, Ltv/emby/embyatv/util/Utils;->getPrimaryImageUrl(Lmediabrowser/model/livetv/ChannelInfoDto;Lmediabrowser/apiinteraction/ApiClient;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Ltv/emby/embyatv/ui/ChannelGridCell;->mChannelImage:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1}, Ltv/emby/embyatv/util/ImageUtils;->loadImageIntoView(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method
