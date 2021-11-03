.class final Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
.implements Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
.implements Lcom/google/android/exoplayer2/text/TextOutput;
.implements Lcom/google/android/exoplayer2/metadata/MetadataOutput;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;
.implements Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$EventListener;
.implements Lcom/google/android/exoplayer2/Player$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/SimpleExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V
    .locals 0

    .line 1598
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/SimpleExoPlayer$1;)V
    .locals 0

    .line 1598
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;-><init>(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V

    return-void
.end method


# virtual methods
.method public executePlayerCommand(I)V
    .locals 2

    .line 1815
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1700(Lcom/google/android/exoplayer2/SimpleExoPlayer;ZI)V

    return-void
.end method

.method public onAudioBecomingNoisy()V
    .locals 2

    .line 1822
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 8

    .line 1712
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 1713
    invoke-interface/range {v2 .. v7}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAudioDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 2

    .line 1736
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    .line 1737
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;->onAudioDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    goto :goto_0

    .line 1739
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1002(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 1740
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$602(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 1741
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$802(Lcom/google/android/exoplayer2/SimpleExoPlayer;I)I

    return-void
.end method

.method public onAudioEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 2

    .line 1685
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$602(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 1686
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    .line 1687
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;->onAudioEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAudioInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 2

    .line 1720
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1002(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 1721
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    .line 1722
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;->onAudioInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAudioSessionId(I)V
    .locals 3

    .line 1693
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$800(Lcom/google/android/exoplayer2/SimpleExoPlayer;)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 1696
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$802(Lcom/google/android/exoplayer2/SimpleExoPlayer;I)I

    .line 1697
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$900(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/AudioListener;

    .line 1700
    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1701
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/audio/AudioListener;->onAudioSessionId(I)V

    goto :goto_0

    .line 1704
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    .line 1705
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;->onAudioSessionId(I)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onAudioSinkUnderrun(IJJ)V
    .locals 8

    .line 1729
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 1730
    invoke-interface/range {v2 .. v7}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;->onAudioSinkUnderrun(IJJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 1748
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1102(Lcom/google/android/exoplayer2/SimpleExoPlayer;Ljava/util/List;)Ljava/util/List;

    .line 1749
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/TextOutput;

    .line 1750
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/text/TextOutput;->onCues(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDroppedFrames(IJ)V
    .locals 2

    .line 1638
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    .line 1639
    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onDroppedFrames(IJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 2

    .line 1829
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1800(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1830
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1900(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1831
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1800(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->add(I)V

    .line 1832
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1902(Lcom/google/android/exoplayer2/SimpleExoPlayer;Z)Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 1833
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1900(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1834
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1800(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 1835
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1902(Lcom/google/android/exoplayer2/SimpleExoPlayer;Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 2

    .line 1758
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1300(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/metadata/MetadataOutput;

    .line 1759
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/metadata/MetadataOutput;->onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlaybackParametersChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public synthetic onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlayerError(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 0

    .line 1842
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$2000(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public onRenderedFirstFrame(Landroid/view/Surface;)V
    .locals 2

    .line 1662
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$500(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Landroid/view/Surface;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1663
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$400(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/video/VideoListener;

    .line 1664
    invoke-interface {v1}, Lcom/google/android/exoplayer2/video/VideoListener;->onRenderedFirstFrame()V

    goto :goto_0

    .line 1667
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    .line 1668
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onRenderedFirstFrame(Landroid/view/Surface;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public synthetic onRepeatModeChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onRepeatModeChanged(Lcom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public synthetic onSeekProcessed()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onSeekProcessed(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method public synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onShuffleModeEnabledChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 1785
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1400(Lcom/google/android/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;Z)V

    .line 1786
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1500(Lcom/google/android/exoplayer2/SimpleExoPlayer;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 1796
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1400(Lcom/google/android/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;Z)V

    .line 1797
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-static {p1, v1, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1500(Lcom/google/android/exoplayer2/SimpleExoPlayer;II)V

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1791
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1500(Lcom/google/android/exoplayer2/SimpleExoPlayer;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/Timeline;I)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 8

    .line 1622
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 1623
    invoke-interface/range {v2 .. v7}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onVideoDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 2

    .line 1674
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    .line 1675
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    goto :goto_0

    .line 1677
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$302(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 1678
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$102(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-void
.end method

.method public onVideoEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 2

    .line 1613
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$102(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 1614
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    .line 1615
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onVideoInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 2

    .line 1630
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$302(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 1631
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    .line 1632
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 3

    .line 1646
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$400(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/video/VideoListener;

    .line 1649
    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1650
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/video/VideoListener;->onVideoSizeChanged(IIIF)V

    goto :goto_0

    .line 1654
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    .line 1655
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoSizeChanged(IIIF)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setVolumeMultiplier(F)V
    .locals 0

    .line 1810
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1600(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1772
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {p1, p3, p4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1500(Lcom/google/android/exoplayer2/SimpleExoPlayer;II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1767
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1400(Lcom/google/android/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;Z)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1777
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1400(Lcom/google/android/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;Z)V

    .line 1778
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {p1, v0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$1500(Lcom/google/android/exoplayer2/SimpleExoPlayer;II)V

    return-void
.end method
