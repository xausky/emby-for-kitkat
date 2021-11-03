.class final Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;
.super Ljava/lang/Object;
.source "FullSegmentEncryptionKeyCache.java"


# instance fields
.field private final backingMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/net/Uri;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 7

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v6, Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache$1;

    add-int/lit8 v2, p1, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache$1;-><init>(Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;IFZI)V

    iput-object v6, p0, Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;->backingMap:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public containsUri(Landroid/net/Uri;)Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;->backingMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Landroid/net/Uri;)[B
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;->backingMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public put(Landroid/net/Uri;[B)[B
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;->backingMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public remove(Landroid/net/Uri;)[B
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;->backingMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method
