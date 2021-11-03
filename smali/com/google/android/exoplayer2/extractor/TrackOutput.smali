.class public interface abstract Lcom/google/android/exoplayer2/extractor/TrackOutput;
.super Ljava/lang/Object;
.source "TrackOutput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;
    }
.end annotation


# virtual methods
.method public abstract format(Lcom/google/android/exoplayer2/Format;)V
.end method

.method public abstract sampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;IZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
.end method

.method public abstract sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
    .param p6    # Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
