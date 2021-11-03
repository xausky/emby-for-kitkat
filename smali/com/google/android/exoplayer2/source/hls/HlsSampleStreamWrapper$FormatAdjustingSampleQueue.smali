.class final Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$FormatAdjustingSampleQueue;
.super Lcom/google/android/exoplayer2/source/SampleQueue;
.source "HlsSampleStreamWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FormatAdjustingSampleQueue"
.end annotation


# instance fields
.field private drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final overridingDrmInitData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/Allocator;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ">;)V"
        }
    .end annotation

    .line 1336
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)V

    .line 1337
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$FormatAdjustingSampleQueue;->overridingDrmInitData:Ljava/util/Map;

    return-void
.end method

.method private getAdjustedMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 7
    .param p1    # Lcom/google/android/exoplayer2/metadata/Metadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1369
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    if-ge v3, v1, :cond_2

    .line 1372
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v5

    .line 1373
    instance-of v6, v5, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    if-eqz v6, :cond_1

    .line 1374
    check-cast v5, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    const-string v6, "com.apple.streaming.transportStreamTimestamp"

    .line 1375
    iget-object v5, v5, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    :goto_1
    if-ne v3, v4, :cond_3

    return-object p1

    :cond_3
    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    return-object v0

    :cond_4
    add-int/lit8 v0, v1, -0x1

    .line 1387
    new-array v0, v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    :goto_2
    if-ge v2, v1, :cond_7

    if-eq v2, v3, :cond_6

    if-ge v2, v3, :cond_5

    move v4, v2

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v2, -0x1

    .line 1391
    :goto_3
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v5

    aput-object v5, v0, v4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1394
    :cond_7
    new-instance p1, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    return-object p1
.end method


# virtual methods
.method public getAdjustedUpstreamFormat(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 3

    .line 1348
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$FormatAdjustingSampleQueue;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$FormatAdjustingSampleQueue;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    :goto_0
    if-eqz v0, :cond_1

    .line 1351
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$FormatAdjustingSampleQueue;->overridingDrmInitData:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz v1, :cond_1

    move-object v0, v1

    .line 1356
    :cond_1
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 1357
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$FormatAdjustingSampleQueue;->getAdjustedMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/Format;->copyWithAdjustments(Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 1356
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getAdjustedUpstreamFormat(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method

.method public setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1341
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$FormatAdjustingSampleQueue;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 1342
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$FormatAdjustingSampleQueue;->invalidateUpstreamFormatAdjustment()V

    return-void
.end method
