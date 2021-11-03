.class public Lcom/google/android/exoplayer2/source/SampleQueue;
.super Ljava/lang/Object;
.source "SampleQueue.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;,
        Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;
    }
.end annotation


# static fields
.field static final SAMPLE_CAPACITY_INCREMENT:I = 0x3e8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private absoluteFirstIndex:I

.field private capacity:I

.field private cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

.field private currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "*>;"
        }
    .end annotation
.end field

.field private downstreamFormat:Lcom/google/android/exoplayer2/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "*>;"
        }
    .end annotation
.end field

.field private final extrasHolder:Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;

.field private flags:[I

.field private formats:[Lcom/google/android/exoplayer2/Format;

.field private isLastSampleQueued:Z

.field private largestDiscardedTimestampUs:J

.field private largestQueuedTimestampUs:J

.field private length:I

.field private offsets:[J

.field private pendingSplice:Z

.field private pendingUpstreamFormatAdjustment:Z

.field private readPosition:I

.field private relativeFirstIndex:I

.field private final sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

.field private sampleOffsetUs:J

.field private sizes:[I

.field private sourceIds:[I

.field private timesUs:[J

.field private unadjustedUpstreamFormat:Lcom/google/android/exoplayer2/Format;

.field private upstreamCommittedFormat:Lcom/google/android/exoplayer2/Format;

.field private upstreamFormat:Lcom/google/android/exoplayer2/Format;

.field private upstreamFormatChangeListener:Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;

.field private upstreamFormatRequired:Z

.field private upstreamKeyframeRequired:Z

.field private upstreamSourceId:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/Allocator;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "*>;)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/google/android/exoplayer2/source/SampleDataQueue;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/SampleDataQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    .line 99
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 100
    new-instance p1, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;

    const/16 p1, 0x3e8

    .line 101
    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    .line 102
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sourceIds:[I

    .line 103
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    .line 104
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    .line 105
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    .line 106
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    .line 107
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    new-array p1, p1, [Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 108
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    new-array p1, p1, [Lcom/google/android/exoplayer2/Format;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    const-wide/high16 p1, -0x8000000000000000L

    .line 109
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestDiscardedTimestampUs:J

    .line 110
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestQueuedTimestampUs:J

    const/4 p1, 0x1

    .line 111
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatRequired:Z

    .line 112
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamKeyframeRequired:Z

    return-void
.end method

.method private declared-synchronized attemptSplice(J)Z
    .locals 7

    monitor-enter p0

    .line 726
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 727
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestDiscardedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p1, p1, v3

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit p0

    return v1

    .line 729
    :cond_1
    :try_start_1
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestDiscardedTimestampUs:J

    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    .line 730
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestTimestamp(I)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v3, p1

    if-ltz v0, :cond_2

    .line 732
    monitor-exit p0

    return v1

    .line 734
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    .line 735
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result v1

    .line 736
    :cond_3
    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    if-le v0, v3, :cond_4

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    aget-wide v4, v3, v1

    cmp-long v3, v4, p1

    if-ltz v3, :cond_4

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    .line 740
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    sub-int/2addr v1, v2

    goto :goto_0

    .line 743
    :cond_4
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardUpstreamSampleMetadata(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 744
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 725
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized commitSample(JIJILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
    .locals 5

    monitor-enter p0

    .line 658
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamKeyframeRequired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_0

    .line 660
    monitor-exit p0

    return-void

    .line 662
    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamKeyframeRequired:Z

    .line 664
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatRequired:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const/high16 v0, 0x20000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 666
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->isLastSampleQueued:Z

    .line 667
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestQueuedTimestampUs:J

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestQueuedTimestampUs:J

    .line 669
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result v0

    .line 670
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    aput-wide p1, v3, v0

    .line 671
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    aput-wide p4, p1, v0

    .line 672
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    aput p6, p1, v0

    .line 673
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    aput p3, p1, v0

    .line 674
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    aput-object p7, p1, v0

    .line 675
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    aput-object p2, p1, v0

    .line 676
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sourceIds:[I

    iget p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamSourceId:I

    aput p2, p1, v0

    .line 677
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamCommittedFormat:Lcom/google/android/exoplayer2/Format;

    .line 679
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    .line 680
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    iget p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    if-ne p1, p2, :cond_3

    .line 682
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    add-int/lit16 p1, p1, 0x3e8

    .line 683
    new-array p2, p1, [I

    .line 684
    new-array p3, p1, [J

    .line 685
    new-array p4, p1, [J

    .line 686
    new-array p5, p1, [I

    .line 687
    new-array p6, p1, [I

    .line 688
    new-array p7, p1, [Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 689
    new-array v0, p1, [Lcom/google/android/exoplayer2/Format;

    .line 690
    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    sub-int/2addr v2, v3

    .line 691
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 692
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, p4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 693
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, p5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 694
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, p6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 695
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, p7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 696
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 697
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sourceIds:[I

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 698
    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    .line 699
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    invoke-static {v4, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 700
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    invoke-static {v4, v1, p4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 701
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    invoke-static {v4, v1, p5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 702
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    invoke-static {v4, v1, p6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 703
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    invoke-static {v4, v1, p7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 704
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    invoke-static {v4, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 705
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sourceIds:[I

    invoke-static {v4, v1, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 706
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    .line 707
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    .line 708
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    .line 709
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    .line 710
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 711
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    .line 712
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sourceIds:[I

    .line 713
    iput v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    .line 714
    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 716
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 657
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized discardSampleMetadataTo(JZZ)J
    .locals 9

    monitor-enter p0

    .line 621
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    aget-wide v3, v0, v3

    cmp-long v0, p1, v3

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    .line 624
    iget p4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    if-eq p4, v0, :cond_1

    iget p4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    iget p4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    :goto_0
    move v5, p4

    .line 625
    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    move-object v3, p0

    move-wide v6, p1

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/source/SampleQueue;->findSampleBefore(IIJZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    .line 627
    monitor-exit p0

    return-wide v1

    .line 629
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardSamples(I)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide p1

    .line 622
    :cond_3
    :goto_1
    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception p1

    .line 620
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized discardSampleMetadataToEnd()J
    .locals 2

    monitor-enter p0

    .line 640
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    .line 641
    monitor-exit p0

    return-wide v0

    .line 643
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardSamples(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 639
    monitor-exit p0

    throw v0
.end method

.method private discardSamples(I)J
    .locals 5

    .line 862
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestDiscardedTimestampUs:J

    .line 863
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestTimestamp(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestDiscardedTimestampUs:J

    .line 864
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    .line 865
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    .line 866
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    .line 867
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    if-lt v0, v1, :cond_0

    .line 868
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    .line 870
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    .line 871
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 872
    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    .line 874
    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    if-nez p1, :cond_3

    .line 875
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    if-nez p1, :cond_2

    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    :goto_0
    add-int/lit8 p1, p1, -0x1

    .line 876
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1

    .line 878
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method private discardUpstreamSampleMetadata(I)J
    .locals 6

    .line 748
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getWriteIndex()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 749
    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 750
    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    .line 751
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestDiscardedTimestampUs:J

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestTimestamp(I)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestQueuedTimestampUs:J

    if-nez v0, :cond_1

    .line 752
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->isLastSampleQueued:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    :cond_1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->isLastSampleQueued:Z

    .line 753
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    if-eqz p1, :cond_2

    .line 754
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    sub-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result p1

    .line 755
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private findSampleBefore(IIJZ)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v1, p1

    const/4 p1, 0x0

    const/4 v2, -0x1

    :goto_0
    if-ge p1, p2, :cond_3

    .line 842
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    aget-wide v4, v3, v1

    cmp-long v3, v4, p3

    if-gtz v3, :cond_3

    if-eqz p5, :cond_0

    .line 843
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    aget v3, v3, v1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    move v2, p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 848
    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private getLargestTimestamp(I)J
    .locals 7

    const-wide/high16 v0, -0x8000000000000000L

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, p1, -0x1

    .line 895
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_3

    .line 897
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    aget-wide v5, v4, v2

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 898
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 903
    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-wide v0
.end method

.method private getRelativeIndex(I)I
    .locals 1

    .line 915
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    add-int/2addr v0, p1

    .line 916
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    sub-int/2addr v0, p1

    :goto_0
    return v0
.end method

.method private hasNextSample()Z
    .locals 2

    .line 761
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private mayReadSample(I)Z
    .locals 3

    .line 813
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    sget-object v1, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->DUMMY:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 820
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    aget p1, v0, p1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 822
    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->playClearSamplesWithoutKeys()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method private onFormatResult(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/FormatHolder;)V
    .locals 5

    .line 772
    iput-object p1, p2, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    .line 773
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 774
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 775
    :goto_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    .line 776
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    sget-object v4, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->DUMMY:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    if-ne v3, v4, :cond_2

    return-void

    .line 783
    :cond_2
    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 784
    iput-boolean v1, p2, Lcom/google/android/exoplayer2/FormatHolder;->includesDrmSession:Z

    .line 785
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iput-object v1, p2, Lcom/google/android/exoplayer2/FormatHolder;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-nez v0, :cond_3

    .line 786
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 792
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 793
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    if-eqz v3, :cond_4

    .line 794
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 796
    invoke-interface {p1, v1, v3}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->acquireSession(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object p1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 798
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p1

    .line 797
    invoke-interface {v2, v1, p1}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->acquirePlaceholderSession(Landroid/os/Looper;I)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 799
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iput-object p1, p2, Lcom/google/android/exoplayer2/FormatHolder;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_5

    .line 802
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->release()V

    :cond_5
    return-void
.end method

.method private declared-synchronized readSampleMetadata(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZJLcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;)I
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 542
    :try_start_0
    iput-boolean v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->waitingForKeys:Z

    const/4 v0, -0x1

    .line 547
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->hasNextSample()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 548
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result v0

    .line 549
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    aget-wide v4, v3, v0

    cmp-long v3, v4, p5

    if-gez v3, :cond_0

    .line 550
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 551
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/MimeTypes;->allSamplesAreSyncSamples(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 552
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    goto :goto_0

    :cond_0
    const/4 v3, -0x3

    const/4 v4, -0x5

    const/4 v5, -0x4

    if-nez v1, :cond_5

    if-nez p4, :cond_4

    .line 559
    iget-boolean p4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->isLastSampleQueued:Z

    if-eqz p4, :cond_1

    goto :goto_1

    .line 562
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz p2, :cond_3

    if-nez p3, :cond_2

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-eq p2, p3, :cond_3

    .line 563
    :cond_2
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->onFormatResult(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/FormatHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    monitor-exit p0

    return v4

    .line 566
    :cond_3
    monitor-exit p0

    return v3

    :cond_4
    :goto_1
    const/4 p1, 0x4

    .line 560
    :try_start_1
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 561
    monitor-exit p0

    return v5

    :cond_5
    if-nez p3, :cond_a

    .line 570
    :try_start_2
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object p3, p3, v0

    iget-object p4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-eq p3, p4, :cond_6

    goto :goto_2

    .line 575
    :cond_6
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->mayReadSample(I)Z

    move-result p1

    if-nez p1, :cond_7

    .line 576
    iput-boolean v2, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->waitingForKeys:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 577
    monitor-exit p0

    return v3

    .line 580
    :cond_7
    :try_start_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    aget p1, p1, v0

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 581
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    aget-wide p3, p1, v0

    iput-wide p3, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 582
    iget-wide p3, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    cmp-long p1, p3, p5

    if-gez p1, :cond_8

    const/high16 p1, -0x80000000

    .line 583
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->addFlag(I)V

    .line 585
    :cond_8
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isFlagsOnly()Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_9

    .line 586
    monitor-exit p0

    return v5

    .line 588
    :cond_9
    :try_start_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    aget p1, p1, v0

    iput p1, p7, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    .line 589
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    aget-wide p2, p1, v0

    iput-wide p2, p7, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    .line 590
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    aget-object p1, p1, v0

    iput-object p1, p7, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 592
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 593
    monitor-exit p0

    return v5

    .line 571
    :cond_a
    :goto_2
    :try_start_5
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object p2, p2, v0

    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->onFormatResult(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/FormatHolder;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 572
    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    .line 541
    monitor-exit p0

    throw p1
.end method

.method private releaseDrmSessionReferences()V
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->release()V

    const/4 v0, 0x0

    .line 649
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 652
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    :cond_0
    return-void
.end method

.method private declared-synchronized rewind()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 530
    :try_start_0
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    .line 531
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->rewind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 529
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setUpstreamFormat(Lcom/google/android/exoplayer2/Format;)Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 598
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatRequired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 601
    :cond_0
    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatRequired:Z

    .line 602
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 606
    monitor-exit p0

    return v0

    .line 607
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamCommittedFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 611
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamCommittedFormat:Lcom/google/android/exoplayer2/Format;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 612
    monitor-exit p0

    return v1

    .line 614
    :cond_2
    :try_start_3
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 615
    monitor-exit p0

    return v1

    .line 596
    :goto_0
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized advanceTo(J)I
    .locals 8

    monitor-enter p0

    .line 382
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result v2

    .line 383
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->hasNextSample()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    aget-wide v3, v0, v2

    cmp-long v0, p1, v3

    if-gez v0, :cond_0

    goto :goto_0

    .line 386
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    sub-int v3, v0, v1

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    .line 387
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/SampleQueue;->findSampleBefore(IIJZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    .line 389
    monitor-exit p0

    return v7

    .line 391
    :cond_1
    :try_start_1
    iget p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    monitor-exit p0

    return p1

    .line 384
    :cond_2
    :goto_0
    monitor-exit p0

    return v7

    :catchall_0
    move-exception p1

    .line 381
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized advanceToEnd()I
    .locals 2

    monitor-enter p0

    .line 401
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    sub-int/2addr v0, v1

    .line 402
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    iput v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 400
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized discardSampleMetadataToRead()J
    .locals 2

    monitor-enter p0

    .line 633
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    .line 634
    monitor-exit p0

    return-wide v0

    .line 636
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardSamples(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 632
    monitor-exit p0

    throw v0
.end method

.method public final discardTo(JZZ)V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    .line 418
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardSampleMetadataTo(JZZ)J

    move-result-wide p1

    .line 417
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->discardDownstreamTo(J)V

    return-void
.end method

.method public final discardToEnd()V
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardSampleMetadataToEnd()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->discardDownstreamTo(J)V

    return-void
.end method

.method public final discardToRead()V
    .locals 3

    .line 423
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardSampleMetadataToRead()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->discardDownstreamTo(J)V

    return-void
.end method

.method public final discardUpstreamSamples(I)V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardUpstreamSampleMetadata(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->discardUpstreamSampleBytes(J)V

    return-void
.end method

.method public final format(Lcom/google/android/exoplayer2/Format;)V
    .locals 2

    .line 459
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getAdjustedUpstreamFormat(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    const/4 v1, 0x0

    .line 460
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingUpstreamFormatAdjustment:Z

    .line 461
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->unadjustedUpstreamFormat:Lcom/google/android/exoplayer2/Format;

    .line 462
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->setUpstreamFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    .line 463
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatChangeListener:Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 464
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatChangeListener:Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;->onUpstreamFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    :cond_0
    return-void
.end method

.method protected getAdjustedUpstreamFormat(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 520
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleOffsetUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 521
    iget-wide v0, p1, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleOffsetUs:J

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/Format;->copyWithSubsampleOffsetUs(J)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final getFirstIndex()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    return v0
.end method

.method public final declared-synchronized getFirstTimestampUs()J
    .locals 3

    monitor-enter p0

    .line 262
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    aget-wide v1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v1

    :goto_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getLargestQueuedTimestampUs()J
    .locals 2

    monitor-enter p0

    .line 244
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestQueuedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getReadIndex()I
    .locals 2

    .line 214
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized getUpstreamFormat()Lcom/google/android/exoplayer2/Format;
    .locals 1

    monitor-enter p0

    .line 230
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatRequired:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getWriteIndex()I
    .locals 2

    .line 172
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected final invalidateUpstreamFormatAdjustment()V
    .locals 1

    const/4 v0, 0x1

    .line 505
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingUpstreamFormatAdjustment:Z

    return-void
.end method

.method public final declared-synchronized isLastSampleQueued()Z
    .locals 1

    monitor-enter p0

    .line 257
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->isLastSampleQueued:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isReady(Z)Z
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    monitor-enter p0

    .line 279
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->hasNextSample()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    .line 280
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->isLastSampleQueued:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 284
    :cond_2
    :try_start_1
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result p1

    .line 285
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v0, v0, p1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v0, v2, :cond_3

    .line 287
    monitor-exit p0

    return v1

    .line 289
    :cond_3
    :try_start_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->mayReadSample(I)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 278
    monitor-exit p0

    throw p1
.end method

.method public maybeThrowError()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized peekSourceId()I
    .locals 2

    monitor-enter p0

    .line 224
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result v0

    .line 225
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->hasNextSample()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sourceIds:[I

    aget v0, v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamSourceId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 223
    monitor-exit p0

    throw v0
.end method

.method public preRelease()V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 190
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    .line 191
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->releaseDrmSessionReferences()V

    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZJ)I
    .locals 8
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 326
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    .line 327
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/SampleQueue;->readSampleMetadata(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZJLcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;)I

    move-result p1

    const/4 p3, -0x4

    if-ne p1, p3, :cond_0

    .line 329
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isFlagsOnly()Z

    move-result p3

    if-nez p3, :cond_0

    .line 330
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    iget-object p4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;

    invoke-virtual {p3, p2, p4}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readToBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;)V

    :cond_0
    return p1
.end method

.method public release()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    .line 120
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset(Z)V

    .line 121
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->releaseDrmSessionReferences()V

    return-void
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset(Z)V

    return-void
.end method

.method public reset(Z)V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->reset()V

    const/4 v0, 0x0

    .line 140
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    .line 141
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    .line 142
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    .line 143
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    const/4 v1, 0x1

    .line 144
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamKeyframeRequired:Z

    const-wide/high16 v2, -0x8000000000000000L

    .line 145
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestDiscardedTimestampUs:J

    .line 146
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestQueuedTimestampUs:J

    .line 147
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->isLastSampleQueued:Z

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamCommittedFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz p1, :cond_0

    .line 150
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->unadjustedUpstreamFormat:Lcom/google/android/exoplayer2/Format;

    .line 151
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    .line 152
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatRequired:Z

    :cond_0
    return-void
.end method

.method public final sampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->sampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result p1

    return p1
.end method

.method public final sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    return-void
.end method

.method public final sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
    .locals 11
    .param p6    # Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v8, p0

    .line 486
    iget-boolean v0, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingUpstreamFormatAdjustment:Z

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->unadjustedUpstreamFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 489
    :cond_0
    iget-wide v0, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleOffsetUs:J

    add-long v1, p1, v0

    .line 490
    iget-boolean v0, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingSplice:Z

    if-eqz v0, :cond_3

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_2

    .line 491
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->attemptSplice(J)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 494
    iput-boolean v0, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingSplice:Z

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 496
    :cond_3
    :goto_1
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->getTotalBytesWritten()J

    move-result-wide v4

    move v6, p4

    int-to-long v9, v6

    sub-long/2addr v4, v9

    move/from16 v0, p5

    int-to-long v9, v0

    sub-long/2addr v4, v9

    move-object v0, p0

    move v3, p3

    move-object/from16 v7, p6

    .line 497
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/SampleQueue;->commitSample(JIJILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    return-void
.end method

.method public final declared-synchronized seekTo(I)Z
    .locals 2

    monitor-enter p0

    .line 342
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->rewind()V

    .line 343
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    add-int/2addr v0, v1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 347
    monitor-exit p0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 344
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 341
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized seekTo(JZ)Z
    .locals 8

    monitor-enter p0

    .line 359
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->rewind()V

    .line 360
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result v2

    .line 361
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->hasNextSample()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    aget-wide v3, v0, v2

    cmp-long v0, p1, v3

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestQueuedTimestampUs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    if-nez p3, :cond_0

    goto :goto_0

    .line 366
    :cond_0
    iget p3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    sub-int v3, p3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    .line 367
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/SampleQueue;->findSampleBefore(IIJZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    .line 369
    monitor-exit p0

    return v7

    .line 371
    :cond_1
    :try_start_1
    iget p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 372
    monitor-exit p0

    return p1

    .line 364
    :cond_2
    :goto_0
    monitor-exit p0

    return v7

    :catchall_0
    move-exception p1

    .line 358
    monitor-exit p0

    throw p1
.end method

.method public final setSampleOffsetUs(J)V
    .locals 2

    .line 440
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleOffsetUs:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 441
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleOffsetUs:J

    .line 442
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->invalidateUpstreamFormatAdjustment()V

    :cond_0
    return-void
.end method

.method public final setUpstreamFormatChangeListener(Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatChangeListener:Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;

    return-void
.end method

.method public final sourceId(I)V
    .locals 0

    .line 162
    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamSourceId:I

    return-void
.end method

.method public final splice()V
    .locals 1

    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingSplice:Z

    return-void
.end method
