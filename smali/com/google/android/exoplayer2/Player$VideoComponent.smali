.class public interface abstract Lcom/google/android/exoplayer2/Player$VideoComponent;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoComponent"
.end annotation


# virtual methods
.method public abstract addVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V
.end method

.method public abstract clearCameraMotionListener(Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;)V
.end method

.method public abstract clearVideoDecoderOutputBufferRenderer()V
.end method

.method public abstract clearVideoDecoderOutputBufferRenderer(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;)V
    .param p1    # Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract clearVideoFrameMetadataListener(Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;)V
.end method

.method public abstract clearVideoSurface()V
.end method

.method public abstract clearVideoSurface(Landroid/view/Surface;)V
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .param p1    # Landroid/view/SurfaceView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract clearVideoTextureView(Landroid/view/TextureView;)V
    .param p1    # Landroid/view/TextureView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getVideoScalingMode()I
.end method

.method public abstract removeVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V
.end method

.method public abstract setCameraMotionListener(Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;)V
.end method

.method public abstract setVideoDecoderOutputBufferRenderer(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;)V
    .param p1    # Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setVideoFrameMetadataListener(Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;)V
.end method

.method public abstract setVideoScalingMode(I)V
.end method

.method public abstract setVideoSurface(Landroid/view/Surface;)V
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .param p1    # Landroid/view/SurfaceView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setVideoTextureView(Landroid/view/TextureView;)V
    .param p1    # Landroid/view/TextureView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
