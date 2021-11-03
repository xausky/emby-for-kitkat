.class public Ltv/emby/embyatv/presentation/TilePresenter;
.super Landroidx/leanback/widget/Presenter;
.source "TilePresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/presentation/TilePresenter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TilePresenter"

.field private static mViewParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/leanback/widget/Presenter;-><init>()V

    return-void
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    .line 42
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
    sget-object v0, Ltv/emby/embyatv/presentation/TilePresenter;->mViewParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 2

    .line 94
    instance-of v0, p2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    check-cast p2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    .line 96
    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 98
    :cond_1
    check-cast p1, Ltv/emby/embyatv/presentation/TilePresenter$ViewHolder;

    .line 99
    invoke-virtual {p1, p2}, Ltv/emby/embyatv/presentation/TilePresenter$ViewHolder;->setItem(Ltv/emby/embyatv/itemhandling/BaseRowItem;)V

    .line 101
    invoke-static {p1}, Ltv/emby/embyatv/presentation/TilePresenter$ViewHolder;->access$000(Ltv/emby/embyatv/presentation/TilePresenter$ViewHolder;)Ltv/emby/embyatv/presentation/MyTileCardView;

    move-result-object v0

    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getCardName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/presentation/MyTileCardView;->setTitleText(Ljava/lang/String;)V

    .line 102
    invoke-static {p1}, Ltv/emby/embyatv/presentation/TilePresenter$ViewHolder;->access$000(Ltv/emby/embyatv/presentation/TilePresenter$ViewHolder;)Ltv/emby/embyatv/presentation/MyTileCardView;

    move-result-object p1

    invoke-virtual {p2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getDefaultImageResource()I

    move-result p2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/presentation/MyTileCardView;->setIconResource(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/presentation/TilePresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Ltv/emby/embyatv/presentation/TilePresenter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Ltv/emby/embyatv/presentation/TilePresenter$ViewHolder;
    .locals 2

    .line 70
    sput-object p1, Ltv/emby/embyatv/presentation/TilePresenter;->mViewParent:Landroid/view/ViewGroup;

    .line 72
    new-instance p1, Ltv/emby/embyatv/presentation/MyTileCardView;

    invoke-static {}, Ltv/emby/embyatv/presentation/TilePresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Ltv/emby/embyatv/presentation/MyTileCardView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 73
    invoke-virtual {p1, v0}, Ltv/emby/embyatv/presentation/MyTileCardView;->setFocusable(Z)V

    .line 74
    invoke-virtual {p1, v0}, Ltv/emby/embyatv/presentation/MyTileCardView;->setFocusableInTouchMode(Z)V

    .line 75
    new-instance v0, Ltv/emby/embyatv/presentation/TilePresenter$ViewHolder;

    invoke-direct {v0, p1}, Ltv/emby/embyatv/presentation/TilePresenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 76
    iget-object p1, v0, Ltv/emby/embyatv/presentation/TilePresenter$ViewHolder;->view:Landroid/view/View;

    new-instance v1, Ltv/emby/embyatv/presentation/TilePresenter$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/presentation/TilePresenter$1;-><init>(Ltv/emby/embyatv/presentation/TilePresenter;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

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
