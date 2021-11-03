.class public interface abstract Lcom/google/android/exoplayer2/source/SampleStream;
.super Ljava/lang/Object;
.source "SampleStream.java"


# virtual methods
.method public abstract isReady()Z
.end method

.method public abstract maybeThrowError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
.end method

.method public abstract skipData(J)I
.end method
