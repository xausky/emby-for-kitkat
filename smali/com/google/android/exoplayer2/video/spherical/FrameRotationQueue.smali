.class public final Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;
.super Ljava/lang/Object;
.source "FrameRotationQueue.java"


# instance fields
.field private final recenterMatrix:[F

.field private recenterMatrixComputed:Z

.field private final rotationMatrix:[F

.field private final rotations:Lcom/google/android/exoplayer2/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/TimedValueQueue<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 37
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->recenterMatrix:[F

    .line 38
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->rotationMatrix:[F

    .line 39
    new-instance v0, Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->rotations:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    return-void
.end method

.method public static computeRecenterMatrix([F[F)V
    .locals 6

    const/4 v0, 0x0

    .line 99
    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/16 v1, 0xa

    .line 100
    aget v2, p1, v1

    aget v3, p1, v1

    mul-float v2, v2, v3

    const/16 v3, 0x8

    aget v4, p1, v3

    aget v5, p1, v3

    mul-float v4, v4, v5

    add-float/2addr v2, v4

    float-to-double v4, v2

    .line 102
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 103
    aget v4, p1, v1

    div-float/2addr v4, v2

    aput v4, p0, v0

    .line 104
    aget v0, p1, v3

    div-float/2addr v0, v2

    const/4 v4, 0x2

    aput v0, p0, v4

    .line 105
    aget v0, p1, v3

    neg-float v0, v0

    div-float/2addr v0, v2

    aput v0, p0, v3

    .line 106
    aget p1, p1, v1

    div-float/2addr p1, v2

    aput p1, p0, v1

    return-void
.end method

.method private static getRotationMatrixFromAngleAxis([F[F)V
    .locals 12

    const/4 v0, 0x0

    .line 113
    aget v1, p1, v0

    const/4 v2, 0x1

    .line 114
    aget v2, p1, v2

    neg-float v2, v2

    const/4 v3, 0x2

    .line 115
    aget p1, p1, v3

    neg-float p1, p1

    .line 116
    invoke-static {v1, v2, p1}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_0

    float-to-double v4, v3

    .line 118
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v8, v4

    const/4 v7, 0x0

    div-float v9, v1, v3

    div-float v10, v2, v3

    div-float v11, p1, v3

    move-object v6, p0

    .line 119
    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    :goto_0
    return-void
.end method


# virtual methods
.method public pollRotationMatrix([FJ)Z
    .locals 7

    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->rotations:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [F

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 74
    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->rotationMatrix:[F

    invoke-static {p3, p2}, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->getRotationMatrixFromAngleAxis([F[F)V

    .line 75
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->recenterMatrixComputed:Z

    const/4 p3, 0x1

    if-nez p2, :cond_1

    .line 76
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->recenterMatrix:[F

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->rotationMatrix:[F

    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->computeRecenterMatrix([F[F)V

    .line 77
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->recenterMatrixComputed:Z

    :cond_1
    const/4 v2, 0x0

    .line 79
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->recenterMatrix:[F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->rotationMatrix:[F

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return p3
.end method

.method public reset()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->rotations:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->clear()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->recenterMatrixComputed:Z

    return-void
.end method

.method public setRotation(J[F)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->rotations:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    return-void
.end method
