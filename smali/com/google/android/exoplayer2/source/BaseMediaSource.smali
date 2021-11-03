.class public abstract Lcom/google/android/exoplayer2/source/BaseMediaSource;
.super Ljava/lang/Object;
.source "BaseMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource;


# instance fields
.field private final enabledMediaSourceCallers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;",
            ">;"
        }
    .end annotation
.end field

.field private final eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private looper:Landroid/os/Looper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mediaSourceCallers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;",
            ">;"
        }
    .end annotation
.end field

.field private timeline:Lcom/google/android/exoplayer2/Timeline;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->mediaSourceCallers:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    .line 46
    new-instance v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    return-void
.end method


# virtual methods
.method public final addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    return-void
.end method

.method protected final createEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 125
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->withParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p1

    return-object p1
.end method

.method protected final createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .locals 4
    .param p1    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->withParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p1

    return-object p1
.end method

.method protected final createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 109
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 110
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->withParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p1

    return-object p1
.end method

.method public final disable(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 173
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 174
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->disableInternal()V

    :cond_0
    return-void
.end method

.method protected disableInternal()V
    .locals 0

    return-void
.end method

.method public final enable(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->looper:Landroid/os/Looper;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    .line 164
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->enableInternal()V

    :cond_0
    return-void
.end method

.method protected enableInternal()V
    .locals 0

    return-void
.end method

.method public synthetic getTag()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/MediaSource$-CC;->$default$getTag(Lcom/google/android/exoplayer2/source/MediaSource;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final isEnabled()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final prepareSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 3
    .param p2    # Lcom/google/android/exoplayer2/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 146
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->looper:Landroid/os/Looper;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->looper:Landroid/os/Looper;

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 148
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 149
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->mediaSourceCallers:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->looper:Landroid/os/Looper;

    if-nez v2, :cond_2

    .line 151
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->looper:Landroid/os/Looper;

    .line 152
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 155
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->enable(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 156
    invoke-interface {p1, p0, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V

    :cond_3
    :goto_2
    return-void
.end method

.method protected abstract prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .param p1    # Lcom/google/android/exoplayer2/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method protected final refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V
    .locals 2

    .line 79
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->mediaSourceCallers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    .line 81
    invoke-interface {v1, p0, p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final releaseSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->mediaSourceCallers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->mediaSourceCallers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 183
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->looper:Landroid/os/Looper;

    .line 184
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 185
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 186
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->releaseSourceInternal()V

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->disable(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    :goto_0
    return-void
.end method

.method protected abstract releaseSourceInternal()V
.end method

.method public final removeEventListener(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->removeEventListener(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    return-void
.end method
