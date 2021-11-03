.class final Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;
.super Ljava/lang/Object;
.source "SceneRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;
.implements Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;


# instance fields
.field private volatile defaultStereoMode:I

.field private final frameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final frameRotationQueue:Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;

.field private lastProjectionData:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private lastStereoMode:I

.field private final projectionQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/TimedValueQueue<",
            "Lcom/google/android/exoplayer2/video/spherical/Projection;",
            ">;"
        }
    .end annotation
.end field

.field private final projectionRenderer:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;

.field private final resetRotationAtNextFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final rotationMatrix:[F

.field private final sampleTimestampQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/TimedValueQueue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final tempMatrix:[F

.field private textureId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->frameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->resetRotationAtNextFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    new-instance v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->projectionRenderer:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;

    .line 69
    new-instance v0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->frameRotationQueue:Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;

    .line 70
    new-instance v0, Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->sampleTimestampQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    .line 71
    new-instance v0, Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->projectionQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    const/16 v0, 0x10

    .line 72
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->rotationMatrix:[F

    .line 73
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->tempMatrix:[F

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->defaultStereoMode:I

    const/4 v0, -0x1

    .line 75
    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->lastStereoMode:I

    return-void
.end method

.method public static synthetic lambda$init$0(Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 101
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->frameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private setProjection([BIJ)V
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->lastProjectionData:[B

    .line 181
    iget v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->lastStereoMode:I

    .line 182
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->lastProjectionData:[B

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 183
    iget p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->defaultStereoMode:I

    :cond_0
    iput p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->lastStereoMode:I

    .line 184
    iget p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->lastStereoMode:I

    if-ne v1, p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->lastProjectionData:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 189
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->lastProjectionData:[B

    if-eqz p2, :cond_2

    .line 190
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->lastProjectionData:[B

    iget p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->lastStereoMode:I

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->decode([BI)Lcom/google/android/exoplayer2/video/spherical/Projection;

    move-result-object p1

    :cond_2
    if-eqz p1, :cond_3

    .line 193
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->isSupported(Lcom/google/android/exoplayer2/video/spherical/Projection;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->lastStereoMode:I

    .line 195
    invoke-static {p1}, Lcom/google/android/exoplayer2/video/spherical/Projection;->createEquirectangular(I)Lcom/google/android/exoplayer2/video/spherical/Projection;

    move-result-object p1

    .line 196
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->projectionQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {p2, p3, p4, p1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public drawFrame([FZ)V
    .locals 8

    const/16 v0, 0x4000

    .line 115
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 116
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 118
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->frameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 120
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 121
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->resetRotationAtNextFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->rotationMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    .line 125
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->sampleTimestampQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->poll(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 127
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->frameRotationQueue:Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->rotationMatrix:[F

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->pollRotationMatrix([FJ)Z

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->projectionQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/spherical/Projection;

    if-eqz v0, :cond_2

    .line 131
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->projectionRenderer:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->setProjection(Lcom/google/android/exoplayer2/video/spherical/Projection;)V

    .line 134
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->tempMatrix:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->rotationMatrix:[F

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 135
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->projectionRenderer:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;

    iget v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->textureId:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->tempMatrix:[F

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->draw(I[FZ)V

    return-void
.end method

.method public init()Landroid/graphics/SurfaceTexture;
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 93
    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 94
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->projectionRenderer:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->init()V

    .line 97
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 99
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->createExternalTexture()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->textureId:I

    .line 100
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->textureId:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v1, Lcom/google/android/exoplayer2/ui/spherical/-$$Lambda$SceneRenderer$4ClzwyHXabRJX89l_xvhRW1IBQs;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/ui/spherical/-$$Lambda$SceneRenderer$4ClzwyHXabRJX89l_xvhRW1IBQs;-><init>(Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public onCameraMotion(J[F)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->frameRotationQueue:Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->setRotation(J[F)V

    return-void
.end method

.method public onCameraMotionReset()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->sampleTimestampQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->clear()V

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->frameRotationQueue:Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->reset()V

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->resetRotationAtNextFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onVideoFrameAboutToBeRendered(JJLcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V
    .locals 0
    .param p6    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 153
    iget-object p6, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->sampleTimestampQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p6, p3, p4, p1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    .line 154
    iget-object p1, p5, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    iget p2, p5, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->setProjection([BIJ)V

    return-void
.end method

.method public setDefaultStereoMode(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->defaultStereoMode:I

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->projectionRenderer:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->shutdown()V

    return-void
.end method
