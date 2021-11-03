.class public Lmediabrowser/apiinteraction/android/AndroidConnectionManager;
.super Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;
.source "AndroidConnectionManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmediabrowser/model/serialization/IJsonSerializer;Lmediabrowser/model/logging/ILogger;Lmediabrowser/apiinteraction/http/IAsyncHttpClient;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/device/IDevice;Lmediabrowser/model/session/ClientCapabilities;Lmediabrowser/apiinteraction/ApiEventListener;)V
    .locals 13

    move-object v0, p1

    move-object v4, p2

    move-object/from16 v5, p3

    .line 21
    new-instance v2, Lmediabrowser/apiinteraction/android/AndroidCredentialProvider;

    invoke-direct {v2, p2, p1, v5}, Lmediabrowser/apiinteraction/android/AndroidCredentialProvider;-><init>(Lmediabrowser/model/serialization/IJsonSerializer;Landroid/content/Context;Lmediabrowser/model/logging/ILogger;)V

    new-instance v3, Lmediabrowser/apiinteraction/android/AndroidNetworkConnection;

    invoke-direct {v3, p1, v5}, Lmediabrowser/apiinteraction/android/AndroidNetworkConnection;-><init>(Landroid/content/Context;Lmediabrowser/model/logging/ILogger;)V

    new-instance v6, Lmediabrowser/apiinteraction/discovery/ServerLocator;

    invoke-direct {v6, v5, p2}, Lmediabrowser/apiinteraction/discovery/ServerLocator;-><init>(Lmediabrowser/model/logging/ILogger;Lmediabrowser/model/serialization/IJsonSerializer;)V

    move-object v1, p0

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v1 .. v12}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;-><init>(Lmediabrowser/apiinteraction/ICredentialProvider;Lmediabrowser/apiinteraction/network/INetworkConnection;Lmediabrowser/model/serialization/IJsonSerializer;Lmediabrowser/model/logging/ILogger;Lmediabrowser/apiinteraction/discovery/IServerLocator;Lmediabrowser/apiinteraction/http/IAsyncHttpClient;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/device/IDevice;Lmediabrowser/model/session/ClientCapabilities;Lmediabrowser/apiinteraction/ApiEventListener;)V

    .line 32
    invoke-direct {p0, p1}, Lmediabrowser/apiinteraction/android/AndroidConnectionManager;->SaveAppInfo(Landroid/content/Context;)V

    return-void
.end method

.method private SaveAppInfo(Landroid/content/Context;)V
    .locals 3

    const-string v0, "AndroidConnectionManager"

    const/4 v1, 0x4

    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 39
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "appName"

    .line 41
    iget-object v1, p0, Lmediabrowser/apiinteraction/android/AndroidConnectionManager;->applicationName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "appVersion"

    .line 42
    iget-object v1, p0, Lmediabrowser/apiinteraction/android/AndroidConnectionManager;->applicationVersion:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "capabilities"

    .line 43
    iget-object v1, p0, Lmediabrowser/apiinteraction/android/AndroidConnectionManager;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    invoke-virtual {p0}, Lmediabrowser/apiinteraction/android/AndroidConnectionManager;->getClientCapabilities()Lmediabrowser/model/session/ClientCapabilities;

    move-result-object v2

    invoke-interface {v1, v2}, Lmediabrowser/model/serialization/IJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "deviceId"

    .line 44
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/android/AndroidConnectionManager;->getDevice()Lmediabrowser/apiinteraction/device/IDevice;

    move-result-object v1

    invoke-interface {v1}, Lmediabrowser/apiinteraction/device/IDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "deviceName"

    .line 45
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/android/AndroidConnectionManager;->getDevice()Lmediabrowser/apiinteraction/device/IDevice;

    move-result-object v1

    invoke-interface {v1}, Lmediabrowser/apiinteraction/device/IDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method protected FindServers(Lmediabrowser/apiinteraction/Response;)V
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

    .line 67
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmediabrowser/apiinteraction/android/FindServersRunnable;

    invoke-direct {v1, p0, p1}, Lmediabrowser/apiinteraction/android/FindServersRunnable;-><init>(Lmediabrowser/apiinteraction/android/AndroidConnectionManager;Lmediabrowser/apiinteraction/Response;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 69
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method FindServersAndroid(Lmediabrowser/apiinteraction/Response;)V
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

    .line 73
    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/android/AndroidConnectionManager;->FindServersInternal(Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method protected InstantiateApiClient(Ljava/lang/String;)Lmediabrowser/apiinteraction/ApiClient;
    .locals 10

    .line 54
    new-instance v9, Lmediabrowser/apiinteraction/android/AndroidApiClient;

    iget-object v1, p0, Lmediabrowser/apiinteraction/android/AndroidConnectionManager;->httpClient:Lmediabrowser/apiinteraction/http/IAsyncHttpClient;

    iget-object v2, p0, Lmediabrowser/apiinteraction/android/AndroidConnectionManager;->jsonSerializer:Lmediabrowser/model/serialization/IJsonSerializer;

    iget-object v3, p0, Lmediabrowser/apiinteraction/android/AndroidConnectionManager;->logger:Lmediabrowser/model/logging/ILogger;

    iget-object v5, p0, Lmediabrowser/apiinteraction/android/AndroidConnectionManager;->applicationName:Ljava/lang/String;

    iget-object v6, p0, Lmediabrowser/apiinteraction/android/AndroidConnectionManager;->device:Lmediabrowser/apiinteraction/device/IDevice;

    iget-object v7, p0, Lmediabrowser/apiinteraction/android/AndroidConnectionManager;->applicationVersion:Ljava/lang/String;

    iget-object v8, p0, Lmediabrowser/apiinteraction/android/AndroidConnectionManager;->apiEventListener:Lmediabrowser/apiinteraction/ApiEventListener;

    move-object v0, v9

    move-object v4, p1

    invoke-direct/range {v0 .. v8}, Lmediabrowser/apiinteraction/android/AndroidApiClient;-><init>(Lmediabrowser/apiinteraction/http/IAsyncHttpClient;Lmediabrowser/model/serialization/IJsonSerializer;Lmediabrowser/model/logging/ILogger;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/device/IDevice;Ljava/lang/String;Lmediabrowser/apiinteraction/ApiEventListener;)V

    return-object v9
.end method
