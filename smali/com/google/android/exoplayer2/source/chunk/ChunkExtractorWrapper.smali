.class public final Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;
.super Ljava/lang/Object;
.source "ChunkExtractorWrapper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;,
        Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;
    }
.end annotation


# instance fields
.field private final bindingTrackOutputs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;",
            ">;"
        }
    .end annotation
.end field

.field private endTimeUs:J

.field public final extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

.field private extractorInitialized:Z

.field private final primaryTrackManifestFormat:Lcom/google/android/exoplayer2/Format;

.field private final primaryTrackType:I

.field private sampleFormats:[Lcom/google/android/exoplayer2/Format;

.field private seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

.field private trackOutputProvider:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/Extractor;ILcom/google/android/exoplayer2/Format;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 81
    iput p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->primaryTrackType:I

    .line 82
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->primaryTrackManifestFormat:Lcom/google/android/exoplayer2/Format;

    .line 83
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public endTracks()V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x0

    .line 148
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->sampleFormat:Lcom/google/android/exoplayer2/Format;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->sampleFormats:[Lcom/google/android/exoplayer2/Format;

    return-void
.end method

.method public getSampleFormats()[Lcom/google/android/exoplayer2/Format;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->sampleFormats:[Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method public getSeekMap()Lcom/google/android/exoplayer2/extractor/SeekMap;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    return-object v0
.end method

.method public init(Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;JJ)V
    .locals 5
    .param p1    # Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 112
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->trackOutputProvider:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;

    .line 113
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->endTimeUs:J

    .line 114
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->extractorInitialized:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, 0x0

    if-nez v0, :cond_1

    .line 115
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/extractor/Extractor;->init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    cmp-long p1, p2, v1

    if-eqz p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    invoke-interface {p1, v3, v4, p2, p3}, Lcom/google/android/exoplayer2/extractor/Extractor;->seek(JJ)V

    :cond_0
    const/4 p1, 0x1

    .line 119
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->extractorInitialized:Z

    goto :goto_1

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    cmp-long v1, p2, v1

    if-nez v1, :cond_2

    move-wide p2, v3

    :cond_2
    invoke-interface {v0, v3, v4, p2, p3}, Lcom/google/android/exoplayer2/extractor/Extractor;->seek(JJ)V

    const/4 p2, 0x0

    .line 122
    :goto_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_3

    .line 123
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;

    invoke-virtual {p3, p1, p4, p5}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->bind(Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;J)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    return-void
.end method

.method public track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;

    if-nez v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->sampleFormats:[Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 137
    new-instance v0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;

    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->primaryTrackType:I

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->primaryTrackManifestFormat:Lcom/google/android/exoplayer2/Format;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;-><init>(IILcom/google/android/exoplayer2/Format;)V

    .line 139
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->trackOutputProvider:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->endTimeUs:J

    invoke-virtual {v0, p2, v1, v2}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$BindingTrackOutput;->bind(Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;J)V

    .line 140
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->bindingTrackOutputs:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-object v0
.end method
