.class public Lmediabrowser/apiinteraction/connect/ConnectService;
.super Ljava/lang/Object;
.source "ConnectService.java"


# instance fields
.field public JsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

.field private _httpClient:Lmediabrowser/apiinteraction/http/IAsyncHttpClient;

.field private _logger:Lmediabrowser/model/logging/ILogger;

.field private appName:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmediabrowser/model/serialization/IJsonSerializer;Lmediabrowser/model/logging/ILogger;Lmediabrowser/apiinteraction/http/IAsyncHttpClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lmediabrowser/apiinteraction/connect/ConnectService;->JsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    .line 28
    iput-object p2, p0, Lmediabrowser/apiinteraction/connect/ConnectService;->_logger:Lmediabrowser/model/logging/ILogger;

    .line 29
    iput-object p3, p0, Lmediabrowser/apiinteraction/connect/ConnectService;->_httpClient:Lmediabrowser/apiinteraction/http/IAsyncHttpClient;

    .line 30
    iput-object p4, p0, Lmediabrowser/apiinteraction/connect/ConnectService;->appName:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lmediabrowser/apiinteraction/connect/ConnectService;->appVersion:Ljava/lang/String;

    return-void
.end method

.method private AddUserAccessToken(Lmediabrowser/apiinteraction/http/HttpRequest;Ljava/lang/String;)V
    .locals 1

    .line 230
    invoke-static {p2}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    invoke-virtual {p1}, Lmediabrowser/apiinteraction/http/HttpRequest;->getRequestHeaders()Lmediabrowser/apiinteraction/http/HttpHeaders;

    move-result-object p1

    const-string v0, "X-Connect-UserToken"

    invoke-virtual {p1, v0, p2}, Lmediabrowser/apiinteraction/http/HttpHeaders;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 232
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "accessToken"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private AddXApplicationName(Lmediabrowser/apiinteraction/http/HttpRequest;)V
    .locals 3

    .line 240
    invoke-virtual {p1}, Lmediabrowser/apiinteraction/http/HttpRequest;->getRequestHeaders()Lmediabrowser/apiinteraction/http/HttpHeaders;

    move-result-object p1

    const-string v0, "X-Application"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmediabrowser/apiinteraction/connect/ConnectService;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmediabrowser/apiinteraction/connect/ConnectService;->appVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lmediabrowser/apiinteraction/http/HttpHeaders;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private GetConnectUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://connect.emby.media/service/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public Authenticate(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/connect/ConnectAuthenticationResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 35
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "nameOrEmail"

    .line 37
    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "rawpw"

    .line 38
    invoke-virtual {v0, p1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "user/authenticate"

    .line 40
    invoke-direct {p0, p1}, Lmediabrowser/apiinteraction/connect/ConnectService;->GetConnectUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 42
    new-instance p2, Lmediabrowser/apiinteraction/http/HttpRequest;

    invoke-direct {p2}, Lmediabrowser/apiinteraction/http/HttpRequest;-><init>()V

    const-string v1, "POST"

    .line 44
    invoke-virtual {p2, v1}, Lmediabrowser/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p2, p1}, Lmediabrowser/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p2, v0}, Lmediabrowser/apiinteraction/http/HttpRequest;->setPostData(Lmediabrowser/apiinteraction/QueryStringDictionary;)V

    .line 48
    invoke-direct {p0, p2}, Lmediabrowser/apiinteraction/connect/ConnectService;->AddXApplicationName(Lmediabrowser/apiinteraction/http/HttpRequest;)V

    .line 50
    iget-object p1, p0, Lmediabrowser/apiinteraction/connect/ConnectService;->_httpClient:Lmediabrowser/apiinteraction/http/IAsyncHttpClient;

    new-instance v0, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v1, p0, Lmediabrowser/apiinteraction/connect/ConnectService;->JsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v2, Lmediabrowser/model/connect/ConnectAuthenticationResult;

    invoke-direct {v0, p3, v1, v2}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-interface {p1, p2, v0}, Lmediabrowser/apiinteraction/http/IAsyncHttpClient;->Send(Lmediabrowser/apiinteraction/http/HttpRequest;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public CreatePin(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/connect/PinCreationResult;",
            ">;)V"
        }
    .end annotation

    .line 55
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "deviceId"

    .line 57
    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pin"

    invoke-direct {p0, v1}, Lmediabrowser/apiinteraction/connect/ConnectService;->GetConnectUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;->GetQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 61
    new-instance v1, Lmediabrowser/apiinteraction/http/HttpRequest;

    invoke-direct {v1}, Lmediabrowser/apiinteraction/http/HttpRequest;-><init>()V

    const-string v2, "POST"

    .line 63
    invoke-virtual {v1, v2}, Lmediabrowser/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1, p1}, Lmediabrowser/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1, v0}, Lmediabrowser/apiinteraction/http/HttpRequest;->setPostData(Lmediabrowser/apiinteraction/QueryStringDictionary;)V

    .line 67
    invoke-direct {p0, v1}, Lmediabrowser/apiinteraction/connect/ConnectService;->AddXApplicationName(Lmediabrowser/apiinteraction/http/HttpRequest;)V

    .line 69
    iget-object p1, p0, Lmediabrowser/apiinteraction/connect/ConnectService;->_httpClient:Lmediabrowser/apiinteraction/http/IAsyncHttpClient;

    new-instance v0, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/connect/ConnectService;->JsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v3, Lmediabrowser/model/connect/PinCreationResult;

    invoke-direct {v0, p2, v2, v3}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-interface {p1, v1, v0}, Lmediabrowser/apiinteraction/http/IAsyncHttpClient;->Send(Lmediabrowser/apiinteraction/http/HttpRequest;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public DeleteServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 2

    .line 190
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "userId"

    .line 192
    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "serverId"

    .line 193
    invoke-virtual {v0, p1, p3}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "serverAuthorizations"

    invoke-direct {p0, p3}, Lmediabrowser/apiinteraction/connect/ConnectService;->GetConnectUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "?"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;->GetQueryString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 197
    new-instance p3, Lmediabrowser/apiinteraction/http/HttpRequest;

    invoke-direct {p3}, Lmediabrowser/apiinteraction/http/HttpRequest;-><init>()V

    const-string v0, "DELETE"

    .line 199
    invoke-virtual {p3, v0}, Lmediabrowser/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p3, p1}, Lmediabrowser/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    .line 202
    invoke-direct {p0, p3, p2}, Lmediabrowser/apiinteraction/connect/ConnectService;->AddUserAccessToken(Lmediabrowser/apiinteraction/http/HttpRequest;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0, p3}, Lmediabrowser/apiinteraction/connect/ConnectService;->AddXApplicationName(Lmediabrowser/apiinteraction/http/HttpRequest;)V

    .line 205
    iget-object p1, p0, Lmediabrowser/apiinteraction/connect/ConnectService;->_httpClient:Lmediabrowser/apiinteraction/http/IAsyncHttpClient;

    new-instance p2, Lmediabrowser/apiinteraction/Response;

    invoke-direct {p2, p4}, Lmediabrowser/apiinteraction/Response;-><init>(Lmediabrowser/apiinteraction/IResponse;)V

    invoke-interface {p1, p3, p2}, Lmediabrowser/apiinteraction/http/IAsyncHttpClient;->Send(Lmediabrowser/apiinteraction/http/HttpRequest;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public ExchangePin(Lmediabrowser/model/connect/PinCreationResult;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/connect/PinCreationResult;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/connect/PinExchangeResult;",
            ">;)V"
        }
    .end annotation

    .line 93
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "deviceId"

    .line 95
    invoke-virtual {p1}, Lmediabrowser/model/connect/PinCreationResult;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pin"

    .line 96
    invoke-virtual {p1}, Lmediabrowser/model/connect/PinCreationResult;->getPin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "pin/authenticate"

    .line 98
    invoke-direct {p0, p1}, Lmediabrowser/apiinteraction/connect/ConnectService;->GetConnectUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 100
    new-instance v1, Lmediabrowser/apiinteraction/http/HttpRequest;

    invoke-direct {v1}, Lmediabrowser/apiinteraction/http/HttpRequest;-><init>()V

    const-string v2, "POST"

    .line 102
    invoke-virtual {v1, v2}, Lmediabrowser/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1, p1}, Lmediabrowser/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1, v0}, Lmediabrowser/apiinteraction/http/HttpRequest;->setPostData(Lmediabrowser/apiinteraction/QueryStringDictionary;)V

    .line 106
    invoke-direct {p0, v1}, Lmediabrowser/apiinteraction/connect/ConnectService;->AddXApplicationName(Lmediabrowser/apiinteraction/http/HttpRequest;)V

    .line 108
    iget-object p1, p0, Lmediabrowser/apiinteraction/connect/ConnectService;->_httpClient:Lmediabrowser/apiinteraction/http/IAsyncHttpClient;

    new-instance v0, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/connect/ConnectService;->JsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v3, Lmediabrowser/model/connect/PinExchangeResult;

    invoke-direct {v0, p2, v2, v3}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-interface {p1, v1, v0}, Lmediabrowser/apiinteraction/http/IAsyncHttpClient;->Send(Lmediabrowser/apiinteraction/http/HttpRequest;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetConnectUser(Lmediabrowser/model/connect/ConnectUserQuery;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/connect/ConnectUserQuery;",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/connect/ConnectUser;",
            ">;)V"
        }
    .end annotation

    .line 113
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    .line 115
    invoke-virtual {p1}, Lmediabrowser/model/connect/ConnectUserQuery;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "id"

    .line 117
    invoke-virtual {p1}, Lmediabrowser/model/connect/ConnectUserQuery;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/connect/ConnectUserQuery;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "name"

    .line 121
    invoke-virtual {p1}, Lmediabrowser/model/connect/ConnectUserQuery;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p1}, Lmediabrowser/model/connect/ConnectUserQuery;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "email"

    .line 125
    invoke-virtual {p1}, Lmediabrowser/model/connect/ConnectUserQuery;->getEmail()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p1}, Lmediabrowser/model/connect/ConnectUserQuery;->getNameOrEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "nameOrEmail"

    .line 129
    invoke-virtual {p1}, Lmediabrowser/model/connect/ConnectUserQuery;->getNameOrEmail()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user"

    invoke-direct {p0, v1}, Lmediabrowser/apiinteraction/connect/ConnectService;->GetConnectUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;->GetQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 138
    new-instance v0, Lmediabrowser/apiinteraction/http/HttpRequest;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/http/HttpRequest;-><init>()V

    const-string v1, "GET"

    .line 140
    invoke-virtual {v0, v1}, Lmediabrowser/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    .line 143
    invoke-direct {p0, v0, p2}, Lmediabrowser/apiinteraction/connect/ConnectService;->AddUserAccessToken(Lmediabrowser/apiinteraction/http/HttpRequest;Ljava/lang/String;)V

    .line 144
    invoke-direct {p0, v0}, Lmediabrowser/apiinteraction/connect/ConnectService;->AddXApplicationName(Lmediabrowser/apiinteraction/http/HttpRequest;)V

    .line 146
    iget-object p1, p0, Lmediabrowser/apiinteraction/connect/ConnectService;->_httpClient:Lmediabrowser/apiinteraction/http/IAsyncHttpClient;

    new-instance p2, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v1, p0, Lmediabrowser/apiinteraction/connect/ConnectService;->JsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v2, Lmediabrowser/model/connect/ConnectUser;

    invoke-direct {p2, p3, v1, v2}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-interface {p1, v0, p2}, Lmediabrowser/apiinteraction/http/IAsyncHttpClient;->Send(Lmediabrowser/apiinteraction/http/HttpRequest;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 133
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Empty ConnectUserQuery"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetPinStatus(Lmediabrowser/model/connect/PinCreationResult;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/connect/PinCreationResult;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/connect/PinStatusResult;",
            ">;)V"
        }
    .end annotation

    .line 74
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "deviceId"

    .line 76
    invoke-virtual {p1}, Lmediabrowser/model/connect/PinCreationResult;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pin"

    .line 77
    invoke-virtual {p1}, Lmediabrowser/model/connect/PinCreationResult;->getPin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pin"

    invoke-direct {p0, v1}, Lmediabrowser/apiinteraction/connect/ConnectService;->GetConnectUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;->GetQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 81
    new-instance v0, Lmediabrowser/apiinteraction/http/HttpRequest;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/http/HttpRequest;-><init>()V

    const-string v1, "GET"

    .line 83
    invoke-virtual {v0, v1}, Lmediabrowser/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, v0}, Lmediabrowser/apiinteraction/connect/ConnectService;->AddXApplicationName(Lmediabrowser/apiinteraction/http/HttpRequest;)V

    .line 88
    iget-object p1, p0, Lmediabrowser/apiinteraction/connect/ConnectService;->_httpClient:Lmediabrowser/apiinteraction/http/IAsyncHttpClient;

    new-instance v1, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/connect/ConnectService;->JsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v3, Lmediabrowser/model/connect/PinStatusResult;

    invoke-direct {v1, p2, v2, v3}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-interface {p1, v0, v1}, Lmediabrowser/apiinteraction/http/IAsyncHttpClient;->Send(Lmediabrowser/apiinteraction/http/HttpRequest;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetRegistrationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 2

    .line 170
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "serverId"

    .line 172
    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "embyUserName"

    .line 173
    invoke-virtual {v0, p1, p3}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "deviceId"

    .line 174
    invoke-virtual {v0, p1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "https://emby-validate-device.rarbg.workers.dev?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;->GetQueryString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 178
    new-instance p2, Lmediabrowser/apiinteraction/http/HttpRequest;

    invoke-direct {p2}, Lmediabrowser/apiinteraction/http/HttpRequest;-><init>()V

    const-string p3, "POST"

    .line 180
    invoke-virtual {p2, p3}, Lmediabrowser/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2, p1}, Lmediabrowser/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    .line 183
    invoke-direct {p0, p2}, Lmediabrowser/apiinteraction/connect/ConnectService;->AddXApplicationName(Lmediabrowser/apiinteraction/http/HttpRequest;)V

    .line 185
    iget-object p1, p0, Lmediabrowser/apiinteraction/connect/ConnectService;->_httpClient:Lmediabrowser/apiinteraction/http/IAsyncHttpClient;

    new-instance p3, Lmediabrowser/apiinteraction/Response;

    invoke-direct {p3, p4}, Lmediabrowser/apiinteraction/Response;-><init>(Lmediabrowser/apiinteraction/IResponse;)V

    invoke-interface {p1, p2, p3}, Lmediabrowser/apiinteraction/http/IAsyncHttpClient;->Send(Lmediabrowser/apiinteraction/http/HttpRequest;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetServers(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "[",
            "Lmediabrowser/model/connect/ConnectUserServer;",
            ">;)V"
        }
    .end annotation

    .line 151
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "userId"

    .line 153
    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "servers"

    invoke-direct {p0, v1}, Lmediabrowser/apiinteraction/connect/ConnectService;->GetConnectUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;->GetQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 157
    new-instance v0, Lmediabrowser/apiinteraction/http/HttpRequest;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/http/HttpRequest;-><init>()V

    const-string v1, "GET"

    .line 159
    invoke-virtual {v0, v1}, Lmediabrowser/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    .line 162
    invoke-direct {p0, v0, p2}, Lmediabrowser/apiinteraction/connect/ConnectService;->AddUserAccessToken(Lmediabrowser/apiinteraction/http/HttpRequest;Ljava/lang/String;)V

    .line 163
    invoke-direct {p0, v0}, Lmediabrowser/apiinteraction/connect/ConnectService;->AddXApplicationName(Lmediabrowser/apiinteraction/http/HttpRequest;)V

    .line 165
    iget-object p1, p0, Lmediabrowser/apiinteraction/connect/ConnectService;->_httpClient:Lmediabrowser/apiinteraction/http/IAsyncHttpClient;

    new-instance p2, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v1, p0, Lmediabrowser/apiinteraction/connect/ConnectService;->JsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const/4 v2, 0x0

    new-array v2, v2, [Lmediabrowser/model/connect/ConnectUserServer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p2, p3, v1, v2}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-interface {p1, v0, p2}, Lmediabrowser/apiinteraction/http/IAsyncHttpClient;->Send(Lmediabrowser/apiinteraction/http/HttpRequest;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public Logout(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 3

    const-string v0, "user/logout"

    .line 210
    invoke-direct {p0, v0}, Lmediabrowser/apiinteraction/connect/ConnectService;->GetConnectUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    new-instance v1, Lmediabrowser/apiinteraction/http/HttpRequest;

    invoke-direct {v1}, Lmediabrowser/apiinteraction/http/HttpRequest;-><init>()V

    const-string v2, "POST"

    .line 214
    invoke-virtual {v1, v2}, Lmediabrowser/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v1, v0}, Lmediabrowser/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    .line 217
    invoke-direct {p0, v1, p1}, Lmediabrowser/apiinteraction/connect/ConnectService;->AddUserAccessToken(Lmediabrowser/apiinteraction/http/HttpRequest;Ljava/lang/String;)V

    .line 218
    invoke-direct {p0, v1}, Lmediabrowser/apiinteraction/connect/ConnectService;->AddXApplicationName(Lmediabrowser/apiinteraction/http/HttpRequest;)V

    .line 220
    iget-object p1, p0, Lmediabrowser/apiinteraction/connect/ConnectService;->_httpClient:Lmediabrowser/apiinteraction/http/IAsyncHttpClient;

    new-instance v0, Lmediabrowser/apiinteraction/Response;

    invoke-direct {v0, p2}, Lmediabrowser/apiinteraction/Response;-><init>(Lmediabrowser/apiinteraction/IResponse;)V

    invoke-interface {p1, v1, v0}, Lmediabrowser/apiinteraction/http/IAsyncHttpClient;->Send(Lmediabrowser/apiinteraction/http/HttpRequest;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method
