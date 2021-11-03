.class public Lcom/google/android/exoplayer2/ui/DefaultTimeBar;
.super Landroid/view/View;
.source "DefaultTimeBar.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/TimeBar;


# static fields
.field private static final ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "android.widget.SeekBar"

.field public static final DEFAULT_AD_MARKER_COLOR:I = -0x4d000100

.field public static final DEFAULT_AD_MARKER_WIDTH_DP:I = 0x4

.field public static final DEFAULT_BAR_HEIGHT_DP:I = 0x4

.field public static final DEFAULT_BUFFERED_COLOR:I = -0x33000001

.field private static final DEFAULT_INCREMENT_COUNT:I = 0x14

.field public static final DEFAULT_PLAYED_AD_MARKER_COLOR:I = 0x33ffff00

.field public static final DEFAULT_PLAYED_COLOR:I = -0x1

.field public static final DEFAULT_SCRUBBER_COLOR:I = -0x1

.field public static final DEFAULT_SCRUBBER_DISABLED_SIZE_DP:I = 0x0

.field public static final DEFAULT_SCRUBBER_DRAGGED_SIZE_DP:I = 0x10

.field public static final DEFAULT_SCRUBBER_ENABLED_SIZE_DP:I = 0xc

.field public static final DEFAULT_TOUCH_TARGET_HEIGHT_DP:I = 0x1a

.field public static final DEFAULT_UNPLAYED_COLOR:I = 0x33ffffff

.field private static final FINE_SCRUB_RATIO:I = 0x3

.field private static final FINE_SCRUB_Y_THRESHOLD_DP:I = -0x32

.field private static final STOP_SCRUBBING_TIMEOUT_MS:J = 0x3e8L


# instance fields
.field private adGroupCount:I

.field private adGroupTimesMs:[J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final adMarkerPaint:Landroid/graphics/Paint;

.field private final adMarkerWidth:I

.field private final barHeight:I

.field private final bufferedBar:Landroid/graphics/Rect;

.field private final bufferedPaint:Landroid/graphics/Paint;

.field private bufferedPosition:J

.field private final density:F

.field private duration:J

.field private final fineScrubYThreshold:I

.field private final formatBuilder:Ljava/lang/StringBuilder;

.field private final formatter:Ljava/util/Formatter;

.field private keyCountIncrement:I

.field private keyTimeIncrement:J

.field private lastCoarseScrubXPosition:I

.field private lastExclusionRectangle:Landroid/graphics/Rect;

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;",
            ">;"
        }
    .end annotation
.end field

