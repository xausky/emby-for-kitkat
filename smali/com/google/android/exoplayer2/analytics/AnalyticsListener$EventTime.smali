.class public final Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
.super Ljava/lang/Object;
.source "AnalyticsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventTime"
.end annotation


# instance fields
.field public final currentPlaybackPositionMs:J

.field public final eventPlaybackPositionMs:J

.field public final mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final realtimeMs:J

.field public final timeline:Lcom/google/android/exoplayer2/Timeline;

.field public final totalBufferedDurationMs:J

.field public final windowIndex:I


# direct methods
.method public constructor <init>(JLcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJ)V
    .locals 0
    .param p5    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    .line 117
    iput-object p3, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 118
    iput p4, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->windowIndex:I

    .line 119
    iput-object p5, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 120
    iput-wide p6, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->eventPlaybackPositionMs:J

    .line 121
    iput-wide p8, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->currentPlaybackPositionMs:J

    .line 122
    iput-wide p10, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->totalBufferedDurationMs:J

    return-void
.end method
