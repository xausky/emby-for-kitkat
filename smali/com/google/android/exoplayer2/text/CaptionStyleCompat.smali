.class public final Lcom/google/android/exoplayer2/text/CaptionStyleCompat;
.super Ljava/lang/Object;
.source "CaptionStyleCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/CaptionStyleCompat$EdgeType;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

.field public static final EDGE_TYPE_DEPRESSED:I = 0x4

.field public static final EDGE_TYPE_DROP_SHADOW:I = 0x2

.field public static final EDGE_TYPE_NONE:I = 0x0

.field public static final EDGE_TYPE_OUTLINE:I = 0x1

.field public static final EDGE_TYPE_RAISED:I = 0x3

.field public static final USE_TRACK_COLOR_SETTINGS:I = 0x1


# instance fields
.field public final backgroundColor:I

.field public final edgeColor:I

.field public final edgeType:I

.field public final foregroundColor:I

.field public final typeface:Landroid/graphics/Typeface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final windowColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 77
    new-instance v7, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    const/4 v1, -0x1

    const/high16 v2, -0x1000000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;)V

    sput-object v7, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    return-void
.end method

.method public constructor <init>(IIIIILandroid/graphics/Typeface;)V
    .locals 0
    .param p6    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput p1, p0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->foregroundColor:I

    .line 155
    iput p2, p0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->backgroundColor:I

    .line 156
    iput p3, p0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->windowColor:I

    .line 157
    iput p4, p0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->edgeType:I

    .line 158
    iput p5, p0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->edgeColor:I

    .line 159
    iput-object p6, p0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public static createFromCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer2/text/CaptionStyleCompat;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 130
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 131
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->createFromCaptionStyleV21(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    move-result-object p0

    return-object p0

    .line 135
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->createFromCaptionStyleV19(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    move-result-object p0

    return-object p0
.end method

.method private static createFromCaptionStyleV19(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer2/text/CaptionStyleCompat;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 166
    new-instance v7, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    iget v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    iget v2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    iget v4, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    iget v5, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    .line 168
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    const/4 v3, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;)V

    return-object v7
.end method

.method private static createFromCaptionStyleV21(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer2/text/CaptionStyleCompat;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 175
    new-instance v7, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    .line 176
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    iget v0, v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->foregroundColor:I

    goto :goto_0

    .line 177
    :goto_1
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    :goto_2
    move v2, v0

    goto :goto_3

    :cond_1
    sget-object v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    iget v0, v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->backgroundColor:I

    goto :goto_2

    .line 178
    :goto_3
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    :goto_4
    move v3, v0

    goto :goto_5

    :cond_2
    sget-object v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    iget v0, v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->windowColor:I

    goto :goto_4

    .line 179
    :goto_5
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    :goto_6
    move v4, v0

    goto :goto_7

    :cond_3
    sget-object v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    iget v0, v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->edgeType:I

    goto :goto_6

    .line 180
    :goto_7
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    :goto_8
    move v5, v0

    goto :goto_9

    :cond_4
    sget-object v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    iget v0, v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->edgeColor:I

    goto :goto_8

    .line 181
    :goto_9
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;)V

    return-object v7
.end method
