.class Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder$1;
.super Ljava/lang/Object;
.source "ListItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;-><init>(Ltv/emby/embyatv/details/ListItemAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

.field final synthetic val$this$0:Ltv/emby/embyatv/details/ListItemAdapter;

.field final synthetic val$us:Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;Ltv/emby/embyatv/details/ListItemAdapter;Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;)V
    .locals 0

    .line 887
    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder$1;->this$1:Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

    iput-object p2, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder$1;->val$this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    iput-object p3, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder$1;->val$us:Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const p2, 0x7f080073

    .line 891
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 892
    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder$1;->this$1:Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

    iget-object p1, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {p1}, Ltv/emby/embyatv/details/ListItemAdapter;->access$1300(Ltv/emby/embyatv/details/ListItemAdapter;)Ltv/emby/embyatv/details/ListItemAdapter$RowSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder$1;->this$1:Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

    iget-object p1, p1, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {p1}, Ltv/emby/embyatv/details/ListItemAdapter;->access$1300(Ltv/emby/embyatv/details/ListItemAdapter;)Ltv/emby/embyatv/details/ListItemAdapter$RowSelectedListener;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder$1;->val$us:Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/details/ListItemAdapter$RowSelectedListener;->onRowSelected(Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;)V

    goto :goto_0

    .line 895
    :cond_0
    iget-object p2, p0, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder$1;->this$1:Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

    iget-object p2, p2, Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;->normalBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method
