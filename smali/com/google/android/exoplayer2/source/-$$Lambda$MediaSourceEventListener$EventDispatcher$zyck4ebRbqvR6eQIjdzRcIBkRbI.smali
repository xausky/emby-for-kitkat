.class public final synthetic Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$zyck4ebRbqvR6eQIjdzRcIBkRbI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private final synthetic f$1:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

.field private final synthetic f$2:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$zyck4ebRbqvR6eQIjdzRcIBkRbI;->f$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$zyck4ebRbqvR6eQIjdzRcIBkRbI;->f$1:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$zyck4ebRbqvR6eQIjdzRcIBkRbI;->f$2:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$zyck4ebRbqvR6eQIjdzRcIBkRbI;->f$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$zyck4ebRbqvR6eQIjdzRcIBkRbI;->f$1:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$zyck4ebRbqvR6eQIjdzRcIBkRbI;->f$2:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->lambda$mediaPeriodReleased$1(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method
