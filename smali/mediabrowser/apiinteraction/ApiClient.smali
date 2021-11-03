.class public Lmediabrowser/apiinteraction/ApiClient;
.super Lmediabrowser/apiinteraction/BaseApiClient;
.source "ApiClient.java"


# instance fields
.field private apiEventListener:Lmediabrowser/apiinteraction/ApiEventListener;

.field private apiWebSocket:Lmediabrowser/apiinteraction/websocket/ApiWebSocket;

.field private authenticatedObservable:Ljava/util/Observable;

.field private connectionMode:Lmediabrowser/model/apiclient/ConnectionMode;

.field protected httpClient:Lmediabrowser/apiinteraction/http/IAsyncHttpClient;

.field private networkConnection:Lmediabrowser/apiinteraction/network/INetworkConnection;

.field private serverInfo:Lmediabrowser/model/apiclient/ServerInfo;


# direct methods
.method public constructor <init>(Lmediabrowser/apiinteraction/http/IAsyncHttpClient;Lmediabrowser/model/serialization/IJsonSerializer;Lmediabrowser/model/logging/ILogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/device/IDevice;Lmediabrowser/apiinteraction/ApiEventListener;)V
    .locals 7

    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    move-object v6, p6

    .line 92
    invoke-direct/range {v0 .. v6}, Lmediabrowser/apiinteraction/BaseApiClient;-><init>(Lmediabrowser/model/logging/ILogger;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/device/IDevice;Ljava/lang/String;)V

    .line 73
    sget-object p2, Lmediabrowser/model/apiclient/ConnectionMode;->Local:Lmediabrowser/model/apiclient/ConnectionMode;

    iput-object p2, p0, Lmediabrowser/apiinteraction/ApiClient;->connectionMode:Lmediabrowser/model/apiclient/ConnectionMode;

    .line 75
    new-instance p2, Lmediabrowser/apiinteraction/AutomaticObservable;

    invoke-direct {p2}, Lmediabrowser/apiinteraction/AutomaticObservable;-><init>()V

    iput-object p2, p0, Lmediabrowser/apiinteraction/ApiClient;->authenticatedObservable:Ljava/util/Observable;

    .line 94
    iput-object p1, p0, Lmediabrowser/apiinteraction/ApiClient;->httpClient:Lmediabrowser/apiinteraction/http/IAsyncHttpClient;

    .line 95
    iput-object p8, p0, Lmediabrowser/apiinteraction/ApiClient;->apiEventListener:Lmediabrowser/apiinteraction/ApiEventListener;

    .line 97
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/ApiClient;->ResetHttpHeaders()V

    return-void
.end method

