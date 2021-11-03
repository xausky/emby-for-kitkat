.class Ltv/emby/embyatv/details/ListItemAdapter$8;
.super Ljava/lang/Object;
.source "ListItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ListItemAdapter;->addButtons(Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;Lmediabrowser/model/dto/BaseItemDto;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/ListItemAdapter;

.field final synthetic val$item:Lmediabrowser/model/dto/BaseItemDto;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ListItemAdapter;Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 0

    .line 437
    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$8;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    iput-object p2, p0, Ltv/emby/embyatv/details/ListItemAdapter$8;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 440
    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$8;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object p1

    .line 441
    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$8;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {v0}, Ltv/emby/embyatv/details/ListItemAdapter;->access$700(Ltv/emby/embyatv/details/ListItemAdapter;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/ListItemAdapter$8;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/details/ListItemAdapter$8;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {v2}, Ltv/emby/embyatv/details/ListItemAdapter;->access$700(Ltv/emby/embyatv/details/ListItemAdapter;)Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lmediabrowser/model/dto/UserItemDataDto;->getIsFavorite()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-instance v3, Ltv/emby/embyatv/details/ListItemAdapter$8$1;

    invoke-direct {v3, p0}, Ltv/emby/embyatv/details/ListItemAdapter$8$1;-><init>(Ltv/emby/embyatv/details/ListItemAdapter$8;)V

    invoke-virtual {v0, v1, v2, p1, v3}, Lmediabrowser/apiinteraction/ApiClient;->UpdateFavoriteStatusAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method
