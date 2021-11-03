.class Ltv/emby/embyatv/playback/VideoManager$ExoEventListener;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/playback/VideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExoEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/VideoManager;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/VideoManager;)V
    .locals 0

    .line 892
    iput-object p1, p0, Ltv/emby/embyatv/playback/VideoManager$ExoEventListener;->this$0:Ltv/emby/embyatv/playback/VideoManager;

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
    .locals 4

    .line 948
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "***** Got error from Exo player: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 949
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager$ExoEventListener;->this$0:Ltv/emby/embyatv/playback/VideoManager;

    iget-object p1, p1, Ltv/emby/embyatv/playback/VideoManager;->errorListener:Ltv/emby/embyatv/playback/PlaybackListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager$ExoEventListener;->this$0:Ltv/emby/embyatv/playback/VideoManager;

    iget-object p1, p1, Ltv/emby/embyatv/playback/VideoManager;->errorListener:Ltv/emby/embyatv/playback/PlaybackListener;

    invoke-interface {p1}, Ltv/emby/embyatv/playback/PlaybackListener;->onEvent()V

    .line 950
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager$ExoEventListener;->this$0:Ltv/emby/embyatv/playback/VideoManager;

    invoke-static {p1}, Ltv/emby/embyatv/playback/VideoManager;->access$600(Ltv/emby/embyatv/playback/VideoManager;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 5

    .line 900
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

    .line 904
    :pswitch_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager$ExoEventListener;->this$0:Ltv/emby/embyatv/playback/VideoManager;

    iget-object p1, p1, Ltv/emby/embyatv/playback/VideoManager;->completeListener:Ltv/emby/embyatv/playback/PlaybackListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager$ExoEventListener;->this$0:Ltv/emby/embyatv/playback/VideoManager;

    iget-object p1, p1, Ltv/emby/embyatv/playback/VideoManager;->completeListener:Ltv/emby/embyatv/playback/PlaybackListener;

    invoke-interface {p1}, Ltv/emby/embyatv/playback/PlaybackListener;->onEvent()V

    goto :goto_0

    :pswitch_1
    if-eqz p1, :cond_1

    .line 909
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager$ExoEventListener;->this$0:Ltv/emby/embyatv/playback/VideoManager;

    iget-object p1, p1, Ltv/emby/embyatv/playback/VideoManager;->preparedListener:Ltv/emby/embyatv/playback/PlaybackListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager$ExoEventListener;->this$0:Ltv/emby/embyatv/playback/VideoManager;

    iget-object p1, p1, Ltv/emby/embyatv/playback/VideoManager;->preparedListener:Ltv/emby/embyatv/playback/PlaybackListener;

    invoke-interface {p1}, Ltv/emby/embyatv/playback/PlaybackListener;->onEvent()V

    .line 910
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager$ExoEventListener;->this$0:Ltv/emby/embyatv/playback/VideoManager;

    invoke-static {p1}, Ltv/emby/embyatv/playback/VideoManager;->access$000(Ltv/emby/embyatv/playback/VideoManager;)V

    :cond_1
    :goto_0
    return-void

    nop

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
    .locals 3

    .line 934
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "*** Setting track info"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 935
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager$ExoEventListener;->this$0:Ltv/emby/embyatv/playback/VideoManager;

    invoke-static {p1, p2}, Ltv/emby/embyatv/playback/VideoManager;->access$102(Ltv/emby/embyatv/playback/VideoManager;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    .line 938
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager$ExoEventListener;->this$0:Ltv/emby/embyatv/playback/VideoManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Ltv/emby/embyatv/playback/VideoManager;->access$202(Ltv/emby/embyatv/playback/VideoManager;Ljava/util/List;)Ljava/util/List;

    .line 939
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager$ExoEventListener;->this$0:Ltv/emby/embyatv/playback/VideoManager;

    invoke-static {p1, p2}, Ltv/emby/embyatv/playback/VideoManager;->access$302(Ltv/emby/embyatv/playback/VideoManager;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    .line 940
    :goto_0
    iget p1, p2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->length:I

    if-ge v1, p1, :cond_2

    .line 941
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager$ExoEventListener;->this$0:Ltv/emby/embyatv/playback/VideoManager;

    invoke-static {p1}, Ltv/emby/embyatv/playback/VideoManager;->access$400(Ltv/emby/embyatv/playback/VideoManager;)Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/Player;->getRendererType(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager$ExoEventListener;->this$0:Ltv/emby/embyatv/playback/VideoManager;

    invoke-static {p1}, Ltv/emby/embyatv/playback/VideoManager;->access$200(Ltv/emby/embyatv/playback/VideoManager;)Ljava/util/List;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 942
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager$ExoEventListener;->this$0:Ltv/emby/embyatv/playback/VideoManager;

    invoke-static {p1}, Ltv/emby/embyatv/playback/VideoManager;->access$400(Ltv/emby/embyatv/playback/VideoManager;)Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/Player;->getRendererType(I)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Ltv/emby/embyatv/playback/VideoManager$ExoEventListener;->this$0:Ltv/emby/embyatv/playback/VideoManager;

    invoke-static {p1, v1}, Ltv/emby/embyatv/playback/VideoManager;->access$502(Ltv/emby/embyatv/playback/VideoManager;I)I

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
