.class public final Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/VorbisUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VorbisIdHeader"
.end annotation


# instance fields
.field public final bitrateMax:I

.field public final bitrateMin:I

.field public final bitrateNominal:I

.field public final blockSize0:I

.field public final blockSize1:I

.field public final channels:I

.field public final data:[B

.field public final framingFlag:Z

.field public final sampleRate:J

.field public final version:J


# direct methods
.method public constructor <init>(JIJIIIIIZ[B)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->version:J

    .line 66
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->channels:I

    .line 67
    iput-wide p4, p0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->sampleRate:J

    .line 68
    iput p6, p0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->bitrateMax:I

    .line 69
    iput p7, p0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->bitrateNominal:I

    .line 70
    iput p8, p0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->bitrateMin:I

    .line 71
    iput p9, p0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->blockSize0:I

    .line 72
    iput p10, p0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->blockSize1:I

    .line 73
    iput-boolean p11, p0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->framingFlag:Z

    .line 74
    iput-object p12, p0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->data:[B

    return-void
.end method


# virtual methods
.method public getApproximateBitrate()I
    .locals 2

    .line 78
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->bitrateNominal:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->bitrateMin:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->bitrateMax:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;->bitrateNominal:I

    :goto_0
    return v0
.end method
