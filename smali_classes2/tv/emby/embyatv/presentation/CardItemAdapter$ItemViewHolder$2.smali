.class Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder$2;
.super Ljava/lang/Object;
.source "CardItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;-><init>(Ltv/emby/embyatv/presentation/CardItemAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;

.field final synthetic val$this$0:Ltv/emby/embyatv/presentation/CardItemAdapter;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;Ltv/emby/embyatv/presentation/CardItemAdapter;)V
    .locals 0

    .line 179
    iput-object p1, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder$2;->this$1:Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;

    iput-object p2, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder$2;->val$this$0:Ltv/emby/embyatv/presentation/CardItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 182
    iget-object p1, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder$2;->this$1:Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;

    iget-object p1, p1, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->this$0:Ltv/emby/embyatv/presentation/CardItemAdapter;

    invoke-static {p1}, Ltv/emby/embyatv/presentation/CardItemAdapter;->access$400(Ltv/emby/embyatv/presentation/CardItemAdapter;)Ltv/emby/embyatv/presentation/ItemClickedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder$2;->this$1:Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;

    iget-object p1, p1, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->this$0:Ltv/emby/embyatv/presentation/CardItemAdapter;

    invoke-static {p1}, Ltv/emby/embyatv/presentation/CardItemAdapter;->access$400(Ltv/emby/embyatv/presentation/CardItemAdapter;)Ltv/emby/embyatv/presentation/ItemClickedListener;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder$2;->this$1:Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;

    iget-object v0, v0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->this$0:Ltv/emby/embyatv/presentation/CardItemAdapter;

    invoke-static {v0}, Ltv/emby/embyatv/presentation/CardItemAdapter;->access$300(Ltv/emby/embyatv/presentation/CardItemAdapter;)Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder$2;->this$1:Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;

    invoke-virtual {v1}, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/presentation/ItemClickedListener;->onItemClicked(Ltv/emby/embyatv/itemhandling/BaseRowItem;)V

    :cond_0
    return-void
.end method
