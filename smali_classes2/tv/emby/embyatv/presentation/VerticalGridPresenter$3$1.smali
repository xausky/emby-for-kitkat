.class Ltv/emby/embyatv/presentation/VerticalGridPresenter$3$1;
.super Ljava/lang/Object;
.source "VerticalGridPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/presentation/VerticalGridPresenter$3;->onBind(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/presentation/VerticalGridPresenter$3;

.field final synthetic val$itemViewHolder:Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/presentation/VerticalGridPresenter$3;Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 0

    .line 223
    iput-object p1, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter$3$1;->this$1:Ltv/emby/embyatv/presentation/VerticalGridPresenter$3;

    iput-object p2, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter$3$1;->val$itemViewHolder:Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 226
    iget-object p1, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter$3$1;->this$1:Ltv/emby/embyatv/presentation/VerticalGridPresenter$3;

    iget-object p1, p1, Ltv/emby/embyatv/presentation/VerticalGridPresenter$3;->this$0:Ltv/emby/embyatv/presentation/VerticalGridPresenter;

    invoke-virtual {p1}, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->getOnItemViewClickedListener()Landroidx/leanback/widget/OnItemViewClickedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 228
    iget-object p1, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter$3$1;->this$1:Ltv/emby/embyatv/presentation/VerticalGridPresenter$3;

    iget-object p1, p1, Ltv/emby/embyatv/presentation/VerticalGridPresenter$3;->this$0:Ltv/emby/embyatv/presentation/VerticalGridPresenter;

    invoke-virtual {p1}, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->getOnItemViewClickedListener()Landroidx/leanback/widget/OnItemViewClickedListener;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter$3$1;->val$itemViewHolder:Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 229
    invoke-virtual {v0}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter$3$1;->val$itemViewHolder:Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-virtual {v1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 228
    invoke-interface {p1, v0, v1, v2, v2}, Landroidx/leanback/widget/OnItemViewClickedListener;->onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
