.class Ltv/emby/embyatv/playback/PlaybackController$17;
.super Lmediabrowser/apiinteraction/Response;
.source "PlaybackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/PlaybackController;->updateTvProgramInfo(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/livetv/ChannelInfoDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/PlaybackController;

.field final synthetic val$channel:Lmediabrowser/model/dto/BaseItemDto;

.field final synthetic val$force:Z


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/PlaybackController;ZLmediabrowser/model/dto/BaseItemDto;)V
    .locals 0

    .line 1268
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iput-boolean p2, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->val$force:Z

    iput-object p3, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->val$channel:Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 1302
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$2602(Ltv/emby/embyatv/playback/PlaybackController;Z)Z

    .line 1303
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v2, "Error updating program"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, p1, v1}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1268
    check-cast p1, Lmediabrowser/model/livetv/ChannelInfoDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/PlaybackController$17;->onResponse(Lmediabrowser/model/livetv/ChannelInfoDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/livetv/ChannelInfoDto;)V
    .locals 8

    .line 1271
    invoke-virtual {p1}, Lmediabrowser/model/livetv/ChannelInfoDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 1272
    iget-boolean v2, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->val$force:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->val$channel:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->val$channel:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1273
    :cond_0
    iget-object v2, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v2}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v2

    const-string v3, "*** Updating current playback program information to %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-interface {v2, v3, v0}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1274
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->val$channel:Lmediabrowser/model/dto/BaseItemDto;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->val$channel:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->val$channel:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/dto/BaseItemDto;->setName(Ljava/lang/String;)V

    .line 1275
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->val$channel:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/dto/BaseItemDto;->setPremiereDate(Ljava/util/Date;)V

    .line 1276
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->val$channel:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/dto/BaseItemDto;->setEndDate(Ljava/util/Date;)V

    .line 1277
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->val$channel:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getOfficialRating()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/dto/BaseItemDto;->setOfficialRating(Ljava/lang/String;)V

    .line 1278
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->val$channel:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getOverview()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/dto/BaseItemDto;->setOverview(Ljava/lang/String;)V

    .line 1279
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->val$channel:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/dto/BaseItemDto;->setRunTimeTicks(Ljava/lang/Long;)V

    .line 1280
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->val$channel:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getProductionYear()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/dto/BaseItemDto;->setProductionYear(Ljava/lang/Integer;)V

    .line 1281
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->val$channel:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/dto/BaseItemDto;->setStartDate(Ljava/util/Date;)V

    .line 1282
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->val$channel:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0, p1}, Lmediabrowser/model/dto/BaseItemDto;->setCurrentProgram(Lmediabrowser/model/dto/BaseItemDto;)V

    .line 1283
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    div-long/2addr v2, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    goto :goto_1

    :cond_3
    const-wide/16 v2, -0x1

    .line 1284
    :goto_1
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object p1, p1, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {p1, v2, v3}, Ltv/emby/embyatv/playback/VideoManager;->setMetaDuration(J)V

    .line 1286
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->val$channel:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v0

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->val$channel:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    goto :goto_2

    :cond_4
    move-wide v6, v4

    :goto_2
    invoke-static {p1, v6, v7}, Ltv/emby/embyatv/playback/PlaybackController;->access$2202(Ltv/emby/embyatv/playback/PlaybackController;J)J

    .line 1287
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->val$channel:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->val$channel:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    goto :goto_3

    :cond_5
    move-wide v6, v4

    :goto_3
    invoke-static {p1, v6, v7}, Ltv/emby/embyatv/playback/PlaybackController;->access$2302(Ltv/emby/embyatv/playback/PlaybackController;J)J

    .line 1288
    iget-boolean p1, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->val$force:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {p1}, Ltv/emby/embyatv/playback/PlaybackController;->access$300(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->updateDisplay()V

    .line 1289
    :cond_6
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {p1}, Ltv/emby/embyatv/playback/PlaybackController;->access$300(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$2400(Ltv/emby/embyatv/playback/PlaybackController;)J

    move-result-wide v6

    sub-long/2addr v2, v6

    invoke-virtual {p1, v2, v3}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->updateEndTime(J)V

    .line 1290
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {p1}, Ltv/emby/embyatv/playback/PlaybackController;->access$300(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setLiveStartTime(J)V

    .line 1293
    iget-boolean p1, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->val$force:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {p1}, Ltv/emby/embyatv/playback/PlaybackController;->access$2500(Ltv/emby/embyatv/playback/PlaybackController;)V

    goto :goto_5

    .line 1295
    :cond_7
    iget-object v2, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v2}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v2

    const-string v3, "*** Current playback program info not changed due to no or the same info returned. %s"

    new-array v0, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_8
    const-string p1, "No program info"

    :goto_4
    aput-object p1, v0, v1

    invoke-interface {v2, v3, v0}, Lmediabrowser/model/logging/ILogger;->Warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1297
    :cond_9
    :goto_5
    iget-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$17;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {p1, v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$2602(Ltv/emby/embyatv/playback/PlaybackController;Z)Z

    return-void
.end method
