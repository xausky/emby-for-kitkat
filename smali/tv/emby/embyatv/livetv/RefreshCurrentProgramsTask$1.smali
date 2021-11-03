.class Ltv/emby/embyatv/livetv/RefreshCurrentProgramsTask$1;
.super Lmediabrowser/apiinteraction/Response;
.source "RefreshCurrentProgramsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/livetv/RefreshCurrentProgramsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/livetv/RefreshCurrentProgramsTask;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/livetv/RefreshCurrentProgramsTask;)V
    .locals 0

    .line 15
    iput-object p1, p0, Ltv/emby/embyatv/livetv/RefreshCurrentProgramsTask$1;->this$0:Ltv/emby/embyatv/livetv/RefreshCurrentProgramsTask;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 8

    const/4 p1, 0x0

    .line 19
    :try_start_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "*** Updating current program information..."

    new-array v2, p1, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getAllChannels()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 21
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "All Channels is null trying to refresh programs"

    new-array v2, p1, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 24
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getAllChannels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmediabrowser/model/livetv/ChannelInfoDto;

    .line 25
    sget v3, Ltv/emby/embyatv/livetv/RefreshCurrentProgramsTask;->MAX_CHANNELS:I

    if-le v1, v3, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 28
    invoke-virtual {v2}, Lmediabrowser/model/livetv/ChannelInfoDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 30
    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 32
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v3

    invoke-virtual {v2}, Lmediabrowser/model/livetv/ChannelInfoDto;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v5

    invoke-virtual {v5}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v5

    invoke-virtual {v5}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ltv/emby/embyatv/livetv/RefreshCurrentProgramsTask$1$1;

    invoke-direct {v6, p0, v2}, Ltv/emby/embyatv/livetv/RefreshCurrentProgramsTask$1$1;-><init>(Ltv/emby/embyatv/livetv/RefreshCurrentProgramsTask$1;Lmediabrowser/model/livetv/ChannelInfoDto;)V

    invoke-virtual {v3, v4, v5, v6}, Lmediabrowser/apiinteraction/ApiClient;->GetItemAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    goto :goto_0

    .line 42
    :cond_3
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v2

    const-string v3, "Null channel in all channels"

    new-array v4, p1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 47
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v1

    const-string v2, "Error refreshing programs"

    new-array p1, p1, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0, p1}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/livetv/RefreshCurrentProgramsTask$1;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
