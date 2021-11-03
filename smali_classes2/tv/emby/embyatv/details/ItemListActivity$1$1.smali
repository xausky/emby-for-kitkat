.class Ltv/emby/embyatv/details/ItemListActivity$1$1;
.super Ljava/lang/Object;
.source "ItemListActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ItemListActivity$1;->onKeyUp(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/details/ItemListActivity$1;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ItemListActivity$1;)V
    .locals 0

    .line 121
    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$1$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 124
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$1$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$1;

    iget-object v0, v0, Ltv/emby/embyatv/details/ItemListActivity$1;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/ItemListActivity;->access$100(Ltv/emby/embyatv/details/ItemListActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 125
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$1$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$1;

    iget-object v0, v0, Ltv/emby/embyatv/details/ItemListActivity$1;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/ItemListActivity;->access$100(Ltv/emby/embyatv/details/ItemListActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 127
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$1$1;->this$1:Ltv/emby/embyatv/details/ItemListActivity$1;

    iget-object v0, v0, Ltv/emby/embyatv/details/ItemListActivity$1;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltv/emby/embyatv/details/ItemListActivity;->access$002(Ltv/emby/embyatv/details/ItemListActivity;Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;)Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

    return-void
.end method
