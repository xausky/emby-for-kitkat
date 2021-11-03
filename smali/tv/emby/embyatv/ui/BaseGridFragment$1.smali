.class Ltv/emby/embyatv/ui/BaseGridFragment$1;
.super Ljava/lang/Object;
.source "BaseGridFragment.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/ui/BaseGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/BaseGridFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/BaseGridFragment;)V
    .locals 0

    .line 172
    iput-object p1, p0, Ltv/emby/embyatv/ui/BaseGridFragment$1;->this$0:Ltv/emby/embyatv/ui/BaseGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 2

    .line 176
    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment$1;->this$0:Ltv/emby/embyatv/ui/BaseGridFragment;

    invoke-static {v0}, Ltv/emby/embyatv/ui/BaseGridFragment;->access$000(Ltv/emby/embyatv/ui/BaseGridFragment;)Ltv/emby/embyatv/ui/IGridViewHolder;

    move-result-object v0

    invoke-interface {v0}, Ltv/emby/embyatv/ui/IGridViewHolder;->getGridView()Landroidx/leanback/widget/BaseGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/BaseGridView;->getSelectedPosition()I

    move-result v0

    .line 177
    iget-object v1, p0, Ltv/emby/embyatv/ui/BaseGridFragment$1;->this$0:Ltv/emby/embyatv/ui/BaseGridFragment;

    invoke-static {v1, v0}, Ltv/emby/embyatv/ui/BaseGridFragment;->access$100(Ltv/emby/embyatv/ui/BaseGridFragment;I)V

    .line 178
    iget-object v1, p0, Ltv/emby/embyatv/ui/BaseGridFragment$1;->this$0:Ltv/emby/embyatv/ui/BaseGridFragment;

    invoke-static {v1}, Ltv/emby/embyatv/ui/BaseGridFragment;->access$200(Ltv/emby/embyatv/ui/BaseGridFragment;)Landroidx/leanback/widget/OnItemViewSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    .line 179
    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment$1;->this$0:Ltv/emby/embyatv/ui/BaseGridFragment;

    invoke-static {v0}, Ltv/emby/embyatv/ui/BaseGridFragment;->access$200(Ltv/emby/embyatv/ui/BaseGridFragment;)Landroidx/leanback/widget/OnItemViewSelectedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/leanback/widget/OnItemViewSelectedListener;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 172
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Ltv/emby/embyatv/ui/BaseGridFragment$1;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method
