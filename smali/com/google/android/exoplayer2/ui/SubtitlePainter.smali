.class final Lcom/google/android/exoplayer2/ui/SubtitlePainter;
.super Ljava/lang/Object;
.source "SubtitlePainter.java"


# static fields
.field private static final INNER_PADDING_RATIO:F = 0.125f

.field private static final TAG:Ljava/lang/String; = "SubtitlePainter"


# instance fields
.field private applyEmbeddedFontSizes:Z

.field private applyEmbeddedStyles:Z

.field private backgroundColor:I

.field private bitmapRect:Landroid/graphics/Rect;

.field private bottomPaddingFraction:F

.field private cueBitmap:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private cueBitmapHeight:F

.field private cueLine:F

.field private cueLineAnchor:I

.field private cueLineType:I

.field private cuePosition:F

.field private cuePositionAnchor:I

.field private cueSize:F

.field private cueText:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private cueTextAlignment:Landroid/text/Layout$Alignment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private cueTextSizePx:F

.field private defaultTextSizePx:F

.field private edgeColor:I

.field private edgeType:I

.field private foregroundColor:I

.field private final outlineWidth:F

.field private final paint:Landroid/graphics/Paint;

.field private parentBottom:I

.field private parentLeft:I

.field private parentRight:I

.field private parentTop:I

.field private final shadowOffset:F

.field private final shadowRadius:F

.field private final spacingAdd:F

.field private final spacingMult:F

.field private textLayout:Landroid/text/StaticLayout;

.field private textLeft:I

.field private textPaddingX:I

.field private final textPaint:Landroid/text/TextPaint;

.field private textTop:I

