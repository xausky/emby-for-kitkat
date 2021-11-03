.class public abstract Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;
.super Lcom/google/android/exoplayer2/BaseRenderer;
.source "SimpleDecoderVideoRenderer.java"


# static fields
.field private static final REINITIALIZATION_STATE_NONE:I = 0x0

.field private static final REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REINITIALIZATION_STATE_WAIT_END_OF_STREAM:I = 0x2


# instance fields
.field private final allowedJoiningTimeMs:J

.field private buffersInCodecCount:I

.field private consecutiveDroppedFrameCount:I

.field private decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/decoder/SimpleDecoder<",
            "Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;",
            "+",
            "Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;",
            "+",
            "Lcom/google/android/exoplayer2/video/VideoDecoderException;",
            ">;"
        }
    .end annotation
.end field

.field protected decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

.field private decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private decoderReceivedBuffers:Z

.field private decoderReinitializationState:I

.field private drmResourcesAcquired:Z

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private droppedFrameAccumulationStartTimeMs:J

.field private droppedFrames:I

.field private final eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field private final flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private final formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/TimedValueQueue<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private initialPositionUs:J

.field private inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

.field private inputFormat:Lcom/google/android/exoplayer2/Format;

.field private inputStreamEnded:Z

.field private joiningDeadlineMs:J

.field private lastRenderTimeUs:J

.field private final maxDroppedFramesToNotify:I

.field private outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

.field private outputBufferRenderer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private outputFormat:Lcom/google/android/exoplayer2/Format;

.field private outputMode:I

.field private outputStreamEnded:Z

.field private outputStreamOffsetUs:J

.field private final playClearSamplesWithoutKeys:Z

.field private renderedFirstFrame:Z

.field private reportedHeight:I

.field private reportedWidth:I

.field private sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private surface:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private waitingForFirstSampleInFormat:Z

.field private waitingForKeys:Z


# direct methods
.method protected constructor <init>(JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;ILcom/google/android/exoplayer2/drm/DrmSessionManager;Z)V
    .locals 1
    .param p3    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/video/VideoRendererEventListener;",
            "I",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 144
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 145
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->allowedJoiningTimeMs:J

    .line 146
    iput p5, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->maxDroppedFramesToNotify:I

    .line 147
    iput-object p6, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 148
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->playClearSamplesWithoutKeys:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 149
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->joiningDeadlineMs:J

    .line 150
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->clearReportedVideoSize()V

    .line 151
    new-instance p1, Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    .line 152
    invoke-static {}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->newFlagsOnlyInstance()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 153
    new-instance p1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-direct {p1, p3, p4}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    const/4 p1, 0x0

    .line 154
    iput p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderReinitializationState:I

    const/4 p1, -0x1

    .line 155
    iput p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputMode:I

    return-void
.end method

.method private clearRenderedFirstFrame()V
    .locals 1

    const/4 v0, 0x0

    .line 916
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->renderedFirstFrame:Z

    return-void
.end method

.method private clearReportedVideoSize()V
    .locals 1

    const/4 v0, -0x1

    .line 933
    iput v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->reportedWidth:I

    .line 934
    iput v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->reportedHeight:I

    return-void
.end method

