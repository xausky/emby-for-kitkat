.class public Ltv/emby/embyatv/presentation/ChannelCardPresenter;
.super Landroidx/leanback/widget/Presenter;
.source "ChannelCardPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/presentation/ChannelCardPresenter$ViewHolder;
    }
.end annotation


# static fields
.field private static mViewParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/leanback/widget/Presenter;-><init>()V

    return-void
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    .line 19
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
    sget-object v0, Ltv/emby/embyatv/presentation/ChannelCardPresenter;->mViewParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 1

    .line 52
    instance-of v0, p2, Lmediabrowser/model/livetv/ChannelInfoDto;

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    check-cast p2, Lmediabrowser/model/livetv/ChannelInfoDto;

    .line 55
    check-cast p1, Ltv/emby/embyatv/presentation/ChannelCardPresenter$ViewHolder;

    .line 57
    invoke-virtual {p1, p2}, Ltv/emby/embyatv/presentation/ChannelCardPresenter$ViewHolder;->setItem(Lmediabrowser/model/livetv/ChannelInfoDto;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/presentation/ChannelCardPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Ltv/emby/embyatv/presentation/ChannelCardPresenter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Ltv/emby/embyatv/presentation/ChannelCardPresenter$ViewHolder;
    .locals 1

    .line 41
    sput-object p1, Ltv/emby/embyatv/presentation/ChannelCardPresenter;->mViewParent:Landroid/view/ViewGroup;

    .line 43
    new-instance p1, Ltv/emby/embyatv/presentation/MyChannelCardView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ChannelCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Ltv/emby/embyatv/presentation/MyChannelCardView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 45
    invoke-virtual {p1, v0}, Ltv/emby/embyatv/presentation/MyChannelCardView;->setFocusable(Z)V

    .line 46
    invoke-virtual {p1, v0}, Ltv/emby/embyatv/presentation/MyChannelCardView;->setFocusableInTouchMode(Z)V

    .line 47
    new-instance v0, Ltv/emby/embyatv/presentation/ChannelCardPresenter$ViewHolder;

    invoke-direct {v0, p1}, Ltv/emby/embyatv/presentation/ChannelCardPresenter$ViewHolder;-><init>(Landroid/view/View;)V

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
