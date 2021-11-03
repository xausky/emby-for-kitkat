.class public Lmediabrowser/apiinteraction/android/VolleyHttpClient;
.super Ljava/lang/Object;
.source "VolleyHttpClient.java"

# interfaces
.implements Lmediabrowser/apiinteraction/http/IAsyncHttpClient;


# static fields
.field private static final DEFAULT_DISK_USAGE_BYTES:I = 0x6400000

.field public static final TAG:Ljava/lang/String; = "VolleyHttpClient"


# instance fields
.field private cacheManager:Lmediabrowser/apiinteraction/android/images/ImageCacheManager;

.field private context:Landroid/content/Context;

.field private logger:Lmediabrowser/model/logging/ILogger;

.field private mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>(Lmediabrowser/model/logging/ILogger;Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lmediabrowser/apiinteraction/android/VolleyHttpClient;->logger:Lmediabrowser/model/logging/ILogger;

    .line 37
    iput-object p2, p0, Lmediabrowser/apiinteraction/android/VolleyHttpClient;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public Send(Lmediabrowser/apiinteraction/http/HttpRequest;Lmediabrowser/apiinteraction/Response;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/http/HttpRequest;",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 94
    invoke-virtual {p1}, Lmediabrowser/apiinteraction/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p1}, Lmediabrowser/apiinteraction/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DELETE"

    invoke-static {v0, v2}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 101
    :goto_0
    invoke-virtual {p1}, Lmediabrowser/apiinteraction/http/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 103
    new-instance v8, Lmediabrowser/apiinteraction/android/VolleyStringRequest;

    new-instance v5, Lmediabrowser/apiinteraction/android/VolleyResponseListener;

    iget-object v2, p0, Lmediabrowser/apiinteraction/android/VolleyHttpClient;->logger:Lmediabrowser/model/logging/ILogger;

    invoke-direct {v5, p2, v2, v4}, Lmediabrowser/apiinteraction/android/VolleyResponseListener;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/logging/ILogger;Ljava/lang/String;)V

    new-instance v6, Lmediabrowser/apiinteraction/android/VolleyErrorListener;

    iget-object v2, p0, Lmediabrowser/apiinteraction/android/VolleyHttpClient;->logger:Lmediabrowser/model/logging/ILogger;

    invoke-direct {v6, p2, v2}, Lmediabrowser/apiinteraction/android/VolleyErrorListener;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/logging/ILogger;)V

    move-object v2, v8

    move v3, v0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lmediabrowser/apiinteraction/android/VolleyStringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lmediabrowser/apiinteraction/http/HttpRequest;)V

    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {v8, v1}, Lcom/android/volley/toolbox/StringRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 109
    :cond_2
    invoke-virtual {p1}, Lmediabrowser/apiinteraction/http/HttpRequest;->getEnableCaching()Z

    move-result p2

    if-nez p2, :cond_3

    .line 110
    invoke-virtual {v8, v1}, Lcom/android/volley/toolbox/StringRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 113
    :cond_3
    new-instance p2, Lcom/android/volley/DefaultRetryPolicy;

    .line 114
    invoke-virtual {p1}, Lmediabrowser/apiinteraction/http/HttpRequest;->getTimeout()I

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p2, p1, v1, v0}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 113
    invoke-virtual {v8, p2}, Lcom/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 120
    invoke-virtual {p0, v8}, Lmediabrowser/apiinteraction/android/VolleyHttpClient;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public addToRequestQueue(Lcom/android/volley/Request;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;)V"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/VolleyHttpClient;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v1, "Adding request to queue: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/android/VolleyHttpClient;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public cancelPendingRequests(Ljava/lang/Object;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/VolleyHttpClient;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/VolleyHttpClient;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getBitmap(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/android/VolleyHttpClient;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v0

    new-instance v1, Lmediabrowser/apiinteraction/android/volley/GetBitmapResponse;

    invoke-direct {v1, p2}, Lmediabrowser/apiinteraction/android/volley/GetBitmapResponse;-><init>(Lmediabrowser/apiinteraction/Response;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    return-void
.end method

.method public getImageLoader()Lcom/android/volley/toolbox/ImageLoader;
    .locals 5

    .line 55
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/VolleyHttpClient;->cacheManager:Lmediabrowser/apiinteraction/android/images/ImageCacheManager;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lmediabrowser/apiinteraction/android/images/ImageCacheManager;

    iget-object v1, p0, Lmediabrowser/apiinteraction/android/VolleyHttpClient;->context:Landroid/content/Context;

    iget-object v2, p0, Lmediabrowser/apiinteraction/android/VolleyHttpClient;->logger:Lmediabrowser/model/logging/ILogger;

    invoke-virtual {p0}, Lmediabrowser/apiinteraction/android/VolleyHttpClient;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    const-string v4, "MediaBrowser"

    invoke-direct {v0, v1, v2, v3, v4}, Lmediabrowser/apiinteraction/android/images/ImageCacheManager;-><init>(Landroid/content/Context;Lmediabrowser/model/logging/ILogger;Lcom/android/volley/RequestQueue;Ljava/lang/String;)V

    iput-object v0, p0, Lmediabrowser/apiinteraction/android/VolleyHttpClient;->cacheManager:Lmediabrowser/apiinteraction/android/images/ImageCacheManager;

    .line 60
    :cond_0
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/VolleyHttpClient;->cacheManager:Lmediabrowser/apiinteraction/android/images/ImageCacheManager;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/android/images/ImageCacheManager;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 3

    .line 46
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/VolleyHttpClient;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/VolleyHttpClient;->context:Landroid/content/Context;

    new-instance v1, Lmediabrowser/apiinteraction/android/OkHttpStack;

    invoke-direct {v1}, Lmediabrowser/apiinteraction/android/OkHttpStack;-><init>()V

    const/high16 v2, 0x6400000

    invoke-static {v0, v1, v2}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;I)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lmediabrowser/apiinteraction/android/VolleyHttpClient;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 50
    :cond_0
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/VolleyHttpClient;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method
