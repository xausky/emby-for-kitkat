.class final Landroidx/leanback/transition/FadeAndShortSlide$3;
.super Landroidx/leanback/transition/FadeAndShortSlide$CalculateSlide;
.source "FadeAndShortSlide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/transition/FadeAndShortSlide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Landroidx/leanback/transition/FadeAndShortSlide$CalculateSlide;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoneX(Landroidx/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F
    .locals 3

    const/4 v0, 0x0

    .line 112
    aget v1, p4, v0

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 113
    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 114
    invoke-virtual {p1}, Landroidx/leanback/transition/FadeAndShortSlide;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v2

    if-nez v2, :cond_0

    .line 115
    aget p4, p4, v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p4, v0

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result p4

    :goto_0
    if-ge v1, p4, :cond_1

    .line 118
    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    move-result p3

    invoke-virtual {p1, p2}, Landroidx/leanback/transition/FadeAndShortSlide;->getHorizontalDistance(Landroid/view/ViewGroup;)F

    move-result p1

    sub-float/2addr p3, p1

    return p3

    .line 120
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    move-result p3

    invoke-virtual {p1, p2}, Landroidx/leanback/transition/FadeAndShortSlide;->getHorizontalDistance(Landroid/view/ViewGroup;)F

    move-result p1

    add-float/2addr p3, p1

    return p3
.end method
