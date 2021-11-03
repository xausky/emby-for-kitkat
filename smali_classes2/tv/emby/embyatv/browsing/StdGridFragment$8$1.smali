.class Ltv/emby/embyatv/browsing/StdGridFragment$8$1;
.super Ljava/lang/Object;
.source "StdGridFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/StdGridFragment$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/browsing/StdGridFragment$8;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/StdGridFragment$8;)V
    .locals 0

    .line 593
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$8$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 596
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$8$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$8;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$8;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$8$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$8;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/StdGridFragment$8;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-static {v1}, Ltv/emby/embyatv/browsing/StdGridFragment;->access$1200(Ltv/emby/embyatv/browsing/StdGridFragment;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->setSortBy(Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$8$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$8;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$8;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/StdGridFragment;->getGridPresenter()Ltv/emby/embyatv/presentation/IGridPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltv/emby/embyatv/presentation/IGridPresenter;->setPosition(I)V

    .line 598
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$8$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$8;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$8;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    :cond_0
    const/4 v0, 0x1

    .line 600
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 601
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$8$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$8;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment$8;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/browsing/StdGridFragment;->updateDisplayPrefs()V

    return v0
.end method
