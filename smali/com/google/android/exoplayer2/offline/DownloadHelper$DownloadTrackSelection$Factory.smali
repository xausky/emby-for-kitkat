.class final Lcom/google/android/exoplayer2/offline/DownloadHelper$DownloadTrackSelection$Factory;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadHelper$DownloadTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadHelper$1;)V
    .locals 0

    .line 1104
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper$DownloadTrackSelection$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public createTrackSelections([Lcom/google/android/exoplayer2/trackselection/TrackSelection$Definition;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 4

    .line 1109
    array-length p2, p1

    new-array p2, p2, [Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    const/4 v0, 0x0

    .line 1110
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1111
    aget-object v1, p1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/offline/DownloadHelper$DownloadTrackSelection;

    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/google/android/exoplayer2/trackselection/TrackSelection$Definition;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/google/android/exoplayer2/trackselection/TrackSelection$Definition;->tracks:[I

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/offline/DownloadHelper$DownloadTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    :goto_1
    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method
