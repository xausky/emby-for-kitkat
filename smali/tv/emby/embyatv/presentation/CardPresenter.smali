.class public Ltv/emby/embyatv/presentation/CardPresenter;
.super Landroidx/leanback/widget/Presenter;
.source "CardPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CardPresenter"

.field private static mViewParent:Landroid/view/ViewGroup;


# instance fields
.field private mImageType:Ljava/lang/String;

.field private mShowInfo:Z

.field private mShowLiveProgress:Z

.field private mStaticHeight:I

.field private mStaticWidth:I

.field private mUseCards:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 45
    invoke-direct {p0}, Landroidx/leanback/widget/Presenter;-><init>()V

    const/16 v0, 0x10e

    .line 35
    iput v0, p0, Ltv/emby/embyatv/presentation/CardPresenter;->mStaticHeight:I

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Ltv/emby/embyatv/presentation/CardPresenter;->mStaticWidth:I

    const-string v1, "0"

    .line 37
    iput-object v1, p0, Ltv/emby/embyatv/presentation/CardPresenter;->mImageType:Ljava/lang/String;

    const/4 v1, 0x1

    .line 39
    iput-boolean v1, p0, Ltv/emby/embyatv/presentation/CardPresenter;->mShowInfo:Z

    .line 40
    iput-boolean v0, p0, Ltv/emby/embyatv/presentation/CardPresenter;->mShowLiveProgress:Z

    .line 42
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_use_cards"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ltv/emby/embyatv/presentation/CardPresenter;->mUseCards:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>()V

    .line 50
    iput-boolean p1, p0, Ltv/emby/embyatv/presentation/CardPresenter;->mShowInfo:Z

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0, v0}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZIIZ)V

    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3, v0}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZIIZ)V

    return-void
.end method

