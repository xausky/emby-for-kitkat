.class public Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;
.super Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;
.source "AdaptiveTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;,
        Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$BandwidthProvider;,
        Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;
    }
.end annotation


# static fields
.field public static final DEFAULT_BANDWIDTH_FRACTION:F = 0.7f

.field public static final DEFAULT_BUFFERED_FRACTION_TO_LIVE_EDGE_FOR_QUALITY_INCREASE:F = 0.75f

.field public static final DEFAULT_MAX_DURATION_FOR_QUALITY_DECREASE_MS:I = 0x61a8

.field public static final DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS:I = 0x2710

.field public static final DEFAULT_MIN_DURATION_TO_RETAIN_AFTER_DISCARD_MS:I = 0x61a8

.field public static final DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS:J = 0x7d0L


# instance fields
.field private final bandwidthProvider:Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$BandwidthProvider;

.field private final bufferedFractionToLiveEdgeForQualityIncrease:F

.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private lastBufferEvaluationMs:J

.field private final maxDurationForQualityDecreaseUs:J

.field private final minDurationForQualityIncreaseUs:J

.field private final minDurationToRetainAfterDiscardUs:J

.field private final minTimeBetweenBufferReevaluationMs:J

.field private playbackSpeed:F

.field private reason:I

.field private selectedIndex:I


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$BandwidthProvider;JJJFJLcom/google/android/exoplayer2/util/Clock;)V
    .locals 0

    .line 391
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    .line 392
    iput-object p3, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bandwidthProvider:Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$BandwidthProvider;

    const-wide/16 p1, 0x3e8

    mul-long p4, p4, p1

    .line 393
    iput-wide p4, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    mul-long p6, p6, p1

    .line 394
    iput-wide p6, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->maxDurationForQualityDecreaseUs:J

    mul-long p8, p8, p1

    .line 395
    iput-wide p8, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationToRetainAfterDiscardUs:J

    .line 396
    iput p10, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bufferedFractionToLiveEdgeForQualityIncrease:F

    .line 398
    iput-wide p11, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minTimeBetweenBufferReevaluationMs:J

    .line 399
    iput-object p13, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->clock:Lcom/google/android/exoplayer2/util/Clock;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 400
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    const/4 p1, 0x0

    .line 401
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->reason:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 402
    iput-wide p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$BandwidthProvider;JJJFJLcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$1;)V
    .locals 0

    .line 37
    invoke-direct/range {p0 .. p13}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$BandwidthProvider;JJJFJLcom/google/android/exoplayer2/util/Clock;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/upstream/BandwidthMeter;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 314
    sget-object v16, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x2710

    const-wide/16 v8, 0x61a8

    const-wide/16 v10, 0x61a8

    const v12, 0x3f333333    # 0.7f

    const/high16 v13, 0x3f400000    # 0.75f

    const-wide/16 v14, 0x7d0

    invoke-direct/range {v0 .. v16}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/upstream/BandwidthMeter;JJJJFFJLcom/google/android/exoplayer2/util/Clock;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/upstream/BandwidthMeter;JJJJFFJLcom/google/android/exoplayer2/util/Clock;)V
    .locals 14

    .line 369
    new-instance v3, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;

    move-object/from16 v0, p3

    move-wide/from16 v1, p4

    move/from16 v4, p12

    invoke-direct {v3, v0, v4, v1, v2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;FJ)V

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    move/from16 v10, p13

    move-wide/from16 v11, p14

    move-object/from16 v13, p16

    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$BandwidthProvider;JJJFJLcom/google/android/exoplayer2/util/Clock;)V

    return-void
.end method

