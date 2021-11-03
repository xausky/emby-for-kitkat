.class Ltv/emby/embyatv/details/ItemListActivity$15;
.super Ltv/emby/embyatv/details/ListItemAdapter$RowSelectedListener;
.source "ItemListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ItemListActivity;->setBaseItem(Lmediabrowser/model/dto/BaseItemDto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/ItemListActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ItemListActivity;)V
    .locals 0

    .line 552
    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$15;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-direct {p0}, Ltv/emby/embyatv/details/ListItemAdapter$RowSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRowSelected(Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;)V
    .locals 1

    .line 555
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$15;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ltv/emby/embyatv/details/ItemListActivity;->access$002(Ltv/emby/embyatv/details/ItemListActivity;Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;)Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

    .line 556
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$15;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/ItemListActivity;->access$100(Ltv/emby/embyatv/details/ItemListActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
