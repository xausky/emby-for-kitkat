.class Ltv/emby/embyatv/details/ItemListActivity$13;
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

    .line 469
    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$13;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    iput p2, p0, Ltv/emby/embyatv/details/ItemListActivity$13;->val$ndx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 472
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$13;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/ItemListActivity;->access$500(Ltv/emby/embyatv/details/ItemListActivity;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Ltv/emby/embyatv/details/ItemListActivity$13;->val$ndx:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->playInstantMix(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
