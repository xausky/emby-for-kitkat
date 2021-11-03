.class public Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;
.super Landroidx/leanback/widget/Presenter$ViewHolder;
.source "VerticalGridPresenter.java"

# interfaces
.implements Ltv/emby/embyatv/ui/IGridViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/presentation/VerticalGridPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field final mGridView:Landroidx/leanback/widget/VerticalGridView;

.field mInitialized:Z

.field final mItemBridgeAdapter:Landroidx/leanback/widget/ItemBridgeAdapter;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/VerticalGridView;)V
    .locals 1

    .line 45
    invoke-direct {p0, p1}, Landroidx/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 40
    new-instance v0, Landroidx/leanback/widget/ItemBridgeAdapter;

    invoke-direct {v0}, Landroidx/leanback/widget/ItemBridgeAdapter;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;->mItemBridgeAdapter:Landroidx/leanback/widget/ItemBridgeAdapter;

    .line 46
    iput-object p1, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;->mGridView:Landroidx/leanback/widget/VerticalGridView;

    return-void
.end method


# virtual methods
.method public bridge synthetic getGridView()Landroidx/leanback/widget/BaseGridView;
    .locals 1

    .line 39
    invoke-virtual {p0}, Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    return-object v0
.end method

.method public getGridView()Landroidx/leanback/widget/VerticalGridView;
    .locals 1

    .line 50
    iget-object v0, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;->mGridView:Landroidx/leanback/widget/VerticalGridView;

    return-object v0
.end method
