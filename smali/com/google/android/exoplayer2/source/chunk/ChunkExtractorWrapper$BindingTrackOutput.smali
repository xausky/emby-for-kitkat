.class final Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;
.super Ljava/lang/Object;
.source "ChunkExtractorWrapper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BindingTrackOutput"
.end annotation


# instance fields
.field private final dummyTrackOutput:Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

.field private endTimeUs:J

.field private final id:I

.field private final manifestFormat:Lcom/google/android/exoplayer2/Format;

.field public sampleFormat:Lcom/google/android/exoplayer2/Format;

.field private trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private final type:I


# direct methods
.method public constructor <init>(IILcom/google/android/exoplayer2/Format;)V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->id:I

    .line 174
    iput p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->type:I

    .line 175
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->manifestFormat:Lcom/google/android/exoplayer2/Format;

    .line 176
    new-instance p1, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->dummyTrackOutput:Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;J)V
    .locals 0

    if-nez p1, :cond_0

    .line 181
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->dummyTrackOutput:Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    return-void

    .line 184
    :cond_0
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->endTimeUs:J

    .line 185
    iget p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->id:I

    iget p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->type:I

    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 186
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->sampleFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz p1, :cond_1

    .line 187
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->sampleFormat:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    :cond_1
    return-void
.end method

.method public format(Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->manifestFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->manifestFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/Format;->copyWithManifestFormatInfo(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->sampleFormat:Lcom/google/android/exoplayer2/Format;

    .line 195
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->sampleFormat:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public sampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result p1

    return p1
.end method

.method public sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    return-void
.end method

.method public sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
    .locals 8

    .line 212
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->endTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->endTimeUs:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->dummyTrackOutput:Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    return-void
.end method
