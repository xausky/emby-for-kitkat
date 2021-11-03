.class public final Lcom/google/android/exoplayer2/ext/flac/LibflacAudioRenderer;
.super Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;
.source "LibflacAudioRenderer.java"


# static fields
.field private static final NUM_BUFFERS:I = 0x10


# instance fields
.field private streamMetadata:Lcom/google/android/exoplayer2/util/FlacStreamMetadata;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 43
    new-array v0, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/google/android/exoplayer2/ext/flac/LibflacAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioSink;)V
    .locals 6
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

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 69
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ZLcom/google/android/exoplayer2/audio/AudioSink;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 0
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/SimpleDecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/google/android/exoplayer2/decoder/SimpleDecoder;
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioDecoderException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ext/flac/LibflacAudioRenderer;->createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;

    move-result-object p1

    return-object p1
.end method

.method protected createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;
    .locals 2
    .param p2    # Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ext/flac/FlacDecoderException;
        }
    .end annotation

    .line 112
    new-instance p2, Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;

    iget v0, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    const/16 v1, 0x10

    invoke-direct {p2, v1, v1, v0, p1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;-><init>(IIILjava/util/List;)V

    .line 114
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;->getStreamMetadata()Lcom/google/android/exoplayer2/util/FlacStreamMetadata;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/LibflacAudioRenderer;->streamMetadata:Lcom/google/android/exoplayer2/util/FlacStreamMetadata;

    return-object p2
.end method

.method protected getOutputFormat()Lcom/google/android/exoplayer2/Format;
    .locals 13

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/LibflacAudioRenderer;->streamMetadata:Lcom/google/android/exoplayer2/util/FlacStreamMetadata;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "audio/raw"

    .line 121
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/LibflacAudioRenderer;->streamMetadata:Lcom/google/android/exoplayer2/util/FlacStreamMetadata;

    iget v6, v0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->channels:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/LibflacAudioRenderer;->streamMetadata:Lcom/google/android/exoplayer2/util/FlacStreamMetadata;

    iget v7, v0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->sampleRate:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/LibflacAudioRenderer;->streamMetadata:Lcom/google/android/exoplayer2/util/FlacStreamMetadata;

    iget v0, v0, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->bitsPerSample:I

    .line 129
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v8

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 121
    invoke-static/range {v1 .. v12}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method protected supportsFormatInternal(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/Format;)I
    .locals 5
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

    .line 81
    invoke-static {}, Lcom/google/android/exoplayer2/ext/flac/FlacLibrary;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-string v0, "audio/flac"

    iget-object v2, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 87
    :cond_0
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 96
    new-instance v3, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;

    iget-object v4, p2, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    .line 97
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v3, v1, v0}, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;-><init>([BI)V

    .line 98
    iget v0, v3, Lcom/google/android/exoplayer2/util/FlacStreamMetadata;->bitsPerSample:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v0

    .line 100
    :goto_0
    iget v1, p2, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/ext/flac/LibflacAudioRenderer;->supportsOutput(II)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 102
    :cond_2
    iget-object p2, p2, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ext/flac/LibflacAudioRenderer;->supportsFormatDrm(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmInitData;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    const/4 p1, 0x4

    return p1

    :cond_4
    :goto_1
    return v1
.end method
