.class public final Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "SphericalGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;
    }
.end annotation


# static fields
.field private static final FIELD_OF_VIEW_DEGREES:I = 0x5a

.field private static final PX_PER_DEGREES:F = 25.0f

.field static final UPRIGHT_ROLL:F = 3.1415927f

.field private static final Z_FAR:F = 100.0f

.field private static final Z_NEAR:F = 0.1f


# instance fields
.field private isOrientationListenerRegistered:Z

.field private isStarted:Z

.field private final mainHandler:Landroid/os/Handler;

.field private final orientationListener:Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;

.field private final orientationSensor:Landroid/hardware/Sensor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final scene:Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private surface:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final touchTracker:Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;

.field private useSensorRotation:Z

.field private videoComponent:Lcom/google/android/exoplayer2/Player$VideoComponent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->mainHandler:Landroid/os/Handler;

    const-string p2, "sensor"

    .line 89
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/SensorManager;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->sensorManager:Landroid/hardware/SensorManager;

    .line 91
    sget p2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v0, 0x12

    if-lt p2, v0, :cond_0

    .line 96
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 99
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    .line 101
    :cond_1
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->orientationSensor:Landroid/hardware/Sensor;

    .line 103
    new-instance p2, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->scene:Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;

    .line 104
    new-instance p2, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->scene:Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;

    invoke-direct {p2, p0, v0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$Renderer;-><init>(Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;)V

    .line 106
    new-instance v0, Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/ui/spherical/TouchTracker$Listener;F)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->touchTracker:Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;

    const-string v0, "window"

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 108
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 109
    new-instance v0, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/google/android/exoplayer2/ui/spherical/OrientationListener$Listener;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->touchTracker:Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-direct {v0, p1, v2}, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;-><init>(Landroid/view/Display;[Lcom/google/android/exoplayer2/ui/spherical/OrientationListener$Listener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->orientationListener:Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;

    .line 110
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->useSensorRotation:Z

    .line 112
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setEGLContextClientVersion(I)V

    .line 113
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 114
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->touchTracker:Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public static synthetic lambda$onDetachedFromWindow$0(Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;)V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->videoComponent:Lcom/google/android/exoplayer2/Player$VideoComponent;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->videoComponent:Lcom/google/android/exoplayer2/Player$VideoComponent;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->surface:Landroid/view/Surface;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player$VideoComponent;->clearVideoSurface(Landroid/view/Surface;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->surface:Landroid/view/Surface;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->releaseSurface(Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 186
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->surface:Landroid/view/Surface;

    :cond_1
    return-void
.end method

.method public static synthetic lambda$onSurfaceTextureAvailable$1(Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 210
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->surface:Landroid/view/Surface;

    .line 211
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 212
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->surface:Landroid/view/Surface;

    .line 213
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->videoComponent:Lcom/google/android/exoplayer2/Player$VideoComponent;

    if-eqz p1, :cond_0

    .line 214
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->videoComponent:Lcom/google/android/exoplayer2/Player$VideoComponent;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->surface:Landroid/view/Surface;

    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/Player$VideoComponent;->setVideoSurface(Landroid/view/Surface;)V

    .line 216
    :cond_0
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->releaseSurface(Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V

    return-void
.end method

.method private onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/ui/spherical/-$$Lambda$SphericalGLSurfaceView$SULIvMLF1CXjpubqiDYRNzkxCPc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/ui/spherical/-$$Lambda$SphericalGLSurfaceView$SULIvMLF1CXjpubqiDYRNzkxCPc;-><init>(Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static releaseSurface(Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V
    .locals 0
    .param p0    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 223
    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_0
    if-eqz p1, :cond_1

    .line 226
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    :cond_1
    return-void
.end method

.method private updateOrientationListenerRegistration()V
    .locals 5

    .line 192
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->useSensorRotation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->isStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 193
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->orientationSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->isOrientationListenerRegistered:Z

    if-ne v0, v2, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    .line 197
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->orientationListener:Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->orientationSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3, v4, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_1

    .line 200
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->orientationListener:Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 202
    :goto_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->isOrientationListenerRegistered:Z

    return-void

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .line 175
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/ui/spherical/-$$Lambda$SphericalGLSurfaceView$svRenkwMuRhLEst9s1zm1Jg6UCE;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/ui/spherical/-$$Lambda$SphericalGLSurfaceView$svRenkwMuRhLEst9s1zm1Jg6UCE;-><init>(Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->isStarted:Z

    .line 168
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->updateOrientationListenerRegistration()V

    .line 169
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 160
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->isStarted:Z

    .line 162
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->updateOrientationListenerRegistration()V

    return-void
.end method

.method public setDefaultStereoMode(I)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->scene:Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;->setDefaultStereoMode(I)V

    return-void
.end method

.method public setSingleTapListener(Lcom/google/android/exoplayer2/ui/spherical/SingleTapListener;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/ui/spherical/SingleTapListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 149
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->touchTracker:Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/spherical/TouchTracker;->setSingleTapListener(Lcom/google/android/exoplayer2/ui/spherical/SingleTapListener;)V

    return-void
.end method

.method public setUseSensorRotation(Z)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->useSensorRotation:Z

    .line 155
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->updateOrientationListenerRegistration()V

    return-void
.end method

.method public setVideoComponent(Lcom/google/android/exoplayer2/Player$VideoComponent;)V
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/Player$VideoComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 129
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->videoComponent:Lcom/google/android/exoplayer2/Player$VideoComponent;

    if-ne p1, v0, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->videoComponent:Lcom/google/android/exoplayer2/Player$VideoComponent;

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->videoComponent:Lcom/google/android/exoplayer2/Player$VideoComponent;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->surface:Landroid/view/Surface;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player$VideoComponent;->clearVideoSurface(Landroid/view/Surface;)V

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->videoComponent:Lcom/google/android/exoplayer2/Player$VideoComponent;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->scene:Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player$VideoComponent;->clearVideoFrameMetadataListener(Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;)V

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->videoComponent:Lcom/google/android/exoplayer2/Player$VideoComponent;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->scene:Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player$VideoComponent;->clearCameraMotionListener(Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;)V

    .line 139
    :cond_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->videoComponent:Lcom/google/android/exoplayer2/Player$VideoComponent;

    .line 140
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->videoComponent:Lcom/google/android/exoplayer2/Player$VideoComponent;

    if-eqz p1, :cond_3

    .line 141
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->videoComponent:Lcom/google/android/exoplayer2/Player$VideoComponent;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->scene:Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$VideoComponent;->setVideoFrameMetadataListener(Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;)V

    .line 142
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->videoComponent:Lcom/google/android/exoplayer2/Player$VideoComponent;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->scene:Lcom/google/android/exoplayer2/ui/spherical/SceneRenderer;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$VideoComponent;->setCameraMotionListener(Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;)V

    .line 143
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->videoComponent:Lcom/google/android/exoplayer2/Player$VideoComponent;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->surface:Landroid/view/Surface;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$VideoComponent;->setVideoSurface(Landroid/view/Surface;)V

    :cond_3
    return-void
.end method
