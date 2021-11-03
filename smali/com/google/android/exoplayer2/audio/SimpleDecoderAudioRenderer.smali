.class public abstract Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;
.super Lcom/google/android/exoplayer2/BaseRenderer;
.source "SimpleDecoderAudioRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/MediaClock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioSinkListener;
    }
.end annotation


# static fields
.field private static final REINITIALIZATION_STATE_NONE:I = 0x0

.field private static final REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REINITIALIZATION_STATE_WAIT_END_OF_STREAM:I = 0x2


# instance fields
.field private allowFirstBufferPositionDiscontinuity:Z

.field private allowPositionDiscontinuity:Z

.field private final audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

.field private audioTrackNeedsConfigure:Z

.field private currentPositionUs:J

.field private decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/decoder/SimpleDecoder<",
            "Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;",
            "+",
            "Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;",
            "+",
            "Lcom/google/android/exoplayer2/audio/AudioDecoderException;",
            ">;"
        }
    .end annotation
.end field

.field private decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

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

.field private encoderDelay:I

.field private encoderPadding:I

.field private final eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

.field private final flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private inputFormat:Lcom/google/android/exoplayer2/Format;

.field private inputStreamEnded:Z

.field private outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

.field private outputStreamEnded:Z

.field private final playClearSamplesWithoutKeys:Z

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

