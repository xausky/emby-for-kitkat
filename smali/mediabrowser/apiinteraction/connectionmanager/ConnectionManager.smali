.class public Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Lmediabrowser/apiinteraction/IConnectionManager;


# instance fields
.field private apiClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/ApiClient;",
            ">;"
        }
    .end annotation
.end field

.field protected apiEventListener:Lmediabrowser/apiinteraction/ApiEventListener;

.field protected applicationName:Ljava/lang/String;

.field protected applicationVersion:Ljava/lang/String;

.field protected clientCapabilities:Lmediabrowser/model/session/ClientCapabilities;

.field private connectService:Lmediabrowser/apiinteraction/connect/ConnectService;

.field private connectUser:Lmediabrowser/model/connect/ConnectUser;

.field private credentialProvider:Lmediabrowser/apiinteraction/ICredentialProvider;

.field protected device:Lmediabrowser/apiinteraction/device/IDevice;

.field protected httpClient:Lmediabrowser/apiinteraction/http/IAsyncHttpClient;

.field protected jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

.field protected logger:Lmediabrowser/model/logging/ILogger;

.field private networkConnection:Lmediabrowser/apiinteraction/network/INetworkConnection;

.field private serverDiscovery:Lmediabrowser/apiinteraction/discovery/IServerLocator;


