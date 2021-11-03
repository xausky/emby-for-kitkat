.class Ltv/emby/embyatv/presentation/VerticalGridPresenter$3;
.super Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;
.source "VerticalGridPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/presentation/VerticalGridPresenter;->initializeGridViewHolder(Ltv/emby/embyatv/presentation/VerticalGridPresenter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/presentation/VerticalGridPresenter;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/presentation/VerticalGridPresenter;)V
    .locals 0

    .line 217
    iput-object p1, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter$3;->this$0:Ltv/emby/embyatv/presentation/VerticalGridPresenter;

    invoke-direct {p0}, Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 1

    .line 245
    iget-object p1, p1, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method public onBind(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 2

    .line 221
    iget-object v0, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter$3;->this$0:Ltv/emby/embyatv/presentation/VerticalGridPresenter;

    invoke-virtual {v0}, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->getOnItemViewClickedListener()Landroidx/leanback/widget/OnItemViewClickedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    .line 223
    new-instance v1, Ltv/emby/embyatv/presentation/VerticalGridPresenter$3$1;

    invoke-direct {v1, p0, p1}, Ltv/emby/embyatv/presentation/VerticalGridPresenter$3$1;-><init>(Ltv/emby/embyatv/presentation/VerticalGridPresenter$3;Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onUnbind(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 1

    .line 238
    iget-object v0, p0, Ltv/emby/embyatv/presentation/VerticalGridPresenter$3;->this$0:Ltv/emby/embyatv/presentation/VerticalGridPresenter;

    invoke-virtual {v0}, Ltv/emby/embyatv/presentation/VerticalGridPresenter;->getOnItemViewClickedListener()Landroidx/leanback/widget/OnItemViewClickedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
