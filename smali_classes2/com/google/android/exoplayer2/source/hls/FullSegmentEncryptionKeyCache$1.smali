.class Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache$1;
.super Ljava/util/LinkedHashMap;
.source "FullSegmentEncryptionKeyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Landroid/net/Uri;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;

.field final synthetic val$maxSize:I


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;IFZI)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache$1;->this$0:Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;

    iput p5, p0, Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache$1;->val$maxSize:I

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Landroid/net/Uri;",
            "[B>;)Z"
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache$1;->size()I

    move-result p1

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache$1;->val$maxSize:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
