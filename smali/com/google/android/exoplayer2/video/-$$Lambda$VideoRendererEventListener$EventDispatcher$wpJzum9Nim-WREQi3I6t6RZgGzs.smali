.class public final synthetic Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$wpJzum9Nim-WREQi3I6t6RZgGzs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field private final synthetic f$1:I

.field private final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$wpJzum9Nim-WREQi3I6t6RZgGzs;->f$0:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iput p2, p0, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$wpJzum9Nim-WREQi3I6t6RZgGzs;->f$1:I

    iput-wide p3, p0, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$wpJzum9Nim-WREQi3I6t6RZgGzs;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$wpJzum9Nim-WREQi3I6t6RZgGzs;->f$0:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v1, p0, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$wpJzum9Nim-WREQi3I6t6RZgGzs;->f$1:I

    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$wpJzum9Nim-WREQi3I6t6RZgGzs;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->lambda$droppedFrames$3(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;IJ)V

    return-void
.end method
