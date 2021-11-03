.class public Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "VideoDecoderGLSurfaceView.java"


# instance fields
.field private final renderer:Lcom/google/android/exoplayer2/video/VideoDecoderRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance p1, Lcom/google/android/exoplayer2/video/VideoDecoderRenderer;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/video/VideoDecoderRenderer;-><init>(Landroid/opengl/GLSurfaceView;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;->renderer:Lcom/google/android/exoplayer2/video/VideoDecoderRenderer;

    const/4 p1, 0x1

    .line 47
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    const/4 p1, 0x2

    .line 48
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;->setEGLContextClientVersion(I)V

    .line 49
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;->renderer:Lcom/google/android/exoplayer2/video/VideoDecoderRenderer;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;->setRenderMode(I)V

    return-void
.end method


# virtual methods
.method public getVideoDecoderOutputBufferRenderer()Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;->renderer:Lcom/google/android/exoplayer2/video/VideoDecoderRenderer;

    return-object v0
.end method