# direct methods
.method public constructor <init>(Lmediabrowser/apiinteraction/ICredentialProvider;Lmediabrowser/apiinteraction/network/INetworkConnection;Lmediabrowser/model/serialization/IJsonSerializer;Lmediabrowser/model/logging/ILogger;Lmediabrowser/apiinteraction/discovery/IServerLocator;Lmediabrowser/apiinteraction/http/IAsyncHttpClient;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/device/IDevice;Lmediabrowser/model/session/ClientCapabilities;Lmediabrowser/apiinteraction/ApiEventListener;)V
    .locals 8

    move-object v0, p0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->apiClients:Ljava/util/HashMap;

    move-object v1, p1

    .line 61
    iput-object v1, v0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->credentialProvider:Lmediabrowser/apiinteraction/ICredentialProvider;

    move-object v1, p2

    .line 62
    iput-object v1, v0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->networkConnection:Lmediabrowser/apiinteraction/network/INetworkConnection;

    move-object v3, p4

    .line 63
    iput-object v3, v0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->logger:Lmediabrowser/model/logging/ILogger;

    move-object v1, p5

    .line 64
    iput-object v1, v0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->serverDiscovery:Lmediabrowser/apiinteraction/discovery/IServerLocator;

    move-object v4, p6

    .line 65
    iput-object v4, v0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->httpClient:Lmediabrowser/apiinteraction/http/IAsyncHttpClient;

    move-object v5, p7

    .line 66
    iput-object v5, v0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->applicationName:Ljava/lang/String;

    move-object/from16 v6, p8

    .line 67
    iput-object v6, v0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->applicationVersion:Ljava/lang/String;

    move-object/from16 v1, p9

    .line 68
    iput-object v1, v0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->device:Lmediabrowser/apiinteraction/device/IDevice;

    move-object/from16 v1, p10

    .line 69
    iput-object v1, v0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->clientCapabilities:Lmediabrowser/model/session/ClientCapabilities;

    move-object/from16 v1, p11

    .line 70
    iput-object v1, v0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->apiEventListener:Lmediabrowser/apiinteraction/ApiEventListener;

    move-object v2, p3

    .line 71
    iput-object v2, v0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    .line 73
    new-instance v7, Lmediabrowser/apiinteraction/connect/ConnectService;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lmediabrowser/apiinteraction/connect/ConnectService;-><init>(Lmediabrowser/model/serialization/IJsonSerializer;Lmediabrowser/model/logging/ILogger;Lmediabrowser/apiinteraction/http/IAsyncHttpClient;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->connectService:Lmediabrowser/apiinteraction/connect/ConnectService;

    return-void
.end method

.method private GetOrAddApiClient(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/model/apiclient/ConnectionMode;)Lmediabrowser/apiinteraction/ApiClient;
    .locals 2

    .line 429
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->apiClients:Ljava/util/HashMap;

    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/apiinteraction/ApiClient;

    if-nez v0, :cond_0

    .line 433
    invoke-virtual {p1, p2}, Lmediabrowser/model/apiclient/ServerInfo;->GetAddress(Lmediabrowser/model/apiclient/ConnectionMode;)Ljava/lang/String;

    move-result-object p2

    .line 435
    invoke-virtual {p0, p2}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->InstantiateApiClient(Ljava/lang/String;)Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    .line 437
    iget-object p2, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->apiClients:Ljava/util/HashMap;

    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    invoke-virtual {v0}, Lmediabrowser/apiinteraction/ApiClient;->getAuthenticatedObservable()Ljava/util/Observable;

    move-result-object p2

    new-instance v1, Lmediabrowser/apiinteraction/connectionmanager/AuthenticatedObserver;

    invoke-direct {v1, p0, v0}, Lmediabrowser/apiinteraction/connectionmanager/AuthenticatedObserver;-><init>(Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Lmediabrowser/apiinteraction/ApiClient;)V

    invoke-virtual {p2, v1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 442
    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getAccessToken()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 444
    invoke-virtual {v0}, Lmediabrowser/apiinteraction/ApiClient;->ClearAuthenticationInfo()V

    goto :goto_0

    .line 448
    :cond_1
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getAccessToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lmediabrowser/apiinteraction/ApiClient;->SetAuthenticationInfo(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private LogoutAll(Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 14

    .line 698
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->apiClients:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 700
    array-length v7, v0

    if-nez v7, :cond_0

    .line 703
    invoke-virtual {p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    return-void

    .line 707
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 709
    array-length v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_2

    aget-object v1, v0, v11

    .line 711
    move-object v12, v1

    check-cast v12, Lmediabrowser/apiinteraction/ApiClient;

    .line 713
    new-instance v13, Lmediabrowser/apiinteraction/connectionmanager/ApiClientLogoutResponse;

    move-object v1, v13

    move-object v2, v8

    move v3, v7

    move-object v4, p1

    move-object v5, p0

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lmediabrowser/apiinteraction/connectionmanager/ApiClientLogoutResponse;-><init>(Ljava/util/ArrayList;ILmediabrowser/apiinteraction/EmptyResponse;Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Lmediabrowser/apiinteraction/ApiClient;)V

    .line 715
    invoke-virtual {v12}, Lmediabrowser/apiinteraction/ApiClient;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 717
    invoke-virtual {v12, v13}, Lmediabrowser/apiinteraction/ApiClient;->Logout(Lmediabrowser/apiinteraction/EmptyResponse;)V

    goto :goto_1

    .line 720
    :cond_1
    invoke-virtual {v13, v10}, Lmediabrowser/apiinteraction/connectionmanager/ApiClientLogoutResponse;->onResponse(Z)V

    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 724
    iput-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->connectUser:Lmediabrowser/model/connect/ConnectUser;

    return-void
.end method

.method private OnServerDeleteResponse(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 5

    .line 829
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->credentialProvider:Lmediabrowser/apiinteraction/ICredentialProvider;

    invoke-interface {v0}, Lmediabrowser/apiinteraction/ICredentialProvider;->GetCredentials()Lmediabrowser/model/apiclient/ServerCredentials;

    move-result-object v0

    .line 830
    invoke-virtual {v0}, Lmediabrowser/model/apiclient/ServerCredentials;->getServers()Ljava/util/ArrayList;

    move-result-object v1

    .line 831
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 833
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmediabrowser/model/apiclient/ServerInfo;

    .line 835
    invoke-virtual {v3}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 836
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 840
    :cond_1
    invoke-virtual {v0, v2}, Lmediabrowser/model/apiclient/ServerCredentials;->setServers(Ljava/util/ArrayList;)V

    .line 841
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->credentialProvider:Lmediabrowser/apiinteraction/ICredentialProvider;

    invoke-interface {p1, v0}, Lmediabrowser/apiinteraction/ICredentialProvider;->SaveCredentials(Lmediabrowser/model/apiclient/ServerCredentials;)V

    .line 842
    invoke-virtual {p2}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    return-void
.end method

.method private ValidateAuthentication(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/model/apiclient/ConnectionMode;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 9

    .line 388
    invoke-virtual {p1, p2}, Lmediabrowser/model/apiclient/ServerInfo;->GetAddress(Lmediabrowser/model/apiclient/ConnectionMode;)Ljava/lang/String;

    move-result-object v7

    .line 390
    new-instance p2, Lmediabrowser/apiinteraction/http/HttpHeaders;

    invoke-direct {p2}, Lmediabrowser/apiinteraction/http/HttpHeaders;-><init>()V

    .line 391
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmediabrowser/apiinteraction/http/HttpHeaders;->SetAccessToken(Ljava/lang/String;)V

    .line 393
    new-instance v8, Lmediabrowser/apiinteraction/http/HttpRequest;

    invoke-direct {v8}, Lmediabrowser/apiinteraction/http/HttpRequest;-><init>()V

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/emby/system/info?format=json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lmediabrowser/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    const-string v0, "GET"

    .line 395
    invoke-virtual {v8, v0}, Lmediabrowser/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v8, p2}, Lmediabrowser/apiinteraction/http/HttpRequest;->setRequestHeaders(Lmediabrowser/apiinteraction/http/HttpHeaders;)V

    .line 398
    new-instance p2, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    iget-object v6, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->httpClient:Lmediabrowser/apiinteraction/http/IAsyncHttpClient;

    move-object v0, p2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, v8

    invoke-direct/range {v0 .. v7}, Lmediabrowser/apiinteraction/connectionmanager/ValidateAuthenticationResponse;-><init>(Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Lmediabrowser/model/serialization/IJsonSerializer;Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/apiinteraction/EmptyResponse;Lmediabrowser/apiinteraction/http/HttpRequest;Lmediabrowser/apiinteraction/http/IAsyncHttpClient;Ljava/lang/String;)V

    .line 400
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->httpClient:Lmediabrowser/apiinteraction/http/IAsyncHttpClient;

    invoke-interface {p1, v8, p2}, Lmediabrowser/apiinteraction/http/IAsyncHttpClient;->Send(Lmediabrowser/apiinteraction/http/HttpRequest;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method static synthetic access$000(Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->OnServerDeleteResponse(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method


# virtual methods
.method AddAuthenticationInfoFromConnect(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/model/apiclient/ConnectionMode;Lmediabrowser/model/apiclient/ServerCredentials;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 3

    .line 291
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getExchangeToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v1, "Adding authentication info from Connect"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    invoke-virtual {p1, p2}, Lmediabrowser/model/apiclient/ServerInfo;->GetAddress(Lmediabrowser/model/apiclient/ConnectionMode;)Ljava/lang/String;

    move-result-object p2

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/emby/Connect/Exchange?format=json&ConnectUserId="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lmediabrowser/model/apiclient/ServerCredentials;->getConnectUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 301
    new-instance p3, Lmediabrowser/apiinteraction/http/HttpRequest;

    invoke-direct {p3}, Lmediabrowser/apiinteraction/http/HttpRequest;-><init>()V

    .line 302
    invoke-virtual {p3, p2}, Lmediabrowser/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    const-string p2, "GET"

    .line 303
    invoke-virtual {p3, p2}, Lmediabrowser/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 305
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MediaBrowser Client=\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->applicationName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", Device=\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->getDevice()Lmediabrowser/apiinteraction/device/IDevice;

    move-result-object v0

    invoke-interface {v0}, Lmediabrowser/apiinteraction/device/IDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", DeviceId=\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->getDevice()Lmediabrowser/apiinteraction/device/IDevice;

    move-result-object v0

    invoke-interface {v0}, Lmediabrowser/apiinteraction/device/IDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", Version=\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->applicationVersion:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 307
    invoke-virtual {p3}, Lmediabrowser/apiinteraction/http/HttpRequest;->getRequestHeaders()Lmediabrowser/apiinteraction/http/HttpHeaders;

    move-result-object v0

    const-string v1, "X-Emby-Authorization"

    invoke-virtual {v0, v1, p2}, Lmediabrowser/apiinteraction/http/HttpHeaders;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-virtual {p3}, Lmediabrowser/apiinteraction/http/HttpRequest;->getRequestHeaders()Lmediabrowser/apiinteraction/http/HttpHeaders;

    move-result-object p2

    const-string v0, "X-MediaBrowser-Token"

    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getExchangeToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lmediabrowser/apiinteraction/http/HttpHeaders;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object p2, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->httpClient:Lmediabrowser/apiinteraction/http/IAsyncHttpClient;

    new-instance v0, Lmediabrowser/apiinteraction/connectionmanager/ExchangeTokenResponse;

    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    invoke-direct {v0, v1, p1, p4}, Lmediabrowser/apiinteraction/connectionmanager/ExchangeTokenResponse;-><init>(Lmediabrowser/model/serialization/IJsonSerializer;Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/apiinteraction/EmptyResponse;)V

    invoke-interface {p2, p3, v0}, Lmediabrowser/apiinteraction/http/IAsyncHttpClient;->Send(Lmediabrowser/apiinteraction/http/HttpRequest;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 292
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "server"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method AfterConnectValidated(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/model/apiclient/ServerCredentials;Lmediabrowser/model/system/PublicSystemInfo;Lmediabrowser/model/apiclient/ConnectionMode;ZLmediabrowser/model/apiclient/ConnectionOptions;Lmediabrowser/apiinteraction/Response;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            "Lmediabrowser/model/apiclient/ServerCredentials;",
            "Lmediabrowser/model/system/PublicSystemInfo;",
            "Lmediabrowser/model/apiclient/ConnectionMode;",
            "Z",
            "Lmediabrowser/model/apiclient/ConnectionOptions;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/apiinteraction/ConnectionResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p5, :cond_0

    .line 321
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getAccessToken()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_0

    .line 323
    new-instance p5, Lmediabrowser/apiinteraction/connectionmanager/AfterConnectValidatedResponse;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lmediabrowser/apiinteraction/connectionmanager/AfterConnectValidatedResponse;-><init>(Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/model/apiclient/ServerCredentials;Lmediabrowser/model/system/PublicSystemInfo;Lmediabrowser/model/apiclient/ConnectionMode;Lmediabrowser/model/apiclient/ConnectionOptions;Lmediabrowser/apiinteraction/Response;)V

    invoke-direct {p0, p1, p4, p5}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->ValidateAuthentication(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/model/apiclient/ConnectionMode;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void

    .line 328
    :cond_0
    invoke-virtual {p1, p3}, Lmediabrowser/model/apiclient/ServerInfo;->ImportInfo(Lmediabrowser/model/system/PublicSystemInfo;)V

    .line 330
    invoke-virtual {p6}, Lmediabrowser/model/apiclient/ConnectionOptions;->getUpdateDateLastAccessed()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 331
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, p3}, Lmediabrowser/model/apiclient/ServerInfo;->setDateLastAccessed(Ljava/util/Date;)V

    .line 334
    :cond_1
    invoke-virtual {p1, p4}, Lmediabrowser/model/apiclient/ServerInfo;->setLastConnectionMode(Lmediabrowser/model/apiclient/ConnectionMode;)V

    .line 335
    invoke-virtual {p2, p1}, Lmediabrowser/model/apiclient/ServerCredentials;->AddOrUpdateServer(Lmediabrowser/model/apiclient/ServerInfo;)V

    .line 336
    iget-object p3, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->credentialProvider:Lmediabrowser/apiinteraction/ICredentialProvider;

    invoke-interface {p3, p2}, Lmediabrowser/apiinteraction/ICredentialProvider;->SaveCredentials(Lmediabrowser/model/apiclient/ServerCredentials;)V

    .line 338
    new-instance p3, Lmediabrowser/apiinteraction/ConnectionResult;

    invoke-direct {p3}, Lmediabrowser/apiinteraction/ConnectionResult;-><init>()V

    .line 340
    invoke-virtual {p2}, Lmediabrowser/model/apiclient/ServerCredentials;->getConnectUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lmediabrowser/apiinteraction/ConnectionResult;->setConnectUserId(Ljava/lang/String;)V

    .line 341
    invoke-direct {p0, p1, p4}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->GetOrAddApiClient(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/model/apiclient/ConnectionMode;)Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p2

    invoke-virtual {p3, p2}, Lmediabrowser/apiinteraction/ConnectionResult;->setApiClient(Lmediabrowser/apiinteraction/ApiClient;)V

    .line 342
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getAccessToken()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lmediabrowser/model/apiclient/ConnectionState;->ServerSignIn:Lmediabrowser/model/apiclient/ConnectionState;

    goto :goto_0

    :cond_2
    sget-object p2, Lmediabrowser/model/apiclient/ConnectionState;->SignedIn:Lmediabrowser/model/apiclient/ConnectionState;

    :goto_0
    invoke-virtual {p3, p2}, Lmediabrowser/apiinteraction/ConnectionResult;->setState(Lmediabrowser/model/apiclient/ConnectionState;)V

    .line 346
    invoke-virtual {p3}, Lmediabrowser/apiinteraction/ConnectionResult;->getServers()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-virtual {p3}, Lmediabrowser/apiinteraction/ConnectionResult;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p2

    iget-object p5, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->networkConnection:Lmediabrowser/apiinteraction/network/INetworkConnection;

    invoke-virtual {p2, p1, p4, p5}, Lmediabrowser/apiinteraction/ApiClient;->EnableAutomaticNetworking(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/model/apiclient/ConnectionMode;Lmediabrowser/apiinteraction/network/INetworkConnection;)V

    .line 349
    invoke-virtual {p3}, Lmediabrowser/apiinteraction/ConnectionResult;->getState()Lmediabrowser/model/apiclient/ConnectionState;

    move-result-object p1

    sget-object p2, Lmediabrowser/model/apiclient/ConnectionState;->SignedIn:Lmediabrowser/model/apiclient/ConnectionState;

    if-ne p1, p2, :cond_3

    .line 351
    invoke-virtual {p3}, Lmediabrowser/apiinteraction/ConnectionResult;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    invoke-virtual {p0, p1, p6}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->AfterConnected(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/model/apiclient/ConnectionOptions;)V

    .line 354
    :cond_3
    invoke-virtual {p7, p3}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method AfterConnected(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/model/apiclient/ConnectionOptions;)V
    .locals 2

    .line 456
    invoke-virtual {p2}, Lmediabrowser/model/apiclient/ConnectionOptions;->getReportCapabilities()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->clientCapabilities:Lmediabrowser/model/session/ClientCapabilities;

    new-instance v1, Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-direct {v1}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    invoke-virtual {p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->ReportCapabilities(Lmediabrowser/model/session/ClientCapabilities;Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 460
    :cond_0
    invoke-virtual {p2}, Lmediabrowser/model/apiclient/ConnectionOptions;->getEnableWebSocket()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 461
    invoke-virtual {p1}, Lmediabrowser/apiinteraction/ApiClient;->ensureWebSocket()V

    :cond_1
    return-void
.end method

.method public Connect(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/apiinteraction/ConnectionResult;",
            ">;)V"
        }
    .end annotation

    .line 360
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->NormalizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v2, "Attempting to connect to server at %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    new-instance p1, Lmediabrowser/model/apiclient/ServerInfo;

    invoke-direct {p1}, Lmediabrowser/model/apiclient/ServerInfo;-><init>()V

    .line 365
    invoke-virtual {p1, v0}, Lmediabrowser/model/apiclient/ServerInfo;->setManualAddress(Ljava/lang/String;)V

    .line 366
    sget-object v0, Lmediabrowser/model/apiclient/ConnectionMode;->Manual:Lmediabrowser/model/apiclient/ConnectionMode;

    invoke-virtual {p1, v0}, Lmediabrowser/model/apiclient/ServerInfo;->setLastConnectionMode(Lmediabrowser/model/apiclient/ConnectionMode;)V

    .line 368
    new-instance v0, Lmediabrowser/model/apiclient/ConnectionOptions;

    invoke-direct {v0}, Lmediabrowser/model/apiclient/ConnectionOptions;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->Connect(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/model/apiclient/ConnectionOptions;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method Connect(Ljava/util/ArrayList;Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/apiinteraction/ConnectionResult;",
            ">;)V"
        }
    .end annotation

    .line 165
    new-instance v0, Lmediabrowser/apiinteraction/connectionmanager/ServerInfoDateComparator;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/connectionmanager/ServerInfoDateComparator;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 166
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 168
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 170
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/apiclient/ServerInfo;

    new-instance v0, Lmediabrowser/model/apiclient/ConnectionOptions;

    invoke-direct {v0}, Lmediabrowser/model/apiclient/ConnectionOptions;-><init>()V

    new-instance v1, Lmediabrowser/apiinteraction/connectionmanager/ConnectToSingleServerListResponse;

    invoke-direct {v1, p2}, Lmediabrowser/apiinteraction/connectionmanager/ConnectToSingleServerListResponse;-><init>(Lmediabrowser/apiinteraction/Response;)V

    invoke-virtual {p0, p1, v0, v1}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->Connect(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/model/apiclient/ConnectionOptions;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 175
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/apiclient/ServerInfo;

    invoke-virtual {v0}, Lmediabrowser/model/apiclient/ServerInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/apiclient/ServerInfo;

    .line 182
    new-instance v1, Lmediabrowser/model/apiclient/ConnectionOptions;

    invoke-direct {v1}, Lmediabrowser/model/apiclient/ConnectionOptions;-><init>()V

    new-instance v2, Lmediabrowser/apiinteraction/connectionmanager/FirstServerConnectResponse;

    invoke-direct {v2, p0, p1, p2}, Lmediabrowser/apiinteraction/connectionmanager/FirstServerConnectResponse;-><init>(Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Ljava/util/ArrayList;Lmediabrowser/apiinteraction/Response;)V

    invoke-virtual {p0, v0, v1, v2}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->Connect(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/model/apiclient/ConnectionOptions;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 177
    :cond_2
    :goto_0
    invoke-virtual {p0, p2, p1}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->OnFailedConnection(Lmediabrowser/apiinteraction/Response;Ljava/util/ArrayList;)V

    return-void
.end method

.method public Connect(Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/apiinteraction/ConnectionResult;",
            ">;)V"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v1, "Entering initial connection workflow"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    new-instance v0, Lmediabrowser/apiinteraction/connectionmanager/GetAvailableServersResponse;

    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->logger:Lmediabrowser/model/logging/ILogger;

    invoke-direct {v0, v1, p0, p1}, Lmediabrowser/apiinteraction/connectionmanager/GetAvailableServersResponse;-><init>(Lmediabrowser/model/logging/ILogger;Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Lmediabrowser/apiinteraction/Response;)V

    invoke-virtual {p0, v0}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->GetAvailableServers(Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public Connect(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/apiinteraction/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/apiinteraction/ConnectionResult;",
            ">;)V"
        }
    .end annotation

    .line 189
    new-instance v0, Lmediabrowser/model/apiclient/ConnectionOptions;

    invoke-direct {v0}, Lmediabrowser/model/apiclient/ConnectionOptions;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->Connect(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/model/apiclient/ConnectionOptions;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public Connect(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/model/apiclient/ConnectionOptions;Lmediabrowser/apiinteraction/Response;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            "Lmediabrowser/model/apiclient/ConnectionOptions;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/apiinteraction/ConnectionResult;",
            ">;)V"
        }
    .end annotation

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 198
    sget-object v0, Lmediabrowser/model/apiclient/ConnectionMode;->Manual:Lmediabrowser/model/apiclient/ConnectionMode;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lmediabrowser/model/apiclient/ConnectionMode;->Local:Lmediabrowser/model/apiclient/ConnectionMode;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lmediabrowser/model/apiclient/ConnectionMode;->Remote:Lmediabrowser/model/apiclient/ConnectionMode;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getLastConnectionMode()Lmediabrowser/model/apiclient/ConnectionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getLastConnectionMode()Lmediabrowser/model/apiclient/ConnectionMode;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 206
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getLastConnectionMode()Lmediabrowser/model/apiclient/ConnectionMode;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 209
    :cond_0
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->networkConnection:Lmediabrowser/apiinteraction/network/INetworkConnection;

    invoke-interface {v0}, Lmediabrowser/apiinteraction/network/INetworkConnection;->getNetworkStatus()Lmediabrowser/model/apiclient/NetworkStatus;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/apiclient/NetworkStatus;->GetIsAnyLocalNetworkAvailable()Z

    move-result v3

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    .line 213
    invoke-virtual/range {v0 .. v8}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->TestNextConnectionMode(Ljava/util/ArrayList;IZLmediabrowser/model/apiclient/ServerInfo;JLmediabrowser/model/apiclient/ConnectionOptions;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public CreatePin(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/connect/PinCreationResult;",
            ">;)V"
        }
    .end annotation

    .line 734
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->connectService:Lmediabrowser/apiinteraction/connect/ConnectService;

    invoke-virtual {v0, p1, p2}, Lmediabrowser/apiinteraction/connect/ConnectService;->CreatePin(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public DeleteServer(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 5

    .line 785
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->credentialProvider:Lmediabrowser/apiinteraction/ICredentialProvider;

    invoke-interface {v0}, Lmediabrowser/apiinteraction/ICredentialProvider;->GetCredentials()Lmediabrowser/model/apiclient/ServerCredentials;

    move-result-object v0

    .line 786
    invoke-virtual {v0}, Lmediabrowser/model/apiclient/ServerCredentials;->getServers()Ljava/util/ArrayList;

    move-result-object v1

    .line 789
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmediabrowser/model/apiclient/ServerInfo;

    .line 791
    invoke-virtual {v2}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 798
    invoke-virtual {p2}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    return-void

    .line 802
    :cond_2
    invoke-virtual {v2}, Lmediabrowser/model/apiclient/ServerInfo;->getConnectServerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 804
    invoke-direct {p0, p1, p2}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->OnServerDeleteResponse(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void

    .line 808
    :cond_3
    invoke-virtual {v0}, Lmediabrowser/model/apiclient/ServerCredentials;->getConnectUserId()Ljava/lang/String;

    move-result-object v1

    .line 809
    invoke-virtual {v0}, Lmediabrowser/model/apiclient/ServerCredentials;->getConnectAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 811
    invoke-static {v1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 812
    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 818
    :cond_4
    iget-object v3, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->connectService:Lmediabrowser/apiinteraction/connect/ConnectService;

    invoke-virtual {v2}, Lmediabrowser/model/apiclient/ServerInfo;->getConnectServerId()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager$2;

    invoke-direct {v4, p0, p2, p1, p2}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager$2;-><init>(Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Lmediabrowser/apiinteraction/IResponse;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    invoke-virtual {v3, v1, v0, v2, v4}, Lmediabrowser/apiinteraction/connect/ConnectService;->DeleteServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void

    .line 814
    :cond_5
    :goto_1
    invoke-direct {p0, p1, p2}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->OnServerDeleteResponse(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method

.method EnsureConnectUser(Lmediabrowser/model/apiclient/ServerCredentials;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 3

    .line 550
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->connectUser:Lmediabrowser/model/connect/ConnectUser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->connectUser:Lmediabrowser/model/connect/ConnectUser;

    invoke-virtual {v0}, Lmediabrowser/model/connect/ConnectUser;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerCredentials;->getConnectUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {p2}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    return-void

    .line 556
    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerCredentials;->getConnectUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerCredentials;->getConnectAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 558
    iput-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->connectUser:Lmediabrowser/model/connect/ConnectUser;

    .line 560
    new-instance v0, Lmediabrowser/model/connect/ConnectUserQuery;

    invoke-direct {v0}, Lmediabrowser/model/connect/ConnectUserQuery;-><init>()V

    .line 562
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerCredentials;->getConnectUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/connect/ConnectUserQuery;->setId(Ljava/lang/String;)V

    .line 564
    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->connectService:Lmediabrowser/apiinteraction/connect/ConnectService;

    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerCredentials;->getConnectAccessToken()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lmediabrowser/apiinteraction/connectionmanager/GetConnectUserResponse;

    invoke-direct {v2, p0, p2}, Lmediabrowser/apiinteraction/connectionmanager/GetConnectUserResponse;-><init>(Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Lmediabrowser/apiinteraction/EmptyResponse;)V

    invoke-virtual {v1, v0, p1, v2}, Lmediabrowser/apiinteraction/connect/ConnectService;->GetConnectUser(Lmediabrowser/model/connect/ConnectUserQuery;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    :cond_1
    return-void
.end method

.method public ExchangePin(Lmediabrowser/model/connect/PinCreationResult;Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/connect/PinCreationResult;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/connect/PinExchangeResult;",
            ">;)V"
        }
    .end annotation

    .line 744
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->connectService:Lmediabrowser/apiinteraction/connect/ConnectService;

    new-instance v1, Lmediabrowser/apiinteraction/connectionmanager/ExchangePinResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->credentialProvider:Lmediabrowser/apiinteraction/ICredentialProvider;

    invoke-direct {v1, v2, p2}, Lmediabrowser/apiinteraction/connectionmanager/ExchangePinResponse;-><init>(Lmediabrowser/apiinteraction/ICredentialProvider;Lmediabrowser/apiinteraction/Response;)V

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/connect/ConnectService;->ExchangePin(Lmediabrowser/model/connect/PinCreationResult;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method protected FindServers(Lmediabrowser/apiinteraction/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 637
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->FindServersInternal(Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method protected FindServersInternal(Lmediabrowser/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 642
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->serverDiscovery:Lmediabrowser/apiinteraction/discovery/IServerLocator;

    new-instance v1, Lmediabrowser/apiinteraction/connectionmanager/FindServersInnerResponse;

    invoke-direct {v1, p0, p1}, Lmediabrowser/apiinteraction/connectionmanager/FindServersInnerResponse;-><init>(Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Lmediabrowser/apiinteraction/Response;)V

    const/16 p1, 0x3e8

    invoke-interface {v0, p1, v1}, Lmediabrowser/apiinteraction/discovery/IServerLocator;->FindServers(ILmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetApiClient(Ljava/lang/String;)Lmediabrowser/apiinteraction/ApiClient;
    .locals 1

    .line 89
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->apiClients:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/apiinteraction/ApiClient;

    return-object p1
.end method

.method public GetApiClient(Lmediabrowser/model/dto/IHasServerId;)Lmediabrowser/apiinteraction/ApiClient;
    .locals 0

    .line 83
    invoke-interface {p1}, Lmediabrowser/model/dto/IHasServerId;->getServerId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->GetApiClient(Ljava/lang/String;)Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    return-object p1
.end method

.method public GetAvailableServers(Lmediabrowser/apiinteraction/Response;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 511
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v1, "Getting saved servers via credential provider"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    :try_start_0
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->credentialProvider:Lmediabrowser/apiinteraction/ICredentialProvider;

    invoke-interface {v0}, Lmediabrowser/apiinteraction/ICredentialProvider;->GetCredentials()Lmediabrowser/model/apiclient/ServerCredentials;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    .line 525
    new-array v1, v1, [I

    aput v2, v1, v2

    .line 526
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 527
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 529
    new-instance v13, Lmediabrowser/apiinteraction/connectionmanager/FindServersResponse;

    const/4 v9, 0x2

    move-object v3, v13

    move-object v4, p0

    move-object v5, v0

    move-object v6, v11

    move-object v7, v12

    move-object v8, v1

    move-object v10, p1

    invoke-direct/range {v3 .. v10}, Lmediabrowser/apiinteraction/connectionmanager/FindServersResponse;-><init>(Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Lmediabrowser/model/apiclient/ServerCredentials;Ljava/util/ArrayList;Ljava/util/ArrayList;[IILmediabrowser/apiinteraction/Response;)V

    .line 531
    iget-object v3, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v4, "Scanning network for local servers"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 533
    invoke-virtual {p0, v13}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->FindServers(Lmediabrowser/apiinteraction/Response;)V

    .line 535
    new-instance v13, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;

    iget-object v4, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->logger:Lmediabrowser/model/logging/ILogger;

    iget-object v5, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->connectService:Lmediabrowser/apiinteraction/connect/ConnectService;

    move-object v3, v13

    move-object v6, v0

    move-object v7, v11

    move-object v8, v12

    move-object v10, v1

    move-object v11, p1

    move-object v12, p0

    invoke-direct/range {v3 .. v12}, Lmediabrowser/apiinteraction/connectionmanager/GetConnectServersResponse;-><init>(Lmediabrowser/model/logging/ILogger;Lmediabrowser/apiinteraction/connect/ConnectService;Lmediabrowser/model/apiclient/ServerCredentials;Ljava/util/ArrayList;Ljava/util/ArrayList;I[ILmediabrowser/apiinteraction/Response;Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;)V

    .line 537
    invoke-virtual {v0}, Lmediabrowser/model/apiclient/ServerCredentials;->getConnectAccessToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 539
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v1, "Getting server list from Connect"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 541
    invoke-virtual {p0, v0, v13}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->EnsureConnectUser(Lmediabrowser/model/apiclient/ServerCredentials;Lmediabrowser/apiinteraction/EmptyResponse;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 544
    invoke-virtual {v13, p1}, Lmediabrowser/apiinteraction/EmptyResponse;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 518
    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v3, "Error getting available servers"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v0, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 519
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public GetPinStatus(Lmediabrowser/model/connect/PinCreationResult;Lmediabrowser/apiinteraction/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/connect/PinCreationResult;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/connect/PinStatusResult;",
            ">;)V"
        }
    .end annotation

    .line 739
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->connectService:Lmediabrowser/apiinteraction/connect/ConnectService;

    invoke-virtual {v0, p1, p2}, Lmediabrowser/apiinteraction/connect/ConnectService;->GetPinStatus(Lmediabrowser/model/connect/PinCreationResult;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public GetRegistrationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/registration/RegistrationInfo;",
            ">;)V"
        }
    .end annotation

    .line 749
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->connectService:Lmediabrowser/apiinteraction/connect/ConnectService;

    invoke-virtual {p0}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->getDevice()Lmediabrowser/apiinteraction/device/IDevice;

    move-result-object v1

    invoke-interface {v1}, Lmediabrowser/apiinteraction/device/IDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager$1;

    invoke-direct {v2, p0, p1, p4}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager$1;-><init>(Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    invoke-virtual {v0, p2, v1, p3, v2}, Lmediabrowser/apiinteraction/connect/ConnectService;->GetRegistrationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method

.method public GetSavedServers(Lmediabrowser/apiinteraction/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->credentialProvider:Lmediabrowser/apiinteraction/ICredentialProvider;

    invoke-interface {v0}, Lmediabrowser/apiinteraction/ICredentialProvider;->GetCredentials()Lmediabrowser/model/apiclient/ServerCredentials;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lmediabrowser/model/apiclient/ServerCredentials;->getServers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method protected InstantiateApiClient(Ljava/lang/String;)Lmediabrowser/apiinteraction/ApiClient;
    .locals 10

    .line 417
    new-instance v9, Lmediabrowser/apiinteraction/ApiClient;

    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->httpClient:Lmediabrowser/apiinteraction/http/IAsyncHttpClient;

    iget-object v2, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    iget-object v3, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->logger:Lmediabrowser/model/logging/ILogger;

    iget-object v5, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->applicationName:Ljava/lang/String;

    iget-object v6, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->applicationVersion:Ljava/lang/String;

    iget-object v7, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->device:Lmediabrowser/apiinteraction/device/IDevice;

    iget-object v8, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->apiEventListener:Lmediabrowser/apiinteraction/ApiEventListener;

    move-object v0, v9

    move-object v4, p1

    invoke-direct/range {v0 .. v8}, Lmediabrowser/apiinteraction/ApiClient;-><init>(Lmediabrowser/apiinteraction/http/IAsyncHttpClient;Lmediabrowser/model/serialization/IJsonSerializer;Lmediabrowser/model/logging/ILogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/device/IDevice;Lmediabrowser/apiinteraction/ApiEventListener;)V

    return-object v9
.end method

.method public LoginToConnect(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 729
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->connectService:Lmediabrowser/apiinteraction/connect/ConnectService;

    new-instance v1, Lmediabrowser/apiinteraction/connectionmanager/LoginToConnectResponse;

    iget-object v2, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->credentialProvider:Lmediabrowser/apiinteraction/ICredentialProvider;

    invoke-direct {v1, p0, v2, p3}, Lmediabrowser/apiinteraction/connectionmanager/LoginToConnectResponse;-><init>(Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Lmediabrowser/apiinteraction/ICredentialProvider;Lmediabrowser/apiinteraction/EmptyResponse;)V

    invoke-virtual {v0, p1, p2, v1}, Lmediabrowser/apiinteraction/connect/ConnectService;->Authenticate(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public Logout(Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 3

    .line 374
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v1, "Logging out of all servers"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    new-instance v0, Lmediabrowser/apiinteraction/connectionmanager/LogoutAllResponse;

    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->credentialProvider:Lmediabrowser/apiinteraction/ICredentialProvider;

    iget-object v2, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->logger:Lmediabrowser/model/logging/ILogger;

    invoke-direct {v0, v1, v2, p1, p0}, Lmediabrowser/apiinteraction/connectionmanager/LogoutAllResponse;-><init>(Lmediabrowser/apiinteraction/ICredentialProvider;Lmediabrowser/model/logging/ILogger;Lmediabrowser/apiinteraction/EmptyResponse;Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;)V

    invoke-direct {p0, v0}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->LogoutAll(Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method

.method NormalizeAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 683
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http"

    .line 688
    invoke-static {p1, v0}, Lmediabrowser/model/extensions/StringHelper;->IndexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1

    .line 685
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "address"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method OnAuthenticated(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/model/users/AuthenticationResult;Lmediabrowser/model/apiclient/ConnectionOptions;Z)V
    .locals 3

    .line 470
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v1, "Updating credentials after local authentication"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    invoke-virtual {p1}, Lmediabrowser/apiinteraction/ApiClient;->getServerInfo()Lmediabrowser/model/apiclient/ServerInfo;

    move-result-object v0

    .line 474
    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->credentialProvider:Lmediabrowser/apiinteraction/ICredentialProvider;

    invoke-interface {v1}, Lmediabrowser/apiinteraction/ICredentialProvider;->GetCredentials()Lmediabrowser/model/apiclient/ServerCredentials;

    move-result-object v1

    .line 476
    invoke-virtual {p3}, Lmediabrowser/model/apiclient/ConnectionOptions;->getUpdateDateLastAccessed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 477
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Lmediabrowser/model/apiclient/ServerInfo;->setDateLastAccessed(Ljava/util/Date;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 482
    invoke-virtual {p2}, Lmediabrowser/model/users/AuthenticationResult;->getUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p4

    invoke-virtual {p4}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Lmediabrowser/model/apiclient/ServerInfo;->setUserId(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p2}, Lmediabrowser/model/users/AuthenticationResult;->getAccessToken()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Lmediabrowser/model/apiclient/ServerInfo;->setAccessToken(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    .line 487
    invoke-virtual {v0, p4}, Lmediabrowser/model/apiclient/ServerInfo;->setUserId(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v0, p4}, Lmediabrowser/model/apiclient/ServerInfo;->setAccessToken(Ljava/lang/String;)V

    .line 491
    :goto_0
    invoke-virtual {v1, v0}, Lmediabrowser/model/apiclient/ServerCredentials;->AddOrUpdateServer(Lmediabrowser/model/apiclient/ServerInfo;)V

    .line 492
    iget-object p4, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->credentialProvider:Lmediabrowser/apiinteraction/ICredentialProvider;

    invoke-interface {p4, v1}, Lmediabrowser/apiinteraction/ICredentialProvider;->SaveCredentials(Lmediabrowser/model/apiclient/ServerCredentials;)V

    .line 494
    invoke-virtual {p0, p1, p3}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->AfterConnected(Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/model/apiclient/ConnectionOptions;)V

    .line 496
    invoke-virtual {p2}, Lmediabrowser/model/users/AuthenticationResult;->getUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->OnLocalUserSignIn(Lmediabrowser/model/dto/UserDto;)V

    return-void
.end method

.method OnConnectUserSignIn(Lmediabrowser/model/connect/ConnectUser;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->connectUser:Lmediabrowser/model/connect/ConnectUser;

    return-void
.end method

.method OnFailedConnection(Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/apiinteraction/ConnectionResult;",
            ">;)V"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v1, "No server available"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    new-instance v0, Lmediabrowser/apiinteraction/ConnectionResult;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/ConnectionResult;-><init>()V

    .line 122
    sget-object v1, Lmediabrowser/model/apiclient/ConnectionState;->Unavailable:Lmediabrowser/model/apiclient/ConnectionState;

    invoke-virtual {v0, v1}, Lmediabrowser/apiinteraction/ConnectionResult;->setState(Lmediabrowser/model/apiclient/ConnectionState;)V

    .line 123
    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->connectUser:Lmediabrowser/model/connect/ConnectUser;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->connectUser:Lmediabrowser/model/connect/ConnectUser;

    invoke-virtual {v1}, Lmediabrowser/model/connect/ConnectUser;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lmediabrowser/apiinteraction/ConnectionResult;->setConnectUserId(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1, v0}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method OnFailedConnection(Lmediabrowser/apiinteraction/Response;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/apiinteraction/ConnectionResult;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;)V"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v1, "No saved authentication"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    new-instance v0, Lmediabrowser/apiinteraction/ConnectionResult;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/ConnectionResult;-><init>()V

    .line 133
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->connectUser:Lmediabrowser/model/connect/ConnectUser;

    if-nez p2, :cond_0

    .line 134
    sget-object p2, Lmediabrowser/model/apiclient/ConnectionState;->ConnectSignIn:Lmediabrowser/model/apiclient/ConnectionState;

    invoke-virtual {v0, p2}, Lmediabrowser/apiinteraction/ConnectionResult;->setState(Lmediabrowser/model/apiclient/ConnectionState;)V

    goto :goto_0

    .line 137
    :cond_0
    sget-object p2, Lmediabrowser/model/apiclient/ConnectionState;->ServerSelection:Lmediabrowser/model/apiclient/ConnectionState;

    invoke-virtual {v0, p2}, Lmediabrowser/apiinteraction/ConnectionResult;->setState(Lmediabrowser/model/apiclient/ConnectionState;)V

    .line 140
    :goto_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2}, Lmediabrowser/apiinteraction/ConnectionResult;->setServers(Ljava/util/ArrayList;)V

    .line 141
    iget-object p2, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->connectUser:Lmediabrowser/model/connect/ConnectUser;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->connectUser:Lmediabrowser/model/connect/ConnectUser;

    invoke-virtual {p2}, Lmediabrowser/model/connect/ConnectUser;->getId()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {v0, p2}, Lmediabrowser/apiinteraction/ConnectionResult;->setConnectUserId(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1, v0}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method OnGetServerResponse(Lmediabrowser/model/apiclient/ServerCredentials;Ljava/util/ArrayList;Ljava/util/ArrayList;Lmediabrowser/apiinteraction/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/apiclient/ServerCredentials;",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 573
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/apiclient/ServerInfo;

    .line 575
    invoke-virtual {v0}, Lmediabrowser/model/apiclient/ServerInfo;->getManualAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 576
    sget-object v1, Lmediabrowser/model/apiclient/ConnectionMode;->Local:Lmediabrowser/model/apiclient/ConnectionMode;

    invoke-virtual {v0, v1}, Lmediabrowser/model/apiclient/ServerInfo;->setLastConnectionMode(Lmediabrowser/model/apiclient/ConnectionMode;)V

    goto :goto_1

    .line 579
    :cond_0
    sget-object v1, Lmediabrowser/model/apiclient/ConnectionMode;->Manual:Lmediabrowser/model/apiclient/ConnectionMode;

    invoke-virtual {v0, v1}, Lmediabrowser/model/apiclient/ServerInfo;->setLastConnectionMode(Lmediabrowser/model/apiclient/ConnectionMode;)V

    .line 582
    :goto_1
    invoke-virtual {p1, v0}, Lmediabrowser/model/apiclient/ServerCredentials;->AddOrUpdateServer(Lmediabrowser/model/apiclient/ServerInfo;)V

    goto :goto_0

    .line 585
    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/apiclient/ServerInfo;

    .line 587
    invoke-virtual {p1, v0}, Lmediabrowser/model/apiclient/ServerCredentials;->AddOrUpdateServer(Lmediabrowser/model/apiclient/ServerInfo;)V

    goto :goto_2

    .line 590
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 591
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerCredentials;->getServers()Ljava/util/ArrayList;

    move-result-object v0

    .line 593
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/apiclient/ServerInfo;

    .line 596
    invoke-virtual {v1}, Lmediabrowser/model/apiclient/ServerInfo;->getExchangeToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 598
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 604
    :cond_3
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmediabrowser/model/apiclient/ServerInfo;

    .line 606
    invoke-virtual {v1}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_6

    .line 614
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 617
    :cond_6
    iget-object v2, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->logger:Lmediabrowser/model/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping server "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lmediabrowser/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " because it\'s no longer in the user\'s Connect profile."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 622
    :cond_7
    new-instance p3, Lmediabrowser/apiinteraction/connectionmanager/ServerInfoDateComparator;

    invoke-direct {p3}, Lmediabrowser/apiinteraction/connectionmanager/ServerInfoDateComparator;-><init>()V

    invoke-static {p2, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 623
    invoke-static {p2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 625
    invoke-virtual {p1, p2}, Lmediabrowser/model/apiclient/ServerCredentials;->setServers(Ljava/util/ArrayList;)V

    .line 627
    iget-object p2, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->credentialProvider:Lmediabrowser/apiinteraction/ICredentialProvider;

    invoke-interface {p2, p1}, Lmediabrowser/apiinteraction/ICredentialProvider;->SaveCredentials(Lmediabrowser/model/apiclient/ServerCredentials;)V

    .line 629
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 630
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerCredentials;->getServers()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 632
    invoke-virtual {p4, p2}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method OnLocalUserSignIn(Lmediabrowser/model/dto/UserDto;)V
    .locals 0

    return-void
.end method

.method OnLocalUserSignout(Lmediabrowser/apiinteraction/ApiClient;)V
    .locals 0

    return-void
.end method

.method OnSuccessfulConnection(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/model/system/PublicSystemInfo;Lmediabrowser/model/apiclient/ConnectionMode;Lmediabrowser/model/apiclient/ConnectionOptions;Lmediabrowser/apiinteraction/Response;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            "Lmediabrowser/model/system/PublicSystemInfo;",
            "Lmediabrowser/model/apiclient/ConnectionMode;",
            "Lmediabrowser/model/apiclient/ConnectionOptions;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/apiinteraction/ConnectionResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 275
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->credentialProvider:Lmediabrowser/apiinteraction/ICredentialProvider;

    invoke-interface {v0}, Lmediabrowser/apiinteraction/ICredentialProvider;->GetCredentials()Lmediabrowser/model/apiclient/ServerCredentials;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lmediabrowser/model/apiclient/ServerCredentials;->getConnectAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    new-instance v9, Lmediabrowser/apiinteraction/connectionmanager/EnsureConnectUserResponse;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lmediabrowser/apiinteraction/connectionmanager/EnsureConnectUserResponse;-><init>(Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/model/apiclient/ServerCredentials;Lmediabrowser/model/system/PublicSystemInfo;Lmediabrowser/model/apiclient/ConnectionMode;Lmediabrowser/model/apiclient/ConnectionOptions;Lmediabrowser/apiinteraction/Response;)V

    invoke-virtual {p0, v0, v9}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->EnsureConnectUser(Lmediabrowser/model/apiclient/ServerCredentials;Lmediabrowser/apiinteraction/EmptyResponse;)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    move-object v8, p5

    .line 282
    invoke-virtual/range {v1 .. v8}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->AfterConnectValidated(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/model/apiclient/ServerCredentials;Lmediabrowser/model/system/PublicSystemInfo;Lmediabrowser/model/apiclient/ConnectionMode;ZLmediabrowser/model/apiclient/ConnectionOptions;Lmediabrowser/apiinteraction/Response;)V

    :goto_0
    return-void

    .line 272
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method TestNextConnectionMode(Ljava/util/ArrayList;IZLmediabrowser/model/apiclient/ServerInfo;JLmediabrowser/model/apiclient/ConnectionOptions;Lmediabrowser/apiinteraction/Response;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ConnectionMode;",
            ">;IZ",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            "J",
            "Lmediabrowser/model/apiclient/ConnectionOptions;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/apiinteraction/ConnectionResult;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v14, p0

    move/from16 v8, p2

    .line 224
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v8, v0, :cond_0

    move-object/from16 v13, p8

    .line 226
    invoke-virtual {v14, v13}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->OnFailedConnection(Lmediabrowser/apiinteraction/Response;)V

    return-void

    :cond_0
    move-object/from16 v13, p8

    .line 230
    invoke-virtual/range {p1 .. p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lmediabrowser/model/apiclient/ConnectionMode;

    move-object/from16 v5, p4

    .line 231
    invoke-virtual {v5, v4}, Lmediabrowser/model/apiclient/ServerInfo;->GetAddress(Lmediabrowser/model/apiclient/ConnectionMode;)Ljava/lang/String;

    move-result-object v15

    const/16 v0, 0x3a98

    .line 235
    sget-object v1, Lmediabrowser/model/apiclient/ConnectionMode;->Local:Lmediabrowser/model/apiclient/ConnectionMode;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v4, v1, :cond_2

    if-nez p3, :cond_1

    .line 238
    iget-object v0, v14, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v1, "Skipping local connection test because local network is unavailable"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x1

    :cond_1
    const/16 v0, 0x2710

    const/16 v12, 0x2710

    goto :goto_2

    .line 244
    :cond_2
    sget-object v1, Lmediabrowser/model/apiclient/ConnectionMode;->Manual:Lmediabrowser/model/apiclient/ConnectionMode;

    if-ne v4, v1, :cond_4

    .line 246
    invoke-virtual/range {p4 .. p4}, Lmediabrowser/model/apiclient/ServerInfo;->getLocalAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 247
    iget-object v1, v14, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v6, "Skipping manual connection test because the address is the same as the local address"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v6, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    .line 250
    :cond_3
    invoke-virtual/range {p4 .. p4}, Lmediabrowser/model/apiclient/ServerInfo;->getRemoteAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 251
    iget-object v1, v14, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v6, "Skipping manual connection test because the address is the same as the remote address"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v6, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    :goto_1
    const/16 v12, 0x3a98

    :goto_2
    if-nez v3, :cond_6

    .line 256
    invoke-static {v15}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    .line 262
    :cond_5
    new-instance v10, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;

    iget-object v11, v14, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->logger:Lmediabrowser/model/logging/ILogger;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p1

    move-object v5, v15

    move v6, v12

    move-object/from16 v7, p7

    move/from16 v8, p2

    move/from16 v9, p3

    move-object v14, v10

    move-object/from16 v16, v11

    move-wide/from16 v10, p5

    move-object/from16 v17, v14

    move v14, v12

    move-object/from16 v12, v16

    move-object/from16 v13, p8

    invoke-direct/range {v0 .. v13}, Lmediabrowser/apiinteraction/connectionmanager/TestNextConnectionModeTryConnectResponse;-><init>(Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Lmediabrowser/model/apiclient/ServerInfo;Ljava/util/ArrayList;Lmediabrowser/model/apiclient/ConnectionMode;Ljava/lang/String;ILmediabrowser/model/apiclient/ConnectionOptions;IZJLmediabrowser/model/logging/ILogger;Lmediabrowser/apiinteraction/Response;)V

    move-object/from16 v0, v17

    move-object/from16 v10, p0

    invoke-virtual {v10, v15, v14, v0}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->TryConnect(Ljava/lang/String;ILmediabrowser/apiinteraction/Response;)V

    return-void

    :cond_6
    :goto_3
    move-object v10, v14

    add-int/2addr v2, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 258
    invoke-virtual/range {v0 .. v8}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->TestNextConnectionMode(Ljava/util/ArrayList;IZLmediabrowser/model/apiclient/ServerInfo;JLmediabrowser/model/apiclient/ConnectionOptions;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method TryConnect(Ljava/lang/String;ILmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/system/PublicSystemInfo;",
            ">;)V"
        }
    .end annotation

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/emby/system/info/public?format=json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 407
    new-instance v0, Lmediabrowser/apiinteraction/http/HttpRequest;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/http/HttpRequest;-><init>()V

    .line 408
    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    const-string p1, "GET"

    .line 409
    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v0, p2}, Lmediabrowser/apiinteraction/http/HttpRequest;->setTimeout(I)V

    .line 412
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->httpClient:Lmediabrowser/apiinteraction/http/IAsyncHttpClient;

    new-instance p2, Lmediabrowser/apiinteraction/SerializedResponse;

    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    const-class v2, Lmediabrowser/model/system/PublicSystemInfo;

    invoke-direct {p2, p3, v1, v2}, Lmediabrowser/apiinteraction/SerializedResponse;-><init>(Lmediabrowser/apiinteraction/Response;Lmediabrowser/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-interface {p1, v0, p2}, Lmediabrowser/apiinteraction/http/IAsyncHttpClient;->Send(Lmediabrowser/apiinteraction/http/HttpRequest;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method WakeAllServers()V
    .locals 3

    .line 647
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v1, "Waking all servers"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 649
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->credentialProvider:Lmediabrowser/apiinteraction/ICredentialProvider;

    invoke-interface {v0}, Lmediabrowser/apiinteraction/ICredentialProvider;->GetCredentials()Lmediabrowser/model/apiclient/ServerCredentials;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/apiclient/ServerCredentials;->getServers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/apiclient/ServerInfo;

    .line 651
    new-instance v2, Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-direct {v2}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    invoke-virtual {p0, v1, v2}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->WakeServer(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/apiinteraction/EmptyResponse;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method WakeServer(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 6

    .line 657
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v1, "Waking server: %s, Id: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 659
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getWakeOnLanInfos()Ljava/util/ArrayList;

    move-result-object v0

    .line 661
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 664
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v1, "Server %s has no saved wake on lan profiles"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 665
    invoke-virtual {p2}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    return-void

    .line 669
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 671
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/apiclient/WakeOnLanInfo;

    .line 673
    new-instance v2, Lmediabrowser/apiinteraction/connectionmanager/WakeServerResponse;

    invoke-direct {v2, p1, p2}, Lmediabrowser/apiinteraction/connectionmanager/WakeServerResponse;-><init>(Ljava/util/ArrayList;Lmediabrowser/apiinteraction/EmptyResponse;)V

    invoke-virtual {p0, v1, v2}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->WakeServer(Lmediabrowser/model/apiclient/WakeOnLanInfo;Lmediabrowser/apiinteraction/EmptyResponse;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public WakeServer(Lmediabrowser/model/apiclient/WakeOnLanInfo;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 3

    .line 678
    new-instance v0, Lmediabrowser/apiinteraction/android/WakeOnLan;

    invoke-direct {v0}, Lmediabrowser/apiinteraction/android/WakeOnLan;-><init>()V

    invoke-virtual {p1}, Lmediabrowser/model/apiclient/WakeOnLanInfo;->getBroadcastAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmediabrowser/model/apiclient/WakeOnLanInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lmediabrowser/model/apiclient/WakeOnLanInfo;->getPort()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1, p2}, Lmediabrowser/apiinteraction/android/WakeOnLan;->send(Ljava/lang/String;Ljava/lang/String;ILmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method

.method clearConnectUserAfterLogout()V
    .locals 1

    .line 381
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->connectUser:Lmediabrowser/model/connect/ConnectUser;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 382
    iput-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->connectUser:Lmediabrowser/model/connect/ConnectUser;

    :cond_0
    return-void
.end method

.method public getClientCapabilities()Lmediabrowser/model/session/ClientCapabilities;
    .locals 1

    .line 77
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->clientCapabilities:Lmediabrowser/model/session/ClientCapabilities;

    return-object v0
.end method

.method public getDevice()Lmediabrowser/apiinteraction/device/IDevice;
    .locals 1

    .line 107
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->device:Lmediabrowser/apiinteraction/device/IDevice;

    return-object v0
.end method

.method public getServerInfo(Ljava/lang/String;)Lmediabrowser/model/apiclient/ServerInfo;
    .locals 3

    .line 95
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->credentialProvider:Lmediabrowser/apiinteraction/ICredentialProvider;

    invoke-interface {v0}, Lmediabrowser/apiinteraction/ICredentialProvider;->GetCredentials()Lmediabrowser/model/apiclient/ServerCredentials;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lmediabrowser/model/apiclient/ServerCredentials;->getServers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/apiclient/ServerInfo;

    .line 98
    invoke-virtual {v1}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
