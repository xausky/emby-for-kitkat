.class final Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;
.super Ljava/lang/Object;
.source "CompositeMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/CompositeMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSourceAndListener"
.end annotation


# instance fields
.field public final caller:Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

.field public final eventListener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

.field public final mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 212
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->caller:Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    .line 213
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->eventListener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    return-void
.end method