.field private final locationOnScreen:[I

.field private playedAdGroups:[Z
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final playedAdMarkerPaint:Landroid/graphics/Paint;

.field private final playedPaint:Landroid/graphics/Paint;

.field private position:J

.field private final progressBar:Landroid/graphics/Rect;

.field private scrubPosition:J

.field private final scrubberBar:Landroid/graphics/Rect;

.field private final scrubberDisabledSize:I

.field private final scrubberDraggedSize:I

.field private final scrubberDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final scrubberEnabledSize:I

.field private final scrubberPadding:I

.field private final scrubberPaint:Landroid/graphics/Paint;

.field private scrubbing:Z

.field private final seekBounds:Landroid/graphics/Rect;

.field private final stopScrubbingRunnable:Ljava/lang/Runnable;

.field private final touchPosition:Landroid/graphics/Point;

.field private final touchTargetHeight:I

.field private final unplayedPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 217
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 221
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 225
    invoke-direct {p0, p1, p2, p3, p2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .locals 16
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    .line 239
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 240
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    .line 241
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    .line 242
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedBar:Landroid/graphics/Rect;

    .line 243
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    .line 244
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->playedPaint:Landroid/graphics/Paint;

    .line 245
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedPaint:Landroid/graphics/Paint;

    .line 246
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->unplayedPaint:Landroid/graphics/Paint;

    .line 247
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerPaint:Landroid/graphics/Paint;

    .line 248
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->playedAdMarkerPaint:Landroid/graphics/Paint;

    .line 249
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPaint:Landroid/graphics/Paint;

    .line 250
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 251
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    const/4 v2, 0x2

    .line 252
    new-array v4, v2, [I

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->locationOnScreen:[I

    .line 253
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchPosition:Landroid/graphics/Point;

    .line 256
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 257
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 258
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->density:F

    .line 259
    iget v4, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->density:F

    const/16 v5, -0x32

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->dpToPx(FI)I

    move-result v4

    iput v4, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->fineScrubYThreshold:I

    .line 260
    iget v4, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->density:F

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->dpToPx(FI)I

    move-result v4

    .line 261
    iget v6, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->density:F

    const/16 v7, 0x1a

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->dpToPx(FI)I

    move-result v6

    .line 262
    iget v7, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->density:F

    invoke-static {v7, v5}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->dpToPx(FI)I

    move-result v5

    .line 263
    iget v7, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->density:F

    const/16 v8, 0xc

    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->dpToPx(FI)I

    move-result v7

    .line 264
    iget v8, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->density:F

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->dpToPx(FI)I

    move-result v8

    .line 265
    iget v10, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->density:F

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->dpToPx(FI)I

    move-result v10

    const v11, 0x33ffff00

    const v12, -0x4d000100

    const v13, 0x33ffffff

    const v14, -0x33000001    # -1.3421772E8f

    const/4 v15, -0x1

    if-eqz v0, :cond_1

    .line 268
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar:[I

    invoke-virtual {v2, v0, v3, v9, v9}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 270
    :try_start_0
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_scrubber_drawable:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    .line 271
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setDrawableLayoutDirection(Landroid/graphics/drawable/Drawable;)Z

    .line 273
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    .line 274
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 276
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_bar_height:I

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->barHeight:I

    .line 278
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_touch_target_height:I

    invoke-virtual {v2, v0, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchTargetHeight:I

    .line 280
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_ad_marker_width:I

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerWidth:I

    .line 282
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_scrubber_enabled_size:I

    invoke-virtual {v2, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberEnabledSize:I

    .line 284
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_scrubber_disabled_size:I

    invoke-virtual {v2, v0, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDisabledSize:I

    .line 286
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_scrubber_dragged_size:I

    invoke-virtual {v2, v0, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDraggedSize:I

    .line 288
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_played_color:I

    invoke-virtual {v2, v0, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 289
    sget v3, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_scrubber_color:I

    .line 290
    invoke-virtual {v2, v3, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 291
    sget v4, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_buffered_color:I

    .line 292
    invoke-virtual {v2, v4, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 293
    sget v5, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_unplayed_color:I

    .line 294
    invoke-virtual {v2, v5, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 295
    sget v6, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_ad_marker_color:I

    invoke-virtual {v2, v6, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 297
    sget v7, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_played_ad_marker_color:I

    .line 298
    invoke-virtual {v2, v7, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 300
    iget-object v8, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->playedPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 301
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 302
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 303
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->unplayedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 304
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 305
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->playedAdMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 308
    throw v0

    .line 310
    :cond_1
    iput v4, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->barHeight:I

    .line 311
    iput v6, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchTargetHeight:I

    .line 312
    iput v5, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerWidth:I

    .line 313
    iput v7, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberEnabledSize:I

    .line 314
    iput v8, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDisabledSize:I

    .line 315
    iput v10, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDraggedSize:I

    .line 316
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->playedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 317
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 318
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 319
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->unplayedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 320
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 321
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->playedAdMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    .line 322
    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    .line 324
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->formatBuilder:Ljava/lang/StringBuilder;

    .line 325
    new-instance v0, Ljava/util/Formatter;

    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->formatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->formatter:Ljava/util/Formatter;

    .line 326
    new-instance v0, Lcom/google/android/exoplayer2/ui/-$$Lambda$DefaultTimeBar$Qcgn0kqjCzq5x_ej2phsDpb1YTU;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/-$$Lambda$DefaultTimeBar$Qcgn0kqjCzq5x_ej2phsDpb1YTU;-><init>(Lcom/google/android/exoplayer2/ui/DefaultTimeBar;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbingRunnable:Ljava/lang/Runnable;

    .line 327
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 328
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    const/4 v3, 0x2

    div-int/2addr v0, v3

    iput v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPadding:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    const/4 v3, 0x2

    .line 330
    iget v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDisabledSize:I

    iget v4, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberEnabledSize:I

    iget v5, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDraggedSize:I

    .line 331
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v2

    div-int/2addr v0, v3

    iput v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPadding:I

    :goto_1
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 334
    iput-wide v3, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    .line 335
    iput-wide v3, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyTimeIncrement:J

    const/16 v0, 0x14

    .line 336
    iput v0, v1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyCountIncrement:I

    .line 337
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setFocusable(Z)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 339
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setImportantForAccessibility(I)V

    :cond_3
    return-void
.end method

.method private static dpToPx(FI)I
    .locals 0

    int-to-float p1, p1

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private drawPlayhead(Landroid/graphics/Canvas;)V
    .locals 7

    .line 815
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v0

    .line 819
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 820
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    .line 821
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 822
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberEnabledSize:I

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDisabledSize:I

    goto :goto_1

    .line 821
    :cond_3
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDraggedSize:I

    .line 823
    :goto_1
    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v2

    .line 824
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 826
    :cond_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 827
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 828
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v2, v2, 0x2

    sub-int v5, v0, v2

    div-int/lit8 v3, v3, 0x2

    sub-int v6, v1, v3

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 833
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_2
    return-void
.end method

.method private drawTimeBar(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 777
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 778
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 780
    iget-wide v3, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 781
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v3

    int-to-float v6, v2

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v7, v2

    int-to-float v8, v1

    iget-object v9, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->unplayedPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    .line 784
    :cond_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 785
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 786
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 787
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-ge v5, v6, :cond_1

    int-to-float v8, v5

    int-to-float v9, v2

    .line 788
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v10, v5

    int-to-float v11, v1

    iget-object v12, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->unplayedPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 790
    :cond_1
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-le v4, v3, :cond_2

    int-to-float v6, v3

    int-to-float v7, v2

    int-to-float v8, v4

    int-to-float v9, v1

    .line 792
    iget-object v10, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 794
    :cond_2
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_3

    .line 795
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v3

    int-to-float v6, v2

    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v7, v3

    int-to-float v8, v1

    iget-object v9, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->playedPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 797
    :cond_3
    iget v3, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adGroupCount:I

    if-nez v3, :cond_4

    return-void

    .line 800
    :cond_4
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adGroupTimesMs:[J

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    .line 801
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->playedAdGroups:[Z

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Z

    .line 802
    iget v5, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerWidth:I

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 803
    :goto_0
    iget v8, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adGroupCount:I

    if-ge v7, v8, :cond_6

    .line 804
    aget-wide v9, v3, v7

    const-wide/16 v11, 0x0

    iget-wide v13, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    invoke-static/range {v9 .. v14}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v8

    .line 805
    iget-object v10, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    .line 806
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-long v10, v10

    mul-long v10, v10, v8

    iget-wide v8, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    div-long/2addr v10, v8

    long-to-int v8, v10

    sub-int/2addr v8, v5

    .line 807
    iget-object v9, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget v11, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerWidth:I

    sub-int/2addr v10, v11

    .line 808
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 807
    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v9, v8

    .line 809
    aget-boolean v8, v4, v7

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->playedAdMarkerPaint:Landroid/graphics/Paint;

    :goto_1
    move-object v15, v8

    goto :goto_2

    :cond_5
    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerPaint:Landroid/graphics/Paint;

    goto :goto_1

    :goto_2
    int-to-float v11, v9

    int-to-float v12, v2

    .line 810
    iget v8, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerWidth:I

    add-int/2addr v9, v8

    int-to-float v13, v9

    int-to-float v14, v1

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private getPositionIncrement()J
    .locals 4

    .line 861
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyTimeIncrement:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    iget v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyCountIncrement:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyTimeIncrement:J

    :goto_0
    return-wide v0
.end method

.method private getProgressText()Ljava/lang/String;
    .locals 4

    .line 857
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->formatBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->formatter:Ljava/util/Formatter;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->position:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getScrubberPosition()J
    .locals 4

    .line 766
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    mul-long v0, v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private isInSeekBar(FF)Z
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public static synthetic lambda$new$0(Lcom/google/android/exoplayer2/ui/DefaultTimeBar;)V
    .locals 1

    const/4 v0, 0x0

    .line 326
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbing(Z)V

    return-void
.end method

.method private positionScrubber(F)V
    .locals 3

    .line 754
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    float-to-int p1, p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {p1, v1, v2}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method private static pxToDp(FI)I
    .locals 0

    int-to-float p1, p1

    div-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private resolveRelativeTouchPosition(Landroid/view/MotionEvent;)Landroid/graphics/Point;
    .locals 4

    .line 758
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->locationOnScreen:[I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getLocationOnScreen([I)V

    .line 759
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchPosition:Landroid/graphics/Point;

    .line 760
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->locationOnScreen:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-int/2addr v1, v2

    .line 761
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->locationOnScreen:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr p1, v2

    .line 759
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Point;->set(II)V

    .line 762
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchPosition:Landroid/graphics/Point;

    return-object p1
.end method

.method private scrubIncrementally(J)Z
    .locals 10

    .line 720
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 723
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubPosition:J

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->position:J

    :goto_0
    const/4 v0, 0x0

    add-long v4, v2, p1

    const-wide/16 v6, 0x0

    .line 724
    iget-wide v8, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-nez v0, :cond_2

    return v1

    .line 728
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-nez v0, :cond_3

    .line 729
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->startScrubbing(J)V

    goto :goto_1

    .line 731
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->updateScrubbing(J)V

    .line 733
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->update()V

    const/4 p1, 0x1

    return p1
.end method

.method private setDrawableLayoutDirection(Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    .line 866
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setDrawableLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static setDrawableLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .locals 2

    .line 870
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setSystemGestureExclusionRectsV29(II)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .line 846
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->lastExclusionRectangle:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->lastExclusionRectangle:Landroid/graphics/Rect;

    .line 847
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->lastExclusionRectangle:Landroid/graphics/Rect;

    .line 848
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    .line 852
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->lastExclusionRectangle:Landroid/graphics/Rect;

    .line 853
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->lastExclusionRectangle:Landroid/graphics/Rect;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method private startScrubbing(J)V
    .locals 2

    .line 677
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubPosition:J

    const/4 v0, 0x1

    .line 678
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    .line 679
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setPressed(Z)V

    .line 680
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 682
    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    .line 685
    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;->onScrubStart(Lcom/google/android/exoplayer2/ui/TimeBar;J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private stopScrubbing(Z)V
    .locals 4

    .line 700
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 701
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    .line 702
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setPressed(Z)V

    .line 703
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 705
    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 707
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate()V

    .line 708
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    .line 709
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubPosition:J

    invoke-interface {v1, p0, v2, v3, p1}, Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;->onScrubStop(Lcom/google/android/exoplayer2/ui/TimeBar;JZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private update()V
    .locals 6

    .line 738
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 739
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 740
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubPosition:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->position:J

    .line 741
    :goto_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 742
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedPosition:J

    mul-long v2, v2, v4

    iget-wide v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 743
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v3, Landroid/graphics/Rect;->right:I

    .line 744
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    mul-long v2, v2, v0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    div-long/2addr v2, v0

    long-to-int v0, v2

    .line 745
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 747
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 748
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 750
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method private updateDrawableState()V
    .locals 2

    .line 838
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    .line 839
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate()V

    :cond_0
    return-void
.end method

.method private updateScrubbing(J)V
    .locals 2

    .line 690
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubPosition:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 693
    :cond_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubPosition:J

    .line 694
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    .line 695
    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;->onScrubMove(Lcom/google/android/exoplayer2/ui/TimeBar;J)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;)V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 578
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 579
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->updateDrawableState()V

    return-void
.end method

.method public getPreferredUpdateDelay()J
    .locals 5

    .line 457
    iget v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->density:F

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->pxToDp(FI)I

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    int-to-long v3, v0

    div-long/2addr v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    const-wide v1, 0x7fffffffffffffffL

    :goto_1
    return-wide v1
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 584
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 585
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 486
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 487
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->drawTimeBar(Landroid/graphics/Canvas;)V

    .line 488
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->drawPlayhead(Landroid/graphics/Canvas;)V

    .line 489
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 570
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 571
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 572
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbing(Z)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 626
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 627
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 628
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getProgressText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "android.widget.SeekBar"

    .line 630
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 636
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.SeekBar"

    .line 637
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 638
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getProgressText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 639
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    .line 642
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 643
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 644
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x1000

    .line 646
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v0, 0x2000

    .line 647
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 540
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getPositionIncrement()J

    move-result-wide v0

    const/16 v2, 0x42

    const/4 v3, 0x1

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    neg-long v0, v0

    .line 547
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubIncrementally(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 549
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbingRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->postDelayed(Ljava/lang/Runnable;J)Z

    return v3

    .line 555
    :cond_0
    :pswitch_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 556
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbing(Z)V

    return v3

    .line 564
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 604
    iget p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchTargetHeight:I

    sub-int p1, p5, p1

    div-int/lit8 p1, p1, 0x2

    .line 605
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getPaddingLeft()I

    move-result p2

    .line 606
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getPaddingRight()I

    move-result p3

    sub-int p3, p4, p3

    .line 607
    iget v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchTargetHeight:I

    iget v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->barHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    .line 608
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    iget v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchTargetHeight:I

    add-int/2addr v2, p1

    invoke-virtual {v1, p2, p1, p3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 609
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget p3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPadding:I

    add-int/2addr p2, p3

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPadding:I

    sub-int/2addr p3, v1

    iget v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->barHeight:I

    add-int/2addr v1, v0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 611
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 p2, 0x1d

    if-lt p1, p2, :cond_0

    .line 612
    invoke-direct {p0, p4, p5}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setSystemGestureExclusionRectsV29(II)V

    .line 614
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->update()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 592
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 593
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-nez v0, :cond_0

    .line 594
    iget p2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchTargetHeight:I

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchTargetHeight:I

    .line 595
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 596
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setMeasuredDimension(II)V

    .line 597
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->updateDrawableState()V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setDrawableLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 620
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 494
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-wide v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    goto :goto_2

    .line 497
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->resolveRelativeTouchPosition(Landroid/view/MotionEvent;)Landroid/graphics/Point;

    move-result-object v0

    .line 498
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 499
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 500
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 511
    :pswitch_0
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz p1, :cond_3

    .line 512
    iget p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->fineScrubYThreshold:I

    if-ge v0, p1, :cond_1

    .line 513
    iget p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->lastCoarseScrubXPosition:I

    sub-int/2addr v2, p1

    .line 514
    iget p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->lastCoarseScrubXPosition:I

    div-int/2addr v2, v4

    add-int/2addr p1, v2

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->positionScrubber(F)V

    goto :goto_0

    .line 516
    :cond_1
    iput v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->lastCoarseScrubXPosition:I

    int-to-float p1, v2

    .line 517
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->positionScrubber(F)V

    .line 519
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getScrubberPosition()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->updateScrubbing(J)V

    .line 520
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->update()V

    .line 521
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate()V

    return v5

    .line 527
    :pswitch_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v0, :cond_3

    .line 528
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbing(Z)V

    return v5

    :pswitch_2
    int-to-float p1, v2

    int-to-float v0, v0

    .line 502
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->isInSeekBar(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 503
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->positionScrubber(F)V

    .line 504
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getScrubberPosition()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->startScrubbing(J)V

    .line 505
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->update()V

    .line 506
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate()V

    return v5

    :cond_3
    :goto_1
    return v1

    :cond_4
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 5
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 653
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 656
    :cond_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    const/4 v1, 0x0

    if-gtz p2, :cond_1

    return v1

    :cond_1
    const/16 p2, 0x2000

    if-ne p1, p2, :cond_2

    .line 660
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getPositionIncrement()J

    move-result-wide p1

    neg-long p1, p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubIncrementally(J)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 661
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbing(Z)V

    goto :goto_0

    :cond_2
    const/16 p2, 0x1000

    if-ne p1, p2, :cond_4

    .line 664
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getPositionIncrement()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubIncrementally(J)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 665
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbing(Z)V

    :cond_3
    :goto_0
    const/4 p1, 0x4

    .line 670
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->sendAccessibilityEvent(I)V

    return v0

    :cond_4
    return v1
.end method

.method public removeListener(Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;)V
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAdGroupTimesMs([J[ZI)V
    .locals 1
    .param p1    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p3, :cond_1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 466
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 468
    iput p3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adGroupCount:I

    .line 469
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adGroupTimesMs:[J

    .line 470
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->playedAdGroups:[Z

    .line 471
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->update()V

    return-void
.end method

.method public setAdMarkerColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 393
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 394
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setBufferedColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 372
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 373
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setBufferedPosition(J)V
    .locals 0

    .line 442
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedPosition:J

    .line 443
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->update()V

    return-void
.end method

.method public setDuration(J)V
    .locals 2

    .line 448
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    .line 449
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 450
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbing(Z)V

    .line 452
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->update()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 478
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 479
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 480
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbing(Z)V

    :cond_0
    return-void
.end method

.method public setKeyCountIncrement(I)V
    .locals 2

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 428
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 429
    iput p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyCountIncrement:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 430
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyTimeIncrement:J

    return-void
.end method

.method public setKeyTimeIncrement(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 421
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    const/4 v0, -0x1

    .line 422
    iput v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyCountIncrement:I

    .line 423
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyTimeIncrement:J

    return-void
.end method

.method public setPlayedAdMarkerColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 403
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->playedAdMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 404
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setPlayedColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 350
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->playedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 351
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setPosition(J)V
    .locals 0

    .line 435
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->position:J

    .line 436
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getProgressText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 437
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->update()V

    return-void
.end method

.method public setScrubberColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 360
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 361
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setUnplayedColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 383
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->unplayedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 384
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method