.method static synthetic access$000([[J)[[[J
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getAllocationCheckpoints([[J)[[[J

    move-result-object p0

    return-object p0
.end method

.method private static countArrayElements([[D)I
    .locals 4

    .line 735
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    .line 736
    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private determineIdealSelectedIndex(J)I
    .locals 9

    .line 575
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bandwidthProvider:Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$BandwidthProvider;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$BandwidthProvider;->getAllocatedBandwidth()J

    move-result-wide v7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 577
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->length:I

    if-ge v0, v2, :cond_3

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    .line 578
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->isBlacklisted(IJ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 579
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 580
    iget v3, v2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v4, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    move-object v1, p0

    move-wide v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->canSelectFormat(Lcom/google/android/exoplayer2/Format;IFJ)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    move v1, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private static getAllocationCheckpoints([[J)[[[J
    .locals 15

    .line 664
    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getLogArrayValues([[J)[[D

    move-result-object v0

    .line 665
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getSwitchPoints([[D)[[D

    move-result-object v1

    .line 670
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->countArrayElements([[D)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    .line 671
    array-length v3, v0

    const/4 v4, 0x2

    filled-new-array {v3, v2, v4}, [I

    move-result-object v3

    const-class v5, J

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[J

    .line 672
    array-length v5, v0

    new-array v5, v5, [I

    const/4 v6, 0x1

    .line 673
    invoke-static {v3, v6, p0, v5}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->setCheckpointValues([[[JI[[J[I)V

    const/4 v7, 0x2

    :goto_0
    add-int/lit8 v8, v2, -0x1

    const/4 v9, 0x0

    if-ge v7, v8, :cond_3

    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v8, 0x0

    .line 677
    :goto_1
    array-length v12, v0

    if-ge v9, v12, :cond_2

    .line 678
    aget v12, v5, v9

    add-int/2addr v12, v6

    aget-object v13, v0, v9

    array-length v13, v13

    if-ne v12, v13, :cond_0

    goto :goto_2

    .line 681
    :cond_0
    aget-object v12, v1, v9

    aget v13, v5, v9

    aget-wide v13, v12, v13

    cmpg-double v12, v13, v10

    if-gez v12, :cond_1

    move v8, v9

    move-wide v10, v13

    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 687
    :cond_2
    aget v9, v5, v8

    add-int/2addr v9, v6

    aput v9, v5, v8

    .line 688
    invoke-static {v3, v7, p0, v5}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->setCheckpointValues([[[JI[[J[I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 690
    :cond_3
    array-length p0, v3

    const/4 v0, 0x0

    :goto_3
    if-ge v0, p0, :cond_4

    aget-object v1, v3, v0

    .line 691
    aget-object v5, v1, v8

    add-int/lit8 v7, v2, -0x2

    aget-object v10, v1, v7

    aget-wide v11, v10, v9

    const-wide/16 v13, 0x2

    mul-long v11, v11, v13

    aput-wide v11, v5, v9

    .line 692
    aget-object v5, v1, v8

    aget-object v1, v1, v7

    aget-wide v10, v1, v6

    mul-long v10, v10, v13

    aput-wide v10, v5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return-object v3
.end method

.method private static getLogArrayValues([[J)[[D
    .locals 10

    .line 699
    array-length v0, p0

    new-array v0, v0, [[D

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 700
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 701
    aget-object v3, p0, v2

    array-length v3, v3

    new-array v3, v3, [D

    aput-object v3, v0, v2

    const/4 v3, 0x0

    .line 702
    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 703
    aget-object v4, v0, v2

    aget-object v5, p0, v2

    aget-wide v6, v5, v3

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    const-wide/16 v5, 0x0

    goto :goto_2

    :cond_0
    aget-object v5, p0, v2

    aget-wide v6, v5, v3

    long-to-double v5, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    :goto_2
    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static getSwitchPoints([[D)[[D
    .locals 14

    .line 716
    array-length v0, p0

    new-array v0, v0, [[D

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 717
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 718
    aget-object v3, p0, v2

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [D

    aput-object v3, v0, v2

    .line 719
    aget-object v3, v0, v2

    array-length v3, v3

    if-nez v3, :cond_0

    goto :goto_3

    .line 722
    :cond_0
    aget-object v3, p0, v2

    aget-object v4, p0, v2

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-wide v4, v3, v4

    aget-object v3, p0, v2

    aget-wide v6, v3, v1

    sub-double/2addr v4, v6

    const/4 v3, 0x0

    .line 723
    :goto_1
    aget-object v6, p0, v2

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 724
    aget-object v8, p0, v2

    aget-wide v9, v8, v3

    aget-object v8, p0, v2

    add-int/lit8 v11, v3, 0x1

    aget-wide v12, v8, v11

    add-double/2addr v9, v12

    mul-double v9, v9, v6

    .line 725
    aget-object v6, v0, v2

    const-wide/16 v7, 0x0

    cmpl-double v7, v4, v7

    if-nez v7, :cond_1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_1
    aget-object v7, p0, v2

    aget-wide v12, v7, v1

    sub-double/2addr v9, v12

    div-double v7, v9, v4

    :goto_2
    aput-wide v7, v6, v3

    move v3, v11

    goto :goto_1

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private minDurationForQualityIncreaseUs(J)J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 591
    iget-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    long-to-float p1, p1

    .line 593
    iget p2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bufferedFractionToLiveEdgeForQualityIncrease:F

    mul-float p1, p1, p2

    float-to-long p1, p1

    goto :goto_1

    :cond_1
    iget-wide p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    :goto_1
    return-wide p1
.end method

.method private static setCheckpointValues([[[JI[[J[I)V
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v2, v1

    const/4 v1, 0x0

    .line 753
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_0

    .line 754
    aget-object v4, p0, v1

    aget-object v4, v4, p1

    aget-object v5, p2, v1

    aget v6, p3, v1

    aget-wide v6, v5, v6

    const/4 v5, 0x1

    aput-wide v6, v4, v5

    .line 755
    aget-object v4, p0, v1

    aget-object v4, v4, p1

    aget-wide v5, v4, v5

    add-long/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 757
    :cond_0
    array-length p2, p0

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p2, :cond_1

    aget-object v1, p0, p3

    .line 758
    aget-object v1, v1, p1

    aput-wide v2, v1, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method protected canSelectFormat(Lcom/google/android/exoplayer2/Format;IFJ)Z
    .locals 0

    int-to-float p1, p2

    mul-float p1, p1, p3

    .line 543
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long p1, p1

    cmp-long p1, p1, p4

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public enable()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 418
    iput-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    return-void
.end method

.method public evaluateQueueSize(JLjava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 490
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->shouldEvaluateQueueSize(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 491
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 494
    :cond_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    .line 495
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return v3

    .line 499
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    .line 500
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    .line 501
    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->startTimeUs:J

    sub-long/2addr v4, p1

    iget v6, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    .line 502
    invoke-static {v4, v5, v6}, Lcom/google/android/exoplayer2/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v4

    .line 504
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getMinDurationToRetainAfterDiscardUs()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    return v2

    .line 508
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(J)I

    move-result v0

    .line 509
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 514
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    .line 515
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 516
    iget-wide v8, v1, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->startTimeUs:J

    sub-long/2addr v8, p1

    .line 517
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    .line 518
    invoke-static {v8, v9, v1}, Lcom/google/android/exoplayer2/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v8

    cmp-long v1, v8, v6

    if-ltz v1, :cond_3

    .line 519
    iget v1, v4, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v5, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-ge v1, v5, :cond_3

    iget v1, v4, Lcom/google/android/exoplayer2/Format;->height:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_3

    iget v1, v4, Lcom/google/android/exoplayer2/Format;->height:I

    const/16 v8, 0x2d0

    if-ge v1, v8, :cond_3

    iget v1, v4, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq v1, v5, :cond_3

    iget v1, v4, Lcom/google/android/exoplayer2/Format;->width:I

    const/16 v5, 0x500

    if-ge v1, v5, :cond_3

    iget v1, v4, Lcom/google/android/exoplayer2/Format;->height:I

    iget v4, v0, Lcom/google/android/exoplayer2/Format;->height:I

    if-ge v1, v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public experimental_setBandwidthAllocationCheckpoints([[J)V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bandwidthProvider:Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$BandwidthProvider;

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;

    .line 413
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;->experimental_setBandwidthAllocationCheckpoints([[J)V

    return-void
.end method

.method protected getMinDurationToRetainAfterDiscardUs()J
    .locals 2

    .line 565
    iget-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationToRetainAfterDiscardUs:J

    return-wide v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .line 473
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .locals 1

    .line 478
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->reason:I

    return v0
.end method

.method public onPlaybackSpeed(F)V
    .locals 0

    .line 423
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    return-void
.end method

.method protected shouldEvaluateQueueSize(J)Z
    .locals 4

    .line 554
    iget-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minTimeBetweenBufferReevaluationMs:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;[",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;",
            ")V"
        }
    .end annotation

    .line 433
    iget-object p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    .line 436
    iget p7, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->reason:I

    if-nez p7, :cond_0

    const/4 p3, 0x1

    .line 437
    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->reason:I

    .line 438
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(J)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    return-void

    .line 443
    :cond_0
    iget p7, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    .line 444
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(J)I

    move-result p8

    iput p8, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    .line 445
    iget p8, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    if-ne p8, p7, :cond_1

    return-void

    .line 449
    :cond_1
    invoke-virtual {p0, p7, p1, p2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->isBlacklisted(IJ)Z

    move-result p1

    if-nez p1, :cond_3

    .line 451
    invoke-virtual {p0, p7}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 452
    iget p2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 453
    iget p8, p2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v0, p1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-le p8, v0, :cond_2

    .line 454
    invoke-direct {p0, p5, p6}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs(J)J

    move-result-wide p5

    cmp-long p5, p3, p5

    if-gez p5, :cond_2

    .line 457
    iput p7, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    goto :goto_0

    .line 458
    :cond_2
    iget p2, p2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-ge p2, p1, :cond_3

    iget-wide p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->maxDurationForQualityDecreaseUs:J

    cmp-long p1, p3, p1

    if-ltz p1, :cond_3

    .line 462
    iput p7, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    .line 466
    :cond_3
    :goto_0
    iget p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    if-eq p1, p7, :cond_4

    const/4 p1, 0x3

    .line 467
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->reason:I

    :cond_4
    return-void
.end method
