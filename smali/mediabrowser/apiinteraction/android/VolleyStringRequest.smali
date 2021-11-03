.class public Lmediabrowser/apiinteraction/android/VolleyStringRequest;
.super Lcom/android/volley/toolbox/StringRequest;
.source "VolleyStringRequest.java"


# instance fields
.field private request:Lmediabrowser/apiinteraction/http/HttpRequest;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lmediabrowser/apiinteraction/http/HttpRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            "Lmediabrowser/apiinteraction/http/HttpRequest;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 20
    iput-object p5, p0, Lmediabrowser/apiinteraction/android/VolleyStringRequest;->request:Lmediabrowser/apiinteraction/http/HttpRequest;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lmediabrowser/apiinteraction/http/HttpRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            "Lmediabrowser/apiinteraction/http/HttpRequest;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/android/volley/toolbox/StringRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 25
    iput-object p4, p0, Lmediabrowser/apiinteraction/android/VolleyStringRequest;->request:Lmediabrowser/apiinteraction/http/HttpRequest;

    return-void
.end method

.method private AddData(Ljava/util/Map;Lmediabrowser/apiinteraction/http/HttpRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lmediabrowser/apiinteraction/http/HttpRequest;",
            ")V"
        }
    .end annotation

    .line 118
    invoke-virtual {p2}, Lmediabrowser/apiinteraction/http/HttpRequest;->getPostData()Lmediabrowser/apiinteraction/QueryStringDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-virtual {p2}, Lmediabrowser/apiinteraction/http/HttpRequest;->getPostData()Lmediabrowser/apiinteraction/QueryStringDictionary;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 123
    invoke-virtual {p2}, Lmediabrowser/apiinteraction/http/HttpRequest;->getPostData()Lmediabrowser/apiinteraction/QueryStringDictionary;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private AddHeaders(Ljava/util/Map;Lmediabrowser/apiinteraction/http/HttpRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lmediabrowser/apiinteraction/http/HttpRequest;",
            ")V"
        }
    .end annotation

    .line 95
    invoke-virtual {p2}, Lmediabrowser/apiinteraction/http/HttpRequest;->getRequestHeaders()Lmediabrowser/apiinteraction/http/HttpHeaders;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lmediabrowser/apiinteraction/http/HttpHeaders;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 98
    invoke-virtual {v0, v2}, Lmediabrowser/apiinteraction/http/HttpHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p2}, Lmediabrowser/apiinteraction/http/HttpRequest;->getRequestContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Content-Type"

    .line 103
    invoke-virtual {p2}, Lmediabrowser/apiinteraction/http/HttpRequest;->getRequestContentType()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_1
    invoke-virtual {v0}, Lmediabrowser/apiinteraction/http/HttpHeaders;->getAuthorizationParameter()Ljava/lang/String;

    move-result-object p2

    .line 108
    invoke-static {p2}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/http/HttpHeaders;->getAuthorizationScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "X-Emby-Authorization"

    .line 112
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method public getBody()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/VolleyStringRequest;->request:Lmediabrowser/apiinteraction/http/HttpRequest;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/http/HttpRequest;->getRequestContent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 68
    invoke-super {p0}, Lcom/android/volley/toolbox/StringRequest;->getBody()[B

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/VolleyStringRequest;->request:Lmediabrowser/apiinteraction/http/HttpRequest;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/http/HttpRequest;->getRequestContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/VolleyStringRequest;->request:Lmediabrowser/apiinteraction/http/HttpRequest;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/http/HttpRequest;->getRequestContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 55
    :cond_0
    invoke-super {p0}, Lcom/android/volley/toolbox/StringRequest;->getBodyContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    iget-object v1, p0, Lmediabrowser/apiinteraction/android/VolleyStringRequest;->request:Lmediabrowser/apiinteraction/http/HttpRequest;

    invoke-direct {p0, v0, v1}, Lmediabrowser/apiinteraction/android/VolleyStringRequest;->AddHeaders(Ljava/util/Map;Lmediabrowser/apiinteraction/http/HttpRequest;)V

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lmediabrowser/apiinteraction/android/VolleyStringRequest;->request:Lmediabrowser/apiinteraction/http/HttpRequest;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/http/HttpRequest;->getPostData()Lmediabrowser/apiinteraction/QueryStringDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    .line 39
    invoke-super {p0}, Lcom/android/volley/toolbox/StringRequest;->getParams()Ljava/util/Map;

    .line 42
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    iget-object v1, p0, Lmediabrowser/apiinteraction/android/VolleyStringRequest;->request:Lmediabrowser/apiinteraction/http/HttpRequest;

    invoke-direct {p0, v0, v1}, Lmediabrowser/apiinteraction/android/VolleyStringRequest;->AddData(Ljava/util/Map;Lmediabrowser/apiinteraction/http/HttpRequest;)V

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "application/json"

    .line 80
    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v2, "Content-Type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; charset=UTF-8"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "text/plain"

    .line 83
    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v2, "Content-Type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; charset=UTF-8"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v1, "text/vtt"

    .line 86
    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v2, "Content-Type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; charset=UTF-8"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/android/volley/toolbox/StringRequest;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1
.end method
