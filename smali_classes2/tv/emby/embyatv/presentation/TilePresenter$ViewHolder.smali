.class Ltv/emby/embyatv/presentation/TilePresenter$ViewHolder;
.super Landroidx/leanback/widget/Presenter$ViewHolder;
.source "TilePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/presentation/TilePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field private mCardView:Ltv/emby/embyatv/presentation/MyTileCardView;

.field private mItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Landroidx/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 52
    check-cast p1, Ltv/emby/embyatv/presentation/MyTileCardView;

    iput-object p1, p0, Ltv/emby/embyatv/presentation/TilePresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyTileCardView;

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/presentation/TilePresenter$ViewHolder;)Ltv/emby/embyatv/presentation/MyTileCardView;
    .locals 0

    .line 45
    iget-object p0, p0, Ltv/emby/embyatv/presentation/TilePresenter$ViewHolder;->mCardView:Ltv/emby/embyatv/presentation/MyTileCardView;

    return-object p0
.end method


# virtual methods
.method public getItem()Ltv/emby/embyatv/itemhandling/BaseRowItem;
    .locals 1

    .line 62
    iget-object v0, p0, Ltv/emby/embyatv/presentation/TilePresenter$ViewHolder;->mItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    return-object v0
.end method

.method public setItem(Ltv/emby/embyatv/itemhandling/BaseRowItem;)V
    .locals 0

    .line 58
    iput-object p1, p0, Ltv/emby/embyatv/presentation/TilePresenter$ViewHolder;->mItem:Ltv/emby/embyatv/itemhandling/BaseRowItem;

    return-void
.end method
