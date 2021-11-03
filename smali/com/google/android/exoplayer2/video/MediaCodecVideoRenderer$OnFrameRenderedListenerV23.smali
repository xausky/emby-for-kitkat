.class final Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnFrameRenderedListenerV23"
.end annotation


# static fields
.field private static final HANDLE_FRAME_RENDERED:I


# instance fields
.field private final handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Landroid/media/MediaCodec;)V
    .locals 0

    .line 1823
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1824
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handler:Landroid/os/Handler;

    .line 1825
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p0, p1}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method private handleFrameRendered(J)V
    .locals 2

    .line 1862
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 1867
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->access$000(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;)V

    goto :goto_0

    .line 1869
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->onProcessedTunneledBuffer(J)V

    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1852
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1854
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->toLong(II)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handleFrameRendered(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 2

    .line 1837
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 p4, 0x1e

    if-ge p1, p4, :cond_0

    .line 1838
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handler:Landroid/os/Handler;

    const/4 p4, 0x0

    const/16 p5, 0x20

    shr-long v0, p2, p5

    long-to-int p5, v0

    long-to-int p2, p2

    .line 1839
    invoke-static {p1, p4, p5, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 1844
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    .line 1846
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handleFrameRendered(J)V

    :goto_0
    return-void
.end method
