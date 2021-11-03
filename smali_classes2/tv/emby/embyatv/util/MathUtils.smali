.class public final Ltv/emby/embyatv/util/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRectRatio(Landroid/graphics/RectF;)F
    .locals 1

    .line 46
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    div-float/2addr v0, p0

    return v0
.end method

.method public static haveSameAspectRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 1

    .line 32
    invoke-static {p0}, Ltv/emby/embyatv/util/MathUtils;->getRectRatio(Landroid/graphics/RectF;)F

    move-result p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Ltv/emby/embyatv/util/MathUtils;->truncate(FI)F

    move-result p0

    .line 33
    invoke-static {p1}, Ltv/emby/embyatv/util/MathUtils;->getRectRatio(Landroid/graphics/RectF;)F

    move-result p1

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/MathUtils;->truncate(FI)F

    move-result p1

    sub-float/2addr p0, p1

    .line 36
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3c23d70a    # 0.01f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static truncate(FI)F
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 18
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    mul-float p0, p0, p1

    .line 19
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p1

    return p0
.end method