.method public constructor <init>(ZIIZ)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(Z)V

    .line 73
    iput p2, p0, Ltv/emby/embyatv/presentation/CardPresenter;->mStaticHeight:I

    .line 74
    iput p3, p0, Ltv/emby/embyatv/presentation/CardPresenter;->mStaticWidth:I

    .line 75
    iput-boolean p4, p0, Ltv/emby/embyatv/presentation/CardPresenter;->mShowLiveProgress:Z

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;II)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p3, p4}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZII)V

    .line 60
    iput-object p2, p0, Ltv/emby/embyatv/presentation/CardPresenter;->mImageType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;IIZ)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZLjava/lang/String;II)V

    .line 55
    iput-boolean p5, p0, Ltv/emby/embyatv/presentation/CardPresenter;->mShowLiveProgress:Z

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .line 33
    invoke-static {}, Ltv/emby/embyatv/presentation/CardPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    .line 79
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Ltv/emby/embyatv/presentation/CardPresenter;->mViewParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 9

    .line 552
    instance-of v0, p2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    if-nez v0, :cond_0

    return-void

    .line 553
    :cond_0
    check-cast p2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    .line 554
    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 556
    :cond_1
    check-cast p1, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;

    .line 557
    iget-object v3, p0, Ltv/emby/embyatv/presentation/CardPresenter;->mImageType:Ljava/lang/String;

    const/16 v4, 0xf0

    const/16 v5, 0x12c

    iget v6, p0, Ltv/emby/embyatv/presentation/CardPresenter;->mStaticHeight:I

    iget v7, p0, Ltv/emby/embyatv/presentation/CardPresenter;->mStaticWidth:I

    iget-boolean v8, p0, Ltv/emby/embyatv/presentation/CardPresenter;->mShowLiveProgress:Z

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v1 .. v8}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->setItem(Ltv/emby/embyatv/itemhandling/BaseRowItem;Ljava/lang/String;IIIIZ)V

    .line 560
    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->updateIfNeeded()V

    .line 562
    invoke-static {p1}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->access$200(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;)Ltv/emby/embyatv/presentation/MyImageCardView;

    move-result-object v0

    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getCardName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/presentation/MyImageCardView;->setTitleText(Ljava/lang/CharSequence;)V

    .line 563
    invoke-static {p1}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->access$200(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;)Ltv/emby/embyatv/presentation/MyImageCardView;

    move-result-object v0

    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getSubText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/presentation/MyImageCardView;->setContentText(Ljava/lang/CharSequence;)V

    const-string v0, "0"

    .line 564
    iget-object v1, p0, Ltv/emby/embyatv/presentation/CardPresenter;->mImageType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->access$200(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;)Ltv/emby/embyatv/presentation/MyImageCardView;

    move-result-object v0

    invoke-virtual {v0, p2}, Ltv/emby/embyatv/presentation/MyImageCardView;->setOverlayInfo(Ltv/emby/embyatv/itemhandling/BaseRowItem;)V

    .line 565
    :cond_2
    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 566
    invoke-static {p1}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->access$200(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;)Ltv/emby/embyatv/presentation/MyImageCardView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/presentation/MyImageCardView;->setPlayingIndicator(Z)V

    goto :goto_0

    .line 568
    :cond_3
    invoke-static {p1}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->access$200(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;)Ltv/emby/embyatv/presentation/MyImageCardView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/presentation/MyImageCardView;->setPlayingIndicator(Z)V

    .line 569
    invoke-static {p1}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->access$200(Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;)Ltv/emby/embyatv/presentation/MyImageCardView;

    move-result-object v0

    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBadgeImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/presentation/MyImageCardView;->setBadgeImage(Landroid/graphics/drawable/Drawable;)V

    .line 572
    :goto_0
    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardPresenter;->mImageType:Ljava/lang/String;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {p1}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->getCardHeight()I

    move-result v2

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getImageUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->updateCardViewImage(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/presentation/CardPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;
    .locals 4

    .line 527
    sput-object p1, Ltv/emby/embyatv/presentation/CardPresenter;->mViewParent:Landroid/view/ViewGroup;

    .line 529
    new-instance p1, Ltv/emby/embyatv/presentation/MyImageCardView;

    invoke-static {}, Ltv/emby/embyatv/presentation/CardPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Ltv/emby/embyatv/presentation/CardPresenter;->mShowInfo:Z

    iget v2, p0, Ltv/emby/embyatv/presentation/CardPresenter;->mStaticWidth:I

    const/4 v3, 0x1

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p1, v0, v1, v2}, Ltv/emby/embyatv/presentation/MyImageCardView;-><init>(Landroid/content/Context;ZZ)V

    .line 530
    invoke-virtual {p1, v3}, Ltv/emby/embyatv/presentation/MyImageCardView;->setFocusable(Z)V

    .line 531
    invoke-virtual {p1, v3}, Ltv/emby/embyatv/presentation/MyImageCardView;->setFocusableInTouchMode(Z)V

    .line 532
    iget-boolean v0, p0, Ltv/emby/embyatv/presentation/CardPresenter;->mUseCards:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getCardBackgroundResource()I

    move-result v0

    goto :goto_1

    :cond_1
    const v0, 0x7f0600e9

    :goto_1
    invoke-virtual {p1, v0}, Ltv/emby/embyatv/presentation/MyImageCardView;->setBackgroundResource(I)V

    .line 533
    new-instance v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;

    invoke-direct {v0, p1}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 534
    iget-object p1, v0, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->view:Landroid/view/View;

    new-instance v1, Ltv/emby/embyatv/presentation/CardPresenter$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/presentation/CardPresenter$1;-><init>(Ltv/emby/embyatv/presentation/CardPresenter;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object v0
.end method

.method public onUnbindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)V
    .locals 0

    .line 580
    check-cast p1, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;

    invoke-virtual {p1}, Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;->resetCardViewImage()V

    return-void
.end method

.method public onViewAttachedToWindow(Landroidx/leanback/widget/Presenter$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public setStaticHeight(I)V
    .locals 0

    .line 82
    iput p1, p0, Ltv/emby/embyatv/presentation/CardPresenter;->mStaticHeight:I

    return-void
.end method
