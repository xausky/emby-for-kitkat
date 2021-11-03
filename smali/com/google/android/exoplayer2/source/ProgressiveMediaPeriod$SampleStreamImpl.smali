.class final Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SampleStreamImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

.field private final track:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;I)V
    .locals 0

    .line 877
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 878
    iput p2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;)I
    .locals 0

    .line 873
    iget p0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    return p0
.end method


# virtual methods
.method public isReady()Z
    .locals 2

    .line 883
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    iget v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->isReady(I)Z

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 888
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    iget v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->maybeThrowError(I)V

    return-void
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 2

    .line 894
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    iget v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->readData(ILcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p1

    return p1
.end method

.method public skipData(J)I
    .locals 2

    .line 899
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    iget v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->skipData(IJ)I

    move-result p1

    return p1
.end method