.field private windowColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 108
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 109
    invoke-virtual {p1, v2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->spacingAdd:F

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 111
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->spacingMult:F

    .line 112
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 116
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    .line 117
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->outlineWidth:F

    .line 118
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->shadowRadius:F

    .line 119
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->shadowOffset:F

    .line 121
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 122
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 123
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 125
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    .line 126
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void

    :array_0
    .array-data 4
        0x1010217
        0x1010218
    .end array-data
.end method

.method private static areCharSequencesEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 0
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    .line 467
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private drawBitmapLayout(Landroid/graphics/Canvas;)V
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "cueBitmap",
            "bitmapRect"
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->bitmapRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawLayout(Landroid/graphics/Canvas;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 399
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->drawTextLayout(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 401
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->bitmapRect:Landroid/graphics/Rect;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->drawBitmapLayout(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private drawTextLayout(Landroid/graphics/Canvas;)V
    .locals 9

    .line 408
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    return-void

    .line 414
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 415
    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLeft:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textTop:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 417
    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->windowColor:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-lez v2, :cond_1

    .line 418
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->windowColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 419
    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaddingX:I

    neg-int v2, v2

    int-to-float v4, v2

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaddingX:I

    add-int/2addr v2, v3

    int-to-float v6, v2

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    int-to-float v7, v2

    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 423
    :cond_1
    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeType:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 424
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 425
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->outlineWidth:F

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 426
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 427
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 428
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 429
    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeType:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    .line 430
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->shadowRadius:F

    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->shadowOffset:F

    iget v6, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->shadowOffset:F

    iget v7, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_2

    .line 431
    :cond_3
    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeType:I

    const/4 v5, 0x3

    if-eq v2, v5, :cond_4

    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeType:I

    const/4 v6, 0x4

    if-ne v2, v6, :cond_8

    .line 433
    :cond_4
    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeType:I

    if-ne v2, v5, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eqz v4, :cond_6

    const/4 v5, -0x1

    goto :goto_1

    .line 434
    :cond_6
    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    :goto_1
    if-eqz v4, :cond_7

    .line 435
    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    .line 436
    :cond_7
    iget v4, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->shadowRadius:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    .line 437
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v7, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->foregroundColor:I

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    .line 438
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 439
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v7, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->shadowRadius:F

    neg-float v8, v4

    invoke-virtual {v6, v7, v8, v8, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 440
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 441
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v6, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->shadowRadius:F

    invoke-virtual {v5, v6, v4, v4, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 444
    :cond_8
    :goto_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->foregroundColor:I

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 445
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 446
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 447
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 449
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private setupBitmapLayout()V
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "cueBitmap"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    .line 377
    iget v1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentRight:I

    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    sub-int/2addr v1, v2

    .line 378
    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    iget v3, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    sub-int/2addr v2, v3

    .line 379
    iget v3, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    int-to-float v3, v3

    int-to-float v1, v1

    iget v4, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePosition:F

    mul-float v4, v4, v1

    add-float/2addr v3, v4

    .line 380
    iget v4, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    int-to-float v4, v4

    int-to-float v2, v2

    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLine:F

    mul-float v5, v5, v2

    add-float/2addr v4, v5

    .line 381
    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueSize:F

    mul-float v1, v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 382
    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueBitmapHeight:F

    const v6, -0x800001

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueBitmapHeight:F

    mul-float v2, v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :cond_0
    int-to-float v2, v1

    .line 383
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v5, v0

    mul-float v2, v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 384
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ne v2, v6, :cond_1

    int-to-float v2, v1

    :goto_1
    sub-float/2addr v3, v2

    goto :goto_2

    :cond_1
    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    if-ne v2, v5, :cond_2

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    goto :goto_1

    .line 385
    :cond_2
    :goto_2
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 389
    iget v3, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    if-ne v3, v6, :cond_3

    int-to-float v3, v0

    :goto_3
    sub-float/2addr v4, v3

    goto :goto_4

    :cond_3
    iget v3, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    if-ne v3, v5, :cond_4

    div-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    goto :goto_3

    .line 390
    :cond_4
    :goto_4
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 394
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v1, v2

    add-int/2addr v0, v3

    invoke-direct {v4, v2, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->bitmapRect:Landroid/graphics/Rect;

    return-void
.end method

.method private setupTextLayout()V
    .locals 26
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "cueText"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 243
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    .line 244
    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentRight:I

    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    sub-int/2addr v2, v3

    .line 245
    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    iget v4, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    sub-int/2addr v3, v4

    .line 247
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->defaultTextSizePx:F

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 248
    iget v4, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->defaultTextSizePx:F

    const/high16 v5, 0x3e000000    # 0.125f

    mul-float v4, v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    mul-int/lit8 v5, v4, 0x2

    sub-int v6, v2, v5

    .line 251
    iget v7, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueSize:F

    const v8, -0x800001

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_0

    int-to-float v6, v6

    .line 252
    iget v7, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueSize:F

    mul-float v6, v6, v7

    float-to-int v6, v6

    :cond_0
    if-gtz v6, :cond_1

    const-string v1, "SubtitlePainter"

    const-string v2, "Skipped drawing subtitle cue (insufficient space)"

    .line 255
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 260
    :cond_1
    iget-boolean v7, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->applyEmbeddedStyles:Z

    const/high16 v9, 0xff0000

    const/16 v17, 0x0

    const/4 v15, 0x0

    if-nez v7, :cond_2

    .line 261
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 262
    :cond_2
    iget-boolean v7, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->applyEmbeddedFontSizes:Z

    if-nez v7, :cond_4

    .line 263
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 264
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 265
    const-class v10, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v7, v15, v1, v10}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/AbsoluteSizeSpan;

    .line 266
    const-class v11, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v7, v15, v1, v11}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/RelativeSizeSpan;

    .line 267
    array-length v11, v10

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_3

    aget-object v13, v10, v12

    .line 268
    invoke-virtual {v7, v13}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 270
    :cond_3
    array-length v10, v1

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_5

    aget-object v12, v1, v11

    .line 271
    invoke-virtual {v7, v12}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 276
    :cond_4
    iget v7, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueTextSizePx:F

    cmpl-float v7, v7, v17

    if-lez v7, :cond_6

    .line 279
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 280
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    iget v10, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueTextSizePx:F

    float-to-int v10, v10

    invoke-direct {v1, v10}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 283
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    .line 280
    invoke-virtual {v7, v1, v15, v10, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    move-object v1, v7

    .line 289
    :cond_6
    :goto_2
    iget v7, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->backgroundColor:I

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    if-lez v7, :cond_7

    .line 290
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 291
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    iget v10, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->backgroundColor:I

    invoke-direct {v1, v10}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 292
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    .line 291
    invoke-virtual {v7, v1, v15, v10, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v19, v7

    goto :goto_3

    :cond_7
    move-object/from16 v19, v1

    .line 296
    :goto_3
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    if-nez v1, :cond_8

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :goto_4
    move-object/from16 v22, v1

    goto :goto_5

    :cond_8
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    goto :goto_4

    .line 297
    :goto_5
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v11, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v14, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->spacingMult:F

    iget v7, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->spacingAdd:F

    const/16 v16, 0x1

    move-object v9, v1

    move-object/from16 v10, v19

    move v12, v6

    move-object/from16 v13, v22

    move v15, v7

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    .line 299
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    .line 301
    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_6
    if-ge v9, v7, :cond_9

    .line 303
    iget-object v11, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v11, v9}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v11

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 305
    :cond_9
    iget v7, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueSize:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_a

    if-ge v10, v6, :cond_a

    goto :goto_7

    :cond_a
    move v6, v10

    :goto_7
    add-int/2addr v6, v5

    .line 312
    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePosition:F

    cmpl-float v5, v5, v8

    const/4 v7, 0x2

    if-eqz v5, :cond_b

    int-to-float v2, v2

    .line 313
    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePosition:F

    mul-float v2, v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    add-int/2addr v2, v5

    .line 314
    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    packed-switch v5, :pswitch_data_0

    goto :goto_8

    :pswitch_0
    sub-int/2addr v2, v6

    goto :goto_8

    :pswitch_1
    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v6

    .line 319
    div-int/2addr v2, v7

    .line 327
    :goto_8
    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v6, v2

    .line 328
    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentRight:I

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_9

    :cond_b
    sub-int/2addr v2, v6

    .line 330
    div-int/2addr v2, v7

    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    add-int/2addr v2, v5

    add-int v5, v2, v6

    :goto_9
    sub-int v21, v5, v2

    if-gtz v21, :cond_c

    const-string v1, "SubtitlePainter"

    const-string v2, "Skipped drawing subtitle cue (invalid horizontal positioning)"

    .line 336
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 341
    :cond_c
    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLine:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_12

    .line 343
    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineType:I

    if-nez v5, :cond_d

    int-to-float v3, v3

    .line 344
    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLine:F

    mul-float v3, v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    add-int/2addr v3, v5

    goto :goto_a

    .line 347
    :cond_d
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v3

    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v5}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    sub-int/2addr v3, v5

    .line 348
    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLine:F

    cmpl-float v5, v5, v17

    if-ltz v5, :cond_e

    .line 349
    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLine:F

    int-to-float v3, v3

    mul-float v5, v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    add-int/2addr v3, v5

    goto :goto_a

    .line 351
    :cond_e
    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLine:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    int-to-float v3, v3

    mul-float v5, v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    add-int/2addr v3, v5

    .line 354
    :goto_a
    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    if-ne v5, v7, :cond_f

    sub-int/2addr v3, v1

    goto :goto_b

    :cond_f
    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_10

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v1

    div-int/2addr v3, v7

    :cond_10
    :goto_b
    add-int v5, v3, v1

    .line 357
    iget v6, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    if-le v5, v6, :cond_11

    .line 358
    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    sub-int/2addr v3, v1

    goto :goto_c

    .line 359
    :cond_11
    iget v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    if-ge v3, v1, :cond_13

    .line 360
    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    goto :goto_c

    .line 363
    :cond_12
    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    sub-int/2addr v5, v1

    int-to-float v1, v3

    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->bottomPaddingFraction:F

    mul-float v1, v1, v3

    float-to-int v1, v1

    sub-int v3, v5, v1

    .line 367
    :cond_13
    :goto_c
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v6, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->spacingMult:F

    iget v7, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->spacingAdd:F

    const/16 v25, 0x1

    move-object/from16 v18, v1

    move-object/from16 v20, v5

    move/from16 v23, v6

    move/from16 v24, v7

    invoke-direct/range {v18 .. v25}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    .line 369
    iput v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLeft:I

    .line 370
    iput v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textTop:I

    .line 371
    iput v4, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaddingX:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public draw(Lcom/google/android/exoplayer2/text/Cue;ZZLcom/google/android/exoplayer2/text/CaptionStyleCompat;FFFLandroid/graphics/Canvas;IIII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    .line 165
    iget-object v13, v1, Lcom/google/android/exoplayer2/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-nez v13, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    const/high16 v14, -0x1000000

    if-eqz v13, :cond_3

    .line 168
    iget-object v14, v1, Lcom/google/android/exoplayer2/text/Cue;->text:Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    return-void

    .line 172
    :cond_1
    iget-boolean v14, v1, Lcom/google/android/exoplayer2/text/Cue;->windowColorSet:Z

    if-eqz v14, :cond_2

    if-eqz v2, :cond_2

    iget v14, v1, Lcom/google/android/exoplayer2/text/Cue;->windowColor:I

    goto :goto_1

    :cond_2
    iget v14, v4, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->windowColor:I

    .line 175
    :cond_3
    :goto_1
    iget-object v15, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    iget-object v8, v1, Lcom/google/android/exoplayer2/text/Cue;->text:Ljava/lang/CharSequence;

    invoke-static {v15, v8}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->areCharSequencesEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    iget-object v15, v1, Lcom/google/android/exoplayer2/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    .line 176
    invoke-static {v8, v15}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    iget-object v15, v1, Lcom/google/android/exoplayer2/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-ne v8, v15, :cond_4

    iget v8, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLine:F

    iget v15, v1, Lcom/google/android/exoplayer2/text/Cue;->line:F

    cmpl-float v8, v8, v15

    if-nez v8, :cond_4

    iget v8, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineType:I

    iget v15, v1, Lcom/google/android/exoplayer2/text/Cue;->lineType:I

    if-ne v8, v15, :cond_4

    iget v8, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    .line 180
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v15, v1, Lcom/google/android/exoplayer2/text/Cue;->lineAnchor:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v8, v15}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget v8, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePosition:F

    iget v15, v1, Lcom/google/android/exoplayer2/text/Cue;->position:F

    cmpl-float v8, v8, v15

    if-nez v8, :cond_4

    iget v8, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    .line 182
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v15, v1, Lcom/google/android/exoplayer2/text/Cue;->positionAnchor:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v8, v15}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget v8, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueSize:F

    iget v15, v1, Lcom/google/android/exoplayer2/text/Cue;->size:F

    cmpl-float v8, v8, v15

    if-nez v8, :cond_4

    iget v8, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueBitmapHeight:F

    iget v15, v1, Lcom/google/android/exoplayer2/text/Cue;->bitmapHeight:F

    cmpl-float v8, v8, v15

    if-nez v8, :cond_4

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->applyEmbeddedStyles:Z

    if-ne v8, v2, :cond_4

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->applyEmbeddedFontSizes:Z

    if-ne v8, v3, :cond_4

    iget v8, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->foregroundColor:I

    iget v15, v4, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->foregroundColor:I

    if-ne v8, v15, :cond_4

    iget v8, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->backgroundColor:I

    iget v15, v4, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->backgroundColor:I

    if-ne v8, v15, :cond_4

    iget v8, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->windowColor:I

    if-ne v8, v14, :cond_4

    iget v8, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeType:I

    iget v15, v4, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->edgeType:I

    if-ne v8, v15, :cond_4

    iget v8, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    iget v15, v4, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->edgeColor:I

    if-ne v8, v15, :cond_4

    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 192
    invoke-virtual {v8}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v8

    iget-object v15, v4, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    invoke-static {v8, v15}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget v8, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->defaultTextSizePx:F

    cmpl-float v8, v8, v5

    if-nez v8, :cond_4

    iget v8, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueTextSizePx:F

    cmpl-float v8, v8, v6

    if-nez v8, :cond_4

    iget v8, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->bottomPaddingFraction:F

    cmpl-float v8, v8, v7

    if-nez v8, :cond_4

    iget v8, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    if-ne v8, v9, :cond_4

    iget v8, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    if-ne v8, v10, :cond_4

    iget v8, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentRight:I

    if-ne v8, v11, :cond_4

    iget v8, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    if-ne v8, v12, :cond_4

    move-object/from16 v8, p8

    .line 201
    invoke-direct {v0, v8, v13}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->drawLayout(Landroid/graphics/Canvas;Z)V

    return-void

    :cond_4
    move-object/from16 v8, p8

    .line 205
    iget-object v15, v1, Lcom/google/android/exoplayer2/text/Cue;->text:Ljava/lang/CharSequence;

    iput-object v15, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    .line 206
    iget-object v15, v1, Lcom/google/android/exoplayer2/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    iput-object v15, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    .line 207
    iget-object v15, v1, Lcom/google/android/exoplayer2/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    iput-object v15, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    .line 208
    iget v15, v1, Lcom/google/android/exoplayer2/text/Cue;->line:F

    iput v15, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLine:F

    .line 209
    iget v15, v1, Lcom/google/android/exoplayer2/text/Cue;->lineType:I

    iput v15, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineType:I

    .line 210
    iget v15, v1, Lcom/google/android/exoplayer2/text/Cue;->lineAnchor:I

    iput v15, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    .line 211
    iget v15, v1, Lcom/google/android/exoplayer2/text/Cue;->position:F

    iput v15, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePosition:F

    .line 212
    iget v15, v1, Lcom/google/android/exoplayer2/text/Cue;->positionAnchor:I

    iput v15, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    .line 213
    iget v15, v1, Lcom/google/android/exoplayer2/text/Cue;->size:F

    iput v15, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueSize:F

    .line 214
    iget v1, v1, Lcom/google/android/exoplayer2/text/Cue;->bitmapHeight:F

    iput v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueBitmapHeight:F

    .line 215
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->applyEmbeddedStyles:Z

    .line 216
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->applyEmbeddedFontSizes:Z

    .line 217
    iget v1, v4, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->foregroundColor:I

    iput v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->foregroundColor:I

    .line 218
    iget v1, v4, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->backgroundColor:I

    iput v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->backgroundColor:I

    .line 219
    iput v14, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->windowColor:I

    .line 220
    iget v1, v4, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->edgeType:I

    iput v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeType:I

    .line 221
    iget v1, v4, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->edgeColor:I

    iput v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    .line 222
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget-object v2, v4, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 223
    iput v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->defaultTextSizePx:F

    .line 224
    iput v6, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueTextSizePx:F

    .line 225
    iput v7, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->bottomPaddingFraction:F

    .line 226
    iput v9, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    .line 227
    iput v10, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    .line 228
    iput v11, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentRight:I

    .line 229
    iput v12, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    if-eqz v13, :cond_5

    .line 232
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->setupTextLayout()V

    goto :goto_2

    .line 235
    :cond_5
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->setupBitmapLayout()V

    .line 238
    :goto_2
    invoke-direct {v0, v8, v13}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->drawLayout(Landroid/graphics/Canvas;Z)V

    return-void
.end method
