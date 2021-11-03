.class Ltv/emby/embyatv/playback/MediaManager$ExoEventListener;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/playback/MediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExoEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/MediaManager;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/MediaManager;)V
    .locals 0

    .line 1067
    iput-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$ExoEventListener;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 5

    .line 1112
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "***** Got error from Exo player: %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1113
    iget-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$ExoEventListener;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {p1}, Ltv/emby/embyatv/playback/MediaManager;->access$2500(Ltv/emby/embyatv/playback/MediaManager;)V

    .line 1114
    iget-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$ExoEventListener;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {p1}, Ltv/emby/embyatv/playback/MediaManager;->access$2600(Ltv/emby/embyatv/playback/MediaManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1115
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    const v0, 0x7f100418

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 1118
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$ExoEventListener;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {p1, v2}, Ltv/emby/embyatv/playback/MediaManager;->access$2602(Ltv/emby/embyatv/playback/MediaManager;Z)Z

    .line 1119
    iget-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$ExoEventListener;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager$ExoEventListener;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentAudioItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager$ExoEventListener;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {v1}, Ltv/emby/embyatv/playback/MediaManager;->access$1200(Ltv/emby/embyatv/playback/MediaManager;)I

    move-result v1

    invoke-static {p1, v0, v1}, Ltv/emby/embyatv/playback/MediaManager;->access$2700(Ltv/emby/embyatv/playback/MediaManager;Lmediabrowser/model/dto/BaseItemDto;I)V

    :goto_0
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 5

    .line 1075
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "******** Exoplayer state change to: %s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1079
    :pswitch_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$ExoEventListener;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->onComplete()V

    goto :goto_0

    :pswitch_1
    if-eqz p1, :cond_0

    .line 1084
    iget-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$ExoEventListener;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {p1}, Ltv/emby/embyatv/playback/MediaManager;->access$2400(Ltv/emby/embyatv/playback/MediaManager;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onSeekProcessed()V
    .locals 0

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/Timeline;I)V

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    return-void
.end method
