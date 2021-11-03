.class Ltv/emby/embyatv/details/FullDetailsActivity$2;
.super Ljava/lang/Object;
.source "FullDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity;->onResume()V
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

    .line 227
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 231
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLastPlayedItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$400(Ltv/emby/embyatv/details/FullDetailsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Episode"

    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLastPlayback()Ljava/util/Calendar;

    move-result-object v0

    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$600(Ltv/emby/embyatv/details/FullDetailsActivity;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Episode"

    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getLastPlayedItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v2, "Re-loading after new episode or direct playback"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLastPlayedItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$700(Ltv/emby/embyatv/details/FullDetailsActivity;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->setLastPlayedItem(Lmediabrowser/model/dto/BaseItemDto;)V

    goto :goto_0

    .line 236
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v2, "Updating info after playback"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/details/FullDetailsActivity$2$1;

    invoke-direct {v3, p0}, Ltv/emby/embyatv/details/FullDetailsActivity$2$1;-><init>(Ltv/emby/embyatv/details/FullDetailsActivity$2;)V

    invoke-virtual {v0, v1, v2, v3}, Lmediabrowser/apiinteraction/ApiClient;->GetItemAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    :goto_0
    return-void
.end method
