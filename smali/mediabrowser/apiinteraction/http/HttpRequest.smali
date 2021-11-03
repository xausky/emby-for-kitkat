.class public Lmediabrowser/apiinteraction/http/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# instance fields
.field private EnableCaching:Z

.field private Method:Ljava/lang/String;

.field private RequestContent:Ljava/lang/String;

.field private RequestContentType:Ljava/lang/String;

.field private RequestHeaders:Lmediabrowser/apiinteraction/http/HttpHeaders;

.field private Timeout:I

.field private Url:Ljava/lang/String;

.field private postData:Lmediabrowser/apiinteraction/QueryStringDictionary;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lmediabrowser/apiinteraction/http/HttpHeaders;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/http/HttpHeaders;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/http/HttpRequest;->setRequestHeaders(Lmediabrowser/apiinteraction/http/HttpHeaders;)V

    const/16 v0, 0x7530

    .line 86
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/http/HttpRequest;->setTimeout(I)V

    return-void
.end method


# virtual methods
.method public final getEnableCaching()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lmediabrowser/apiinteraction/http/HttpRequest;->EnableCaching:Z

    return v0
.end method

.method public final getMethod()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lmediabrowser/apiinteraction/http/HttpRequest;->Method:Ljava/lang/String;

    return-object v0
.end method

.method public final getPostData()Lmediabrowser/apiinteraction/QueryStringDictionary;
    .locals 1

    .line 66
    iget-object v0, p0, Lmediabrowser/apiinteraction/http/HttpRequest;->postData:Lmediabrowser/apiinteraction/QueryStringDictionary;

    return-object v0
.end method

.method public final getRequestContent()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lmediabrowser/apiinteraction/http/HttpRequest;->RequestContent:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestContentType()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lmediabrowser/apiinteraction/http/HttpRequest;->RequestContentType:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestHeaders()Lmediabrowser/apiinteraction/http/HttpHeaders;
    .locals 1

    .line 37
    iget-object v0, p0, Lmediabrowser/apiinteraction/http/HttpRequest;->RequestHeaders:Lmediabrowser/apiinteraction/http/HttpHeaders;

    return-object v0
.end method

.method public final getTimeout()I
    .locals 1

    .line 56
    iget v0, p0, Lmediabrowser/apiinteraction/http/HttpRequest;->Timeout:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lmediabrowser/apiinteraction/http/HttpRequest;->Url:Ljava/lang/String;

    return-object v0
.end method

.method public final setEnableCaching(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lmediabrowser/apiinteraction/http/HttpRequest;->EnableCaching:Z

    return-void
.end method

.method public final setMethod(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lmediabrowser/apiinteraction/http/HttpRequest;->Method:Ljava/lang/String;

    return-void
.end method

.method public final setPostData(Lmediabrowser/apiinteraction/QueryStringDictionary;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lmediabrowser/apiinteraction/http/HttpRequest;->postData:Lmediabrowser/apiinteraction/QueryStringDictionary;

    return-void
.end method

.method public final setRequestContent(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lmediabrowser/apiinteraction/http/HttpRequest;->RequestContent:Ljava/lang/String;

    return-void
.end method

.method public final setRequestContentType(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lmediabrowser/apiinteraction/http/HttpRequest;->RequestContentType:Ljava/lang/String;

    return-void
.end method

.method public final setRequestHeaders(Lmediabrowser/apiinteraction/http/HttpHeaders;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lmediabrowser/apiinteraction/http/HttpRequest;->RequestHeaders:Lmediabrowser/apiinteraction/http/HttpHeaders;

    return-void
.end method

.method public final setTimeout(I)V
    .locals 0

    .line 60
    iput p1, p0, Lmediabrowser/apiinteraction/http/HttpRequest;->Timeout:I

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lmediabrowser/apiinteraction/http/HttpRequest;->Url:Ljava/lang/String;

    return-void
.end method
