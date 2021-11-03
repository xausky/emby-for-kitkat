.class final Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;
.super Ljava/lang/Object;
.source "OrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/spherical/OrientationListener$Listener;
    }
.end annotation


# instance fields
.field private final angles:[F

.field private final deviceOrientationMatrix4x4:[F

.field private final display:Landroid/view/Display;

.field private final listeners:[Lcom/google/android/exoplayer2/ui/spherical/OrientationListener$Listener;

.field private final recenterMatrix4x4:[F

.field private recenterMatrixComputed:Z

.field private final tempMatrix4x4:[F


# direct methods
.method public varargs constructor <init>(Landroid/view/Display;[Lcom/google/android/exoplayer2/ui/spherical/OrientationListener$Listener;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 44
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    .line 45
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->tempMatrix4x4:[F

    .line 46
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->recenterMatrix4x4:[F

    const/4 v0, 0x3

    .line 47
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->angles:[F

    .line 53
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->display:Landroid/view/Display;

    .line 54
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->listeners:[Lcom/google/android/exoplayer2/ui/spherical/OrientationListener$Listener;

    return-void
.end method

.method private extractRoll([F)F
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->tempMatrix4x4:[F

    const/4 v1, 0x1

    const/16 v2, 0x83

    invoke-static {p1, v1, v2, v0}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 94
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->tempMatrix4x4:[F

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->angles:[F

    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 95
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->angles:[F

    const/4 v0, 0x2

    aget p1, p1, v0

    return p1
.end method

.method private notifyListeners([FF)V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->listeners:[Lcom/google/android/exoplayer2/ui/spherical/OrientationListener$Listener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 76
    invoke-interface {v3, p1, p2}, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener$Listener;->onOrientationChange([FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private recenter([F)V
    .locals 9

    .line 81
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->recenterMatrixComputed:Z

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->recenterMatrix4x4:[F

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->computeRecenterMatrix([F[F)V

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->recenterMatrixComputed:Z

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->tempMatrix4x4:[F

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->tempMatrix4x4:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    .line 86
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->tempMatrix4x4:[F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->recenterMatrix4x4:[F

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method

.method private rotateAroundZ([FI)V
    .locals 4

    const/16 v0, 0x82

    const/16 v1, 0x81

    packed-switch p2, :pswitch_data_0

    .line 117
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p2, 0x1

    goto :goto_0

    :pswitch_1
    const/16 p2, 0x82

    const/16 v0, 0x81

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    const/16 p2, 0x81

    .line 119
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->tempMatrix4x4:[F

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->tempMatrix4x4:[F

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->tempMatrix4x4:[F

    invoke-static {v1, v0, p2, p1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    return-void

    :pswitch_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static rotateYtoSky([F)V
    .locals 6

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 124
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 61
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->rotateAroundZ([FI)V

    .line 62
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->extractRoll([F)F

    move-result p1

    .line 64
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->rotateYtoSky([F)V

    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->recenter([F)V

    .line 66
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/ui/spherical/OrientationListener;->notifyListeners([FF)V

    return-void
.end method