.method public constructor <init>(Lmediabrowser/apiinteraction/http/IAsyncHttpClient;Lmediabrowser/model/serialization/IJsonSerializer;Lmediabrowser/model/logging/ILogger;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/ApiEventListener;)V
    .locals 0

    .line 82
    invoke-direct {p0, p3, p2, p4, p5}, Lmediabrowser/apiinteraction/BaseApiClient;-><init>(Lmediabrowser/model/logging/ILogger;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object p2, Lmediabrowser/model/apiclient/ConnectionMode;->Local:Lmediabrowser/model/apiclient/ConnectionMode;

    iput-object p2, p0, Lmediabrowser/apiinteraction/ApiClient;->connectionMode:Lmediabrowser/model/apiclient/ConnectionMode;

    .line 75
    new-instance p2, Lmediabrowser/apiinteraction/AutomaticObservable;

    invoke-direct {p2}, Lmediabrowser/apiinteraction/AutomaticObservable;-><init>()V

    iput-object p2, p0, Lmediabrowser/apiinteraction/ApiClient;->authenticatedObservable:Ljava/util/Observable;

    .line 84
    iput-object p1, p0, Lmediabrowser/apiinteraction/ApiClient;->httpClient:Lmediabrowser/apiinteraction/http/IAsyncHttpClient;

    .line 85
    iput-object p6, p0, Lmediabrowser/apiinteraction/ApiClient;->apiEventListener:Lmediabrowser/apiinteraction/ApiEventListener;

    .line 87
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/ApiClient;->ResetHttpHeaders()V

    return-void
.end method

.method private DeleteAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 1

    .line 1172
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1177
    new-instance v0, Lmediabrowser/apiinteraction/Response;

    invoke-direct {v0, p2}, Lmediabrowser/apiinteraction/Response;-><init>(Lmediabrowser/apiinteraction/IResponse;)V

    const-string p2, "DELETE"

    .line 1179
    invoke-direct {p0, p1, p2, v0}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 1174
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "url"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private GetItemFromUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 356
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    .line 358
    new-instance v1, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v3, Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {v1, p2, v2, v3}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method private GetItemsFromUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/ItemsResult;",
            ">;)V"
        }
    .end annotation

    .line 349
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    .line 351
    new-instance v1, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v3, Lmediabrowser/model/querying/ItemsResult;

    invoke-direct {v1, p2, v2, v3}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method private PostAsync(Ljava/lang/String;Ljava/lang/Object;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 7

    .line 1207
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1212
    new-instance v6, Lmediabrowser/apiinteraction/Response;

    invoke-direct {v6, p3}, Lmediabrowser/apiinteraction/Response;-><init>(Lmediabrowser/apiinteraction/IResponse;)V

    .line 1214
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/ApiClient;->getJsonSerializer()Lmediabrowser/model/serialization/IJsonSerializer;

    move-result-object p3

    invoke-interface {p3, p2}, Lmediabrowser/model/serialization/IJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "POST"

    const-string v5, "application/json"

    move-object v1, p0

    move-object v2, p1

    .line 1216
    invoke-direct/range {v1 .. v6}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 1209
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "url"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private PostAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 1

    .line 1184
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1189
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lmediabrowser/apiinteraction/ApiClient;->PostAsync(Ljava/lang/String;Ljava/lang/Object;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void

    .line 1186
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "url"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private PostAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;ZLmediabrowser/apiinteraction/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/QueryStringDictionary;",
            "Z",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1197
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v3, "POST"

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    .line 1202
    invoke-direct/range {v1 .. v6}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;ZLmediabrowser/apiinteraction/Response;)V

    return-void

    .line 1199
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "url"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private Send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 161
    new-instance v0, Lmediabrowser/apiinteraction/http/HttpRequest;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/http/HttpRequest;-><init>()V

    .line 162
    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0, p2}, Lmediabrowser/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lmediabrowser/apiinteraction/ApiClient;->HttpHeaders:Lmediabrowser/apiinteraction/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/http/HttpRequest;->setRequestHeaders(Lmediabrowser/apiinteraction/http/HttpHeaders;)V

    .line 165
    invoke-virtual {v0, p3}, Lmediabrowser/apiinteraction/http/HttpRequest;->setRequestContent(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0, p4}, Lmediabrowser/apiinteraction/http/HttpRequest;->setRequestContentType(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 167
    invoke-direct {p0, v0, p1, p5}, Lmediabrowser/apiinteraction/ApiClient;->SendRequest(Lmediabrowser/apiinteraction/http/HttpRequest;ZLmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method private Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;ZLmediabrowser/apiinteraction/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/QueryStringDictionary;",
            "Z",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 176
    new-instance v0, Lmediabrowser/apiinteraction/http/HttpRequest;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/http/HttpRequest;-><init>()V

    .line 177
    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0, p2}, Lmediabrowser/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 179
    iget-object p1, p0, Lmediabrowser/apiinteraction/ApiClient;->HttpHeaders:Lmediabrowser/apiinteraction/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/http/HttpRequest;->setRequestHeaders(Lmediabrowser/apiinteraction/http/HttpHeaders;)V

    .line 180
    invoke-virtual {v0, p3}, Lmediabrowser/apiinteraction/http/HttpRequest;->setPostData(Lmediabrowser/apiinteraction/QueryStringDictionary;)V

    .line 181
    invoke-direct {p0, v0, p4, p5}, Lmediabrowser/apiinteraction/ApiClient;->SendRequest(Lmediabrowser/apiinteraction/http/HttpRequest;ZLmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method private Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 152
    new-instance v0, Lmediabrowser/apiinteraction/http/HttpRequest;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/http/HttpRequest;-><init>()V

    .line 153
    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0, p2}, Lmediabrowser/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 155
    iget-object p1, p0, Lmediabrowser/apiinteraction/ApiClient;->HttpHeaders:Lmediabrowser/apiinteraction/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/http/HttpRequest;->setRequestHeaders(Lmediabrowser/apiinteraction/http/HttpHeaders;)V

    const/4 p1, 0x1

    .line 156
    invoke-direct {p0, v0, p1, p3}, Lmediabrowser/apiinteraction/ApiClient;->SendRequest(Lmediabrowser/apiinteraction/http/HttpRequest;ZLmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method private SendRequest(Lmediabrowser/apiinteraction/http/HttpRequest;ZLmediabrowser/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/http/HttpRequest;",
            "Z",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClient;->httpClient:Lmediabrowser/apiinteraction/http/IAsyncHttpClient;

    new-instance v1, Lmediabrowser/apiinteraction/ApiClientRequestListener;

    invoke-direct {v1, p0, p2, p3}, Lmediabrowser/apiinteraction/ApiClientRequestListener;-><init>(Lmediabrowser/apiinteraction/ApiClient;ZLmediabrowser/apiinteraction/Response;)V

    invoke-interface {v0, p1, v1}, Lmediabrowser/apiinteraction/http/IAsyncHttpClient;->Send(Lmediabrowser/apiinteraction/http/HttpRequest;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method


# virtual methods
.method public AddToPlaylist(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 1

    .line 2311
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 2316
    new-instance p3, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {p3}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v0, "Ids"

    .line 2318
    invoke-virtual {p3, v0, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2319
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Playlists/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Items"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 2321
    invoke-direct {p0, p1, p4}, Lmediabrowser/apiinteraction/ApiClient;->PostAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void

    .line 2313
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "playlistId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public AuthenticateUserAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/users/AuthenticationResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1298
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Users/AuthenticateByName"

    .line 1303
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1305
    new-instance v1, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v1}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v2, "username"

    .line 1307
    invoke-virtual {v1, v2, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "pw"

    .line 1308
    invoke-virtual {v1, p1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "password"

    .line 1309
    invoke-static {p2}, Lmediabrowser/apiinteraction/cryptography/Sha1;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "passwordMd5"

    .line 1310
    invoke-static {p2}, Lmediabrowser/apiinteraction/cryptography/Md5;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1313
    new-instance p2, Lmediabrowser/apiinteraction/ApiClient$1;

    invoke-direct {p2, p0, p3, p3}, Lmediabrowser/apiinteraction/ApiClient$1;-><init>(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/apiinteraction/IResponse;Lmediabrowser/apiinteraction/Response;)V

    const/4 p3, 0x0

    .line 1328
    invoke-direct {p0, p1, v1, p3, p2}, Lmediabrowser/apiinteraction/ApiClient;->PostAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;ZLmediabrowser/apiinteraction/Response;)V

    return-void

    .line 1300
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "username"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public CancelLiveTvSeriesTimerAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 3

    .line 1698
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1703
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    .line 1705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LiveTv/SeriesTimers/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 1707
    invoke-direct {p0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->DeleteAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void

    .line 1700
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public CancelLiveTvTimerAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 3

    .line 1712
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1717
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    .line 1719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LiveTv/Timers/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 1721
    invoke-direct {p0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->DeleteAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void

    .line 1714
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public CancelSyncJob(Lmediabrowser/model/sync/SyncJob;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sync/Jobs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/sync/SyncJob;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2561
    invoke-direct {p0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->DeleteAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void

    .line 2556
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "job"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ClearUserItemRatingAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/dto/UserItemDataDto;",
            ">;)V"
        }
    .end annotation

    .line 1244
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1249
    invoke-static {p2}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/Items/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Rating"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1255
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DELETE"

    .line 1256
    new-instance v0, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v1, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    new-instance v2, Lmediabrowser/model/dto/UserItemDataDto;

    invoke-direct {v2}, Lmediabrowser/model/dto/UserItemDataDto;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p3, v1, v2}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, p2, v0}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 1251
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "userId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1246
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public CreateLiveTvSeriesTimerAsync(Lmediabrowser/model/livetv/SeriesTimerInfoDto;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "LiveTv/SeriesTimers"

    .line 1968
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1970
    invoke-direct {p0, v0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->PostAsync(Ljava/lang/String;Ljava/lang/Object;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void

    .line 1965
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "timer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public CreateLiveTvTimerAsync(Lmediabrowser/model/livetv/BaseTimerInfoDto;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "LiveTv/Timers"

    .line 1980
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1982
    invoke-direct {p0, v0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->PostAsync(Ljava/lang/String;Ljava/lang/Object;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void

    .line 1977
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "timer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public CreatePlaylist(Lmediabrowser/model/playlists/PlaylistCreationRequest;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/playlists/PlaylistCreationRequest;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/playlists/PlaylistCreationResult;",
            ">;)V"
        }
    .end annotation

    .line 2326
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "UserId"

    .line 2328
    invoke-virtual {p1}, Lmediabrowser/model/playlists/PlaylistCreationRequest;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Name"

    .line 2329
    invoke-virtual {p1}, Lmediabrowser/model/playlists/PlaylistCreationRequest;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MediaType"

    .line 2331
    invoke-virtual {p1}, Lmediabrowser/model/playlists/PlaylistCreationRequest;->getMediaType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Ids"

    .line 2333
    invoke-virtual {p1}, Lmediabrowser/model/playlists/PlaylistCreationRequest;->getItemIdList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p1, "Playlists/"

    .line 2335
    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 2336
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "POST"

    .line 2338
    new-instance v1, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v3, Lmediabrowser/model/playlists/PlaylistCreationResult;

    invoke-direct {v1, p2, v2, v3}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public DeleteItem(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 2

    .line 2214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Items/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2216
    invoke-direct {p0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->DeleteAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method

.method public DeleteSubtitle(Ljava/lang/String;ILmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 2

    .line 2221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Videos/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Subtitles/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2223
    invoke-direct {p0, p1, p3}, Lmediabrowser/apiinteraction/ApiClient;->DeleteAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method

.method public EnableAutomaticNetworking(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/model/apiclient/ConnectionMode;Lmediabrowser/apiinteraction/network/INetworkConnection;)V
    .locals 0

    .line 102
    iput-object p3, p0, Lmediabrowser/apiinteraction/ApiClient;->networkConnection:Lmediabrowser/apiinteraction/network/INetworkConnection;

    .line 103
    iput-object p2, p0, Lmediabrowser/apiinteraction/ApiClient;->connectionMode:Lmediabrowser/model/apiclient/ConnectionMode;

    .line 104
    iput-object p1, p0, Lmediabrowser/apiinteraction/ApiClient;->serverInfo:Lmediabrowser/model/apiclient/ServerInfo;

    .line 106
    invoke-virtual {p1, p2}, Lmediabrowser/model/apiclient/ServerInfo;->GetAddress(Lmediabrowser/model/apiclient/ConnectionMode;)Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->setServerAddress(Ljava/lang/String;)V

    return-void
.end method

.method public GetAdditionalParts(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/ItemsResult;",
            ">;)V"
        }
    .end annotation

    .line 2106
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "UserId"

    .line 2108
    invoke-virtual {v0, v1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Videos/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/AdditionalParts"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 2112
    invoke-direct {p0, p1, p3}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsFromUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetAlbumArtistsAsync(Lmediabrowser/model/querying/ArtistsQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/querying/ArtistsQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/ItemsResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Artists/AlbumArtists"

    .line 613
    invoke-virtual {p0, v0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetItemByNameListUrl(Ljava/lang/String;Lmediabrowser/model/querying/ItemsByNameQuery;)Ljava/lang/String;

    move-result-object p1

    .line 615
    invoke-direct {p0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsFromUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetAllThemeMediaAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lmediabrowser/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/AllThemeMediaResult;",
            ">;)V"
        }
    .end annotation

    .line 1431
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "InheritFromParent"

    .line 1433
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {v0, v1, p3}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Z)V

    const-string p3, "UserId"

    .line 1434
    invoke-virtual {v0, p3, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Items/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/ThemeMedia"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 1438
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GET"

    .line 1440
    new-instance p3, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v1, Lmediabrowser/model/querying/AllThemeMediaResult;

    invoke-direct {p3, p4, v0, v1}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, p2, p3}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetArtistAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 739
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 743
    invoke-static {p2}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 748
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "userId"

    .line 750
    invoke-virtual {v0, v1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Artists/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetSlugName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 754
    invoke-direct {p0, p1, p3}, Lmediabrowser/apiinteraction/ApiClient;->GetItemFromUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 745
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "userId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 741
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetArtistsAsync(Lmediabrowser/model/querying/ArtistsQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/querying/ArtistsQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/ItemsResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Artists"

    .line 600
    invoke-virtual {p0, v0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetItemByNameListUrl(Ljava/lang/String;Lmediabrowser/model/querying/ItemsByNameQuery;)Ljava/lang/String;

    move-result-object p1

    .line 602
    invoke-direct {p0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsFromUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetChannelFeatures(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/channels/ChannelFeatures;",
            ">;)V"
        }
    .end annotation

    .line 2117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Channels/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Features"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2119
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    .line 2120
    new-instance v1, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v3, Lmediabrowser/model/channels/ChannelFeatures;

    invoke-direct {v1, p2, v2, v3}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetChannelItems(Lmediabrowser/model/channels/ChannelItemQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/channels/ChannelItemQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/ItemsResult;",
            ">;)V"
        }
    .end annotation

    .line 2125
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "UserId"

    .line 2127
    invoke-virtual {p1}, Lmediabrowser/model/channels/ChannelItemQuery;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "StartIndex"

    .line 2128
    invoke-virtual {p1}, Lmediabrowser/model/channels/ChannelItemQuery;->getStartIndex()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "Limit"

    .line 2129
    invoke-virtual {p1}, Lmediabrowser/model/channels/ChannelItemQuery;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "FolderId"

    .line 2130
    invoke-virtual {p1}, Lmediabrowser/model/channels/ChannelItemQuery;->getFolderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Fields"

    .line 2132
    invoke-virtual {p1}, Lmediabrowser/model/channels/ChannelItemQuery;->getFields()[Lmediabrowser/model/querying/ItemFields;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    const-string v1, "Limit"

    .line 2133
    invoke-virtual {p1}, Lmediabrowser/model/channels/ChannelItemQuery;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "Filters"

    .line 2135
    invoke-virtual {p1}, Lmediabrowser/model/channels/ChannelItemQuery;->getFilters()[Lmediabrowser/model/querying/ItemFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    const-string v1, "SortBy"

    .line 2136
    invoke-virtual {p1}, Lmediabrowser/model/channels/ChannelItemQuery;->getSortBy()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "SortOrder"

    .line 2137
    invoke-virtual {p1}, Lmediabrowser/model/channels/ChannelItemQuery;->getSortOrder()Lmediabrowser/model/entities/SortOrder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/Enum;)V

    .line 2139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channels/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/channels/ChannelItemQuery;->getChannelId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Items"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 2141
    invoke-direct {p0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsFromUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetChannels(Lmediabrowser/model/channels/ChannelQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/channels/ChannelQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/ItemsResult;",
            ">;)V"
        }
    .end annotation

    .line 2146
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "UserId"

    .line 2148
    invoke-virtual {p1}, Lmediabrowser/model/channels/ChannelQuery;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SupportsLatestItems"

    .line 2149
    invoke-virtual {p1}, Lmediabrowser/model/channels/ChannelQuery;->getSupportsLatestItems()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "StartIndex"

    .line 2150
    invoke-virtual {p1}, Lmediabrowser/model/channels/ChannelQuery;->getStartIndex()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "Limit"

    .line 2151
    invoke-virtual {p1}, Lmediabrowser/model/channels/ChannelQuery;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "IsFavorite"

    .line 2152
    invoke-virtual {p1}, Lmediabrowser/model/channels/ChannelQuery;->getIsFavorite()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "Channels"

    .line 2154
    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 2156
    invoke-direct {p0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsFromUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetClientSessionsAsync(Lmediabrowser/model/querying/SessionQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/querying/SessionQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "[",
            "Lmediabrowser/model/session/SessionInfoDto;",
            ">;)V"
        }
    .end annotation

    .line 336
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "ControllableByUserId"

    .line 338
    invoke-virtual {p1}, Lmediabrowser/model/querying/SessionQuery;->getControllableByUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Sessions"

    .line 340
    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 342
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    .line 344
    new-instance v1, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const/4 v3, 0x0

    new-array v3, v3, [Lmediabrowser/model/session/SessionInfoDto;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, p2, v2, v3}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetContentUploadHistory(Lmediabrowser/apiinteraction/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/devices/ContentUploadHistory;",
            ">;)V"
        }
    .end annotation

    .line 2420
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "DeviceId"

    .line 2422
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/ApiClient;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Devices/CameraUploads"

    .line 2424
    invoke-virtual {p0, v1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object v0

    .line 2426
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    .line 2428
    new-instance v2, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v3, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v4, Lmediabrowser/model/devices/ContentUploadHistory;

    invoke-direct {v2, p1, v3, v4}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, v0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetCriticReviews(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lmediabrowser/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/results/ItemReviewsResult;",
            ">;)V"
        }
    .end annotation

    .line 1509
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1514
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "startIndex"

    .line 1516
    invoke-virtual {v0, v1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "limit"

    .line 1517
    invoke-virtual {v0, p2, p3}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1519
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Items/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/CriticReviews"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 1521
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GET"

    .line 1523
    new-instance p3, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v1, Lmediabrowser/model/results/ItemReviewsResult;

    invoke-direct {p3, p4, v0, v1}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, p2, p3}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 1511
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetCultures(Lmediabrowser/apiinteraction/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "[",
            "Lmediabrowser/model/localization/LanguageCulture;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Localization/cultures"

    .line 787
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 789
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    .line 791
    new-instance v2, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v3, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const/4 v4, 0x0

    new-array v4, v4, [Lmediabrowser/model/localization/LanguageCulture;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, v0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetCurrentSessionAsync(Lmediabrowser/apiinteraction/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "[",
            "Lmediabrowser/model/session/SessionInfoDto;",
            ">;)V"
        }
    .end annotation

    .line 2161
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "DeviceId"

    .line 2163
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/ApiClient;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Sessions"

    .line 2164
    invoke-virtual {p0, v1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object v0

    .line 2166
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    .line 2167
    new-instance v2, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v3, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const/4 v4, 0x0

    new-array v4, v4, [Lmediabrowser/model/session/SessionInfoDto;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, v0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetDefaultLiveTvTimerInfo(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/livetv/SeriesTimerInfoDto;",
            ">;)V"
        }
    .end annotation

    .line 1987
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1992
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "programId"

    .line 1994
    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "LiveTv/Timers/Defaults"

    .line 1996
    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 1998
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    .line 1999
    new-instance v1, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v3, Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-direct {v1, p2, v2, v3}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 1989
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "programId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetDefaultLiveTvTimerInfo(Lmediabrowser/apiinteraction/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/livetv/SeriesTimerInfoDto;",
            ">;)V"
        }
    .end annotation

    const-string v0, "LiveTv/Timers/Defaults"

    .line 2004
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2006
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    .line 2007
    new-instance v2, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v3, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v4, Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-direct {v2, p1, v3, v4}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, v0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetDisplayPreferencesAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/entities/DisplayPreferences;",
            ">;)V"
        }
    .end annotation

    .line 1379
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "userId"

    .line 1381
    invoke-virtual {v0, v1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "client"

    .line 1382
    invoke-virtual {v0, p2, p3}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "DisplayPreferences/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 1386
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GET"

    .line 1388
    new-instance p3, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v1, Lmediabrowser/model/entities/DisplayPreferences;

    invoke-direct {p3, p4, v0, v1}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, p2, p3}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetEndPointInfo(Lmediabrowser/apiinteraction/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/net/EndPointInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "System/Endpoint"

    .line 796
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 798
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    .line 800
    new-instance v2, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v3, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v4, Lmediabrowser/model/net/EndPointInfo;

    invoke-direct {v2, p1, v3, v4}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, v0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetEpisodesAsync(Lmediabrowser/model/querying/EpisodeQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/querying/EpisodeQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/ItemsResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 442
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "Season"

    .line 444
    invoke-virtual {p1}, Lmediabrowser/model/querying/EpisodeQuery;->getSeasonNumber()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "UserId"

    .line 445
    invoke-virtual {p1}, Lmediabrowser/model/querying/EpisodeQuery;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SeasonId"

    .line 447
    invoke-virtual {p1}, Lmediabrowser/model/querying/EpisodeQuery;->getSeasonId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Filters"

    .line 448
    invoke-virtual {p1}, Lmediabrowser/model/querying/EpisodeQuery;->getFilters()[Lmediabrowser/model/querying/ItemFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    const-string v1, "Fields"

    .line 450
    invoke-virtual {p1}, Lmediabrowser/model/querying/EpisodeQuery;->getFields()[Lmediabrowser/model/querying/ItemFields;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    const-string v1, "AdjacentTo"

    .line 452
    invoke-virtual {p1}, Lmediabrowser/model/querying/EpisodeQuery;->getAdjacentTo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IsMissing"

    .line 454
    invoke-virtual {p1}, Lmediabrowser/model/querying/EpisodeQuery;->getIsMissing()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "IsVirtualUnaired"

    .line 455
    invoke-virtual {p1}, Lmediabrowser/model/querying/EpisodeQuery;->getIsVirtualUnaired()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "EnableTotalRecordCount"

    .line 456
    invoke-virtual {p1}, Lmediabrowser/model/querying/EpisodeQuery;->getEnableTotalRecordCount()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shows/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/querying/EpisodeQuery;->getSeriesId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Episodes"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 460
    invoke-direct {p0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsFromUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 439
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetFilters(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/QueryFilters;",
            ">;)V"
        }
    .end annotation

    .line 2373
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "UserId"

    .line 2374
    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ParentId"

    .line 2375
    invoke-virtual {v0, p1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "IncludeItemTypes"

    .line 2376
    invoke-virtual {v0, p1, p4}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "MediaTypes"

    .line 2377
    invoke-virtual {v0, p1, p3}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "Items/Filters"

    .line 2379
    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 2381
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GET"

    .line 2383
    new-instance p3, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object p4, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v0, Lmediabrowser/model/querying/QueryFilters;

    invoke-direct {p3, p5, p4, v0}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, p2, p3}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetGameGenreAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 694
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 698
    invoke-static {p2}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "userId"

    .line 705
    invoke-virtual {v0, v1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameGenres/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetSlugName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 709
    invoke-direct {p0, p1, p3}, Lmediabrowser/apiinteraction/ApiClient;->GetItemFromUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 700
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "userId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 696
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetGamePlayerIndex(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "[",
            "Lmediabrowser/model/dto/ItemIndex;",
            ">;)V"
        }
    .end annotation

    .line 1534
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "UserId"

    .line 1536
    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Games/PlayerIndex"

    .line 1538
    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 1540
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    .line 1541
    new-instance v1, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const/4 v3, 0x0

    new-array v3, v3, [Lmediabrowser/model/dto/ItemIndex;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, p2, v2, v3}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetGenreAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 654
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 658
    invoke-static {p2}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 663
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "userId"

    .line 665
    invoke-virtual {v0, v1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Genres/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetSlugName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 669
    invoke-direct {p0, p1, p3}, Lmediabrowser/apiinteraction/ApiClient;->GetItemFromUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 660
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "userId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 656
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetGenresAsync(Lmediabrowser/model/querying/ItemsByNameQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/querying/ItemsByNameQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/ItemsResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Genres"

    .line 539
    invoke-virtual {p0, v0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetItemByNameListUrl(Ljava/lang/String;Lmediabrowser/model/querying/ItemsByNameQuery;)Ljava/lang/String;

    move-result-object p1

    .line 541
    invoke-direct {p0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsFromUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetInstantMixFromItem(Lmediabrowser/model/querying/SimilarItemsQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/querying/SimilarItemsQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/ItemsResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "Items"

    .line 527
    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetInstantMixUrl(Lmediabrowser/model/querying/SimilarItemsQuery;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 529
    invoke-direct {p0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsFromUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 524
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetIntrosAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/ItemsResult;",
            ">;)V"
        }
    .end annotation

    .line 245
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    invoke-static {p2}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/Items/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Intros"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 257
    invoke-direct {p0, p1, p3}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsFromUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 252
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "userId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 247
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetItemAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 228
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    invoke-static {p2}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/Items/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-direct {p0, p1, p3}, Lmediabrowser/apiinteraction/ApiClient;->GetItemFromUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 235
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "userId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 230
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetItemCountsAsync(Lmediabrowser/model/querying/ItemCountsQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/querying/ItemCountsQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/dto/ItemCounts;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 267
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "UserId"

    .line 269
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemCountsQuery;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IsFavorite"

    .line 270
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemCountsQuery;->getIsFavorite()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "Items/Counts"

    .line 272
    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 274
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    .line 276
    new-instance v1, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v3, Lmediabrowser/model/dto/ItemCounts;

    invoke-direct {v1, p2, v2, v3}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 264
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetItemPrefixesAsync(Lmediabrowser/model/querying/ItemQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/querying/ItemQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "[",
            "Lmediabrowser/model/dto/NameValuePair;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1846
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "ParentId"

    .line 1848
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getParentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "UserId"

    .line 1849
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IncludeItemTypes"

    .line 1850
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getIncludeItemTypes()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "Recursive"

    .line 1851
    invoke-virtual {p1}, Lmediabrowser/model/querying/ItemQuery;->getRecursive()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "Items/Prefixes"

    .line 1854
    invoke-virtual {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;->GetQueryString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlbumArtist"

    .line 1855
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "ArtistType"

    const-string v1, "AlbumArtist"

    .line 1856
    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Artists/Prefixes"

    goto :goto_0

    :cond_0
    const-string v2, "Artist"

    .line 1858
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "ArtistType"

    const-string v1, "Artist"

    .line 1859
    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Artists/Prefixes"

    .line 1863
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 1865
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    .line 1866
    new-instance v1, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const/4 v3, 0x0

    new-array v3, v3, [Lmediabrowser/model/dto/NameValuePair;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, p2, v2, v3}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 1843
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetItemsAsync(Lmediabrowser/model/querying/ItemQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/querying/ItemQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/ItemsResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 368
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetItemListUrl(Lmediabrowser/model/querying/ItemQuery;)Ljava/lang/String;

    move-result-object p1

    .line 370
    invoke-direct {p0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsFromUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 365
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetLatestChannelItems(Lmediabrowser/model/channels/AllChannelMediaQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/channels/AllChannelMediaQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/ItemsResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 2187
    invoke-virtual {p1}, Lmediabrowser/model/channels/AllChannelMediaQuery;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2192
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "UserId"

    .line 2193
    invoke-virtual {p1}, Lmediabrowser/model/channels/AllChannelMediaQuery;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "StartIndex"

    .line 2194
    invoke-virtual {p1}, Lmediabrowser/model/channels/AllChannelMediaQuery;->getStartIndex()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "Limit"

    .line 2195
    invoke-virtual {p1}, Lmediabrowser/model/channels/AllChannelMediaQuery;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2196
    invoke-virtual {p1}, Lmediabrowser/model/channels/AllChannelMediaQuery;->getFilters()[Lmediabrowser/model/querying/ItemFilter;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "Filters"

    .line 2197
    invoke-virtual {p1}, Lmediabrowser/model/channels/AllChannelMediaQuery;->getFilters()[Lmediabrowser/model/querying/ItemFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    .line 2199
    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/channels/AllChannelMediaQuery;->getFields()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "Fields"

    .line 2200
    invoke-virtual {p1}, Lmediabrowser/model/channels/AllChannelMediaQuery;->getFields()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/channels/AllChannelMediaQuery;->getFields()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 2201
    invoke-virtual {p1}, Lmediabrowser/model/channels/AllChannelMediaQuery;->getFields()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1}, Lmediabrowser/model/channels/AllChannelMediaQuery;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lmediabrowser/model/querying/ItemFields;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lmediabrowser/model/querying/ItemFields;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 2200
    :goto_0
    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    :cond_2
    const-string v1, "ChannelIds"

    .line 2203
    invoke-virtual {p1}, Lmediabrowser/model/channels/AllChannelMediaQuery;->getChannelIds()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "Channels/Items/Latest"

    .line 2205
    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 2207
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    .line 2209
    new-instance v1, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v3, Lmediabrowser/model/querying/ItemsResult;

    invoke-direct {v1, p2, v2, v3}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 2189
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "UserId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2185
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetLatestItems(Lmediabrowser/model/querying/LatestItemsQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/querying/LatestItemsQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "[",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2292
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "GroupItems"

    .line 2293
    invoke-virtual {p1}, Lmediabrowser/model/querying/LatestItemsQuery;->getGroupItems()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "IncludeItemTypes"

    .line 2294
    invoke-virtual {p1}, Lmediabrowser/model/querying/LatestItemsQuery;->getIncludeItemTypes()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "ParentId"

    .line 2295
    invoke-virtual {p1}, Lmediabrowser/model/querying/LatestItemsQuery;->getParentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IsPlayed"

    .line 2296
    invoke-virtual {p1}, Lmediabrowser/model/querying/LatestItemsQuery;->getIsPlayed()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "StartIndex"

    .line 2297
    invoke-virtual {p1}, Lmediabrowser/model/querying/LatestItemsQuery;->getStartIndex()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "Limit"

    .line 2298
    invoke-virtual {p1}, Lmediabrowser/model/querying/LatestItemsQuery;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "Fields"

    .line 2299
    invoke-virtual {p1}, Lmediabrowser/model/querying/LatestItemsQuery;->getFields()[Lmediabrowser/model/querying/ItemFields;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    const-string v1, "EnableTotalRecordCount"

    .line 2300
    invoke-virtual {p1}, Lmediabrowser/model/querying/LatestItemsQuery;->getEnableTotalRecordCount()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/querying/LatestItemsQuery;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Items/Latest"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 2304
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    .line 2306
    new-instance v1, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const/4 v3, 0x0

    new-array v3, v3, [Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, p2, v2, v3}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 2289
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetLiveStreamMediaInfo(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/dto/MediaSourceInfo;",
            ">;)V"
        }
    .end annotation

    .line 1586
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "liveStreamId"

    .line 1587
    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "LiveStreams/MediaInfo"

    .line 1589
    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "POST"

    .line 1591
    new-instance v1, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v3, Lmediabrowser/model/dto/MediaSourceInfo;

    invoke-direct {v1, p2, v2, v3}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetLiveTvChannelAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/livetv/ChannelInfoDto;",
            ">;)V"
        }
    .end annotation

    .line 1726
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1731
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "userId"

    .line 1732
    invoke-virtual {v0, v1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LiveTv/Channels/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 1736
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GET"

    .line 1737
    new-instance v0, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v1, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v2, Lmediabrowser/model/livetv/ChannelInfoDto;

    invoke-direct {v0, p3, v1, v2}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, p2, v0}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 1728
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetLiveTvChannelsAsync(Lmediabrowser/model/livetv/LiveTvChannelQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/livetv/LiveTvChannelQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/results/ChannelInfoDtoResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1670
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "UserId"

    .line 1672
    invoke-virtual {p1}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "StartIndex"

    .line 1673
    invoke-virtual {p1}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->getStartIndex()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "Limit"

    .line 1674
    invoke-virtual {p1}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "IsFavorite"

    .line 1675
    invoke-virtual {p1}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->getIsFavorite()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "IsLiked"

    .line 1676
    invoke-virtual {p1}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->getIsLiked()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "IsDisliked"

    .line 1677
    invoke-virtual {p1}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->getIsDisliked()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "EnableFavoriteSorting"

    .line 1678
    invoke-virtual {p1}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->getEnableFavoriteSorting()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "EnableUserData"

    .line 1679
    invoke-virtual {p1}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->getEnableUserData()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "SortBy"

    .line 1680
    invoke-virtual {p1}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->getSortBy()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "SortOrder"

    .line 1681
    invoke-virtual {p1}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->getSortOrder()Lmediabrowser/model/entities/SortOrder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Enum;)V

    const-string v1, "Fields"

    .line 1682
    invoke-virtual {p1}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->getFields()[Lmediabrowser/model/querying/ItemFields;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    const-string v1, "AddCurrentProgram"

    .line 1683
    invoke-virtual {p1}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->getAddCurrentProgram()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1685
    invoke-virtual {p1}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->getChannelType()Lmediabrowser/model/livetv/ChannelType;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "ChannelType"

    .line 1687
    invoke-virtual {p1}, Lmediabrowser/model/livetv/LiveTvChannelQuery;->getChannelType()Lmediabrowser/model/livetv/ChannelType;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/Enum;)V

    :cond_0
    const-string p1, "LiveTv/Channels"

    .line 1690
    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 1692
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    .line 1693
    new-instance v1, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v3, Lmediabrowser/model/results/ChannelInfoDtoResult;

    invoke-direct {v1, p2, v2, v3}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 1667
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetLiveTvGuideInfo(Lmediabrowser/apiinteraction/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/livetv/GuideInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "LiveTv/GuideInfo"

    .line 2012
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2014
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    .line 2015
    new-instance v2, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v3, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v4, Lmediabrowser/model/livetv/GuideInfo;

    invoke-direct {v2, p1, v3, v4}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, v0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetLiveTvInfoAsync(Lmediabrowser/apiinteraction/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/livetv/LiveTvInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "LiveTv/Info"

    .line 1578
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1580
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    .line 1581
    new-instance v2, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v3, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v4, Lmediabrowser/model/livetv/LiveTvInfo;

    invoke-direct {v2, p1, v3, v4}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, v0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetLiveTvProgramAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 2020
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2025
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "userId"

    .line 2026
    invoke-virtual {v0, v1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2028
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LiveTv/Programs/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 2030
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GET"

    .line 2031
    new-instance v0, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v1, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v2, Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {v0, p3, v1, v2}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, p2, v0}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 2022
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetLiveTvProgramsAsync(Lmediabrowser/model/livetv/ProgramQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/livetv/ProgramQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/ItemsResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 1876
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    .line 1880
    invoke-virtual {p1}, Lmediabrowser/model/livetv/ProgramQuery;->getMaxEndDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "MaxEndDate"

    .line 1882
    invoke-virtual {p1}, Lmediabrowser/model/livetv/ProgramQuery;->getMaxEndDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmediabrowser/apiinteraction/ApiClient;->getIsoString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/livetv/ProgramQuery;->getMaxStartDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "MaxStartDate"

    .line 1886
    invoke-virtual {p1}, Lmediabrowser/model/livetv/ProgramQuery;->getMaxStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmediabrowser/apiinteraction/ApiClient;->getIsoString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    :cond_1
    invoke-virtual {p1}, Lmediabrowser/model/livetv/ProgramQuery;->getMinEndDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "MinEndDate"

    .line 1890
    invoke-virtual {p1}, Lmediabrowser/model/livetv/ProgramQuery;->getMinEndDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmediabrowser/apiinteraction/ApiClient;->getIsoString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    :cond_2
    invoke-virtual {p1}, Lmediabrowser/model/livetv/ProgramQuery;->getMinStartDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "MinStartDate"

    .line 1894
    invoke-virtual {p1}, Lmediabrowser/model/livetv/ProgramQuery;->getMinStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmediabrowser/apiinteraction/ApiClient;->getIsoString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    :cond_3
    invoke-virtual {p1}, Lmediabrowser/model/livetv/ProgramQuery;->getEnableTotalRecordCount()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "EnableTotalRecordCount"

    const-string v2, "false"

    .line 1898
    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v1, "EnableImages"

    .line 1901
    invoke-virtual {p1}, Lmediabrowser/model/livetv/ProgramQuery;->getEnableImages()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "ImageTypeLimit"

    .line 1902
    invoke-virtual {p1}, Lmediabrowser/model/livetv/ProgramQuery;->getImageTypeLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "EnableImageTypes"

    .line 1903
    invoke-virtual {p1}, Lmediabrowser/model/livetv/ProgramQuery;->getEnableImageTypes()[Lmediabrowser/model/entities/ImageType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    const-string v1, "Fields"

    .line 1904
    invoke-virtual {p1}, Lmediabrowser/model/livetv/ProgramQuery;->getFields()[Lmediabrowser/model/querying/ItemFields;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    const-string v1, "SortBy"

    .line 1905
    invoke-virtual {p1}, Lmediabrowser/model/livetv/ProgramQuery;->getSortBy()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "UserId"

    .line 1907
    invoke-virtual {p1}, Lmediabrowser/model/livetv/ProgramQuery;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    invoke-virtual {p1}, Lmediabrowser/model/livetv/ProgramQuery;->getChannelIds()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, "ChannelIds"

    const-string v2, ","

    .line 1911
    invoke-virtual {p1}, Lmediabrowser/model/livetv/ProgramQuery;->getChannelIds()[Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Ltangible/DotNetToJavaStringHelper;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string p1, "LiveTv/Programs"

    .line 1915
    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 1917
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    .line 1918
    new-instance v1, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v3, Lmediabrowser/model/querying/ItemsResult;

    invoke-direct {v1, p2, v2, v3}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 1873
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetLiveTvRecordingAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 1742
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1747
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "userId"

    .line 1748
    invoke-virtual {v0, v1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LiveTv/Recordings/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 1752
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GET"

    .line 1753
    new-instance v0, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v1, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v2, Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {v0, p3, v1, v2}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, p2, v0}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 1744
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetLiveTvRecordingGroupAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 1758
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1763
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "userId"

    .line 1764
    invoke-virtual {v0, v1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LiveTv/Recordings/Groups/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 1768
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GET"

    .line 1769
    new-instance v0, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v1, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v2, Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {v0, p3, v1, v2}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, p2, v0}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 1760
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetLiveTvRecordingGroupsAsync(Lmediabrowser/model/livetv/RecordingGroupQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/livetv/RecordingGroupQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/ItemsResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1612
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "UserId"

    .line 1614
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecordingGroupQuery;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "LiveTv/Recordings/Groups"

    .line 1616
    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 1618
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    .line 1619
    new-instance v1, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v3, Lmediabrowser/model/querying/ItemsResult;

    invoke-direct {v1, p2, v2, v3}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 1609
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetLiveTvRecordingsAsync(Lmediabrowser/model/livetv/RecordingQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/livetv/RecordingQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/ItemsResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1629
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "UserId"

    .line 1631
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecordingQuery;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ChannelId"

    .line 1632
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecordingQuery;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "GroupId"

    .line 1633
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecordingQuery;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Id"

    .line 1634
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecordingQuery;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SeriesTimerId"

    .line 1635
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecordingQuery;->getSeriesTimerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IsInProgress"

    .line 1636
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecordingQuery;->getIsInProgress()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "StartIndex"

    .line 1637
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecordingQuery;->getStartIndex()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "Limit"

    .line 1638
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecordingQuery;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "IsSeries"

    .line 1639
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecordingQuery;->getIsSeries()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "IsKids"

    .line 1640
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecordingQuery;->getIsKids()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "IsMovie"

    .line 1641
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecordingQuery;->getIsMovie()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "IsSports"

    .line 1642
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecordingQuery;->getIsSports()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "EnableImages"

    .line 1644
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecordingQuery;->getEnableImages()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "ImageTypeLimit"

    .line 1645
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecordingQuery;->getImageTypeLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "EnableImageTypes"

    .line 1646
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecordingQuery;->getEnableImageTypes()[Lmediabrowser/model/entities/ImageType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    const-string v1, "Fields"

    .line 1647
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecordingQuery;->getFields()[Lmediabrowser/model/querying/ItemFields;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    const-string v1, "SortBy"

    .line 1648
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecordingQuery;->getSortBy()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "SortOrder"

    .line 1649
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecordingQuery;->getSortOrder()Lmediabrowser/model/entities/SortOrder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Enum;)V

    const-string v1, "Filters"

    .line 1650
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecordingQuery;->getFilters()[Lmediabrowser/model/querying/ItemFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    .line 1652
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecordingQuery;->getEnableTotalRecordCount()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "EnableTotalRecordCount"

    const-string v1, "false"

    .line 1654
    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "LiveTv/Recordings"

    .line 1657
    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 1659
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    .line 1660
    new-instance v1, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v3, Lmediabrowser/model/querying/ItemsResult;

    invoke-direct {v1, p2, v2, v3}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 1626
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetLiveTvSeriesTimerAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/livetv/SeriesTimerInfoDto;",
            ">;)V"
        }
    .end annotation

    .line 1774
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1779
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    .line 1781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LiveTv/SeriesTimers/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 1783
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    .line 1784
    new-instance v1, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v3, Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-direct {v1, p2, v2, v3}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 1776
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetLiveTvSeriesTimersAsync(Lmediabrowser/model/livetv/SeriesTimerQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/livetv/SeriesTimerQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/results/SeriesTimerInfoDtoResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1794
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "SortBy"

    .line 1796
    invoke-virtual {p1}, Lmediabrowser/model/livetv/SeriesTimerQuery;->getSortBy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SortOrder"

    .line 1797
    invoke-virtual {p1}, Lmediabrowser/model/livetv/SeriesTimerQuery;->getSortOrder()Lmediabrowser/model/entities/SortOrder;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/Enum;)V

    const-string p1, "LiveTv/SeriesTimers"

    .line 1799
    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 1801
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    .line 1802
    new-instance v1, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v3, Lmediabrowser/model/results/SeriesTimerInfoDtoResult;

    invoke-direct {v1, p2, v2, v3}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 1791
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetLiveTvTimerAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/livetv/TimerInfoDto;",
            ">;)V"
        }
    .end annotation

    .line 1807
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1812
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    .line 1814
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LiveTv/Timers/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 1816
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    .line 1817
    new-instance v1, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v3, Lmediabrowser/model/livetv/TimerInfoDto;

    invoke-direct {v1, p2, v2, v3}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 1809
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetLiveTvTimersAsync(Lmediabrowser/model/livetv/TimerQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/livetv/TimerQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/results/TimerInfoDtoResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1827
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "ChannelId"

    .line 1829
    invoke-virtual {p1}, Lmediabrowser/model/livetv/TimerQuery;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SeriesTimerId"

    .line 1830
    invoke-virtual {p1}, Lmediabrowser/model/livetv/TimerQuery;->getSeriesTimerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IsScheduled"

    .line 1831
    invoke-virtual {p1}, Lmediabrowser/model/livetv/TimerQuery;->getIsScheduled()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "LiveTv/Timers"

    .line 1833
    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 1835
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    .line 1836
    new-instance v1, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    new-instance v3, Lmediabrowser/model/results/TimerInfoDtoResult;

    invoke-direct {v3}, Lmediabrowser/model/results/TimerInfoDtoResult;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, p2, v2, v3}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 1824
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetLocalTrailersAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "[",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 883
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 887
    invoke-static {p2}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Items/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/LocalTrailers"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 894
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GET"

    .line 895
    new-instance v0, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v1, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const/4 v2, 0x0

    new-array v2, v2, [Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p3, v1, v2}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, p2, v0}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 889
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 885
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "userId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetMusicGenreAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 674
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 678
    invoke-static {p2}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 683
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "userId"

    .line 685
    invoke-virtual {v0, v1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicGenres/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetSlugName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 689
    invoke-direct {p0, p1, p3}, Lmediabrowser/apiinteraction/ApiClient;->GetItemFromUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 680
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "userId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 676
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetMusicGenreAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 720
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicGenres/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetSlugName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 727
    invoke-direct {p0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemFromUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 722
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetNextUpEpisodesAsync(Lmediabrowser/model/querying/NextUpQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/querying/NextUpQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/ItemsResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 386
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetNextUpUrl(Lmediabrowser/model/querying/NextUpQuery;)Ljava/lang/String;

    move-result-object p1

    .line 388
    invoke-direct {p0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsFromUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 383
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetOfficialRatingsAsync(Lmediabrowser/model/querying/ItemsByNameQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/querying/ItemsByNameQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/ItemsResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "OfficialRatings"

    .line 575
    invoke-virtual {p0, v0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetItemByNameListUrl(Ljava/lang/String;Lmediabrowser/model/querying/ItemsByNameQuery;)Ljava/lang/String;

    move-result-object p1

    .line 577
    invoke-direct {p0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsFromUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetParentalRatingsAsync(Lmediabrowser/apiinteraction/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "[",
            "Lmediabrowser/model/entities/ParentalRating;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Localization/ParentalRatings"

    .line 856
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 858
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    .line 859
    new-instance v2, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v3, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const/4 v4, 0x0

    new-array v4, v4, [Lmediabrowser/model/entities/ParentalRating;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, v0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetPeopleAsync(Lmediabrowser/model/querying/PersonsQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/querying/PersonsQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/ItemsResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Persons"

    .line 504
    invoke-virtual {p0, v0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetItemByNameListUrl(Ljava/lang/String;Lmediabrowser/model/querying/ItemsByNameQuery;)Ljava/lang/String;

    move-result-object v0

    .line 506
    invoke-virtual {p1}, Lmediabrowser/model/querying/PersonsQuery;->getPersonTypes()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lmediabrowser/model/querying/PersonsQuery;->getPersonTypes()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&PersonTypes="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1}, Lmediabrowser/model/querying/PersonsQuery;->getPersonTypes()[Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltangible/DotNetToJavaStringHelper;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    :cond_0
    invoke-direct {p0, v0, p2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsFromUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetPlaybackInfo(Lmediabrowser/model/mediainfo/PlaybackInfoRequest;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/mediainfo/PlaybackInfoRequest;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/mediainfo/PlaybackInfoResponse;",
            ">;)V"
        }
    .end annotation

    .line 2388
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "UserId"

    .line 2390
    invoke-virtual {p1}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Items/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/PlaybackInfo"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 2394
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    .line 2396
    new-instance v1, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v3, Lmediabrowser/model/mediainfo/PlaybackInfoResponse;

    invoke-direct {v1, p2, v2, v3}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetPlaybackInfoWithPost(Lmediabrowser/model/mediainfo/PlaybackInfoRequest;Lmediabrowser/apiinteraction/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/mediainfo/PlaybackInfoRequest;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/mediainfo/PlaybackInfoResponse;",
            ">;)V"
        }
    .end annotation

    .line 2401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Items/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/PlaybackInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2403
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    .line 2405
    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    invoke-interface {v0, p1}, Lmediabrowser/model/serialization/IJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "application/json"

    new-instance v6, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object p1, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v0, Lmediabrowser/model/mediainfo/PlaybackInfoResponse;

    invoke-direct {v6, p2, p1, v0}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetPlaylistItems(Lmediabrowser/model/playlists/PlaylistItemQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/playlists/PlaylistItemQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/ItemsResult;",
            ">;)V"
        }
    .end annotation

    .line 2343
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "StartIndex"

    .line 2345
    invoke-virtual {p1}, Lmediabrowser/model/playlists/PlaylistItemQuery;->getStartIndex()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "Limit"

    .line 2347
    invoke-virtual {p1}, Lmediabrowser/model/playlists/PlaylistItemQuery;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "UserId"

    .line 2348
    invoke-virtual {p1}, Lmediabrowser/model/playlists/PlaylistItemQuery;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fields"

    .line 2350
    invoke-virtual {p1}, Lmediabrowser/model/playlists/PlaylistItemQuery;->getFields()[Lmediabrowser/model/querying/ItemFields;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    .line 2352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Playlists/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/playlists/PlaylistItemQuery;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Items"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 2354
    invoke-direct {p0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsFromUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetPublicSystemInfoAsync(Lmediabrowser/apiinteraction/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/system/PublicSystemInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "System/Info/Public"

    .line 810
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 812
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    .line 814
    new-instance v2, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v3, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v4, Lmediabrowser/model/system/PublicSystemInfo;

    invoke-direct {v2, p1, v3, v4}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, v0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetPublicUsersAsync(Lmediabrowser/apiinteraction/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "[",
            "Lmediabrowser/model/dto/UserDto;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Users/Public"

    .line 321
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    .line 325
    new-instance v2, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v3, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const/4 v4, 0x0

    new-array v4, v4, [Lmediabrowser/model/dto/UserDto;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, v0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetRecommendedLiveTvProgramsAsync(Lmediabrowser/model/livetv/RecommendedProgramQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/livetv/RecommendedProgramQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/ItemsResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1928
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    .line 1930
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->getEnableTotalRecordCount()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EnableTotalRecordCount"

    const-string v2, "false"

    .line 1932
    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "EnableImages"

    .line 1935
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->getEnableImages()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "ImageTypeLimit"

    .line 1936
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->getImageTypeLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "EnableImageTypes"

    .line 1937
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->getEnableImageTypes()[Lmediabrowser/model/entities/ImageType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    const-string v1, "Fields"

    .line 1938
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->getFields()[Lmediabrowser/model/querying/ItemFields;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    const-string v1, "UserId"

    .line 1940
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Limit"

    .line 1941
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "HasAired"

    .line 1942
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->getHasAired()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "IsAiring"

    .line 1943
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->getIsAiring()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "IsMovie"

    .line 1944
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->getIsMovie()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "IsSeries"

    .line 1945
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->getIsSeries()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "IsSports"

    .line 1946
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->getIsSports()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "IsKids"

    .line 1947
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->getIsKids()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "IsNews"

    .line 1948
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->getIsNews()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1950
    invoke-virtual {p1}, Lmediabrowser/model/livetv/RecommendedProgramQuery;->getEnableTotalRecordCount()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "EnableTotalRecordCount"

    const-string v1, "false"

    .line 1952
    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p1, "LiveTv/Programs/Recommended"

    .line 1955
    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 1957
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    .line 1958
    new-instance v1, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v3, Lmediabrowser/model/querying/ItemsResult;

    invoke-direct {v1, p2, v2, v3}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 1925
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetRegistrationInfo(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/registration/RegistrationInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registrations/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 288
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    .line 290
    new-instance v1, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v3, Lmediabrowser/model/registration/RegistrationInfo;

    invoke-direct {v1, p2, v2, v3}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 283
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "feature"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetRootFolderAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 295
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Items/Root"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 302
    invoke-direct {p0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemFromUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 297
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "userId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetSearchHintsAsync(Lmediabrowser/model/search/SearchQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/search/SearchQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/search/SearchHintResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1445
    invoke-virtual {p1}, Lmediabrowser/model/search/SearchQuery;->getSearchTerm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1450
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "SearchTerm"

    .line 1452
    invoke-virtual {p1}, Lmediabrowser/model/search/SearchQuery;->getSearchTerm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "UserId"

    .line 1453
    invoke-virtual {p1}, Lmediabrowser/model/search/SearchQuery;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "StartIndex"

    .line 1454
    invoke-virtual {p1}, Lmediabrowser/model/search/SearchQuery;->getStartIndex()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "Limit"

    .line 1455
    invoke-virtual {p1}, Lmediabrowser/model/search/SearchQuery;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "ParentId"

    .line 1457
    invoke-virtual {p1}, Lmediabrowser/model/search/SearchQuery;->getParentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IncludeItemTypes"

    .line 1458
    invoke-virtual {p1}, Lmediabrowser/model/search/SearchQuery;->getIncludeItemTypes()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "Search/Hints"

    .line 1460
    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 1462
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    .line 1464
    new-instance v1, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v3, Lmediabrowser/model/search/SearchHintResult;

    invoke-direct {v1, p2, v2, v3}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 1447
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetSeasonsAsync(Lmediabrowser/model/querying/SeasonQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/querying/SeasonQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/ItemsResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 470
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "UserId"

    .line 472
    invoke-virtual {p1}, Lmediabrowser/model/querying/SeasonQuery;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Fields"

    .line 473
    invoke-virtual {p1}, Lmediabrowser/model/querying/SeasonQuery;->getFields()[Lmediabrowser/model/querying/ItemFields;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    const-string v1, "IsMissing"

    .line 475
    invoke-virtual {p1}, Lmediabrowser/model/querying/SeasonQuery;->getIsMissing()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "IsVirtualUnaired"

    .line 476
    invoke-virtual {p1}, Lmediabrowser/model/querying/SeasonQuery;->getIsVirtualUnaired()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "IsSpecialSeason"

    .line 477
    invoke-virtual {p1}, Lmediabrowser/model/querying/SeasonQuery;->getIsSpecialSeason()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shows/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/querying/SeasonQuery;->getSeriesId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Seasons"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 481
    invoke-direct {p0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsFromUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 467
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetServerConfigurationAsync(Lmediabrowser/apiinteraction/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/configuration/ServerConfiguration;",
            ">;)V"
        }
    .end annotation

    const-string v0, "System/Configuration"

    .line 823
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 825
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    .line 827
    new-instance v2, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v3, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v4, Lmediabrowser/model/configuration/ServerConfiguration;

    invoke-direct {v2, p1, v3, v4}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, v0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetSimilarItems(Lmediabrowser/model/querying/SimilarItemsQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/querying/SimilarItemsQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/ItemsResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "Items"

    .line 430
    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetSimilarItemListUrl(Lmediabrowser/model/querying/SimilarItemsQuery;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 432
    invoke-direct {p0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsFromUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 427
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetSpecialFeaturesAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "[",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 907
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 911
    invoke-static {p2}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Items/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/SpecialFeatures"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 918
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GET"

    .line 920
    new-instance v0, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v1, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const/4 v2, 0x0

    new-array v2, v2, [Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p3, v1, v2}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, p2, v0}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 913
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 909
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "userId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetStudioAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 627
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 631
    invoke-static {p2}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 636
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "userId"

    .line 638
    invoke-virtual {v0, v1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Studios/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetSlugName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 642
    invoke-direct {p0, p1, p3}, Lmediabrowser/apiinteraction/ApiClient;->GetItemFromUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 633
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "userId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 629
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetStudiosAsync(Lmediabrowser/model/querying/ItemsByNameQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/querying/ItemsByNameQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/ItemsResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Studios"

    .line 551
    invoke-virtual {p0, v0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetItemByNameListUrl(Ljava/lang/String;Lmediabrowser/model/querying/ItemsByNameQuery;)Ljava/lang/String;

    move-result-object p1

    .line 553
    invoke-direct {p0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsFromUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetSyncJobItemFile(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/apiinteraction/ResponseStreamInfo;",
            ">;)V"
        }
    .end annotation

    .line 2578
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->getSyncJobItemFileUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->getResponseStream(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetSystemInfoAsync(Lmediabrowser/apiinteraction/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/system/SystemInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "System/Info"

    .line 774
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 776
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    .line 778
    new-instance v2, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v3, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v4, Lmediabrowser/model/system/SystemInfo;

    invoke-direct {v2, p1, v3, v4}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, v0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetTagsAsync(Lmediabrowser/model/querying/ItemsByNameQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/querying/ItemsByNameQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/ItemsResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Tags"

    .line 587
    invoke-virtual {p0, v0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetItemByNameListUrl(Ljava/lang/String;Lmediabrowser/model/querying/ItemsByNameQuery;)Ljava/lang/String;

    move-result-object p1

    .line 589
    invoke-direct {p0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsFromUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetThemeSongsAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lmediabrowser/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/ThemeMediaResult;",
            ">;)V"
        }
    .end annotation

    .line 1469
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "InheritFromParent"

    .line 1471
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {v0, v1, p3}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Z)V

    const-string p3, "UserId"

    .line 1472
    invoke-virtual {v0, p3, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Items/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/ThemeSongs"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 1476
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GET"

    .line 1478
    new-instance p3, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v1, Lmediabrowser/model/querying/ThemeMediaResult;

    invoke-direct {p3, p4, v0, v1}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, p2, p3}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetThemeVideosAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lmediabrowser/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/ThemeMediaResult;",
            ">;)V"
        }
    .end annotation

    .line 1483
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "InheritFromParent"

    .line 1485
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {v0, v1, p3}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Z)V

    const-string p3, "UserId"

    .line 1486
    invoke-virtual {v0, p3, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Items/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/ThemeVideos"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 1490
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GET"

    .line 1492
    new-instance p3, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v1, Lmediabrowser/model/querying/ThemeMediaResult;

    invoke-direct {p3, p4, v0, v1}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, p2, p3}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetThumbnails(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/dto/ImageSet;",
            ">;)V"
        }
    .end annotation

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Items/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/ThumbnailSet"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 870
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    .line 871
    new-instance v1, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v3, Lmediabrowser/model/dto/ImageSet;

    invoke-direct {v1, p2, v2, v3}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetUpcomingEpisodesAsync(Lmediabrowser/model/querying/UpcomingEpisodesQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/querying/UpcomingEpisodesQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/ItemsResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 398
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "Fields"

    .line 400
    invoke-virtual {p1}, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->getFields()[Lmediabrowser/model/querying/ItemFields;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    const-string v1, "Limit"

    .line 402
    invoke-virtual {p1}, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "StartIndex"

    .line 404
    invoke-virtual {p1}, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->getStartIndex()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "UserId"

    .line 406
    invoke-virtual {p1}, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "EnableImages"

    .line 408
    invoke-virtual {p1}, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->getEnableImages()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "ImageTypeLimit"

    .line 409
    invoke-virtual {p1}, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->getImageTypeLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "EnableImageTypes"

    .line 410
    invoke-virtual {p1}, Lmediabrowser/model/querying/UpcomingEpisodesQuery;->getEnableImageTypes()[Lmediabrowser/model/entities/ImageType;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/Enum;)V

    const-string p1, "Shows/Upcoming"

    .line 412
    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 414
    invoke-direct {p0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsFromUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 395
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetUserAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/dto/UserDto;",
            ">;)V"
        }
    .end annotation

    .line 838
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 845
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    .line 847
    new-instance v1, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v3, Lmediabrowser/model/dto/UserDto;

    invoke-direct {v1, p2, v2, v3}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 840
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetUserViews(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/ItemsResult;",
            ">;)V"
        }
    .end annotation

    .line 2275
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Views"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2282
    invoke-direct {p0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsFromUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 2277
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "userId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public GetUsersAsync(Lmediabrowser/model/querying/UserQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/querying/UserQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "[",
            "Lmediabrowser/model/dto/UserDto;",
            ">;)V"
        }
    .end annotation

    .line 307
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "IsDisabled"

    .line 309
    invoke-virtual {p1}, Lmediabrowser/model/querying/UserQuery;->getIsDisabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "IsHidden"

    .line 310
    invoke-virtual {p1}, Lmediabrowser/model/querying/UserQuery;->getIsHidden()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "Users"

    .line 312
    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 314
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    .line 316
    new-instance v1, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const/4 v3, 0x0

    new-array v3, v3, [Lmediabrowser/model/dto/UserDto;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, p2, v2, v3}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetWolInfoAsync(Lmediabrowser/apiinteraction/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "[",
            "Lmediabrowser/model/apiclient/WakeOnLanInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "System/WakeOnLanInfo"

    .line 330
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    .line 331
    new-instance v2, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v3, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v4, [Lmediabrowser/model/apiclient/WakeOnLanInfo;

    invoke-direct {v2, p1, v3, v4}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, v0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetYearIndex(Ljava/lang/String;[Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "[",
            "Lmediabrowser/model/dto/ItemIndex;",
            ">;)V"
        }
    .end annotation

    .line 1553
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "UserId"

    .line 1555
    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "IncludeItemTypes"

    .line 1556
    invoke-virtual {v0, p1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "Items/YearIndex"

    .line 1558
    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 1560
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GET"

    .line 1561
    new-instance v0, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v1, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const/4 v2, 0x0

    new-array v2, v2, [Lmediabrowser/model/dto/ItemIndex;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p3, v1, v2}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, p2, v0}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetYearsAsync(Lmediabrowser/model/querying/ItemsByNameQuery;Lmediabrowser/apiinteraction/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/querying/ItemsByNameQuery;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/querying/ItemsResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Years"

    .line 563
    invoke-virtual {p0, v0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetItemByNameListUrl(Ljava/lang/String;Lmediabrowser/model/querying/ItemsByNameQuery;)Ljava/lang/String;

    move-result-object p1

    .line 565
    invoke-direct {p0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsFromUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public Logout(Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 2

    const-string v0, "Sessions/Logout"

    .line 2247
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2249
    new-instance v1, Lmediabrowser/apiinteraction/ApiClient$2;

    invoke-direct {v1, p0, p1}, Lmediabrowser/apiinteraction/ApiClient$2;-><init>(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/apiinteraction/EmptyResponse;)V

    invoke-direct {p0, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->PostAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 2267
    iget-object p1, p0, Lmediabrowser/apiinteraction/ApiClient;->apiWebSocket:Lmediabrowser/apiinteraction/websocket/ApiWebSocket;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmediabrowser/apiinteraction/ApiClient;->apiWebSocket:Lmediabrowser/apiinteraction/websocket/ApiWebSocket;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->IsWebSocketOpenOrConnecting()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2268
    iget-object p1, p0, Lmediabrowser/apiinteraction/ApiClient;->apiWebSocket:Lmediabrowser/apiinteraction/websocket/ApiWebSocket;

    invoke-virtual {p1}, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->Close()V

    const/4 p1, 0x0

    .line 2269
    iput-object p1, p0, Lmediabrowser/apiinteraction/ApiClient;->apiWebSocket:Lmediabrowser/apiinteraction/websocket/ApiWebSocket;

    :cond_0
    return-void
.end method

.method public MarkNotificationsRead(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Boolean;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 2

    .line 1416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notifications/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "/Read"

    goto :goto_0

    :cond_0
    const-string p1, "/Unread"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1420
    new-instance p3, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {p3}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v0, "Ids"

    .line 1422
    invoke-virtual {p3, v0, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1424
    invoke-virtual {p0, p1, p3}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 1426
    invoke-direct {p0, p1, p4}, Lmediabrowser/apiinteraction/ApiClient;->PostAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method

.method public MarkPlayedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lmediabrowser/apiinteraction/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/dto/UserItemDataDto;",
            ">;)V"
        }
    .end annotation

    .line 925
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 928
    invoke-static {p2}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 932
    new-instance v4, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v4}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    if-eqz p3, :cond_0

    .line 936
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "DatePlayed"

    .line 937
    invoke-virtual {v0, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, v1, p3}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Users/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/PlayedItems/"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 941
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    const/4 v5, 0x1

    .line 943
    new-instance v6, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object p1, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class p2, Lmediabrowser/model/dto/UserItemDataDto;

    invoke-direct {v6, p4, p1, p2}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;ZLmediabrowser/apiinteraction/Response;)V

    return-void

    .line 929
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "userId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 926
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public MarkUnplayedAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/dto/UserItemDataDto;",
            ">;)V"
        }
    .end annotation

    .line 959
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 962
    invoke-static {p2}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/PlayedItems/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 967
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DELETE"

    .line 969
    new-instance v0, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v1, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    new-instance v2, Lmediabrowser/model/dto/UserItemDataDto;

    invoke-direct {v2}, Lmediabrowser/model/dto/UserItemDataDto;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p3, v1, v2}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, p2, v0}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 963
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "userId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 960
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method OnRemoteLoggedOut(Lmediabrowser/model/net/HttpException;)V
    .locals 2

    .line 131
    sget-object v0, Lmediabrowser/model/apiclient/RemoteLogoutReason;->GeneralAccesError:Lmediabrowser/model/apiclient/RemoteLogoutReason;

    .line 133
    invoke-virtual {p1}, Lmediabrowser/model/net/HttpException;->getHeaders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p1}, Lmediabrowser/model/net/HttpException;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v1, "X-Application-Error-Code"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "ParentalControl"

    .line 137
    invoke-static {p1, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 138
    sget-object v0, Lmediabrowser/model/apiclient/RemoteLogoutReason;->ParentalControlRestriction:Lmediabrowser/model/apiclient/RemoteLogoutReason;

    .line 142
    :cond_0
    iget-object p1, p0, Lmediabrowser/apiinteraction/ApiClient;->apiEventListener:Lmediabrowser/apiinteraction/ApiEventListener;

    invoke-virtual {p1, p0, v0}, Lmediabrowser/apiinteraction/ApiEventListener;->onRemoteLoggedOut(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/model/apiclient/RemoteLogoutReason;)V

    return-void
.end method

.method public OpenLiveStream(Lmediabrowser/model/mediainfo/LiveStreamRequest;Lmediabrowser/apiinteraction/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/mediainfo/LiveStreamRequest;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/mediainfo/LiveStreamResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "LiveStreams/Open"

    .line 2410
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2412
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2414
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/ApiClient;->getJsonSerializer()Lmediabrowser/model/serialization/IJsonSerializer;

    move-result-object v0

    invoke-interface {v0, p1}, Lmediabrowser/model/serialization/IJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "POST"

    const-string v5, "application/json"

    .line 2415
    new-instance v6, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object p1, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v0, Lmediabrowser/model/mediainfo/LiveStreamResponse;

    invoke-direct {v6, p2, p1, v0}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public QueueRefresh(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 5

    .line 1063
    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClient;->Logger:Lmediabrowser/model/logging/ILogger;

    const-string v1, "QueueRefresh: Item %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1064
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "Recursive"

    .line 1065
    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Z)V

    const-string v1, "ImageRefreshMode"

    const-string v3, "FullRefresh"

    .line 1066
    invoke-virtual {v0, v1, v3}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MetadataRefreshMode"

    const-string v3, "FullRefresh"

    .line 1067
    invoke-virtual {v0, v1, v3}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ReplaceAllImages"

    .line 1068
    invoke-virtual {v0, v1, v4}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Z)V

    const-string v1, "ReplaceAllmetadata"

    .line 1069
    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Z)V

    .line 1071
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Items/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Refresh"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1073
    invoke-direct {p0, p1, v0, p2}, Lmediabrowser/apiinteraction/ApiClient;->PostAsync(Ljava/lang/String;Ljava/lang/Object;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method

.method public RegisterAppstoreSaleAsync(Lmediabrowser/model/registration/AppstoreRegRequest;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "Appstore/register"

    .line 1363
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1364
    new-instance v1, Lmediabrowser/model/registration/AppstoreRegWrapper;

    invoke-direct {v1}, Lmediabrowser/model/registration/AppstoreRegWrapper;-><init>()V

    .line 1365
    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    invoke-interface {v2, p1}, Lmediabrowser/model/serialization/IJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lmediabrowser/model/registration/AppstoreRegWrapper;->Parameters:Ljava/lang/String;

    .line 1367
    invoke-direct {p0, v0, v1, p2}, Lmediabrowser/apiinteraction/ApiClient;->PostAsync(Ljava/lang/String;Ljava/lang/Object;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void

    .line 1360
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "request"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public RemoveFromPlaylist(Ljava/lang/String;[Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 2

    .line 2359
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "EntryIds"

    .line 2361
    invoke-virtual {v0, v1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2362
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Playlists/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Items"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 2364
    invoke-direct {p0, p1, p3}, Lmediabrowser/apiinteraction/ApiClient;->DeleteAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method

.method public ReportCapabilities(Lmediabrowser/model/session/ClientCapabilities;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "Sessions/Capabilities/Full"

    .line 1571
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1573
    invoke-direct {p0, v0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->PostAsync(Ljava/lang/String;Ljava/lang/Object;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void

    .line 1568
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "capabilities"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ReportPlaybackProgressAsync(Lmediabrowser/model/session/PlaybackProgressInfo;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1028
    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClient;->apiWebSocket:Lmediabrowser/apiinteraction/websocket/ApiWebSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClient;->apiWebSocket:Lmediabrowser/apiinteraction/websocket/ApiWebSocket;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->IsWebSocketOpen()Z

    :cond_0
    const-string v0, "Sessions/Playing/Progress"

    .line 1033
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1034
    invoke-direct {p0, v0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->PostAsync(Ljava/lang/String;Ljava/lang/Object;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void

    .line 1025
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "info"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ReportPlaybackStartAsync(Lmediabrowser/model/session/PlaybackStartInfo;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1008
    invoke-virtual {p1}, Lmediabrowser/model/session/PlaybackStartInfo;->getPositionTicks()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/session/PlaybackStartInfo;->getPositionTicks()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    :goto_0
    const-string v0, "Sessions/Playing"

    .line 1010
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1012
    invoke-direct {p0, v0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->PostAsync(Ljava/lang/String;Ljava/lang/Object;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void

    .line 1005
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "info"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ReportPlaybackStoppedAsync(Lmediabrowser/model/session/PlaybackStopInfo;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1050
    invoke-virtual {p1}, Lmediabrowser/model/session/PlaybackStopInfo;->getPositionTicks()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/session/PlaybackStopInfo;->getPositionTicks()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    :goto_0
    const-string v0, "Sessions/Playing/Stopped"

    .line 1052
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1054
    invoke-direct {p0, v0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->PostAsync(Ljava/lang/String;Ljava/lang/Object;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void

    .line 1047
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "info"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public RequestDownloadSubtitle(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 2

    .line 2240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Items/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/RemoteSearch/Subtitles/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2242
    invoke-direct {p0, p1, p3}, Lmediabrowser/apiinteraction/ApiClient;->PostAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method

.method public RestartServerAsync(Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 1

    const-string v0, "System/Restart"

    .line 763
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 765
    invoke-direct {p0, v0, p1}, Lmediabrowser/apiinteraction/ApiClient;->PostAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method

.method public SearchForSubtitles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lmediabrowser/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lmediabrowser/apiinteraction/Response<",
            "[",
            "Lmediabrowser/model/dto/SubtitleSearchResult;",
            ">;)V"
        }
    .end annotation

    .line 2228
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "isPerfectMatch"

    .line 2230
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {v0, v1, p3}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Z)V

    const-string p3, "isForced"

    .line 2231
    invoke-virtual {v0, p3, p4}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2233
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Items/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/RemoteSearch/Subtitles/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GET"

    .line 2235
    new-instance p3, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object p4, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const/4 v0, 0x0

    new-array v0, v0, [Lmediabrowser/model/dto/SubtitleSearchResult;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p3, p5, p4, v0}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, p2, p3}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public SendBrowseCommandAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 3

    .line 1093
    new-instance v0, Lmediabrowser/model/session/GeneralCommand;

    invoke-direct {v0}, Lmediabrowser/model/session/GeneralCommand;-><init>()V

    const-string v1, "DisplayContent"

    .line 1095
    invoke-virtual {v0, v1}, Lmediabrowser/model/session/GeneralCommand;->setName(Ljava/lang/String;)V

    .line 1097
    invoke-virtual {v0}, Lmediabrowser/model/session/GeneralCommand;->getArguments()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "ItemType"

    invoke-virtual {v1, v2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    invoke-virtual {v0}, Lmediabrowser/model/session/GeneralCommand;->getArguments()Ljava/util/HashMap;

    move-result-object p4

    const-string v1, "ItemId"

    invoke-virtual {p4, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    invoke-virtual {v0}, Lmediabrowser/model/session/GeneralCommand;->getArguments()Ljava/util/HashMap;

    move-result-object p2

    const-string p4, "ItemName"

    invoke-virtual {p2, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    invoke-virtual {p0, p1, v0, p5}, Lmediabrowser/apiinteraction/ApiClient;->SendCommandAsync(Ljava/lang/String;Lmediabrowser/model/session/GeneralCommand;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method

.method public SendCommandAsync(Ljava/lang/String;Lmediabrowser/model/session/GeneralCommand;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 2

    .line 1160
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sessions/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Command"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1167
    invoke-direct {p0, p1, p2, p3}, Lmediabrowser/apiinteraction/ApiClient;->PostAsync(Ljava/lang/String;Ljava/lang/Object;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void

    .line 1162
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sessionId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public SendMessageCommandAsync(Ljava/lang/String;Lmediabrowser/model/session/MessageCommand;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 5

    .line 1136
    new-instance v0, Lmediabrowser/model/session/GeneralCommand;

    invoke-direct {v0}, Lmediabrowser/model/session/GeneralCommand;-><init>()V

    const-string v1, "DisplayMessage"

    .line 1138
    invoke-virtual {v0, v1}, Lmediabrowser/model/session/GeneralCommand;->setName(Ljava/lang/String;)V

    .line 1140
    invoke-virtual {v0}, Lmediabrowser/model/session/GeneralCommand;->getArguments()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "Header"

    invoke-virtual {p2}, Lmediabrowser/model/session/MessageCommand;->getHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    invoke-virtual {v0}, Lmediabrowser/model/session/GeneralCommand;->getArguments()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "Text"

    invoke-virtual {p2}, Lmediabrowser/model/session/MessageCommand;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    invoke-virtual {p2}, Lmediabrowser/model/session/MessageCommand;->getTimeoutMs()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1145
    invoke-virtual {v0}, Lmediabrowser/model/session/GeneralCommand;->getArguments()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "Timeout"

    invoke-virtual {p2}, Lmediabrowser/model/session/MessageCommand;->getTimeoutMs()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lmediabrowser/model/extensions/StringHelper;->ToStringCultureInvariant(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    :cond_0
    invoke-virtual {p0, p1, v0, p3}, Lmediabrowser/apiinteraction/ApiClient;->SendCommandAsync(Ljava/lang/String;Lmediabrowser/model/session/GeneralCommand;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method

.method public SendPlayCommandAsync(Ljava/lang/String;Lmediabrowser/model/session/PlayRequest;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 3

    .line 1115
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 1124
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "ItemIds"

    .line 1125
    invoke-virtual {p2}, Lmediabrowser/model/session/PlayRequest;->getItemIds()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "StartPositionTicks"

    .line 1126
    invoke-virtual {p2}, Lmediabrowser/model/session/PlayRequest;->getStartPositionTicks()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "PlayCommand"

    .line 1127
    invoke-virtual {p2}, Lmediabrowser/model/session/PlayRequest;->getPlayCommand()Lmediabrowser/model/session/PlayCommand;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/Enum;)V

    .line 1129
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sessions/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Playing"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 1131
    invoke-direct {p0, p1, p3}, Lmediabrowser/apiinteraction/ApiClient;->PostAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void

    .line 1121
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "request"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1117
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sessionId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public SendPlaystateCommandAsync(Ljava/lang/String;Lmediabrowser/model/session/PlaystateRequest;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 3

    .line 1227
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "SeekPositionTicks"

    .line 1228
    invoke-virtual {p2}, Lmediabrowser/model/session/PlaystateRequest;->getSeekPositionTicks()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNull(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sessions/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Playing/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmediabrowser/model/session/PlaystateRequest;->getCommand()Lmediabrowser/model/session/PlaystateCommand;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 1232
    invoke-direct {p0, p1, p3}, Lmediabrowser/apiinteraction/ApiClient;->PostAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method

.method public SendString(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 3

    .line 2060
    new-instance v0, Lmediabrowser/model/session/GeneralCommand;

    invoke-direct {v0}, Lmediabrowser/model/session/GeneralCommand;-><init>()V

    const-string v1, "SendString"

    .line 2062
    invoke-virtual {v0, v1}, Lmediabrowser/model/session/GeneralCommand;->setName(Ljava/lang/String;)V

    .line 2064
    invoke-virtual {v0}, Lmediabrowser/model/session/GeneralCommand;->getArguments()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "String"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2066
    invoke-virtual {p0, p1, v0, p3}, Lmediabrowser/apiinteraction/ApiClient;->SendCommandAsync(Ljava/lang/String;Lmediabrowser/model/session/GeneralCommand;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method

.method public SetAudioStreamIndex(Ljava/lang/String;ILmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 3

    .line 2071
    new-instance v0, Lmediabrowser/model/session/GeneralCommand;

    invoke-direct {v0}, Lmediabrowser/model/session/GeneralCommand;-><init>()V

    const-string v1, "SetAudioStreamIndex"

    .line 2073
    invoke-virtual {v0, v1}, Lmediabrowser/model/session/GeneralCommand;->setName(Ljava/lang/String;)V

    .line 2075
    invoke-virtual {v0}, Lmediabrowser/model/session/GeneralCommand;->getArguments()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "Index"

    invoke-static {p2}, Lmediabrowser/model/extensions/StringHelper;->ToStringCultureInvariant(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2077
    invoke-virtual {p0, p1, v0, p3}, Lmediabrowser/apiinteraction/ApiClient;->SendCommandAsync(Ljava/lang/String;Lmediabrowser/model/session/GeneralCommand;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method

.method public SetSubtitleStreamIndex(Ljava/lang/String;Ljava/lang/Integer;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 3

    .line 2082
    new-instance v0, Lmediabrowser/model/session/GeneralCommand;

    invoke-direct {v0}, Lmediabrowser/model/session/GeneralCommand;-><init>()V

    const-string v1, "SetSubtitleStreamIndex"

    .line 2084
    invoke-virtual {v0, v1}, Lmediabrowser/model/session/GeneralCommand;->setName(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    .line 2086
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2088
    :goto_0
    invoke-virtual {v0}, Lmediabrowser/model/session/GeneralCommand;->getArguments()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "Index"

    invoke-static {p2}, Lmediabrowser/model/extensions/StringHelper;->ToStringCultureInvariant(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2090
    invoke-virtual {p0, p1, v0, p3}, Lmediabrowser/apiinteraction/ApiClient;->SendCommandAsync(Ljava/lang/String;Lmediabrowser/model/session/GeneralCommand;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method

.method public SetVolume(Ljava/lang/String;ILmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 3

    .line 2095
    new-instance v0, Lmediabrowser/model/session/GeneralCommand;

    invoke-direct {v0}, Lmediabrowser/model/session/GeneralCommand;-><init>()V

    const-string v1, "SetVolume"

    .line 2097
    invoke-virtual {v0, v1}, Lmediabrowser/model/session/GeneralCommand;->setName(Ljava/lang/String;)V

    .line 2099
    invoke-virtual {v0}, Lmediabrowser/model/session/GeneralCommand;->getArguments()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "Volume"

    invoke-static {p2}, Lmediabrowser/model/extensions/StringHelper;->ToStringCultureInvariant(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2101
    invoke-virtual {p0, p1, v0, p3}, Lmediabrowser/apiinteraction/ApiClient;->SendCommandAsync(Ljava/lang/String;Lmediabrowser/model/session/GeneralCommand;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method

.method public StopActiveEncodings(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 2

    .line 1596
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "playSessionId"

    .line 1597
    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "deviceId"

    .line 1598
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/ApiClient;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Videos/ActiveEncodings"

    .line 1600
    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 1602
    invoke-direct {p0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->DeleteAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method

.method public StopTranscodingProcesses(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 2

    .line 2172
    new-instance p1, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v0, "DeviceId"

    .line 2174
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/ApiClient;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PlaySessionId"

    .line 2175
    invoke-virtual {p1, v0, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Videos/ActiveEncodings"

    .line 2176
    invoke-virtual {p0, p2, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 2178
    invoke-direct {p0, p1, p3}, Lmediabrowser/apiinteraction/ApiClient;->DeleteAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method

.method public SyncData(Lmediabrowser/model/sync/SyncDataRequest;Lmediabrowser/apiinteraction/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/sync/SyncDataRequest;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/sync/SyncDataResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "Sync/Data"

    .line 2610
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2611
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2613
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/ApiClient;->getJsonSerializer()Lmediabrowser/model/serialization/IJsonSerializer;

    move-result-object v0

    invoke-interface {v0, p1}, Lmediabrowser/model/serialization/IJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "POST"

    const-string v5, "application/json"

    .line 2614
    new-instance v6, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object p1, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v0, Lmediabrowser/model/sync/SyncDataResponse;

    invoke-direct {v6, p2, p1, v0}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 2607
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "request"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public UpdateDisplayPreferencesAsync(Lmediabrowser/model/entities/DisplayPreferences;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1404
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "userId"

    .line 1406
    invoke-virtual {v0, v1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "client"

    .line 1407
    invoke-virtual {v0, p2, p3}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "DisplayPreferences/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/entities/DisplayPreferences;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p2

    .line 1411
    invoke-direct {p0, p2, p1, p4}, Lmediabrowser/apiinteraction/ApiClient;->PostAsync(Ljava/lang/String;Ljava/lang/Object;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void

    .line 1401
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "displayPreferences"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public UpdateFavoriteStatusAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lmediabrowser/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/dto/UserItemDataDto;",
            ">;)V"
        }
    .end annotation

    .line 982
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 985
    invoke-static {p2}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/FavoriteItems/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 990
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 992
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "POST"

    goto :goto_0

    :cond_0
    const-string p2, "DELETE"

    :goto_0
    new-instance p3, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    new-instance v1, Lmediabrowser/model/dto/UserItemDataDto;

    invoke-direct {v1}, Lmediabrowser/model/dto/UserItemDataDto;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p3, p4, v0, v1}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, p2, p3}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 986
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "userId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 983
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public UpdateLiveTvSeriesTimerAsync(Lmediabrowser/model/livetv/SeriesTimerInfoDto;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LiveTv/SeriesTimers/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2043
    invoke-direct {p0, v0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->PostAsync(Ljava/lang/String;Ljava/lang/Object;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void

    .line 2038
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "timer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public UpdateLiveTvTimerAsync(Lmediabrowser/model/livetv/TimerInfoDto;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LiveTv/Timers/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/livetv/TimerInfoDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2055
    invoke-direct {p0, v0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->PostAsync(Ljava/lang/String;Ljava/lang/Object;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void

    .line 2050
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "timer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public UpdateServerConfigurationAsync(Lmediabrowser/model/configuration/ServerConfiguration;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "System/Configuration"

    .line 1344
    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1346
    invoke-direct {p0, v0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->PostAsync(Ljava/lang/String;Ljava/lang/Object;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void

    .line 1341
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "configuration"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public UpdateSyncJob(Lmediabrowser/model/sync/SyncJob;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sync/Jobs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/sync/SyncJob;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2573
    invoke-direct {p0, v0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->PostAsync(Ljava/lang/String;Ljava/lang/Object;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void

    .line 2568
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "job"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public UpdateUserConfiguration(Ljava/lang/String;Lmediabrowser/model/configuration/UserConfiguration;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 0

    .line 2549
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-virtual {p3, p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public UpdateUserItemRatingAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lmediabrowser/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/dto/UserItemDataDto;",
            ">;)V"
        }
    .end annotation

    .line 1269
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1274
    invoke-static {p2}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1279
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "likes"

    .line 1281
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {v0, v1, p3}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Z)V

    .line 1283
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Users/"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/Items/"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Rating"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 1284
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "POST"

    .line 1285
    new-instance p3, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    new-instance v1, Lmediabrowser/model/dto/UserItemDataDto;

    invoke-direct {v1}, Lmediabrowser/model/dto/UserItemDataDto;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p3, p4, v0, v1}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-direct {p0, p1, p2, p3}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 1276
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "userId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1271
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public UploadFile(Ljava/io/FileInputStream;Lmediabrowser/model/devices/LocalFileInfo;Lmediabrowser/apiinteraction/tasks/IProgress;Lmediabrowser/apiinteraction/tasks/CancellationToken;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileInputStream;",
            "Lmediabrowser/model/devices/LocalFileInfo;",
            "Lmediabrowser/apiinteraction/tasks/IProgress<",
            "Ljava/lang/Double;",
            ">;",
            "Lmediabrowser/apiinteraction/tasks/CancellationToken;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2436
    invoke-virtual {p0, p1, p2, p3, p4}, Lmediabrowser/apiinteraction/ApiClient;->UploadFileInternal(Ljava/io/FileInputStream;Lmediabrowser/model/devices/LocalFileInfo;Lmediabrowser/apiinteraction/tasks/IProgress;Lmediabrowser/apiinteraction/tasks/CancellationToken;)V

    return-void
.end method

.method protected UploadFileInternal(Ljava/io/FileInputStream;Lmediabrowser/model/devices/LocalFileInfo;Lmediabrowser/apiinteraction/tasks/IProgress;Lmediabrowser/apiinteraction/tasks/CancellationToken;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileInputStream;",
            "Lmediabrowser/model/devices/LocalFileInfo;",
            "Lmediabrowser/apiinteraction/tasks/IProgress<",
            "Ljava/lang/Double;",
            ">;",
            "Lmediabrowser/apiinteraction/tasks/CancellationToken;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2444
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/ApiClient;->getDeviceId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_9

    .line 2449
    invoke-virtual {p2}, Lmediabrowser/model/devices/LocalFileInfo;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_8

    .line 2454
    invoke-virtual {p2}, Lmediabrowser/model/devices/LocalFileInfo;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_7

    .line 2459
    new-instance p4, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {p4}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v0, "DeviceId"

    .line 2461
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/ApiClient;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Name"

    .line 2462
    invoke-virtual {p2}, Lmediabrowser/model/devices/LocalFileInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Id"

    .line 2463
    invoke-virtual {p2}, Lmediabrowser/model/devices/LocalFileInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Album"

    .line 2464
    invoke-virtual {p2}, Lmediabrowser/model/devices/LocalFileInfo;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2468
    new-instance v1, Ljava/net/URL;

    const-string v2, "Devices/CameraUploads"

    invoke-virtual {p0, v2, p4}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {v1, p4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/high16 p4, 0x100000

    const/4 v2, 0x0

    .line 2475
    :try_start_0
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    .line 2476
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 2477
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 2478
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v3, "POST"

    .line 2479
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    .line 2480
    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Type"

    .line 2481
    invoke-virtual {p2}, Lmediabrowser/model/devices/LocalFileInfo;->getMimeType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v3, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2483
    iget-object p2, p0, Lmediabrowser/apiinteraction/ApiClient;->HttpHeaders:Lmediabrowser/apiinteraction/http/HttpHeaders;

    invoke-virtual {p2}, Lmediabrowser/apiinteraction/http/HttpHeaders;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2484
    iget-object v4, p0, Lmediabrowser/apiinteraction/ApiClient;->HttpHeaders:Lmediabrowser/apiinteraction/http/HttpHeaders;

    invoke-virtual {v4, v3}, Lmediabrowser/apiinteraction/http/HttpHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2487
    :cond_0
    iget-object p2, p0, Lmediabrowser/apiinteraction/ApiClient;->HttpHeaders:Lmediabrowser/apiinteraction/http/HttpHeaders;

    invoke-virtual {p2}, Lmediabrowser/apiinteraction/http/HttpHeaders;->getAuthorizationParameter()Ljava/lang/String;

    move-result-object p2

    .line 2488
    invoke-static {p2}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2490
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmediabrowser/apiinteraction/ApiClient;->HttpHeaders:Lmediabrowser/apiinteraction/http/HttpHeaders;

    invoke-virtual {v4}, Lmediabrowser/apiinteraction/http/HttpHeaders;->getAuthorizationScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "Authorization"

    .line 2491
    invoke-virtual {v1, v3, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2494
    :cond_1
    new-instance p2, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {p2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2497
    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 2499
    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2500
    new-array v3, v0, [B

    .line 2503
    invoke-virtual {p1, v3, v2, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    int-to-long v4, v4

    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 2507
    invoke-virtual {p2, v3, v2, v0}, Ljava/io/DataOutputStream;->write([BII)V

    .line 2508
    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 2509
    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2510
    invoke-virtual {p1, v3, v2, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    int-to-long v4, v4

    goto :goto_1

    .line 2513
    :cond_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p4

    .line 2515
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_4

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_3

    goto :goto_2

    .line 2523
    :cond_3
    new-instance v1, Lmediabrowser/model/net/HttpException;

    invoke-direct {v1, p4}, Lmediabrowser/model/net/HttpException;-><init>(Ljava/lang/String;)V

    .line 2524
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v1, p4}, Lmediabrowser/model/net/HttpException;->setStatusCode(Ljava/lang/Integer;)V

    .line 2526
    invoke-interface {p3, v1}, Lmediabrowser/apiinteraction/tasks/IProgress;->reportError(Ljava/lang/Exception;)V

    goto :goto_3

    .line 2519
    :cond_4
    :goto_2
    invoke-interface {p3}, Lmediabrowser/apiinteraction/tasks/IProgress;->reportComplete()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2538
    :goto_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 2541
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->flush()V

    .line 2542
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->close()V

    goto :goto_5

    :catchall_0
    move-exception p3

    move-object v0, p2

    move-object p2, p3

    goto :goto_6

    :catch_0
    move-exception p4

    move-object v0, p2

    move-object p2, p4

    goto :goto_4

    :catchall_1
    move-exception p2

    goto :goto_6

    :catch_1
    move-exception p2

    .line 2532
    :goto_4
    :try_start_2
    iget-object p4, p0, Lmediabrowser/apiinteraction/ApiClient;->Logger:Lmediabrowser/model/logging/ILogger;

    const-string v1, "Error uploading file"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p4, v1, p2, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 2533
    new-instance p4, Lmediabrowser/model/net/HttpException;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2}, Lmediabrowser/model/net/HttpException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p4}, Lmediabrowser/apiinteraction/tasks/IProgress;->reportError(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2538
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    if-eqz v0, :cond_5

    .line 2541
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 2542
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    :cond_5
    :goto_5
    return-void

    .line 2538
    :goto_6
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    if-eqz v0, :cond_6

    .line 2541
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 2542
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 2544
    :cond_6
    throw p2

    .line 2456
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "file.getName() cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2451
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "file.getId() cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2446
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ApiClient.deviceId cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public closeLiveStream(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 2

    .line 488
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "LiveStreamId"

    .line 489
    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "LiveStreams/Close"

    .line 491
    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 493
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lmediabrowser/apiinteraction/ApiClient;->PostAsync(Ljava/lang/String;Ljava/lang/Object;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method

.method public closeWebSocket()V
    .locals 1

    .line 123
    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClient;->apiWebSocket:Lmediabrowser/apiinteraction/websocket/ApiWebSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClient;->apiWebSocket:Lmediabrowser/apiinteraction/websocket/ApiWebSocket;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->IsWebSocketOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClient;->apiWebSocket:Lmediabrowser/apiinteraction/websocket/ApiWebSocket;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->Close()V

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lmediabrowser/apiinteraction/ApiClient;->apiWebSocket:Lmediabrowser/apiinteraction/websocket/ApiWebSocket;

    :cond_0
    return-void
.end method

.method protected detectBitrate(JLmediabrowser/apiinteraction/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 2669
    invoke-virtual {p0, p1, p2, p3}, Lmediabrowser/apiinteraction/ApiClient;->detectBitrateInternal(JLmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public detectBitrate(Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 2643
    new-instance v0, Lmediabrowser/apiinteraction/ApiClient$3;

    invoke-direct {v0, p0, p1, p1}, Lmediabrowser/apiinteraction/ApiClient$3;-><init>(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/apiinteraction/IResponse;Lmediabrowser/apiinteraction/Response;)V

    const-wide/32 v1, 0xf4240

    invoke-virtual {p0, v1, v2, v0}, Lmediabrowser/apiinteraction/ApiClient;->detectBitrate(JLmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method protected detectBitrateInternal(JLmediabrowser/apiinteraction/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 2674
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "Size"

    .line 2676
    invoke-virtual {v0, v1, p1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->Add(Ljava/lang/String;J)V

    const-string v1, "Playback/BitrateTest"

    .line 2678
    invoke-virtual {p0, v1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object v0

    .line 2684
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2686
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    .line 2687
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x0

    .line 2688
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v1, "GET"

    .line 2689
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    .line 2690
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2692
    iget-object v1, p0, Lmediabrowser/apiinteraction/ApiClient;->HttpHeaders:Lmediabrowser/apiinteraction/http/HttpHeaders;

    invoke-virtual {v1}, Lmediabrowser/apiinteraction/http/HttpHeaders;->keySet()Ljava/util/Set;

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

    .line 2693
    iget-object v3, p0, Lmediabrowser/apiinteraction/ApiClient;->HttpHeaders:Lmediabrowser/apiinteraction/http/HttpHeaders;

    invoke-virtual {v3, v2}, Lmediabrowser/apiinteraction/http/HttpHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2696
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 2698
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v3, 0x0

    const/16 v4, 0x1000

    .line 2700
    :try_start_2
    new-array v4, v4, [B

    .line 2703
    :goto_1
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_1

    goto :goto_1

    .line 2707
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    sub-long/2addr v4, v1

    long-to-double v1, v4

    const-wide/16 v4, 0x8

    mul-long p1, p1, v4

    long-to-double p1, p1

    div-double/2addr p1, v1

    const-wide v1, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v1

    .line 2712
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    .line 2713
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v3, p1

    .line 2698
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v3, :cond_2

    .line 2713
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_1
    move-exception p2

    :try_start_6
    invoke-virtual {v3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_3
    :goto_3
    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_2
    move-exception p1

    .line 2715
    :try_start_7
    invoke-virtual {p3, p1}, Lmediabrowser/apiinteraction/Response;->onError(Ljava/lang/Exception;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    return-void

    :catch_3
    move-exception p1

    .line 2721
    invoke-virtual {p3, p1}, Lmediabrowser/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    :cond_4
    :goto_4
    return-void
.end method

.method public ensureWebSocket()V
    .locals 4

    .line 113
    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClient;->apiWebSocket:Lmediabrowser/apiinteraction/websocket/ApiWebSocket;

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClient;->Logger:Lmediabrowser/model/logging/ILogger;

    const-string v1, "Creating ApiWebSocket"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    new-instance v0, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;

    invoke-virtual {p0}, Lmediabrowser/apiinteraction/ApiClient;->getJsonSerializer()Lmediabrowser/model/serialization/IJsonSerializer;

    move-result-object v1

    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->Logger:Lmediabrowser/model/logging/ILogger;

    iget-object v3, p0, Lmediabrowser/apiinteraction/ApiClient;->apiEventListener:Lmediabrowser/apiinteraction/ApiEventListener;

    invoke-direct {v0, v1, v2, v3, p0}, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;-><init>(Lmediabrowser/model/serialization/IJsonSerializer;Lmediabrowser/model/logging/ILogger;Lmediabrowser/apiinteraction/ApiEventListener;Lmediabrowser/apiinteraction/ApiClient;)V

    iput-object v0, p0, Lmediabrowser/apiinteraction/ApiClient;->apiWebSocket:Lmediabrowser/apiinteraction/websocket/ApiWebSocket;

    .line 119
    :cond_0
    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClient;->apiWebSocket:Lmediabrowser/apiinteraction/websocket/ApiWebSocket;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/websocket/ApiWebSocket;->EnsureWebSocket()V

    return-void
.end method

.method public getAuthenticatedObservable()Ljava/util/Observable;
    .locals 1

    .line 77
    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClient;->authenticatedObservable:Ljava/util/Observable;

    return-object v0
.end method

.method public getReadySyncItems(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/results/ReadySyncItemsResult;",
            ">;)V"
        }
    .end annotation

    .line 2630
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "TargetId"

    .line 2632
    invoke-virtual {v0, v1, p1}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Sync/Items/Ready"

    .line 2634
    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 2635
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v6, "GET"

    .line 2637
    new-instance v7, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    iget-object v4, p0, Lmediabrowser/apiinteraction/ApiClient;->Logger:Lmediabrowser/model/logging/ILogger;

    new-instance v0, Lmediabrowser/model/results/ReadySyncItemsResult;

    invoke-direct {v0}, Lmediabrowser/model/results/ReadySyncItemsResult;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v0, v7

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/String;Lmediabrowser/model/logging/ILogger;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v6, v7}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public getResponseStream(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/apiinteraction/ResponseStreamInfo;",
            ">;)V"
        }
    .end annotation

    .line 186
    invoke-virtual {p0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->getResponseStreamInternal(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method protected getResponseStreamInternal(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/apiinteraction/ResponseStreamInfo;",
            ">;)V"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClient;->Logger:Lmediabrowser/model/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting response stream from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    .line 200
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 201
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v0, "GET"

    .line 202
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "Connection"

    const-string v1, "Keep-Alive"

    .line 203
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClient;->HttpHeaders:Lmediabrowser/apiinteraction/http/HttpHeaders;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/http/HttpHeaders;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 206
    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->HttpHeaders:Lmediabrowser/apiinteraction/http/HttpHeaders;

    invoke-virtual {v2, v1}, Lmediabrowser/apiinteraction/http/HttpHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 211
    new-instance v0, Lmediabrowser/apiinteraction/ResponseStreamInfo;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/ResponseStreamInfo;-><init>()V

    .line 212
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    iput v1, v0, Lmediabrowser/apiinteraction/ResponseStreamInfo;->ContentLength:I

    .line 214
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 215
    iput-object p1, v0, Lmediabrowser/apiinteraction/ResponseStreamInfo;->Stream:Ljava/io/InputStream;

    .line 217
    invoke-virtual {p2, v0}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 222
    invoke-virtual {p2, p1}, Lmediabrowser/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;
    .locals 1

    .line 70
    iget-object v0, p0, Lmediabrowser/apiinteraction/ApiClient;->serverInfo:Lmediabrowser/model/apiclient/ServerInfo;

    return-object v0
.end method

.method public getSubtitles(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/mediainfo/SubtitleTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 2727
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->AddDataFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v6, "GET"

    .line 2729
    new-instance v7, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/ApiClient;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    iget-object v4, p0, Lmediabrowser/apiinteraction/ApiClient;->Logger:Lmediabrowser/model/logging/ILogger;

    new-instance v0, Lmediabrowser/model/mediainfo/SubtitleTrackInfo;

    invoke-direct {v0}, Lmediabrowser/model/mediainfo/SubtitleTrackInfo;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v0, v7

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/String;Lmediabrowser/model/logging/ILogger;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v6, v7}, Lmediabrowser/apiinteraction/ApiClient;->Send(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public getSyncJobItemAdditionalFile(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/apiinteraction/ResponseStreamInfo;",
            ">;)V"
        }
    .end annotation

    .line 2619
    new-instance v0, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v1, "Name"

    .line 2621
    invoke-virtual {v0, v1, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->AddIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2623
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sync/JobItems/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/AdditionalFiles"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 2625
    invoke-virtual {p0, p1, p3}, Lmediabrowser/apiinteraction/ApiClient;->getResponseStream(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public getSyncJobItemFileUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2583
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sync/JobItems/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/File"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2585
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reportSyncJobItemTransferred(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 2

    .line 2593
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sync/JobItems/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Transferred"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2600
    invoke-direct {p0, p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->PostAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void

    .line 2595
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
