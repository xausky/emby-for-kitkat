.class Ltv/emby/embyatv/details/ItemListActivity$2;
.super Ljava/lang/Object;
.source "ItemListActivity.java"

# interfaces
.implements Ltv/emby/embyatv/base/IMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ItemListActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 195
    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$2;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ltv/emby/embyatv/base/CustomMessage;)V
    .locals 3

    .line 198
    sget-object v0, Ltv/emby/embyatv/base/CustomMessage;->ActionComplete:Ltv/emby/embyatv/base/CustomMessage;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$2;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    iget-object p1, p1, Ltv/emby/embyatv/details/ItemListActivity;->mSeriesTimerInfo:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    if-eqz p1, :cond_0

    const-string p1, "SeriesTimer"

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$2;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/ItemListActivity;->access$400(Ltv/emby/embyatv/details/ItemListActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 200
    iget-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$2;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/ItemListActivity;->access$700(Ltv/emby/embyatv/details/ItemListActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$2;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    iget-object v0, v0, Ltv/emby/embyatv/details/ItemListActivity;->mSeriesTimerInfo:Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {v0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/details/ItemListActivity$2$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/details/ItemListActivity$2$1;-><init>(Ltv/emby/embyatv/details/ItemListActivity$2;)V

    invoke-virtual {p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetLiveTvSeriesTimerAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    .line 210
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ltv/emby/embyatv/details/ItemListActivity$2$2;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/details/ItemListActivity$2$2;-><init>(Ltv/emby/embyatv/details/ItemListActivity$2;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
