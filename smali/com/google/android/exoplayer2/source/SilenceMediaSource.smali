.class public final Lcom/google/android/exoplayer2/source/SilenceMediaSource;
.super Lcom/google/android/exoplayer2/source/BaseMediaSource;
.source "SilenceMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;,
        Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceMediaPeriod;
    }
.end annotation


# static fields
.field private static final CHANNEL_COUNT:I = 0x2

.field private static final ENCODING:I = 0x2

.field private static final FORMAT:Lcom/google/android/exoplayer2/Format;

.field private static final SAMPLE_RATE_HZ:I = 0xac44

.field private static final SILENCE_SAMPLE:[B


# instance fields
.field private final durationUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v1, "audio/raw"

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x2

    const v6, 0xac44

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 40
    invoke-static/range {v0 .. v11}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->FORMAT:Lcom/google/android/exoplayer2/Format;

    const/4 v0, 0x2

    .line 54
    invoke-static {v0, v0}, Lcom/google/android/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->SILENCE_SAMPLE:[B

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 63
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 64
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 65
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->durationUs:J

    return-void
.end method

.method static synthetic access$000()Lcom/google/android/exoplayer2/Format;
    .locals 1

    .line 34
    sget-object v0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->FORMAT:Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method static synthetic access$100(J)J
    .locals 0

    .line 34
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->getAudioByteCount(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$200()[B
    .locals 1

    .line 34
    sget-object v0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->SILENCE_SAMPLE:[B

    return-object v0
.end method

.method static synthetic access$300(J)J
    .locals 0

    .line 34
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->getAudioPositionUs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getAudioByteCount(J)J
    .locals 2

    const-wide/32 v0, 0xac44

    mul-long p0, p0, v0

    const-wide/32 v0, 0xf4240

    .line 245
    div-long/2addr p0, v0

    const/4 v0, 0x2

    .line 246
    invoke-static {v0, v0}, Lcom/google/android/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result v0

    int-to-long v0, v0

    mul-long v0, v0, p0

    return-wide v0
.end method

.method private static getAudioPositionUs(J)J
    .locals 2

    const/4 v0, 0x2

    .line 250
    invoke-static {v0, v0}, Lcom/google/android/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result v0

    int-to-long v0, v0

    div-long/2addr p0, v0

    const-wide/32 v0, 0xf4240

    mul-long p0, p0, v0

    const-wide/32 v0, 0xac44

    .line 251
    div-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 0

    .line 80
    new-instance p1, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceMediaPeriod;

    iget-wide p2, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->durationUs:J

    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceMediaPeriod;-><init>(J)V

    return-object p1
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 6
    .param p1    # Lcom/google/android/exoplayer2/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 70
    new-instance p1, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->durationUs:J

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JZZZ)V

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 0

    return-void
.end method
