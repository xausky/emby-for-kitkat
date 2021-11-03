.class public final synthetic Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$Zf6ofdxzBBJ5SL288lE0HglRj8g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field private final synthetic f$1:Lcom/google/android/exoplayer2/decoder/DecoderCounters;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$Zf6ofdxzBBJ5SL288lE0HglRj8g;->f$0:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$Zf6ofdxzBBJ5SL288lE0HglRj8g;->f$1:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$Zf6ofdxzBBJ5SL288lE0HglRj8g;->f$0:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$Zf6ofdxzBBJ5SL288lE0HglRj8g;->f$1:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->lambda$enabled$0(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method
