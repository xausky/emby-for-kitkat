.class public Lmediabrowser/apiinteraction/android/OkHttpStack;
.super Lcom/android/volley/toolbox/HurlStack;
.source "OkHttpStack.java"


# instance fields
.field private final mFactory:Lokhttp3/OkUrlFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-direct {p0, v0}, Lmediabrowser/apiinteraction/android/OkHttpStack;-><init>(Lokhttp3/OkHttpClient;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    if-eqz p1, :cond_0

    .line 26
    new-instance v0, Lokhttp3/OkUrlFactory;

    invoke-direct {v0, p1}, Lokhttp3/OkUrlFactory;-><init>(Lokhttp3/OkHttpClient;)V

    iput-object v0, p0, Lmediabrowser/apiinteraction/android/OkHttpStack;->mFactory:Lokhttp3/OkUrlFactory;

    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Client must not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/OkHttpStack;->mFactory:Lokhttp3/OkUrlFactory;

    invoke-virtual {v0, p1}, Lokhttp3/OkUrlFactory;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method
