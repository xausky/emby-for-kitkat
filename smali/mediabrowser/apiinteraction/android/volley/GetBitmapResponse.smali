.class public Lmediabrowser/apiinteraction/android/volley/GetBitmapResponse;
.super Ljava/lang/Object;
.source "GetBitmapResponse.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# instance fields
.field private outerResponse:Lmediabrowser/apiinteraction/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmediabrowser/apiinteraction/Response<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmediabrowser/apiinteraction/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lmediabrowser/apiinteraction/android/volley/GetBitmapResponse;->outerResponse:Lmediabrowser/apiinteraction/Response;

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/volley/GetBitmapResponse;->outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 0

    .line 21
    iget-object p2, p0, Lmediabrowser/apiinteraction/android/volley/GetBitmapResponse;->outerResponse:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
