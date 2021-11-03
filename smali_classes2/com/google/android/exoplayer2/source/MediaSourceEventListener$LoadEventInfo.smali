.class public final Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadEventInfo"
.end annotation


# instance fields
.field public final bytesLoaded:J

.field public final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field public final elapsedRealtimeMs:J

.field public final loadDurationMs:J

.field public final responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSpec;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJJ)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 82
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;->uri:Landroid/net/Uri;

    .line 83
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;->responseHeaders:Ljava/util/Map;

    .line 84
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;->elapsedRealtimeMs:J

    .line 85
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;->loadDurationMs:J

    .line 86
    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;->bytesLoaded:J

    return-void
.end method
