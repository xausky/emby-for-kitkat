.class final Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodInfo;
.super Ljava/lang/Object;
.source "AnalyticsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaPeriodInfo"
.end annotation


# instance fields
.field public final mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field public final timeline:Lcom/google/android/exoplayer2/Timeline;

.field public final windowIndex:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;I)V
    .locals 0

    .line 875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 876
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodInfo;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 877
    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 878
    iput p3, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodInfo;->windowIndex:I

    return-void
.end method
