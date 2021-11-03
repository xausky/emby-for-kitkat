.class Ltv/emby/embyatv/details/ItemListActivity$9;
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

    .line 426
    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$9;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    iput p2, p0, Ltv/emby/embyatv/details/ItemListActivity$9;->val$ndx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 429
    new-instance p1, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$9;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/ItemListActivity;->access$500(Ltv/emby/embyatv/details/ItemListActivity;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Ltv/emby/embyatv/details/ItemListActivity$9;->val$ndx:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/dto/BaseItemDto;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Ltv/emby/embyatv/itemhandling/BaseRowItem;-><init>(ILmediabrowser/model/dto/BaseItemDto;)V

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$9;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/ItemListActivity;->access$1400(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v0}, Ltv/emby/embyatv/itemhandling/ItemLauncher;->launch(Ltv/emby/embyatv/itemhandling/BaseRowItem;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILandroid/app/Activity;)V

    const/4 p1, 0x1

    return p1
.end method
