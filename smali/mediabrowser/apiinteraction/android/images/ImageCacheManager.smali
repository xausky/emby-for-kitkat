.class public Lmediabrowser/apiinteraction/android/images/ImageCacheManager;
.super Ljava/lang/Object;
.source "ImageCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmediabrowser/apiinteraction/android/images/ImageCacheManager$CacheType;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private logger:Lmediabrowser/model/logging/ILogger;

.field private mImageCache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

.field private mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field private queue:Lcom/android/volley/RequestQueue;

.field private uniqueName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmediabrowser/model/logging/ILogger;Lcom/android/volley/RequestQueue;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lmediabrowser/apiinteraction/android/images/ImageCacheManager;->context:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lmediabrowser/apiinteraction/android/images/ImageCacheManager;->logger:Lmediabrowser/model/logging/ILogger;

    .line 22
    iput-object p3, p0, Lmediabrowser/apiinteraction/android/images/ImageCacheManager;->queue:Lcom/android/volley/RequestQueue;

    .line 23
    iput-object p4, p0, Lmediabrowser/apiinteraction/android/images/ImageCacheManager;->uniqueName:Ljava/lang/String;

    return-void
.end method

.method private createKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private init()V
    .locals 3

    .line 54
    new-instance v0, Lmediabrowser/apiinteraction/android/images/LruBitmapCache;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/android/images/LruBitmapCache;-><init>()V

    iput-object v0, p0, Lmediabrowser/apiinteraction/android/images/ImageCacheManager;->mImageCache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    .line 56
    new-instance v0, Lcom/android/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lmediabrowser/apiinteraction/android/images/ImageCacheManager;->queue:Lcom/android/volley/RequestQueue;

    iget-object v2, p0, Lmediabrowser/apiinteraction/android/images/ImageCacheManager;->mImageCache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    invoke-direct {v0, v1, v2}, Lcom/android/volley/toolbox/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V

    iput-object v0, p0, Lmediabrowser/apiinteraction/android/images/ImageCacheManager;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 61
    :try_start_0
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/images/ImageCacheManager;->mImageCache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    invoke-direct {p0, p1}, Lmediabrowser/apiinteraction/android/images/ImageCacheManager;->createKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/volley/toolbox/ImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 63
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Disk Cache Not initialized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getImage(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/images/ImageCacheManager;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    invoke-virtual {v0, p1, p2}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    return-void
.end method

.method public getImageLoader()Lcom/android/volley/toolbox/ImageLoader;
    .locals 1

    .line 93
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/images/ImageCacheManager;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0}, Lmediabrowser/apiinteraction/android/images/ImageCacheManager;->init()V

    .line 96
    :cond_0
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/images/ImageCacheManager;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    return-object v0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 69
    :try_start_0
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/images/ImageCacheManager;->mImageCache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    invoke-direct {p0, p1}, Lmediabrowser/apiinteraction/android/images/ImageCacheManager;->createKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/android/volley/toolbox/ImageLoader$ImageCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 71
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Disk Cache Not initialized"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
