.class Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;
.super Ljava/lang/Object;
.source "SphericalGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/google/android/exoplayer2/ui/spherical/TouchTracker$Listener;
.implements Lcom/google/android/exoplayer2/ui/spherical/OrientationListener$Listener;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Renderer"
.end annotation


# instance fields
.field private final deviceOrientationMatrix:[F

.field private deviceRoll:F

.field private final projectionMatrix:[F

.field private final scene:Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;

.field private final tempMatrix:[F

.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

.field private touchPitch:F

.field private final touchPitchMatrix:[F

.field private final touchYawMatrix:[F

.field private final viewMatrix:[F

.field private final viewProjectionMatrix:[F


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;)V
    .locals 1

    .line 258
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->this$0:Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    .line 238
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->projectionMatrix:[F

    .line 241
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->viewProjectionMatrix:[F

    .line 245
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->deviceOrientationMatrix:[F

    .line 249
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->touchPitchMatrix:[F

    .line 250
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->touchYawMatrix:[F

    .line 255
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->viewMatrix:[F

    .line 256
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->tempMatrix:[F

    .line 259
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->scene:Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;

    .line 260
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->deviceOrientationMatrix:[F

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 261
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->touchPitchMatrix:[F

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 262
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->touchYawMatrix:[F

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const p1, 0x40490fdb    # (float)Math.PI

    .line 263
    iput p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->deviceRoll:F

    return-void
.end method

.method private calculateFieldOfViewInYDirection(F)F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-wide v0, 0x4046800000000000L    # 45.0

    .line 332
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    float-to-double v2, p1

    div-double/2addr v0, v2

    .line 333
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    double-to-float p1, v0

    return p1

    :cond_1
    const/high16 p1, 0x42b40000    # 90.0f

    return p1
.end method

.method private updatePitchMatrix()V
    .locals 6
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->touchPitchMatrix:[F

    iget v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->touchPitch:F

    neg-float v2, v1

    iget v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->deviceRoll:F

    float-to-double v3, v1

    .line 315
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->deviceRoll:F

    float-to-double v4, v1

    .line 316
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 311
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12

    .line 284
    monitor-enter p0

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->tempMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->deviceOrientationMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->touchYawMatrix:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 286
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->viewMatrix:[F

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->touchPitchMatrix:[F

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->tempMatrix:[F

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 287
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->viewProjectionMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->projectionMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->viewMatrix:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 290
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->scene:Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->viewProjectionMatrix:[F

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->drawFrame([FZ)V

    return-void

    :catchall_0
    move-exception p1

    .line 287
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onOrientationChange([FF)V
    .locals 3
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    monitor-enter p0

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->deviceOrientationMatrix:[F

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->deviceOrientationMatrix:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    neg-float p1, p2

    .line 298
    iput p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->deviceRoll:F

    .line 299
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->updatePitchMatrix()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 296
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onScrollChange(Landroid/graphics/PointF;)V
    .locals 7
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    monitor-enter p0

    .line 323
    :try_start_0
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->touchPitch:F

    .line 324
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->updatePitchMatrix()V

    .line 325
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->touchYawMatrix:[F

    const/4 v2, 0x0

    iget p1, p1, Landroid/graphics/PointF;->x:F

    neg-float v3, p1

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 322
    monitor-exit p0

    throw p1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6

    const/4 p1, 0x0

    .line 273
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    int-to-float p1, p2

    int-to-float p2, p3

    div-float v3, p1, p2

    .line 275
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->calculateFieldOfViewInYDirection(F)F

    move-result v2

    .line 276
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->projectionMatrix:[F

    const/4 v1, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    return-void
.end method

.method public declared-synchronized onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    monitor-enter p0

    .line 268
    :try_start_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->this$0:Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;->scene:Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->init()Landroid/graphics/SurfaceTexture;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->access$000(Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 267
    monitor-exit p0

    throw p1
.end method
