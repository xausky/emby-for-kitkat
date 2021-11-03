.class Ltv/emby/embyatv/details/ItemListActivity$6;
.super Ljava/lang/Object;
.source "ItemListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ItemListActivity;->processRowClicked(Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/ItemListActivity;

.field final synthetic val$item:Lmediabrowser/model/dto/BaseItemDto;

.field final synthetic val$row:Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ItemListActivity;Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;)V
    .locals 0

    .line 335
    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$6;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    iput-object p2, p0, Ltv/emby/embyatv/details/ItemListActivity$6;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    iput-object p3, p0, Ltv/emby/embyatv/details/ItemListActivity$6;->val$row:Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 338
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$6;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/ItemListActivity;->access$700(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/details/ItemListActivity$6;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getTimerId()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ltv/emby/embyatv/details/ItemListActivity$6$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/details/ItemListActivity$6$1;-><init>(Ltv/emby/embyatv/details/ItemListActivity$6;)V

    invoke-virtual {p1, p2, v0}, Lmediabrowser/apiinteraction/ApiClient;->CancelLiveTvTimerAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method
