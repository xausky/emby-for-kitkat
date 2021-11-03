.class public final Lcom/google/android/exoplayer2/source/MergingMediaSource;
.super Lcom/google/android/exoplayer2/source/CompositeMediaSource;
.source "MergingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/source/CompositeMediaSource<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final PERIOD_COUNT_UNSET:I = -0x1


# instance fields
.field private final compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private final mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

.field private mergeError:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final pendingTimelineSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;"
        }
    .end annotation
.end field

.field private periodCount:I

.field private final timelines:[Lcom/google/android/exoplayer2/Timeline;


# direct methods
.method public varargs constructor <init>(Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;[Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;-><init>()V

    .line 92
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    .line 93
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 94
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 95
    iput p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->periodCount:I

    .line 96
    array-length p1, p2

    new-array p1, p1, [Lcom/google/android/exoplayer2/Timeline;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1

    .line 81
    new-instance v0, Lcom/google/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/source/MergingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;[Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method private checkTimelineMerges(Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 176
    iget v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->periodCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 177
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->periodCount:I

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result p1

    iget v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->periodCount:I

    if-eq p1, v0, :cond_1

    .line 179
    new-instance p1, Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;-><init>(I)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 5

    .line 123
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 124
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    .line 125
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 126
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aget-object v3, v3, v2

    .line 127
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v3

    .line 128
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v4, v4, v2

    invoke-interface {v4, v3, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    invoke-direct {p1, p2, v0}, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;[Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-object p1
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 171
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method protected bridge synthetic getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 36
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/MergingMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method public getTag()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mergeError:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-nez v0, :cond_0

    .line 118
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->maybeThrowSourceInfoRefreshError()V

    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mergeError:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    throw v0
.end method

.method protected onChildSourceInfoRefreshed(Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mergeError:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-nez v0, :cond_0

    .line 155
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/source/MergingMediaSource;->checkTimelineMerges(Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mergeError:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mergeError:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-eqz v0, :cond_1

    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 161
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput-object p3, p2, p1

    .line 162
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 163
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/MergingMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    :cond_2
    return-void
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0

    .line 36
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MergingMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 107
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    const/4 p1, 0x0

    .line 108
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 109
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/MergingMediaSource;->prepareChildSource(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 3

    .line 135
    check-cast p1, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;

    const/4 v0, 0x0

    .line 136
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/google/android/exoplayer2/source/MergingMediaPeriod;->periods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 2

    .line 143
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->releaseSourceInternal()V

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 145
    iput v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->periodCount:I

    .line 146
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mergeError:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 148
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method