.field private waitingForKeys:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 124
    new-array v0, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioCapabilities;)V
    .locals 8
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/exoplayer2/audio/AudioCapabilities;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 157
    new-array v7, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioCapabilities;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Z[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioCapabilities;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Z[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 6
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/exoplayer2/audio/AudioCapabilities;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;",
            "Lcom/google/android/exoplayer2/audio/AudioCapabilities;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;Z[",
            "Lcom/google/android/exoplayer2/audio/AudioProcessor;",
            ")V"
        }
    .end annotation

    .line 187
    new-instance v5, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-direct {v5, p3, p6}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;-><init>(Lcom/google/android/exoplayer2/audio/AudioCapabilities;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ZLcom/google/android/exoplayer2/audio/AudioSink;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ZLcom/google/android/exoplayer2/audio/AudioSink;)V
    .locals 1
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ">;Z",
            "Lcom/google/android/exoplayer2/audio/AudioSink;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 210
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 211
    iput-object p3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 212
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->playClearSamplesWithoutKeys:Z

    .line 213
    new-instance p3, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-direct {p3, p1, p2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    .line 214
    iput-object p5, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    .line 215
    new-instance p1, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioSinkListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$AudioSinkListener;-><init>(Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer$1;)V

    invoke-interface {p5, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setListener(Lcom/google/android/exoplayer2/audio/AudioSink$Listener;)V

    .line 216
    invoke-static {}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->newFlagsOnlyInstance()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 p1, 0x0

    .line 217
    iput p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    .line 218
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 7
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    .line 137
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioCapabilities;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Z[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    return-object p0
.end method

.method static synthetic access$202(Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->allowPositionDiscontinuity:Z

    return p1
.end method

.method private drainOutputBuffer()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Lcom/google/android/exoplayer2/audio/AudioDecoderException;,
            Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;,
            Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;,
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->dequeueOutputBuffer()Lcom/google/android/exoplayer2/decoder/OutputBuffer;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    .line 374
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    if-nez v0, :cond_0

    return v1

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    iget v0, v0, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->skippedOutputBufferCount:I

    if-lez v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    iget v3, v3, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->skippedOutputBufferCount:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 379
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->handleDiscontinuity()V

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->isEndOfStream()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 384
    iget v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 386
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->releaseDecoder()V

    .line 387
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->maybeInitDecoder()V

    .line 389
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    goto :goto_0

    .line 391
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->release()V

    .line 392
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    .line 393
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->processEndOfStream()V

    :goto_0
    return v1

    .line 398
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    if-eqz v0, :cond_4

    .line 399
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->getOutputFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 400
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    iget v5, v0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    iget v6, v0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->encoderDelay:I

    iget v11, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->encoderPadding:I

    invoke-interface/range {v4 .. v11}, Lcom/google/android/exoplayer2/audio/AudioSink;->configure(IIII[III)V

    .line 402
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    .line 405
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    iget-object v4, v4, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->timeUs:J

    invoke-interface {v0, v4, v5, v6}, Lcom/google/android/exoplayer2/audio/AudioSink;->handleBuffer(Ljava/nio/ByteBuffer;J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 406
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 407
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->release()V

    .line 408
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    return v3

    :cond_5
    return v1
.end method

.method private feedInputBuffer()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioDecoderException;,
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_8

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputStreamEnded:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    if-nez v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->dequeueInputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 424
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    if-nez v0, :cond_1

    return v1

    .line 429
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 430
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 431
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 432
    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 433
    iput v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    return v1

    .line 438
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->getFormatHolder()Lcom/google/android/exoplayer2/FormatHolder;

    move-result-object v0

    .line 439
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->waitingForKeys:Z

    if-eqz v2, :cond_3

    const/4 v2, -0x4

    goto :goto_0

    .line 443
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v2

    :goto_0
    const/4 v5, -0x3

    if-ne v2, v5, :cond_4

    return v1

    :cond_4
    const/4 v5, -0x5

    if-ne v2, v5, :cond_5

    .line 450
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)V

    return v4

    .line 453
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 454
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputStreamEnded:Z

    .line 455
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 456
    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    return v1

    .line 459
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v0

    .line 460
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->shouldWaitForKeys(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->waitingForKeys:Z

    .line 461
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->waitingForKeys:Z

    if-eqz v0, :cond_7

    return v1

    .line 464
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    .line 465
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->onQueueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 466
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->queueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 467
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReceivedBuffers:Z

    .line 468
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    .line 469
    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    return v4

    :cond_8
    :goto_1
    return v1
.end method

.method private flushDecoder()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 497
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->waitingForKeys:Z

    .line 498
    iget v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    if-eqz v1, :cond_0

    .line 499
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->releaseDecoder()V

    .line 500
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->maybeInitDecoder()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 502
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 503
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    if-eqz v2, :cond_1

    .line 504
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;->release()V

    .line 505
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    .line 507
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->flush()V

    .line 508
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReceivedBuffers:Z

    :goto_0
    return-void
.end method

.method private maybeInitDecoder()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 624
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    if-eqz v0, :cond_0

    return-void

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->setDecoderDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    const/4 v0, 0x0

    .line 631
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_2

    .line 632
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getMediaCrypto()Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    move-result-object v0

    if-nez v0, :cond_2

    .line 634
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 646
    :cond_2
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-string v3, "createAudioDecoder"

    .line 647
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 648
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v3, v0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    .line 649
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 650
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 651
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    sub-long v7, v5, v1

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 653
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 655
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->createRendererException(Ljava/lang/Exception;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method private onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 684
    iget-object v0, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/Format;

    .line 685
    iget-boolean v1, p1, Lcom/google/android/exoplayer2/FormatHolder;->includesDrmSession:Z

    if-eqz v1, :cond_0

    .line 686
    iget-object p1, p1, Lcom/google/android/exoplayer2/FormatHolder;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->setSourceDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    goto :goto_0

    .line 688
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 689
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->getUpdatedSourceDrmSession(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSession;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 691
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 692
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 694
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->canKeepCodec(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 695
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReceivedBuffers:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 697
    iput v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    goto :goto_1

    .line 700
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->releaseDecoder()V

    .line 701
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->maybeInitDecoder()V

    .line 702
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    .line 706
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    iput p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->encoderDelay:I

    .line 707
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    iput p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->encoderPadding:I

    .line 709
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method private onQueueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 4

    .line 713
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 717
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->currentPositionUs:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 718
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->currentPositionUs:J

    :cond_0
    const/4 p1, 0x0

    .line 720
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    :cond_1
    return-void
.end method

.method private processEndOfStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 487
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputStreamEnded:Z

    .line 489
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->playToEndOfStream()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 492
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->createRendererException(Ljava/lang/Exception;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method private releaseDecoder()V
    .locals 3

    const/4 v0, 0x0

    .line 660
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 661
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    const/4 v1, 0x0

    .line 662
    iput v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReinitializationState:I

    .line 663
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderReceivedBuffers:Z

    .line 664
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    if-eqz v1, :cond_0

    .line 665
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->release()V

    .line 666
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    .line 667
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    .line 669
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->setDecoderDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    return-void
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

    .line 678
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSession$-CC;->replaceSession(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 679
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

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

    .line 673
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSession$-CC;->replaceSession(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 674
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    return-void
.end method

.method private shouldWaitForKeys(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->playClearSamplesWithoutKeys:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 476
    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->playClearSamplesWithoutKeys()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 479
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

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

    .line 481
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->createRendererException(Ljava/lang/Exception;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    return v1
.end method

.method private updateCurrentPosition()V
    .locals 4

    .line 725
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->isEnded()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioSink;->getCurrentPositionUs(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 727
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->allowPositionDiscontinuity:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->currentPositionUs:J

    .line 730
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->currentPositionUs:J

    const/4 v0, 0x0

    .line 731
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->allowPositionDiscontinuity:Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected canKeepCodec(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

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
            "Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;",
            "+",
            "Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;",
            "+",
            "Lcom/google/android/exoplayer2/audio/AudioDecoderException;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioDecoderException;
        }
    .end annotation
.end method

.method public getMediaClock()Lcom/google/android/exoplayer2/util/MediaClock;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    return-object p0
.end method

.method protected abstract getOutputFormat()Lcom/google/android/exoplayer2/Format;
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPositionUs()J
    .locals 2

    .line 525
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 526
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->updateCurrentPosition()V

    .line 528
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->currentPositionUs:J

    return-wide v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 618
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 610
    :pswitch_0
    check-cast p2, Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 611
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    goto :goto_0

    .line 607
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->setVolume(F)V

    goto :goto_0

    .line 614
    :cond_0
    check-cast p2, Lcom/google/android/exoplayer2/audio/AuxEffectInfo;

    .line 615
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->setAuxEffectInfo(Lcom/google/android/exoplayer2/audio/AuxEffectInfo;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isEnded()Z
    .locals 1

    .line 514
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->waitingForKeys:Z

    if-nez v0, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onAudioSessionId(I)V
    .locals 0

    return-void
.end method

.method protected onAudioTrackPositionDiscontinuity()V
    .locals 0

    return-void
.end method

.method protected onAudioTrackUnderrun(IJJ)V
    .locals 0

    return-void
.end method

.method protected onDisabled()V
    .locals 3

    const/4 v0, 0x0

    .line 583
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x1

    .line 584
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    const/4 v1, 0x0

    .line 585
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->waitingForKeys:Z

    .line 587
    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->setSourceDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 588
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->releaseDecoder()V

    .line 589
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 592
    throw v0
.end method

.method protected onEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 543
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmResourcesAcquired:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 544
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmResourcesAcquired:Z

    .line 545
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->prepare()V

    .line 547
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 548
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->enabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 549
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->getConfiguration()Lcom/google/android/exoplayer2/RendererConfiguration;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplayer2/RendererConfiguration;->tunnelingAudioSessionId:I

    if-eqz p1, :cond_1

    .line 551
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->enableTunnelingV21(I)V

    goto :goto_0

    .line 553
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->disableTunneling()V

    :goto_0
    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 559
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/audio/AudioSink;->flush()V

    .line 560
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->currentPositionUs:J

    const/4 p1, 0x1

    .line 561
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    .line 562
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->allowPositionDiscontinuity:Z

    const/4 p1, 0x0

    .line 563
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputStreamEnded:Z

    .line 564
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputStreamEnded:Z

    .line 565
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    if-eqz p1, :cond_0

    .line 566
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->flushDecoder()V

    :cond_0
    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmResourcesAcquired:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 598
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmResourcesAcquired:Z

    .line 599
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->release()V

    :cond_0
    return-void
.end method

.method protected onStarted()V
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->play()V

    return-void
.end method

.method protected onStopped()V
    .locals 1

    .line 577
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->updateCurrentPosition()V

    .line 578
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->pause()V

    return-void
.end method

.method public render(JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 264
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputStreamEnded:Z

    if-eqz p1, :cond_0

    .line 266
    :try_start_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->playToEndOfStream()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 268
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->createRendererException(Ljava/lang/Exception;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 274
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    if-nez p1, :cond_3

    .line 276
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->getFormatHolder()Lcom/google/android/exoplayer2/FormatHolder;

    move-result-object p1

    .line 277
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 278
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p2

    const/4 p4, -0x5

    if-ne p2, p4, :cond_1

    .line 280
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x4

    if-ne p2, p1, :cond_2

    .line 283
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 284
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputStreamEnded:Z

    .line 285
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->processEndOfStream()V

    return-void

    :cond_2
    return-void

    .line 294
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->maybeInitDecoder()V

    .line 296
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/SimpleDecoder;

    if-eqz p1, :cond_6

    :try_start_1
    const-string p1, "drainAndFeed"

    .line 299
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 300
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drainOutputBuffer()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 301
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->feedInputBuffer()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 302
    :cond_5
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V
    :try_end_1
    .catch Lcom/google/android/exoplayer2/audio/AudioDecoderException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 307
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    goto :goto_3

    :catch_1
    move-exception p1

    .line 305
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->createRendererException(Ljava/lang/Exception;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_6
    :goto_3
    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public final supportsFormat(Lcom/google/android/exoplayer2/Format;)I
    .locals 3

    .line 230
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 231
    invoke-static {v1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->supportsFormatInternal(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_1

    .line 235
    invoke-static {p1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    .line 238
    :cond_1
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    const/16 v1, 0x20

    :cond_2
    const/16 v0, 0x8

    .line 239
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(III)I

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

.method protected final supportsOutput(II)Z
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->supportsOutput(II)Z

    move-result p1

    return p1
.end method
