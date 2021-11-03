.class public Ltv/emby/embyatv/presentation/GridButtonPresenter;
.super Landroidx/leanback/widget/Presenter;
.source "GridButtonPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/presentation/GridButtonPresenter$ViewHolder;
    }
.end annotation


# static fields
.field private static mViewParent:Landroid/view/ViewGroup;


# instance fields
.field private mCardHeight:I

.field private mCardWidth:I

.field private mShowInfo:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroidx/leanback/widget/Presenter;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Ltv/emby/embyatv/presentation/GridButtonPresenter;->mShowInfo:Z

    const/16 v0, 0xdc

    .line 18
    iput v0, p0, Ltv/emby/embyatv/presentation/GridButtonPresenter;->mCardWidth:I

    .line 19
    iput v0, p0, Ltv/emby/embyatv/presentation/GridButtonPresenter;->mCardHeight:I

    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ltv/emby/embyatv/presentation/GridButtonPresenter;-><init>()V

    .line 26
    iput-boolean p1, p0, Ltv/emby/embyatv/presentation/GridButtonPresenter;->mShowInfo:Z

    .line 27
    iput p2, p0, Ltv/emby/embyatv/presentation/GridButtonPresenter;->mCardWidth:I

    .line 28
    iput p3, p0, Ltv/emby/embyatv/presentation/GridButtonPresenter;->mCardHeight:I

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .line 15
    invoke-static {}, Ltv/emby/embyatv/presentation/GridButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    .line 32
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
    sget-object v0, Ltv/emby/embyatv/presentation/GridButtonPresenter;->mViewParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 2

    .line 96
    instance-of v0, p2, Ltv/emby/embyatv/ui/GridButton;

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    check-cast p2, Ltv/emby/embyatv/ui/GridButton;

    .line 99
    check-cast p1, Ltv/emby/embyatv/presentation/GridButtonPresenter$ViewHolder;

    .line 101
    iget v0, p0, Ltv/emby/embyatv/presentation/GridButtonPresenter;->mCardWidth:I

    iget v1, p0, Ltv/emby/embyatv/presentation/GridButtonPresenter;->mCardHeight:I

    invoke-virtual {p1, p2, v0, v1}, Ltv/emby/embyatv/presentation/GridButtonPresenter$ViewHolder;->setItem(Ltv/emby/embyatv/ui/GridButton;II)V

    .line 104
    invoke-static {p1}, Ltv/emby/embyatv/presentation/GridButtonPresenter$ViewHolder;->access$100(Ltv/emby/embyatv/presentation/GridButtonPresenter$ViewHolder;)Ltv/emby/embyatv/presentation/MyImageCardView;

    move-result-object v0

    invoke-virtual {p2}, Ltv/emby/embyatv/ui/GridButton;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/presentation/MyImageCardView;->setTitleText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-static {p1}, Ltv/emby/embyatv/presentation/GridButtonPresenter$ViewHolder;->access$100(Ltv/emby/embyatv/presentation/GridButtonPresenter$ViewHolder;)Ltv/emby/embyatv/presentation/MyImageCardView;

    move-result-object v0

    invoke-virtual {p2}, Ltv/emby/embyatv/ui/GridButton;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/presentation/MyImageCardView;->setOverlayText(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Ltv/emby/embyatv/ui/GridButton;->getImageIndex()I

    move-result p2

    invoke-static {p1, p2}, Ltv/emby/embyatv/presentation/GridButtonPresenter$ViewHolder;->access$200(Ltv/emby/embyatv/presentation/GridButtonPresenter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/presentation/GridButtonPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Ltv/emby/embyatv/presentation/GridButtonPresenter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Ltv/emby/embyatv/presentation/GridButtonPresenter$ViewHolder;
    .locals 4

    .line 82
    sput-object p1, Ltv/emby/embyatv/presentation/GridButtonPresenter;->mViewParent:Landroid/view/ViewGroup;

    .line 84
    new-instance p1, Ltv/emby/embyatv/presentation/MyImageCardView;

    invoke-static {}, Ltv/emby/embyatv/presentation/GridButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Ltv/emby/embyatv/presentation/GridButtonPresenter;->mShowInfo:Z

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Ltv/emby/embyatv/presentation/MyImageCardView;-><init>(Landroid/content/Context;ZZ)V

    .line 85
    invoke-virtual {p1, v2}, Ltv/emby/embyatv/presentation/MyImageCardView;->setFocusable(Z)V

    .line 86
    invoke-virtual {p1, v2}, Ltv/emby/embyatv/presentation/MyImageCardView;->setFocusableInTouchMode(Z)V

    .line 87
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_use_cards"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const v1, 0x7f0600e9

    .line 88
    invoke-virtual {p1, v1}, Ltv/emby/embyatv/presentation/MyImageCardView;->setBackgroundResource(I)V

    .line 89
    invoke-virtual {p1}, Ltv/emby/embyatv/presentation/MyImageCardView;->getMainImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getCardBackgroundResource()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getCardBackgroundResource()I

    move-result v1

    :cond_0
    invoke-virtual {p1, v1}, Ltv/emby/embyatv/presentation/MyImageCardView;->setInfoAreaBackgroundResource(I)V

    .line 91
    new-instance v0, Ltv/emby/embyatv/presentation/GridButtonPresenter$ViewHolder;

    invoke-direct {v0, p1}, Ltv/emby/embyatv/presentation/GridButtonPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public onUnbindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onViewAttachedToWindow(Landroidx/leanback/widget/Presenter$ViewHolder;)V
    .locals 0

    return-void
.end method
