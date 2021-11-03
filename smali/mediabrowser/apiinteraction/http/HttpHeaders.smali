.class public Lmediabrowser/apiinteraction/http/HttpHeaders;
.super Ljava/util/HashMap;
.source "HttpHeaders.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private privateAuthorizationParameter:Ljava/lang/String;

.field private privateAuthorizationScheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final SetAccessToken(Ljava/lang/String;)V
    .locals 1

    .line 41
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "X-MediaBrowser-Token"

    .line 43
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/http/HttpHeaders;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "X-MediaBrowser-Token"

    .line 47
    invoke-virtual {p0, v0, p1}, Lmediabrowser/apiinteraction/http/HttpHeaders;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final getAuthorizationParameter()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lmediabrowser/apiinteraction/http/HttpHeaders;->privateAuthorizationParameter:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthorizationScheme()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lmediabrowser/apiinteraction/http/HttpHeaders;->privateAuthorizationScheme:Ljava/lang/String;

    return-object v0
.end method

.method public final setAuthorizationParameter(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lmediabrowser/apiinteraction/http/HttpHeaders;->privateAuthorizationParameter:Ljava/lang/String;

    return-void
.end method

.method public final setAuthorizationScheme(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lmediabrowser/apiinteraction/http/HttpHeaders;->privateAuthorizationScheme:Ljava/lang/String;

    return-void
.end method
