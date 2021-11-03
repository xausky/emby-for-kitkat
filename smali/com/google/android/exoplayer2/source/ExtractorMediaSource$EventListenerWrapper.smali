.class final Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListenerWrapper;
.super Ljava/lang/Object;
.source "ExtractorMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSourceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ExtractorMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventListenerWrapper"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final eventListener:Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;)V
    .locals 0

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListenerWrapper;->eventListener:Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;

    return-void
.end method


# virtual methods
.method public synthetic onDownstreamFormatChanged(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$-CC;->$default$onDownstreamFormatChanged(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    return-void
.end method

.method public synthetic onLoadCanceled(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$-CC;->$default$onLoadCanceled(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    return-void
.end method

.method public synthetic onLoadCompleted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$-CC;->$default$onLoadCompleted(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    return-void
.end method

.method public onLoadError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 391
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListenerWrapper;->eventListener:Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;

    invoke-interface {p1, p5}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;->onLoadError(Ljava/io/IOException;)V

    return-void
.end method

.method public synthetic onLoadStarted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$-CC;->$default$onLoadStarted(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    return-void
.end method

.method public synthetic onMediaPeriodCreated(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$-CC;->$default$onMediaPeriodCreated(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public synthetic onMediaPeriodReleased(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$-CC;->$default$onMediaPeriodReleased(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public synthetic onReadingStarted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$-CC;->$default$onReadingStarted(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public synthetic onUpstreamDiscarded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$-CC;->$default$onUpstreamDiscarded(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V

    return-void
.end method