.method private drainOutputBuffer(JJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Lcom/google/android/exoplayer2/video/VideoDecoderException;
        }
    .end annotation

    .line 778
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 779
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->dequeueOutputBuffer()Lcom/google/android/exoplayer2/decoder/OutputBuffer;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    .line 780
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    if-nez v0, :cond_0

    return v1

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    iget v3, v3, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->skippedOutputBufferCount:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 784
    iget v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->buffersInCodecCount:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    iget v2, v2, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->skippedOutputBufferCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->buffersInCodecCount:I

    .line 787
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->isEndOfStream()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 788
    iget p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderReinitializationState:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 790
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->releaseDecoder()V

    .line 791
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->maybeInitDecoder()V

    goto :goto_0

    .line 793
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->release()V

    .line 794
    iput-object v2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    const/4 p1, 0x1

    .line 795
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputStreamEnded:Z

    :goto_0
    return v1

    .line 800
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->processOutputBuffer(JJ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 802
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    iget-wide p2, p2, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->timeUs:J

    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->onProcessedOutputBuffer(J)V

    .line 803
    iput-object v2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    :cond_4
    return p1
.end method

.method private feedInputBuffer()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/video/VideoDecoderException;,
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderReinitializationState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputStreamEnded:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    if-nez v0, :cond_1

    .line 710
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->dequeueInputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    .line 711
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    if-nez v0, :cond_1

    return v1

    .line 716
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderReinitializationState:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 717
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;->setFlags(I)V

    .line 718
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    iget-object v4, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 719
    iput-object v3, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    .line 720
    iput v2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderReinitializationState:I

    return v1

    .line 725
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->getFormatHolder()Lcom/google/android/exoplayer2/FormatHolder;

    move-result-object v0

    .line 726
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->waitingForKeys:Z

    if-eqz v2, :cond_3

    const/4 v2, -0x4

    goto :goto_0

    .line 730
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v2

    :goto_0
    const/4 v5, -0x3

    if-ne v2, v5, :cond_4

    return v1

    :cond_4
    const/4 v5, -0x5

    if-ne v2, v5, :cond_5

    .line 737
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)V

    return v4

    .line 740
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 741
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputStreamEnded:Z

    .line 742
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 743
    iput-object v3, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    return v1

    .line 746
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;->isEncrypted()Z

    move-result v0

    .line 747
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->shouldWaitForKeys(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->waitingForKeys:Z

    .line 748
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->waitingForKeys:Z

    if-eqz v0, :cond_7

    return v1

    .line 751
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->waitingForFirstSampleInFormat:Z

    if-eqz v0, :cond_8

    .line 752
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    iget-wide v5, v2, Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;->timeUs:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, v5, v6, v2}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    .line 753
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->waitingForFirstSampleInFormat:Z

    .line 755
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;->flip()V

    .line 756
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    iput-object v1, v0, Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 757
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->onQueueInputBuffer(Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;)V

    .line 758
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 759
    iget v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->buffersInCodecCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->buffersInCodecCount:I

    .line 760
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderReceivedBuffers:Z

    .line 761
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    .line 762
    iput-object v3, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    return v4

    :cond_9
    :goto_1
    return v1
.end method

.method private hasOutput()Z
    .locals 2

    .line 870
    iget v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isBufferLate(J)Z
    .locals 2

    const-wide/16 v0, -0x7530

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isBufferVeryLate(J)Z
    .locals 2

    const-wide/32 v0, -0x7a120

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private maybeInitDecoder()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 665
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    if-eqz v0, :cond_0

    return-void

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->setDecoderDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    const/4 v0, 0x0

    .line 672
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_2

    .line 673
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getMediaCrypto()Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    move-result-object v0

    if-nez v0, :cond_2

    .line 675
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 687
    :cond_2
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 688
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v3, v0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    .line 689
    iget v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputMode:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->setDecoderOutputMode(I)V

    .line 690
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 691
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    .line 692
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    sub-long v7, v5, v1

    move-object v3, p0

    .line 691
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->onDecoderInitialized(Ljava/lang/String;JJ)V

    .line 695
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I
    :try_end_0
    .catch Lcom/google/android/exoplayer2/video/VideoDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 697
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->createRendererException(Ljava/lang/Exception;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method private maybeNotifyDroppedFrames()V
    .locals 6

    .line 957
    iget v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->droppedFrames:I

    if-lez v0, :cond_0

    .line 958
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 959
    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    sub-long v2, v0, v2

    .line 960
    iget-object v4, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v5, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->droppedFrames:I

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->droppedFrames(IJ)V

    const/4 v2, 0x0

    .line 961
    iput v2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->droppedFrames:I

    .line 962
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    :cond_0
    return-void
.end method

.method private maybeNotifyRenderedFirstFrame()V
    .locals 2

    .line 920
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->renderedFirstFrame:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 921
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->renderedFirstFrame:Z

    .line 922
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method private maybeNotifyVideoSizeChanged(II)V
    .locals 3

    .line 938
    iget v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->reportedWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->reportedHeight:I

    if-eq v0, p2, :cond_1

    .line 939
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->reportedWidth:I

    .line 940
    iput p2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->reportedHeight:I

    .line 941
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(IIIF)V

    :cond_1
    return-void
.end method

.method private maybeRenotifyRenderedFirstFrame()V
    .locals 2

    .line 927
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->renderedFirstFrame:Z

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method private maybeRenotifyVideoSizeChanged()V
    .locals 5

    .line 947
    iget v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->reportedWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->reportedHeight:I

    if-eq v0, v1, :cond_1

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->reportedWidth:I

    iget v2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->reportedHeight:I

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(IIIF)V

    :cond_1
    return-void
.end method

.method private onOutputChanged()V
    .locals 2

    .line 875
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 877
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->clearRenderedFirstFrame()V

    .line 878
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 879
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->setJoiningDeadlineMs()V

    :cond_0
    return-void
.end method

.method private onOutputRemoved()V
    .locals 0

    .line 884
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->clearReportedVideoSize()V

    .line 885
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->clearRenderedFirstFrame()V

    return-void
.end method

.method private onOutputReset()V
    .locals 0

    .line 891
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 892
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->maybeRenotifyRenderedFirstFrame()V

    return-void
.end method

.method private processOutputBuffer(JJ)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Lcom/google/android/exoplayer2/video/VideoDecoderException;
        }
    .end annotation

    .line 820
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->initialPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 821
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->initialPositionUs:J

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->timeUs:J

    sub-long/2addr v0, p1

    .line 825
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->hasOutput()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    .line 827
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->isBufferLate(J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 828
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->skipOutputBuffer(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;)V

    return v4

    :cond_1
    return v3

    .line 834
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    iget-wide v5, v2, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->timeUs:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputStreamOffsetUs:J

    sub-long/2addr v5, v7

    .line 835
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v2, v5, v6}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Format;

    if-eqz v2, :cond_3

    .line 837
    iput-object v2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    .line 840
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v7, v7, v9

    .line 841
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->getState()I

    move-result v2

    const/4 v9, 0x2

    if-ne v2, v9, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 842
    :goto_0
    iget-boolean v9, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->renderedFirstFrame:Z

    if-eqz v9, :cond_b

    if-eqz v2, :cond_5

    iget-wide v9, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->lastRenderTimeUs:J

    sub-long/2addr v7, v9

    .line 844
    invoke-virtual {p0, v0, v1, v7, v8}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->shouldForceRenderOutputBuffer(JJ)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_a

    .line 849
    iget-wide v7, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->initialPositionUs:J

    cmp-long v2, p1, v7

    if-nez v2, :cond_6

    goto :goto_1

    .line 853
    :cond_6
    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->shouldDropBuffersToKeyframe(JJ)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 854
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->maybeDropBuffersToKeyframe(J)Z

    move-result p1

    if-eqz p1, :cond_7

    return v3

    .line 856
    :cond_7
    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->shouldDropOutputBuffer(JJ)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 857
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->dropOutputBuffer(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;)V

    return v4

    :cond_8
    const-wide/16 p1, 0x7530

    cmp-long p1, v0, p1

    if-gez p1, :cond_9

    .line 862
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    iget-object p2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1, v5, v6, p2}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->renderOutputBuffer(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;JLcom/google/android/exoplayer2/Format;)V

    return v4

    :cond_9
    return v3

    :cond_a
    :goto_1
    return v3

    .line 845
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    iget-object p2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1, v5, v6, p2}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->renderOutputBuffer(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;JLcom/google/android/exoplayer2/Format;)V

    return v4
