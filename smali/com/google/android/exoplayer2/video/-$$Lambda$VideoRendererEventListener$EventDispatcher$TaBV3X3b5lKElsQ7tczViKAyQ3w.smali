.class public final synthetic Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$TaBV3X3b5lKElsQ7tczViKAyQ3w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:I

.field private final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;IIIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$TaBV3X3b5lKElsQ7tczViKAyQ3w;->f$0:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iput p2, p0, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$TaBV3X3b5lKElsQ7tczViKAyQ3w;->f$1:I

    iput p3, p0, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$TaBV3X3b5lKElsQ7tczViKAyQ3w;->f$2:I

    iput p4, p0, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$TaBV3X3b5lKElsQ7tczViKAyQ3w;->f$3:I

    iput p5, p0, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$TaBV3X3b5lKElsQ7tczViKAyQ3w;->f$4:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$TaBV3X3b5lKElsQ7tczViKAyQ3w;->f$0:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v1, p0, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$TaBV3X3b5lKElsQ7tczViKAyQ3w;->f$1:I

    iget v2, p0, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$TaBV3X3b5lKElsQ7tczViKAyQ3w;->f$2:I

    iget v3, p0, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$TaBV3X3b5lKElsQ7tczViKAyQ3w;->f$3:I

    iget v4, p0, Lcom/google/android/exoplayer2/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$TaBV3X3b5lKElsQ7tczViKAyQ3w;->f$4:F

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->lambda$videoSizeChanged$4(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;IIIF)V

    return-void
.end method
