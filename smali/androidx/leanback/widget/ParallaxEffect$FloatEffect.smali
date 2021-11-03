.class final Landroidx/leanback/widget/ParallaxEffect$FloatEffect;
.super Landroidx/leanback/widget/ParallaxEffect;
.source "ParallaxEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/ParallaxEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FloatEffect"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 378
    invoke-direct {p0}, Landroidx/leanback/widget/ParallaxEffect;-><init>()V

    return-void
.end method


# virtual methods
.method calculateDirectValue(Landroidx/leanback/widget/Parallax;)Ljava/lang/Number;
    .locals 5

    .line 382
    iget-object v0, p0, Landroidx/leanback/widget/ParallaxEffect$FloatEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 385
    iget-object v0, p0, Landroidx/leanback/widget/ParallaxEffect$FloatEffect;->mMarkerValues:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/Parallax$PropertyMarkerValue;

    invoke-virtual {v0}, Landroidx/leanback/widget/Parallax$PropertyMarkerValue;->getProperty()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Landroidx/leanback/widget/ParallaxEffect$FloatEffect;->mMarkerValues:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/leanback/widget/Parallax$PropertyMarkerValue;

    invoke-virtual {v2}, Landroidx/leanback/widget/Parallax$PropertyMarkerValue;->getProperty()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_3

    .line 389
    iget-object v0, p0, Landroidx/leanback/widget/ParallaxEffect$FloatEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/Parallax$FloatPropertyMarkerValue;

    .line 390
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/Parallax$FloatPropertyMarkerValue;->getMarkerValue(Landroidx/leanback/widget/Parallax;)F

    move-result v0

    .line 391
    iget-object v2, p0, Landroidx/leanback/widget/ParallaxEffect$FloatEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/leanback/widget/Parallax$FloatPropertyMarkerValue;

    .line 392
    invoke-virtual {v2, p1}, Landroidx/leanback/widget/Parallax$FloatPropertyMarkerValue;->getMarkerValue(Landroidx/leanback/widget/Parallax;)F

    move-result v2

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    move v4, v2

    move v2, v0

    move v0, v4

    .line 399
    :cond_0
    iget-object v3, p0, Landroidx/leanback/widget/ParallaxEffect$FloatEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/Parallax$PropertyMarkerValue;

    invoke-virtual {v1}, Landroidx/leanback/widget/Parallax$PropertyMarkerValue;->getProperty()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/Parallax$FloatProperty;

    invoke-virtual {v1, p1}, Landroidx/leanback/widget/Parallax$FloatProperty;->get(Landroidx/leanback/widget/Parallax;)Ljava/lang/Float;

    move-result-object p1

    .line 400
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    .line 401
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    .line 402
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 403
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1

    .line 386
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Marker value must use same Property for direct mapping"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 383
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Must use two marker values for direct mapping"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method calculateFraction(Landroidx/leanback/widget/Parallax;)F
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 414
    :goto_0
    iget-object v5, p0, Landroidx/leanback/widget/ParallaxEffect$FloatEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-ge v0, v5, :cond_7

    .line 415
    iget-object v5, p0, Landroidx/leanback/widget/ParallaxEffect$FloatEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/leanback/widget/Parallax$FloatPropertyMarkerValue;

    .line 416
    invoke-virtual {v5}, Landroidx/leanback/widget/Parallax$FloatPropertyMarkerValue;->getProperty()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/leanback/widget/Parallax$FloatProperty;

    invoke-virtual {v7}, Landroidx/leanback/widget/Parallax$FloatProperty;->getIndex()I

    move-result v7

    .line 417
    invoke-virtual {v5, p1}, Landroidx/leanback/widget/Parallax$FloatPropertyMarkerValue;->getMarkerValue(Landroidx/leanback/widget/Parallax;)F

    move-result v5

    .line 418
    invoke-virtual {p1, v7}, Landroidx/leanback/widget/Parallax;->getFloatPropertyValue(I)F

    move-result v8

    if-nez v0, :cond_0

    cmpl-float v2, v8, v5

    if-ltz v2, :cond_6

    return v1

    :cond_0
    if-ne v2, v7, :cond_2

    cmpg-float v9, v3, v5

    if-ltz v9, :cond_1

    goto :goto_1

    .line 427
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "marker value of same variable must be descendant order"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    const v9, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v9, v8, v9

    if-nez v9, :cond_3

    sub-float/2addr v3, v4

    .line 435
    invoke-virtual {p1}, Landroidx/leanback/widget/Parallax;->getMaxValue()F

    move-result p1

    div-float/2addr v3, p1

    .line 436
    invoke-virtual {p0, v3, v0}, Landroidx/leanback/widget/ParallaxEffect$FloatEffect;->getFractionWithWeightAdjusted(FI)F

    move-result p1

    return p1

    :cond_3
    cmpl-float v9, v8, v5

    if-ltz v9, :cond_6

    if-ne v2, v7, :cond_4

    sub-float p1, v3, v8

    sub-float/2addr v3, v5

    div-float/2addr p1, v3

    goto :goto_2

    :cond_4
    const v1, -0x800001

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_5

    sub-float p1, v8, v4

    add-float/2addr v3, p1

    sub-float p1, v3, v8

    sub-float/2addr v3, v5

    div-float/2addr p1, v3

    goto :goto_2

    :cond_5
    sub-float/2addr v8, v5

    .line 456
    invoke-virtual {p1}, Landroidx/leanback/widget/Parallax;->getMaxValue()F

    move-result p1

    div-float/2addr v8, p1

    sub-float p1, v6, v8

    .line 458
    :goto_2
    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/ParallaxEffect$FloatEffect;->getFractionWithWeightAdjusted(FI)F

    move-result p1

    return p1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    move v3, v5

    move v2, v7

    move v4, v8

    goto :goto_0

    :cond_7
    return v6
.end method