.end method

.method private setDecoderDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/drm/DrmSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;)V"
        }
    .end annotation

    .line 660
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSession$-CC;->replaceSession(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 661
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    return-void
.end method

.method private setJoiningDeadlineMs()V
    .locals 4

    .line 909
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->allowedJoiningTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 911
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->allowedJoiningTimeMs:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->joiningDeadlineMs:J

    return-void
.end method

.method private setSourceDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/drm/DrmSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;)V"
        }
    .end annotation

    .line 655
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSession$-CC;->replaceSession(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 656
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    return-void
.end method

.method private shouldWaitForKeys(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 896
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->playClearSamplesWithoutKeys:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 898
    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->playClearSamplesWithoutKeys()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 901
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getState()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 903
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->createRendererException(Ljava/lang/Exception;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method protected abstract createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/google/android/exoplayer2/decoder/SimpleDecoder;
    .param p2    # Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Format;",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ")",
            "Lcom/google/android/exoplayer2/decoder/SimpleDecoder<",
            "Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;",
            "+",
            "Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;",
            "+",
            "Lcom/google/android/exoplayer2/video/VideoDecoderException;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/video/VideoDecoderException;
        }
    .end annotation
.end method

.method protected dropOutputBuffer(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;)V
    .locals 1

    const/4 v0, 0x1

    .line 471
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->updateDroppedBufferCounters(I)V

    .line 472
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->release()V

    return-void
.end method

.method protected flushDecoder()V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 331
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->waitingForKeys:Z

    .line 332
    iput v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->buffersInCodecCount:I

    .line 333
    iget v1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderReinitializationState:I

    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->releaseDecoder()V

    .line 335
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->maybeInitDecoder()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 337
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    .line 338
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    if-eqz v2, :cond_1

    .line 339
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->release()V

    .line 340
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    .line 342
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->flush()V

    .line 343
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderReceivedBuffers:Z

    :goto_0
    return-void
.end method

.method public isEnded()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 9

    .line 215
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->waitingForKeys:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/4 v2, 0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_3

    .line 219
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    if-eqz v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->renderedFirstFrame:Z

    if-nez v0, :cond_2

    .line 220
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->hasOutput()Z

    move-result v0

    if-nez v0, :cond_3

    .line 222
    :cond_2
    iput-wide v3, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->joiningDeadlineMs:J

    return v2

    .line 224
    :cond_3
    iget-wide v5, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->joiningDeadlineMs:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_4

    return v1

    .line 227
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->joiningDeadlineMs:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_5

    return v2

    .line 232
    :cond_5
    iput-wide v3, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->joiningDeadlineMs:J

    return v1
.end method

.method protected maybeDropBuffersToKeyframe(J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 485
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->skipSource(J)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 489
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    .line 492
    iget p2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->buffersInCodecCount:I

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->updateDroppedBufferCounters(I)V

    .line 493
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->flushDecoder()V

    return v1
.end method

.method protected onDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 6
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method protected onDisabled()V
    .locals 3

    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x0

    .line 283
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->waitingForKeys:Z

    .line 284
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->clearReportedVideoSize()V

    .line 285
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->clearRenderedFirstFrame()V

    .line 287
    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->setSourceDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 288
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->releaseDecoder()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 291
    throw v0
.end method

.method protected onEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 241
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->drmResourcesAcquired:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 242
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->drmResourcesAcquired:Z

    .line 243
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->prepare()V

    .line 245
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 246
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->enabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method protected onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 372
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->waitingForFirstSampleInFormat:Z

    .line 373
    iget-object v1, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Format;

    .line 374
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/FormatHolder;->includesDrmSession:Z

    if-eqz v2, :cond_0

    .line 375
    iget-object p1, p1, Lcom/google/android/exoplayer2/FormatHolder;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->setSourceDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    goto :goto_0

    .line 377
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 378
    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->getUpdatedSourceDrmSession(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSession;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 380
    :goto_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 382
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq p1, v1, :cond_2

    .line 383
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderReceivedBuffers:Z

    if-eqz p1, :cond_1

    .line 385
    iput v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderReinitializationState:I

    goto :goto_1

    .line 388
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->releaseDecoder()V

    .line 389
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->maybeInitDecoder()V

    .line 393
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 251
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputStreamEnded:Z

    .line 252
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputStreamEnded:Z

    .line 253
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->clearRenderedFirstFrame()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 254
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->initialPositionUs:J

    .line 255
    iput p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 256
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    if-eqz p1, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->flushDecoder()V

    :cond_0
    if-eqz p3, :cond_1

    .line 260
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_0

    .line 262
    :cond_1
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->joiningDeadlineMs:J

    .line 264
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->clear()V

    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 414
    iget p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->buffersInCodecCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->buffersInCodecCount:I

    return-void
.end method

.method protected onQueueInputBuffer(Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;)V
    .locals 0

    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->drmResourcesAcquired:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 297
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->drmResourcesAcquired:Z

    .line 298
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->release()V

    :cond_0
    return-void
.end method

.method protected onStarted()V
    .locals 4

    const/4 v0, 0x0

    .line 269
    iput v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->droppedFrames:I

    .line 270
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    .line 271
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->lastRenderTimeUs:J

    return-void
.end method

.method protected onStopped()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 276
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->joiningDeadlineMs:J

    .line 277
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->maybeNotifyDroppedFrames()V

    return-void
.end method

.method protected onStreamChanged([Lcom/google/android/exoplayer2/Format;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 304
    iput-wide p2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputStreamOffsetUs:J

    .line 305
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/BaseRenderer;->onStreamChanged([Lcom/google/android/exoplayer2/Format;J)V

    return-void
.end method

.method protected releaseDecoder()V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x0

    .line 350
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    .line 351
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    const/4 v1, 0x0

    .line 352
    iput v1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderReinitializationState:I

    .line 353
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderReceivedBuffers:Z

    .line 354
    iput v1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->buffersInCodecCount:I

    .line 355
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->release()V

    .line 357
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    .line 358
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    .line 360
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->setDecoderDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    return-void
.end method

.method public render(JJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 168
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_3

    .line 174
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->getFormatHolder()Lcom/google/android/exoplayer2/FormatHolder;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 176
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v1

    const/4 v3, -0x5

    if-ne v1, v3, :cond_1

    .line 178
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x4

    if-ne v1, p1, :cond_2

    .line 181
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 182
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputStreamEnded:Z

    .line 183
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputStreamEnded:Z

    return-void

    :cond_2
    return-void

    .line 192
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->maybeInitDecoder()V

    .line 194
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    if-eqz v0, :cond_6

    :try_start_0
    const-string v0, "drainAndFeed"

    .line 197
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 198
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->drainOutputBuffer(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 199
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->feedInputBuffer()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 200
    :cond_5
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/video/VideoDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    goto :goto_3

    :catch_0
    move-exception p1

    .line 202
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->createRendererException(Ljava/lang/Exception;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_6
    :goto_3
    return-void
.end method

.method protected renderOutputBuffer(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;JLcom/google/android/exoplayer2/Format;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/video/VideoDecoderException;
        }
    .end annotation

    .line 556
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    const-wide/16 v0, 0x3e8

    mul-long p2, p2, v0

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->lastRenderTimeUs:J

    .line 557
    iget p2, p1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->mode:I

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-ne p2, p4, :cond_0

    .line 558
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 559
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputBufferRenderer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-nez p2, :cond_2

    if-nez v0, :cond_2

    .line 561
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->dropOutputBuffer(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;)V

    goto :goto_3

    .line 563
    :cond_2
    iget v0, p1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->width:I

    iget v1, p1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->height:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->maybeNotifyVideoSizeChanged(II)V

    if-eqz p2, :cond_3

    .line 565
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputBufferRenderer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;->setOutputBuffer(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;)V

    goto :goto_2

    .line 567
    :cond_3
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->renderOutputBufferToSurface(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;Landroid/view/Surface;)V

    .line 569
    :goto_2
    iput p3, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 570
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr p2, p4

    iput p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 571
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    :goto_3
    return-void
.end method

.method protected abstract renderOutputBufferToSurface(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/video/VideoDecoderException;
        }
    .end annotation
.end method

.method protected abstract setDecoderOutputMode(I)V
.end method

.method protected final setOutputBufferRenderer(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 623
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputBufferRenderer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;

    if-eq v0, p1, :cond_2

    .line 625
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputBufferRenderer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 627
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->surface:Landroid/view/Surface;

    const/4 p1, 0x0

    .line 628
    iput p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputMode:I

    .line 629
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    if-eqz p1, :cond_0

    .line 630
    iget p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputMode:I

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->setDecoderOutputMode(I)V

    .line 632
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->onOutputChanged()V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 636
    iput p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputMode:I

    .line 637
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->onOutputRemoved()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 641
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->onOutputReset()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected final setOutputSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 594
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->surface:Landroid/view/Surface;

    if-eq v0, p1, :cond_2

    .line 596
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->surface:Landroid/view/Surface;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 598
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputBufferRenderer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;

    const/4 p1, 0x1

    .line 599
    iput p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputMode:I

    .line 600
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    if-eqz p1, :cond_0

    .line 601
    iget p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputMode:I

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->setDecoderOutputMode(I)V

    .line 603
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->onOutputChanged()V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 607
    iput p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->outputMode:I

    .line 608
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->onOutputRemoved()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 612
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->onOutputReset()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected shouldDropBuffersToKeyframe(JJ)Z
    .locals 0

    .line 439
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->isBufferVeryLate(J)Z

    move-result p1

    return p1
.end method

.method protected shouldDropOutputBuffer(JJ)Z
    .locals 0

    .line 426
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->isBufferLate(J)Z

    move-result p1

    return p1
.end method

.method protected shouldForceRenderOutputBuffer(JJ)Z
    .locals 0

    .line 452
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->isBufferLate(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/32 p1, 0x186a0

    cmp-long p1, p3, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected skipOutputBuffer(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;)V
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 462
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->release()V

    return-void
.end method

.method public final supportsFormat(Lcom/google/android/exoplayer2/Format;)I
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->supportsFormatInternal(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    return p1
.end method

.method protected abstract supportsFormatInternal(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/Format;)I
    .param p1    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;",
            "Lcom/google/android/exoplayer2/Format;",
            ")I"
        }
    .end annotation
.end method

.method protected updateDroppedBufferCounters(I)V
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    .line 505
    iget v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->droppedFrames:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->droppedFrames:I

    .line 506
    iget v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 507
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 508
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 509
    iget p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->maxDroppedFramesToNotify:I

    if-lez p1, :cond_0

    iget p1, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->droppedFrames:I

    iget v0, p0, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->maxDroppedFramesToNotify:I

    if-lt p1, v0, :cond_0

    .line 510
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/SimpleDecoderVideoRenderer;->maybeNotifyDroppedFrames()V

    :cond_0
    return-void
.end method
