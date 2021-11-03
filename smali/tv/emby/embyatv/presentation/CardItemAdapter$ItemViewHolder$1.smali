.class Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder$1;
.super Ljava/lang/Object;
.source "CardItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 167
    iput-object p1, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder$1;->this$1:Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;

    iput-object p2, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder$1;->val$this$0:Ltv/emby/embyatv/presentation/CardItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 171
    iget-object p1, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder$1;->this$1:Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;

    iget-object p1, p1, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->mFocusIndicator:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    iget-object p1, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder$1;->this$1:Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;

    iget-object p1, p1, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->this$0:Ltv/emby/embyatv/presentation/CardItemAdapter;

    invoke-static {p1}, Ltv/emby/embyatv/presentation/CardItemAdapter;->access$200(Ltv/emby/embyatv/presentation/CardItemAdapter;)Ltv/emby/embyatv/presentation/ItemSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder$1;->this$1:Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;

    iget-object p1, p1, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->this$0:Ltv/emby/embyatv/presentation/CardItemAdapter;

    invoke-static {p1}, Ltv/emby/embyatv/presentation/CardItemAdapter;->access$200(Ltv/emby/embyatv/presentation/CardItemAdapter;)Ltv/emby/embyatv/presentation/ItemSelectedListener;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder$1;->this$1:Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;

    iget-object p2, p2, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->this$0:Ltv/emby/embyatv/presentation/CardItemAdapter;

    invoke-static {p2}, Ltv/emby/embyatv/presentation/CardItemAdapter;->access$300(Ltv/emby/embyatv/presentation/CardItemAdapter;)Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    move-result-object p2

    iget-object v0, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder$1;->this$1:Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;

    invoke-virtual {v0}, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p2, v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/presentation/ItemSelectedListener;->onItemSelected(Ltv/emby/embyatv/itemhandling/BaseRowItem;)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder$1;->this$1:Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;

    iget-object p1, p1, Ltv/emby/embyatv/presentation/CardItemAdapter$ItemViewHolder;->mFocusIndicator:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
