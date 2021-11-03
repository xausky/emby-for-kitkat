.class Ltv/emby/embyatv/details/FullDetailsActivity$18;
.super Ljava/lang/Object;
.source "FullDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity;->deleteItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/FullDetailsActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V
    .locals 0

    .line 1115
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$18;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1118
    new-instance p1, Ltv/emby/embyatv/util/DelayedMessage;

    iget-object p2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$18;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p2}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1700(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/FullDetailsActivity;

    move-result-object p2

    const/16 v0, 0x5dc

    invoke-direct {p1, p2, v0}, Ltv/emby/embyatv/util/DelayedMessage;-><init>(Landroid/content/Context;I)V

    .line 1119
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p2

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$18;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLastPlayedItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/details/FullDetailsActivity$18$1;

    invoke-direct {v1, p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity$18$1;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity$18;Ltv/emby/embyatv/util/DelayedMessage;)V

    invoke-virtual {p2, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->DeleteItem(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method
