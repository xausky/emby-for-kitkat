.class Ltv/emby/embyatv/details/ItemListActivity$10;
.super Ljava/lang/Object;
.source "ItemListActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ItemListActivity;->showMenu(Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/ItemListActivity;

.field final synthetic val$ndx:I


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ItemListActivity;I)V
    .locals 0

    .line 436
    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$10;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    iput p2, p0, Ltv/emby/embyatv/details/ItemListActivity$10;->val$ndx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 439
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$10;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/ItemListActivity;->access$600(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/details/ListItemAdapter;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$10;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/ItemListActivity;->access$500(Ltv/emby/embyatv/details/ItemListActivity;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Ltv/emby/embyatv/details/ItemListActivity$10;->val$ndx:I

    iget-object v2, p0, Ltv/emby/embyatv/details/ItemListActivity$10;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {v2}, Ltv/emby/embyatv/details/ItemListActivity;->access$500(Ltv/emby/embyatv/details/ItemListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/details/ListItemAdapter;->play(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method
