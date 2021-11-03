.class public Ltv/emby/embyatv/presentation/InfoCardPresenter;
.super Landroidx/leanback/widget/Presenter;
.source "InfoCardPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/presentation/InfoCardPresenter$ViewHolder;
    }
.end annotation


# static fields
.field private static mViewParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/leanback/widget/Presenter;-><init>()V

    return-void
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    .line 21
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
    sget-object v0, Ltv/emby/embyatv/presentation/InfoCardPresenter;->mViewParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 1

    .line 55
    instance-of v0, p2, Lmediabrowser/model/entities/MediaStream;

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    check-cast p2, Lmediabrowser/model/entities/MediaStream;

    .line 58
    check-cast p1, Ltv/emby/embyatv/presentation/InfoCardPresenter$ViewHolder;

    .line 60
    invoke-virtual {p1, p2}, Ltv/emby/embyatv/presentation/InfoCardPresenter$ViewHolder;->setItem(Lmediabrowser/model/entities/MediaStream;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/presentation/InfoCardPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Ltv/emby/embyatv/presentation/InfoCardPresenter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Ltv/emby/embyatv/presentation/InfoCardPresenter$ViewHolder;
    .locals 2

    .line 43
    sput-object p1, Ltv/emby/embyatv/presentation/InfoCardPresenter;->mViewParent:Landroid/view/ViewGroup;

    .line 45
    new-instance p1, Ltv/emby/embyatv/presentation/MyInfoCardView;

    invoke-static {}, Ltv/emby/embyatv/presentation/InfoCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Ltv/emby/embyatv/presentation/MyInfoCardView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p1, v0}, Ltv/emby/embyatv/presentation/MyInfoCardView;->setFocusable(Z)V

    .line 48
    invoke-virtual {p1, v0}, Ltv/emby/embyatv/presentation/MyInfoCardView;->setFocusableInTouchMode(Z)V

    .line 49
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getCardBackgroundResource()I

    move-result v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/presentation/MyInfoCardView;->setBackgroundResource(I)V

    .line 50
    :cond_0
    new-instance v0, Ltv/emby/embyatv/presentation/InfoCardPresenter$ViewHolder;

    invoke-direct {v0, p1}, Ltv/emby/embyatv/presentation/InfoCardPresenter$ViewHolder;-><init>(Landroid/view/View;)V

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
