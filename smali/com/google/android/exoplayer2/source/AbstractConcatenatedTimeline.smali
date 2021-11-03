.class abstract Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;
.super Lcom/google/android/exoplayer2/Timeline;
.source "AbstractConcatenatedTimeline.java"


# instance fields
.field private final childCount:I

.field private final isAtomic:Z

.field private final shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;


# direct methods
.method public constructor <init>(ZLcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Timeline;-><init>()V

    .line 73
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->isAtomic:Z

    .line 74
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 75
    invoke-interface {p2}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getLength()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->childCount:I

    return-void
.end method

.method public static getChildPeriodUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 50
    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    return-object p0
.end method

.method public static getChildTimelineUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    return-object p0
.end method

.method public static getConcatenatedUid(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private getNextChildIndex(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 317
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 318
    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getNextIndex(I)I

    move-result p1

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->childCount:I

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method private getPreviousChildIndex(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 323
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 324
    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getPreviousIndex(I)I

    move-result p1

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method


# virtual methods
.method protected abstract getChildIndexByChildUid(Ljava/lang/Object;)I
.end method

.method protected abstract getChildIndexByPeriodIndex(I)I
.end method

.method protected abstract getChildIndexByWindowIndex(I)I
.end method

.method protected abstract getChildUidByChildIndex(I)Ljava/lang/Object;
.end method

.method protected abstract getFirstPeriodIndexByChildIndex(I)I
.end method

.method public getFirstWindowIndex(Z)I
    .locals 3

    .line 174
    iget v0, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->childCount:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 177
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->isAtomic:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    if-eqz p1, :cond_2

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getFirstIndex()I

    move-result v2

    .line 182
    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 183
    invoke-direct {p0, v2, p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getNextChildIndex(IZ)I

    move-result v2

    if-ne v2, v1, :cond_2

    return v1

    .line 189
    :cond_3
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v0

    .line 190
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method protected abstract getFirstWindowIndexByChildIndex(I)I
.end method

.method public final getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 3

    .line 241
    instance-of v0, p1, Landroid/util/Pair;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 244
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildTimelineUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 245
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildPeriodUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 246
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildIndexByChildUid(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    .line 250
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v1, :cond_2

    goto :goto_0

    .line 253
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstPeriodIndexByChildIndex(I)I

    move-result v0

    add-int v1, v0, p1

    :goto_0
    return v1
.end method

.method public getLastWindowIndex(Z)I
    .locals 3

    .line 153
    iget v0, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->childCount:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 156
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->isAtomic:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    if-eqz p1, :cond_2

    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getLastIndex()I

    move-result v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->childCount:I

    add-int/lit8 v0, v0, -0x1

    .line 161
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 162
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getPreviousChildIndex(IZ)I

    move-result v0

    if-ne v0, v1, :cond_3

    return v1

    .line 168
    :cond_4
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 169
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Timeline;->getLastWindowIndex(Z)I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method public getNextWindowIndex(IIZ)I
    .locals 5

    .line 81
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->isAtomic:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    const/4 p2, 0x2

    :cond_0
    const/4 p3, 0x0

    .line 87
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildIndexByWindowIndex(I)I

    move-result v0

    .line 88
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v3

    .line 90
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v4

    sub-int/2addr p1, v3

    if-ne p2, v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, p2

    .line 91
    :goto_0
    invoke-virtual {v4, p1, v1, p3}, Lcom/google/android/exoplayer2/Timeline;->getNextWindowIndex(IIZ)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    add-int/2addr v3, p1

    return v3

    .line 99
    :cond_3
    invoke-direct {p0, v0, p3}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getNextChildIndex(IZ)I

    move-result p1

    :goto_1
    if-eq p1, v1, :cond_4

    .line 100
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 101
    invoke-direct {p0, p1, p3}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getNextChildIndex(IZ)I

    move-result p1

    goto :goto_1

    :cond_4
    if-eq p1, v1, :cond_5

    .line 104
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result p2

    .line 105
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result p1

    add-int/2addr p2, p1

    return p2

    :cond_5
    if-ne p2, v2, :cond_6

    .line 109
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndex(Z)I

    move-result p1

    return p1

    :cond_6
    return v1
.end method

.method public final getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 4

    .line 225
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildIndexByPeriodIndex(I)I

    move-result v0

    .line 226
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 227
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstPeriodIndexByChildIndex(I)I

    move-result v2

    .line 228
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v3

    sub-int/2addr p1, v2

    .line 229
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 230
    iget p1, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    add-int/2addr p1, v1

    iput p1, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    if-eqz p3, :cond_0

    .line 234
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildUidByChildIndex(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p3, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 233
    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getConcatenatedUid(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 3

    .line 213
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildTimelineUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 214
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildPeriodUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 215
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildIndexByChildUid(Ljava/lang/Object;)I

    move-result v0

    .line 216
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v2

    .line 217
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 218
    iget v0, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    add-int/2addr v0, v2

    iput v0, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 219
    iput-object p1, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    return-object p2
.end method

.method public getPreviousWindowIndex(IIZ)I
    .locals 5

    .line 117
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->isAtomic:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    const/4 p2, 0x2

    :cond_0
    const/4 p3, 0x0

    .line 123
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildIndexByWindowIndex(I)I

    move-result v0

    .line 124
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v3

    .line 126
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v4

    sub-int/2addr p1, v3

    if-ne p2, v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, p2

    .line 127
    :goto_0
    invoke-virtual {v4, p1, v1, p3}, Lcom/google/android/exoplayer2/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    add-int/2addr v3, p1

    return v3

    .line 135
    :cond_3
    invoke-direct {p0, v0, p3}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getPreviousChildIndex(IZ)I

    move-result p1

    :goto_1
    if-eq p1, v1, :cond_4

    .line 137
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    invoke-direct {p0, p1, p3}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getPreviousChildIndex(IZ)I

    move-result p1

    goto :goto_1

    :cond_4
    if-eq p1, v1, :cond_5

    .line 141
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result p2

    .line 142
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/Timeline;->getLastWindowIndex(Z)I

    move-result p1

    add-int/2addr p2, p1

    return p2

    :cond_5
    if-ne p2, v2, :cond_6

    .line 146
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getLastWindowIndex(Z)I

    move-result p1

    return p1

    :cond_6
    return v1
.end method

.method protected abstract getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;
.end method

.method public final getUidOfPeriod(I)Ljava/lang/Object;
    .locals 3

    .line 258
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildIndexByPeriodIndex(I)I

    move-result v0

    .line 259
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstPeriodIndexByChildIndex(I)I

    move-result v1

    .line 261
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    sub-int/2addr p1, v1

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p1

    .line 262
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildUidByChildIndex(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getConcatenatedUid(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 4

    .line 195
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildIndexByWindowIndex(I)I

    move-result v0

    .line 196
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 197
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstPeriodIndexByChildIndex(I)I

    move-result v2

    .line 198
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v3

    sub-int/2addr p1, v1

    .line 199
    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 200
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildUidByChildIndex(I)Ljava/lang/Object;

    move-result-object p1

    .line 202
    sget-object p3, Lcom/google/android/exoplayer2/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    iget-object p4, p2, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 203
    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p2, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 205
    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getConcatenatedUid(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    iput-object p1, p2, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 206
    iget p1, p2, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    add-int/2addr p1, v2

    iput p1, p2, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    .line 207
    iget p1, p2, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    add-int/2addr p1, v2

    iput p1, p2, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    return-object p2
.end method
