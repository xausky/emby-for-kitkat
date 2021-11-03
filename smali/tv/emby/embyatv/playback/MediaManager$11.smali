.class Ltv/emby/embyatv/playback/MediaManager$11;
.super Lmediabrowser/apiinteraction/Response;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/MediaManager;->playWithLegacyMethod(Lmediabrowser/model/dto/BaseItemDto;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Ltv/emby/embyatv/api/StreamInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/MediaManager;

.field final synthetic val$item:Lmediabrowser/model/dto/BaseItemDto;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/MediaManager;Lmediabrowser/model/dto/BaseItemDto;I)V
    .locals 0

    .line 798
    iput-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$11;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    iput-object p2, p0, Ltv/emby/embyatv/playback/MediaManager$11;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    iput p3, p0, Ltv/emby/embyatv/playback/MediaManager$11;->val$pos:I

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 830
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to play audio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 798
    check-cast p1, Ltv/emby/embyatv/api/StreamInfo;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/MediaManager$11;->onResponse(Ltv/emby/embyatv/api/StreamInfo;)V

    return-void
.end method

.method public onResponse(Ltv/emby/embyatv/api/StreamInfo;)V
    .locals 10

    .line 801
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager$11;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager$11;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    invoke-static {v0, v1}, Ltv/emby/embyatv/playback/MediaManager;->access$1802(Ltv/emby/embyatv/playback/MediaManager;Lmediabrowser/model/dto/BaseItemDto;)Lmediabrowser/model/dto/BaseItemDto;

    .line 802
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager$11;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {v0, p1}, Ltv/emby/embyatv/playback/MediaManager;->access$1902(Ltv/emby/embyatv/playback/MediaManager;Ltv/emby/embyatv/api/StreamInfo;)Ltv/emby/embyatv/api/StreamInfo;

    .line 803
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager$11;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    iget v1, p0, Ltv/emby/embyatv/playback/MediaManager$11;->val$pos:I

    invoke-static {v0, v1}, Ltv/emby/embyatv/playback/MediaManager;->access$1202(Ltv/emby/embyatv/playback/MediaManager;I)I

    .line 804
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager$11;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {v0}, Ltv/emby/embyatv/playback/MediaManager;->access$2000(Ltv/emby/embyatv/playback/MediaManager;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 805
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Playback attempt via mpv player of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ltv/emby/embyatv/api/StreamInfo;->getMediaUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 806
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager$11;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {p1}, Ltv/emby/embyatv/api/StreamInfo;->getMediaUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltv/emby/embyatv/playback/MediaManager;->access$2100(Ltv/emby/embyatv/playback/MediaManager;Ljava/lang/String;)V

    goto :goto_0

    .line 809
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Playback attempt via native player of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ltv/emby/embyatv/api/StreamInfo;->getMediaUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 810
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager$11;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {p1}, Ltv/emby/embyatv/api/StreamInfo;->getMediaUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltv/emby/embyatv/playback/MediaManager;->access$2200(Ltv/emby/embyatv/playback/MediaManager;Ljava/lang/String;)V

    .line 814
    :goto_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$11;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {p1}, Ltv/emby/embyatv/playback/MediaManager;->access$1200(Ltv/emby/embyatv/playback/MediaManager;)I

    move-result p1

    if-nez p1, :cond_1

    .line 816
    iget-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$11;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->createManagedAudioQueue()V

    .line 819
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$11;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/MediaManager;->updateCurrentAudioItemPlaying(Z)V

    .line 820
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ltv/emby/embyatv/TvApp;->setLastMusicPlayback(J)V

    .line 822
    iget-object v4, p0, Ltv/emby/embyatv/playback/MediaManager$11;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    iget-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$11;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {p1}, Ltv/emby/embyatv/playback/MediaManager;->access$1500(Ltv/emby/embyatv/playback/MediaManager;)J

    move-result-wide v2

    const-wide/16 v5, 0x2710

    mul-long v5, v5, v2

    iget-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$11;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {p1}, Ltv/emby/embyatv/playback/MediaManager;->access$1900(Ltv/emby/embyatv/playback/MediaManager;)Ltv/emby/embyatv/api/StreamInfo;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v7

    iget-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$11;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {p1}, Ltv/emby/embyatv/playback/MediaManager;->access$1900(Ltv/emby/embyatv/playback/MediaManager;)Ltv/emby/embyatv/api/StreamInfo;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/api/StreamInfo;->getPlaySessionId()Ljava/lang/String;

    move-result-object v8

    iget-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$11;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {p1}, Ltv/emby/embyatv/playback/MediaManager;->access$1900(Ltv/emby/embyatv/playback/MediaManager;)Ltv/emby/embyatv/api/StreamInfo;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/api/StreamInfo;->getPlayMethod()Lmediabrowser/model/session/PlayMethod;

    move-result-object v9

    invoke-static/range {v4 .. v9}, Ltv/emby/embyatv/util/Utils;->ReportStart(Lmediabrowser/model/dto/BaseItemDto;JLmediabrowser/model/dto/MediaSourceInfo;Ljava/lang/String;Lmediabrowser/model/session/PlayMethod;)V

    .line 823
    iget-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$11;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {p1}, Ltv/emby/embyatv/playback/MediaManager;->access$2300(Ltv/emby/embyatv/playback/MediaManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/playback/AudioEventListener;

    .line 824
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firing playback state change listener for item start. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ltv/emby/embyatv/playback/MediaManager$11;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {v4}, Ltv/emby/embyatv/playback/MediaManager;->access$1800(Ltv/emby/embyatv/playback/MediaManager;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v4

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 825
    sget-object v2, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->PLAYING:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    iget-object v3, p0, Ltv/emby/embyatv/playback/MediaManager$11;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {v3}, Ltv/emby/embyatv/playback/MediaManager;->access$1800(Ltv/emby/embyatv/playback/MediaManager;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ltv/emby/embyatv/playback/AudioEventListener;->onPlaybackStateChange(Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;Lmediabrowser/model/dto/BaseItemDto;)V

    goto :goto_1

    :cond_2
    return-void
.end method
