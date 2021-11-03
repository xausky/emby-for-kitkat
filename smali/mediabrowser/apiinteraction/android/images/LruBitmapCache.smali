.class public Lmediabrowser/apiinteraction/android/images/LruBitmapCache;
.super Landroidx/collection/LruCache;
.source "LruBitmapCache.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/LruCache<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lcom/android/volley/toolbox/ImageLoader$ImageCache;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-static {}, Lmediabrowser/apiinteraction/android/images/LruBitmapCache;->getDefaultLruCacheSize()I

    move-result v0

    invoke-direct {p0, v0}, Lmediabrowser/apiinteraction/android/images/LruBitmapCache;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroidx/collection/LruCache;-><init>(I)V

    return-void
.end method

.method public static getDefaultLruCacheSize()I
    .locals 4

    .line 9
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 10
    div-int/lit8 v0, v0, 0x8

    return v0
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/android/images/LruBitmapCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lmediabrowser/apiinteraction/android/images/LruBitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 7
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lmediabrowser/apiinteraction/android/images/LruBitmapCache;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 0

    .line 25
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    mul-int p1, p1, p2

    div-int/lit16 p1, p1, 0x400

    return p1
.end method
