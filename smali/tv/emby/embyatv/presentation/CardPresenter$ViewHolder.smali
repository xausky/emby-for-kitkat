.class Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;
.super Landroidx/leanback/widget/Presenter$ViewHolder;
.source "CardPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/presentation/CardPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field private allowDynamicSize:Z

.field private allowTransparentBg:Z

.field private cardHeight:I

.field private cardWidth:I

.field private mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

.field private mDefaultBackgroundResource:I

.field private mDefaultCardImage:Landroid/graphics/drawable/Drawable;

.field private mItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

.field private randomColors:[Ljava/lang/Integer;

.field private useCards:Z

.field private useDynamicCards:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 6

    .line 98
    invoke-direct {p0, p1}, Landroidx/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    const/16 v0, 0xe6

    .line 85
    iput v0, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    const/16 v0, 0x118

    .line 87
    iput v0, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->allowTransparentBg:Z

    const/4 v1, 0x0

    .line 94
    iput-boolean v1, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->useCards:Z

    .line 95
    iput-boolean v0, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->allowDynamicSize:Z

    const/16 v2, 0x9

    .line 427
    new-array v2, v2, [Ljava/lang/Integer;

    const v3, -0xebd1d5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const v3, -0xcfe1e5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const v3, -0xffe0c8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const v3, -0xe0d6d2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const v3, -0xe0d5d2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    const v3, -0xff9f9c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v2, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    const v3, -0xffc7d1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    const v3, -0xffd3c8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v2, v4

    iput-object v2, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->randomColors:[Ljava/lang/Integer;

    .line 99
    check-cast p1, Ltv/emby/embyatv/presentation/MyImageCardView;

    iput-object p1, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    .line 101
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    const v2, 0x7f0801b3

    invoke-virtual {p1, v2}, Ltv/emby/embyatv/TvApp;->getDrawableCompat(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    .line 102
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_use_cards"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->useCards:Z

    .line 104
    iget-boolean v2, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->useCards:Z

    if-eqz v2, :cond_0

    const-string v2, "classic"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "teal"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "slate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iput-boolean v0, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->useDynamicCards:Z

    .line 105
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getCardBackgroundResource()I

    move-result p1

    iput p1, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultBackgroundResource:I

    return-void
.end method

.method static synthetic access$100(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->allowDynamicSize:Z

    return p0
.end method

.method static synthetic access$200(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;)Ltv/emby/embyatv/presentation/MyImageCardView;
    .locals 0

    .line 84
    iget-object p0, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    return-object p0
.end method

.method static synthetic access$300(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->useDynamicCards:Z

    return p0
.end method

.method static synthetic access$400(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->allowTransparentBg:Z

    return p0
.end method

.method static synthetic access$500(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;)Ltv/emby/embyatv/itemhandling/BaseRowItem;
    .locals 0

    .line 84
    iget-object p0, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    return-object p0
.end method

.method static synthetic access$600(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->useCards:Z

    return p0
.end method

.method static synthetic access$700(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;)I
    .locals 0

    .line 84
    iget p0, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultBackgroundResource:I

    return p0
.end method

.method private getRandomColor()I
    .locals 3

    .line 429
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iget-object v1, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->randomColors:[Ljava/lang/Integer;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 430
    iget-object v1, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->randomColors:[Ljava/lang/Integer;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getCardHeight()I
    .locals 1

    .line 109
    iget v0, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    return v0
.end method

.method public getCardView()Ltv/emby/embyatv/presentation/MyImageCardView;
    .locals 1

    .line 420
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    return-object v0
.end method

.method public getItem()Ltv/emby/embyatv/itemhandling/BaseRowItem;
    .locals 1

    .line 416
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    return-object v0
.end method

.method protected resetCardViewImage()V
    .locals 2

    .line 513
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/presentation/MyImageCardView;->setUnwatchedCount(I)V

    .line 514
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/presentation/MyImageCardView;->setProgress(I)V

    .line 515
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/presentation/MyImageCardView;->showImageText(Z)V

    .line 516
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    iget-boolean v1, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->useCards:Z

    if-eqz v1, :cond_0

    iget v1, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultBackgroundResource:I

    goto :goto_0

    :cond_0
    const v1, 0x7f0600e9

    :goto_0
    invoke-virtual {v0, v1}, Ltv/emby/embyatv/presentation/MyImageCardView;->setBackgroundResource(I)V

    .line 517
    invoke-virtual {p0}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->validContext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 519
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    invoke-virtual {v0}, Ltv/emby/embyatv/presentation/MyImageCardView;->getMainImageView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected setDefaultImage()V
    .locals 2

    .line 502
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/presentation/MyImageCardView;->showImageText(Z)V

    .line 504
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    invoke-virtual {v0}, Ltv/emby/embyatv/presentation/MyImageCardView;->getMainImageView()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 506
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/presentation/MyImageCardView;->showImageText(Z)V

    .line 507
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    invoke-virtual {v0}, Ltv/emby/embyatv/presentation/MyImageCardView;->getMainImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getCardBackgroundResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 508
    iget-boolean v0, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->useCards:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getCardBackgroundResource()I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/presentation/MyImageCardView;->setInfoAreaBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setItem(Ltv/emby/embyatv/itemhandling/BaseRowItem;)V
    .locals 8

    const-string v2, "0"

    const/16 v3, 0xdc

    const/16 v4, 0x136

    const/16 v5, 0x10e

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 113
    invoke-virtual/range {v0 .. v7}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->setItem(Ltv/emby/embyatv/itemhandling/BaseRowItem;Ljava/lang/String;IIIIZ)V

    return-void
.end method

.method public setItem(Ltv/emby/embyatv/itemhandling/BaseRowItem;Ljava/lang/String;IIIIZ)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p6

    move-object/from16 v3, p1

    .line 117
    iput-object v3, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    const/4 v5, 0x1

    .line 118
    iput-boolean v5, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->allowTransparentBg:Z

    .line 119
    iput-boolean v5, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->allowDynamicSize:Z

    .line 120
    iget-object v6, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    invoke-virtual {v6}, Ltv/emby/embyatv/presentation/MyImageCardView;->clearBanner()V

    .line 121
    sget-object v6, Ltv/emby/embyatv/presentation/CardPresenter$2;->$SwitchMap$tv$emby$embyatv$itemhandling$BaseRowItem$ItemType:[I

    iget-object v7, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v7}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getItemType()Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;

    move-result-object v7

    invoke-virtual {v7}, Ltv/emby/embyatv/itemhandling/BaseRowItem$ItemType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const v7, 0x7f0801a7

    const v10, 0x7f08015f

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    const/16 v14, 0xe6

    const v15, 0x7f0801b3

    const/4 v8, 0x0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const/16 v9, 0xa

    const-wide v20, 0x3ffc76c8b4395810L    # 1.779

    const-wide/16 v22, 0x0

    const-wide v24, 0x3fe55810624dd2f2L    # 0.667

    const/4 v11, 0x0

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_1f

    :pswitch_0
    move/from16 v6, p4

    .line 406
    iput v6, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    .line 407
    iget v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    int-to-double v1, v1

    mul-double v1, v1, v24

    double-to-int v1, v1

    iput v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    .line 408
    iget-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    iget v2, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    iget v3, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    invoke-virtual {v1, v2, v3}, Ltv/emby/embyatv/presentation/MyImageCardView;->setMainImageDimensions(II)V

    .line 409
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const v2, 0x7f08018c

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->getDrawableCompat(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1f

    :pswitch_1
    move/from16 v6, p4

    .line 396
    invoke-virtual/range {p1 .. p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->isStaticHeight()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v6, p5

    :goto_0
    iput v6, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    .line 397
    invoke-virtual/range {p1 .. p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->isStaticHeight()Z

    move-result v1

    if-nez v1, :cond_1

    const-wide v1, 0x3fe6666666666666L    # 0.7

    iget v3, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    int-to-double v3, v3

    mul-double v3, v3, v1

    double-to-int v1, v3

    goto :goto_1

    :cond_1
    move/from16 v1, p5

    :goto_1
    iput v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    .line 398
    iget-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    iget v2, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    iget v3, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    invoke-virtual {v1, v2, v3}, Ltv/emby/embyatv/presentation/MyImageCardView;->setMainImageDimensions(II)V

    .line 399
    iget-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/presentation/MyImageCardView;->setMainImageScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 400
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1, v15}, Ltv/emby/embyatv/TvApp;->getDrawableCompat(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    .line 401
    iput-boolean v11, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->allowTransparentBg:Z

    .line 402
    iput-boolean v11, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->allowDynamicSize:Z

    goto/16 :goto_1f

    .line 367
    :pswitch_2
    iget-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getSearchHint()Lmediabrowser/model/search/SearchHint;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/search/SearchHint;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v2, "MusicVideo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v5, 0x3

    goto :goto_3

    :sswitch_1
    const-string v2, "MusicAlbum"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v5, 0x6

    goto :goto_3

    :sswitch_2
    const-string v2, "TvChannel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :sswitch_3
    const-string v2, "Episode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v5, 0x0

    goto :goto_3

    :sswitch_4
    const-string v2, "Video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v5, 0x2

    goto :goto_3

    :sswitch_5
    const-string v2, "Audio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v5, 0x7

    goto :goto_3

    :sswitch_6
    const-string v2, "MusicArtist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v5, 0x5

    goto :goto_3

    :sswitch_7
    const-string v2, "Person"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v5, 0x4

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v5, -0x1

    :goto_3
    packed-switch v5, :pswitch_data_1

    .line 389
    iget v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    int-to-double v1, v1

    mul-double v1, v1, v24

    double-to-int v1, v1

    iput v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    .line 390
    iget-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    iget v2, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    iget v3, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    invoke-virtual {v1, v2, v3}, Ltv/emby/embyatv/presentation/MyImageCardView;->setMainImageDimensions(II)V

    .line 391
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1, v15}, Ltv/emby/embyatv/TvApp;->getDrawableCompat(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1f

    .line 384
    :pswitch_3
    iget v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    iput v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    .line 385
    iget-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    iget v2, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    iget v3, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    invoke-virtual {v1, v2, v3}, Ltv/emby/embyatv/presentation/MyImageCardView;->setMainImageDimensions(II)V

    .line 386
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const v2, 0x7f0800d3

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->getDrawableCompat(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1f

    .line 378
    :pswitch_4
    iget v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    int-to-double v1, v1

    mul-double v1, v1, v24

    double-to-int v1, v1

    iput v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    .line 379
    iget-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    iget v2, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    iget v3, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    invoke-virtual {v1, v2, v3}, Ltv/emby/embyatv/presentation/MyImageCardView;->setMainImageDimensions(II)V

    .line 380
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1, v10}, Ltv/emby/embyatv/TvApp;->getDrawableCompat(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1f

    .line 372
    :pswitch_5
    iget v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    int-to-double v1, v1

    mul-double v1, v1, v20

    double-to-int v1, v1

    iput v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    .line 373
    iget-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    iget v2, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    iget v3, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    invoke-virtual {v1, v2, v3}, Ltv/emby/embyatv/presentation/MyImageCardView;->setMainImageDimensions(II)V

    .line 374
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1, v7}, Ltv/emby/embyatv/TvApp;->getDrawableCompat(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1f

    :pswitch_6
    move/from16 v6, p4

    .line 361
    invoke-virtual/range {p1 .. p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->isStaticHeight()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_4

    :cond_3
    move/from16 v6, p5

    :goto_4
    iput v6, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    .line 362
    iget v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    int-to-double v1, v1

    mul-double v1, v1, v20

    double-to-int v1, v1

    iput v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    .line 363
    iget-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    iget v2, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    iget v3, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    invoke-virtual {v1, v2, v3}, Ltv/emby/embyatv/presentation/MyImageCardView;->setMainImageDimensions(II)V

    .line 364
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const v2, 0x7f080085

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->getDrawableCompat(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1f

    .line 355
    :pswitch_7
    iget v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    iput v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    .line 356
    iget-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    iget v2, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    iget v3, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    invoke-virtual {v1, v2, v3}, Ltv/emby/embyatv/presentation/MyImageCardView;->setMainImageDimensions(II)V

    .line 357
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const v2, 0x7f0801b1

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->getDrawableCompat(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    .line 358
    iput-boolean v11, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->allowDynamicSize:Z

    goto/16 :goto_1f

    :pswitch_8
    move/from16 v6, p4

    goto :goto_5

    :pswitch_9
    move/from16 v6, p4

    .line 342
    iget v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    int-to-double v1, v1

    mul-double v1, v1, v24

    double-to-int v1, v1

    iput v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    .line 343
    iget-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    iget v2, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    iget v4, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    invoke-virtual {v1, v2, v4}, Ltv/emby/embyatv/presentation/MyImageCardView;->setMainImageDimensions(II)V

    .line 344
    iget-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/presentation/MyImageCardView;->setMainImageScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 345
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const v2, 0x7f08018d

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->getDrawableCompat(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    .line 346
    iput-boolean v11, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->allowDynamicSize:Z

    .line 348
    :goto_5
    invoke-virtual/range {p1 .. p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->isStaticHeight()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_6

    :cond_4
    move/from16 v6, p5

    :goto_6
    iput v6, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    .line 349
    iget v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    int-to-double v1, v1

    mul-double v1, v1, v24

    double-to-int v1, v1

    iput v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    .line 350
    iget-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    iget v2, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    iget v3, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    invoke-virtual {v1, v2, v3}, Ltv/emby/embyatv/presentation/MyImageCardView;->setMainImageDimensions(II)V

    .line 351
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1, v10}, Ltv/emby/embyatv/TvApp;->getDrawableCompat(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    .line 352
    iput-boolean v11, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->allowDynamicSize:Z

    goto/16 :goto_1f

    :pswitch_a
    move/from16 v6, p4

    .line 315
    iget-object v2, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getRecordingInfo()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    const-string v4, "2"

    .line 316
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-wide v16, 0x4015a7ef9db22d0eL    # 5.414

    goto :goto_7

    :cond_5
    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-wide/from16 v16, v20

    goto :goto_7

    :cond_6
    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getPrimaryImageAspectRatio()Ljava/lang/Double;

    move-result-object v1

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v1, v4}, Ltv/emby/embyatv/util/Utils;->NullCoalesce(Ljava/lang/Double;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-wide/from16 v16, v4

    :goto_7
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 317
    invoke-virtual/range {p1 .. p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->isStaticHeight()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpl-double v3, v3, v18

    if-lez v3, :cond_8

    move/from16 v6, p3

    goto :goto_8

    :cond_7
    move/from16 v6, p5

    :cond_8
    :goto_8
    iput v6, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    .line 318
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    int-to-double v5, v1

    mul-double v3, v3, v5

    double-to-int v1, v3

    iput v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    .line 319
    iget v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    if-ge v1, v9, :cond_9

    iput v14, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    .line 320
    :cond_9
    iget-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    iget v3, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    iget v4, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    invoke-virtual {v1, v3, v4}, Ltv/emby/embyatv/presentation/MyImageCardView;->setMainImageDimensions(II)V

    .line 321
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1, v7}, Ltv/emby/embyatv/TvApp;->getDrawableCompat(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    .line 323
    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 325
    invoke-virtual {v1}, Lmediabrowser/model/dto/UserItemDataDto;->getPlayed()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 326
    iget-object v3, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    invoke-virtual {v3, v11}, Ltv/emby/embyatv/presentation/MyImageCardView;->setUnwatchedCount(I)V

    goto :goto_9

    .line 328
    :cond_a
    invoke-virtual {v1}, Lmediabrowser/model/dto/UserItemDataDto;->getUnplayedItemCount()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 329
    iget-object v3, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserItemDataDto;->getUnplayedItemCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/presentation/MyImageCardView;->setUnwatchedCount(I)V

    .line 334
    :cond_b
    :goto_9
    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v22

    if-lez v3, :cond_c

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserItemDataDto;->getPlaybackPositionTicks()J

    move-result-wide v3

    cmp-long v3, v3, v22

    if-lez v3, :cond_c

    .line 335
    iget-object v3, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserItemDataDto;->getPlaybackPositionTicks()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double v4, v4, v12

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-double v1, v1

    div-double/2addr v4, v1

    double-to-int v1, v4

    invoke-virtual {v3, v1}, Ltv/emby/embyatv/presentation/MyImageCardView;->setProgress(I)V

    goto/16 :goto_1f

    .line 337
    :cond_c
    iget-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    invoke-virtual {v1, v11}, Ltv/emby/embyatv/presentation/MyImageCardView;->setProgress(I)V

    goto/16 :goto_1f

    :pswitch_b
    move/from16 v6, p4

    .line 274
    iget-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getProgramInfo()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    .line 275
    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getPrimaryImageAspectRatio()Ljava/lang/Double;

    move-result-object v2

    .line 276
    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getHasThumb()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 277
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :cond_d
    if-nez v2, :cond_e

    .line 279
    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 280
    :cond_e
    iget-object v5, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    invoke-virtual {v5}, Ltv/emby/embyatv/presentation/MyImageCardView;->getMainImageView()Landroid/widget/ImageView;

    move-result-object v5

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 281
    invoke-virtual/range {p1 .. p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->isStaticHeight()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    cmpl-double v3, v15, v18

    if-lez v3, :cond_10

    move/from16 v6, p3

    goto :goto_a

    :cond_f
    move/from16 v6, p5

    :cond_10
    :goto_a
    iput v6, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    .line 282
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget v5, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    int-to-double v5, v5

    mul-double v2, v2, v5

    double-to-int v2, v2

    iput v2, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    .line 283
    iget v2, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    if-ge v2, v9, :cond_11

    iput v14, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    .line 284
    :cond_11
    sget-object v2, Ltv/emby/embyatv/presentation/CardPresenter$2;->$SwitchMap$mediabrowser$model$entities$LocationType:[I

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getLocationType()Lmediabrowser/model/entities/LocationType;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/model/entities/LocationType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2

    goto :goto_b

    .line 291
    :pswitch_c
    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v2, v2, v5

    if-lez v2, :cond_12

    iget-object v2, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    const v3, 0x7f0800d1

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/presentation/MyImageCardView;->setBanner(I)V

    .line 296
    :cond_12
    :goto_b
    :pswitch_d
    iget-object v2, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    iget v3, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    iget v5, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    invoke-virtual {v2, v3, v5}, Ltv/emby/embyatv/presentation/MyImageCardView;->setMainImageDimensions(II)V

    .line 297
    iput-object v8, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    if-eqz p7, :cond_2e

    .line 301
    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v6, v4, v22

    if-lez v6, :cond_13

    .line 305
    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 306
    iget-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    long-to-double v2, v4

    mul-double v2, v2, v12

    long-to-double v4, v6

    div-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/presentation/MyImageCardView;->setProgress(I)V

    goto/16 :goto_1f

    .line 308
    :cond_13
    iget-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    invoke-virtual {v1, v11}, Ltv/emby/embyatv/presentation/MyImageCardView;->setProgress(I)V

    goto/16 :goto_1f

    :pswitch_e
    move/from16 v6, p4

    .line 248
    iget-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getChannelInfo()Lmediabrowser/model/livetv/ChannelInfoDto;

    move-result-object v1

    .line 249
    invoke-virtual/range {p1 .. p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->isStaticHeight()Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_c

    :cond_14
    move/from16 v6, p5

    :goto_c
    iput v6, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    .line 250
    iget v3, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    iput v3, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    .line 251
    iget v3, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    if-ge v3, v9, :cond_15

    iput v14, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    :cond_15
    if-lez v2, :cond_16

    .line 252
    iget v3, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    if-le v3, v2, :cond_16

    iput v2, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    .line 253
    :cond_16
    iput-boolean v11, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->allowTransparentBg:Z

    .line 254
    iget-object v2, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    iget v3, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    iget v5, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    invoke-virtual {v2, v3, v5}, Ltv/emby/embyatv/presentation/MyImageCardView;->setMainImageDimensions(II)V

    .line 255
    iget-object v2, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    invoke-virtual {v2}, Ltv/emby/embyatv/presentation/MyImageCardView;->getMainImageView()Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 256
    iput-boolean v11, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->allowDynamicSize:Z

    .line 257
    iput-object v8, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    if-eqz p7, :cond_2e

    .line 260
    invoke-virtual {v1}, Lmediabrowser/model/livetv/ChannelInfoDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-virtual {v1}, Lmediabrowser/model/livetv/ChannelInfoDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-virtual {v1}, Lmediabrowser/model/livetv/ChannelInfoDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 261
    invoke-virtual {v1}, Lmediabrowser/model/livetv/ChannelInfoDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v6, v4, v22

    if-lez v6, :cond_17

    .line 265
    invoke-virtual {v1}, Lmediabrowser/model/livetv/ChannelInfoDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 266
    iget-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    long-to-double v2, v4

    mul-double v2, v2, v12

    long-to-double v4, v6

    div-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/presentation/MyImageCardView;->setProgress(I)V

    goto/16 :goto_1f

    .line 268
    :cond_17
    iget-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    invoke-virtual {v1, v11}, Ltv/emby/embyatv/presentation/MyImageCardView;->setProgress(I)V

    goto/16 :goto_1f

    :pswitch_f
    move/from16 v6, p4

    .line 124
    iget-object v4, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v4}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v4

    const-string v7, "2"

    .line 128
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    const-wide v12, 0x4015a7ef9db22d0eL    # 5.414

    goto :goto_d

    :cond_18
    const-string v7, "1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    move-wide/from16 v12, v20

    goto :goto_d

    :cond_19
    invoke-virtual/range {p1 .. p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getPreferParentThumb()Z

    move-result v7

    invoke-virtual/range {p1 .. p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getPreferSeriesPoster()Z

    move-result v12

    invoke-static {v4, v7, v12}, Ltv/emby/embyatv/util/Utils;->getImageAspectRatio(Lmediabrowser/model/dto/BaseItemDto;ZZ)Ljava/lang/Double;

    move-result-object v7

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-static {v7, v12}, Ltv/emby/embyatv/util/Utils;->NullCoalesce(Ljava/lang/Double;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    :goto_d
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 131
    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_1

    goto/16 :goto_e

    :sswitch_8
    const-string v13, "Folder"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    const/16 v12, 0x9

    goto/16 :goto_f

    :sswitch_9
    const-string v13, "Playlist"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    const/16 v12, 0x15

    goto/16 :goto_f

    :sswitch_a
    const-string v13, "PhotoAlbum"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    const/16 v12, 0x14

    goto/16 :goto_f

    :sswitch_b
    const-string v13, "CollectionFolder"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    const/16 v12, 0xf

    goto/16 :goto_f

    :sswitch_c
    const-string v13, "MusicGenre"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    const/16 v12, 0xe

    goto/16 :goto_f

    :sswitch_d
    const-string v13, "MusicAlbum"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    const/4 v12, 0x1

    goto/16 :goto_f

    :sswitch_e
    const-string v13, "MusicGenreFolder"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    const/16 v12, 0xb

    goto/16 :goto_f

    :sswitch_f
    const-string v13, "MovieGenre"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    const/16 v12, 0xc

    goto/16 :goto_f

    :sswitch_10
    const-string v13, "Episode"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    const/16 v12, 0x8

    goto/16 :goto_f

    :sswitch_11
    const-string v13, "Video"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    const/16 v12, 0x17

    goto/16 :goto_f

    :sswitch_12
    const-string v13, "Photo"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    const/16 v12, 0x13

    goto/16 :goto_f

    :sswitch_13
    const-string v13, "Movie"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    const/16 v12, 0x16

    goto/16 :goto_f

    :sswitch_14
    const-string v13, "Genre"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    const/16 v12, 0xd

    goto/16 :goto_f

    :sswitch_15
    const-string v13, "Audio"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    const/4 v12, 0x0

    goto/16 :goto_f

    :sswitch_16
    const-string v13, "UserView"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    const/16 v12, 0x10

    goto :goto_f

    :sswitch_17
    const-string v13, "MovieGenreFolder"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    const/16 v12, 0xa

    goto :goto_f

    :sswitch_18
    const-string v13, "YtTrailer"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    const/16 v12, 0x12

    goto :goto_f

    :sswitch_19
    const-string v13, "Series"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    const/4 v12, 0x7

    goto :goto_f

    :sswitch_1a
    const-string v13, "Season"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    const/4 v12, 0x6

    goto :goto_f

    :sswitch_1b
    const-string v13, "AudioPodcast"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    const/4 v12, 0x2

    goto :goto_f

    :sswitch_1c
    const-string v13, "Channel"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    const/16 v12, 0x11

    goto :goto_f

    :sswitch_1d
    const-string v13, "MusicArtist"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    const/4 v12, 0x5

    goto :goto_f

    :sswitch_1e
    const-string v13, "Person"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    const/4 v12, 0x4

    goto :goto_f

    :sswitch_1f
    const-string v13, "AudioBook"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    const/4 v12, 0x3

    goto :goto_f

    :cond_1a
    :goto_e
    const/4 v12, -0x1

    :goto_f
    packed-switch v12, :pswitch_data_3

    .line 217
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v8

    invoke-virtual {v8, v15}, Ltv/emby/embyatv/TvApp;->getDrawableCompat(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_18

    .line 208
    :pswitch_10
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v8

    invoke-virtual {v8, v15}, Ltv/emby/embyatv/TvApp;->getDrawableCompat(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    .line 209
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const-wide v15, 0x3ffc77318fc50481L    # 1.7791

    cmpl-double v8, v12, v15

    if-nez v8, :cond_1f

    .line 211
    iget-object v8, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    invoke-virtual {v8}, Ltv/emby/embyatv/presentation/MyImageCardView;->getMainImageView()Landroid/widget/ImageView;

    move-result-object v8

    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_10

    .line 202
    :pswitch_11
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v8

    const v10, 0x7f080142

    invoke-virtual {v8, v10}, Ltv/emby/embyatv/TvApp;->getDrawableCompat(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    .line 203
    iget-object v8, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    invoke-virtual {v8}, Ltv/emby/embyatv/presentation/MyImageCardView;->getMainImageView()Landroid/widget/ImageView;

    move-result-object v8

    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_10
    const/4 v8, 0x1

    :goto_11
    const/4 v10, 0x1

    goto/16 :goto_19

    .line 199
    :pswitch_12
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v5

    const-string v8, "Video"

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getMediaType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    const v8, 0x7f0801b4

    goto :goto_12

    :cond_1b
    const v8, 0x7f08014a

    :goto_12
    invoke-virtual {v5, v8}, Ltv/emby/embyatv/TvApp;->getDrawableCompat(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    goto :goto_13

    .line 195
    :pswitch_13
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v5

    const v8, 0x7f080161

    invoke-virtual {v5, v8}, Ltv/emby/embyatv/TvApp;->getDrawableCompat(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    goto :goto_13

    .line 190
    :pswitch_14
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v5

    const v8, 0x7f080160

    invoke-virtual {v5, v8}, Ltv/emby/embyatv/TvApp;->getDrawableCompat(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    :cond_1c
    :goto_13
    const/4 v5, 0x0

    goto/16 :goto_18

    .line 187
    :pswitch_15
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v8

    const v10, 0x7f0801be

    invoke-virtual {v8, v10}, Ltv/emby/embyatv/TvApp;->getDrawableCompat(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_18

    .line 183
    :pswitch_16
    iput-object v8, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    .line 184
    iget-boolean v8, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->useCards:Z

    if-nez v8, :cond_20

    iget-object v8, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    invoke-virtual {v8, v5}, Ltv/emby/embyatv/presentation/MyImageCardView;->setCenteredTitle(Z)V

    goto/16 :goto_18

    .line 178
    :pswitch_17
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v8

    const v10, 0x7f0800ce

    invoke-virtual {v8, v10}, Ltv/emby/embyatv/TvApp;->getDrawableCompat(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_18

    .line 171
    :pswitch_18
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v8

    const v10, 0x7f0800ce

    invoke-virtual {v8, v10}, Ltv/emby/embyatv/TvApp;->getDrawableCompat(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_18

    .line 154
    :pswitch_19
    iput-object v8, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    .line 155
    sget-object v8, Ltv/emby/embyatv/presentation/CardPresenter$2;->$SwitchMap$mediabrowser$model$entities$LocationType:[I

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getLocationType()Lmediabrowser/model/entities/LocationType;

    move-result-object v10

    invoke-virtual {v10}, Lmediabrowser/model/entities/LocationType;->ordinal()I

    move-result v10

    aget v8, v8, v10

    packed-switch v8, :pswitch_data_4

    goto :goto_16

    .line 165
    :pswitch_1a
    iget-object v8, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    const v10, 0x7f08015b

    invoke-virtual {v8, v10}, Ltv/emby/embyatv/presentation/MyImageCardView;->setBanner(I)V

    goto :goto_16

    .line 162
    :pswitch_1b
    iget-object v8, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v10

    if-eqz v10, :cond_1d

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v10

    invoke-static {v10}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v10

    goto :goto_14

    :cond_1d
    new-instance v10, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v15, 0x1

    add-long/2addr v12, v15

    invoke-direct {v10, v12, v13}, Ljava/util/Date;-><init>(J)V

    :goto_14
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    cmp-long v10, v12, v15

    if-lez v10, :cond_1e

    const v10, 0x7f0800d1

    goto :goto_15

    :cond_1e
    const v10, 0x7f080140

    :goto_15
    invoke-virtual {v8, v10}, Ltv/emby/embyatv/presentation/MyImageCardView;->setBanner(I)V

    :cond_1f
    :goto_16
    :pswitch_1c
    const/4 v8, 0x0

    goto/16 :goto_11

    .line 150
    :pswitch_1d
    iput-object v8, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    goto :goto_18

    .line 144
    :pswitch_1e
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v5

    const v8, 0x7f08005d

    invoke-virtual {v5, v8}, Ltv/emby/embyatv/TvApp;->getDrawableCompat(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    .line 145
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const-wide v15, 0x3fe999999999999aL    # 0.8

    cmpg-double v5, v12, v15

    if-gez v5, :cond_1c

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    :goto_17
    move-object v7, v5

    goto/16 :goto_13

    .line 141
    :pswitch_1f
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v8

    invoke-virtual {v8, v10}, Ltv/emby/embyatv/TvApp;->getDrawableCompat(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    goto :goto_18

    .line 136
    :pswitch_20
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v5

    const v8, 0x7f08005e

    invoke-virtual {v5, v8}, Ltv/emby/embyatv/TvApp;->getDrawableCompat(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mDefaultCardImage:Landroid/graphics/drawable/Drawable;

    .line 137
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const-wide v15, 0x3fe999999999999aL    # 0.8

    cmpg-double v5, v12, v15

    if-gez v5, :cond_1c

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto :goto_17

    :cond_20
    :goto_18
    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 221
    :goto_19
    invoke-virtual/range {p1 .. p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->isStaticHeight()Z

    move-result v3

    if-nez v3, :cond_21

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    cmpl-double v3, v12, v18

    if-lez v3, :cond_22

    move/from16 v6, p3

    goto :goto_1a

    :cond_21
    move/from16 v6, p5

    :cond_22
    :goto_1a
    iput v6, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    .line 222
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget v3, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    int-to-double v12, v3

    mul-double v6, v6, v12

    double-to-int v3, v6

    iput v3, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    .line 223
    iget v3, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    if-ge v3, v9, :cond_23

    iput v14, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    :cond_23
    if-lez v2, :cond_24

    .line 224
    iget v3, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    if-le v3, v2, :cond_24

    iput v2, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    :cond_24
    if-nez v8, :cond_29

    .line 225
    iget-object v3, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    invoke-virtual {v3}, Ltv/emby/embyatv/presentation/MyImageCardView;->getMainImageView()Landroid/widget/ImageView;

    move-result-object v3

    iget-boolean v6, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->allowDynamicSize:Z

    if-eqz v6, :cond_26

    const-string v1, "UserView"

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    :goto_1b
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    goto :goto_1c

    :cond_25
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    goto :goto_1c

    :cond_26
    const-string v6, "1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_1b

    :cond_27
    if-lez v2, :cond_28

    const-string v1, "photo"

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_1c

    :cond_28
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :goto_1c
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 226
    :cond_29
    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v1

    if-eqz v5, :cond_2c

    if-eqz v1, :cond_2c

    .line 229
    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getIsFolder()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserItemDataDto;->getPlayed()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 230
    iget-object v2, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    invoke-virtual {v2, v11}, Ltv/emby/embyatv/presentation/MyImageCardView;->setUnwatchedCount(I)V

    goto :goto_1d

    .line 232
    :cond_2a
    invoke-virtual {v1}, Lmediabrowser/model/dto/UserItemDataDto;->getUnplayedItemCount()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserItemDataDto;->getUnplayedItemCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2b

    .line 233
    iget-object v2, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserItemDataDto;->getUnplayedItemCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/presentation/MyImageCardView;->setUnwatchedCount(I)V

    goto :goto_1d

    .line 235
    :cond_2b
    iget-object v2, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/presentation/MyImageCardView;->setUnwatchedCount(I)V

    :cond_2c
    :goto_1d
    if-eqz v10, :cond_2d

    .line 240
    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v22

    if-lez v2, :cond_2d

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserItemDataDto;->getPlaybackPositionTicks()J

    move-result-wide v2

    cmp-long v2, v2, v22

    if-lez v2, :cond_2d

    .line 241
    iget-object v2, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserItemDataDto;->getPlaybackPositionTicks()J

    move-result-wide v5

    long-to-double v5, v5

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double v5, v5, v7

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v5, v3

    double-to-int v1, v5

    invoke-virtual {v2, v1}, Ltv/emby/embyatv/presentation/MyImageCardView;->setProgress(I)V

    goto :goto_1e

    .line 243
    :cond_2d
    iget-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    invoke-virtual {v1, v11}, Ltv/emby/embyatv/presentation/MyImageCardView;->setProgress(I)V

    .line 245
    :goto_1e
    iget-object v1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    iget v2, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    iget v3, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    invoke-virtual {v1, v2, v3}, Ltv/emby/embyatv/presentation/MyImageCardView;->setMainImageDimensions(II)V

    :cond_2e
    :goto_1f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x71b7788b -> :sswitch_7
        -0x711b8e54 -> :sswitch_6
        0x3caabb6 -> :sswitch_5
        0x4ed245b -> :sswitch_4
        0x72a55db -> :sswitch_3
        0x17833001 -> :sswitch_2
        0x46a98b6a -> :sswitch_1
        0x47d02176 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7d5e7041 -> :sswitch_1f
        -0x71b7788b -> :sswitch_1e
        -0x711b8e54 -> :sswitch_1d
        -0x70bbeb1d -> :sswitch_1c
        -0x6cef0992 -> :sswitch_1b
        -0x6ca0a8fd -> :sswitch_1a
        -0x6c991569 -> :sswitch_19
        -0x3e90e688 -> :sswitch_18
        -0x37420d5f -> :sswitch_17
        -0xc06ded0 -> :sswitch_16
        0x3caabb6 -> :sswitch_15
        0x4181963 -> :sswitch_14
        0x4714f10 -> :sswitch_13
        0x4984e12 -> :sswitch_12
        0x4ed245b -> :sswitch_11
        0x72a55db -> :sswitch_10
        0x86db453 -> :sswitch_f
        0x2ee5c88c -> :sswitch_e
        0x46a98b6a -> :sswitch_d
        0x46fb167e -> :sswitch_c
        0x4a5a0ccc -> :sswitch_b
        0x56e63b7d -> :sswitch_a
        0x73e0e5f2 -> :sswitch_9
        0x7dc2088e -> :sswitch_8
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method protected updateCardViewImage(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 434
    invoke-virtual {p0, p1, v0}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->updateCardViewImage(Ljava/lang/String;Z)V

    return-void
.end method

.method protected updateCardViewImage(Ljava/lang/String;Z)V
    .locals 3

    .line 438
    invoke-virtual {p0}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->validContext()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 443
    :try_start_0
    invoke-virtual {p0}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->setDefaultImage()V

    .line 444
    iget-object p1, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    invoke-virtual {p1}, Ltv/emby/embyatv/presentation/MyImageCardView;->getMainImageView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getCardBackgroundResource()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 447
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/presentation/CardPresenter;->access$000()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    .line 448
    invoke-virtual {p2}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 449
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iget v1, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardWidth:I

    iget v2, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->cardHeight:I

    .line 450
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    new-instance v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder$1;

    iget-object v1, p0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyImageCardView;

    .line 451
    invoke-virtual {v1}, Ltv/emby/embyatv/presentation/MyImageCardView;->getMainImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder$1;-><init>(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 497
    :catch_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string p2, "Image load aborted due to activity closing"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected validContext()Z
    .locals 2

    .line 424
    invoke-static {}, Ltv/emby/embyatv/presentation/CardPresenter;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/base/BaseActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/base/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
