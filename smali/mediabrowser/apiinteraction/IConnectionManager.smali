.class public interface abstract Lmediabrowser/apiinteraction/IConnectionManager;
.super Ljava/lang/Object;
.source "IConnectionManager.java"


# virtual methods
.method public abstract Connect(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/apiinteraction/ConnectionResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract Connect(Lmediabrowser/apiinteraction/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/apiinteraction/ConnectionResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract Connect(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/apiinteraction/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/apiinteraction/ConnectionResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract Connect(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/model/apiclient/ConnectionOptions;Lmediabrowser/apiinteraction/Response;)V
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
.end method

.method public abstract CreatePin(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/connect/PinCreationResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract DeleteServer(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
.end method

.method public abstract ExchangePin(Lmediabrowser/model/connect/PinCreationResult;Lmediabrowser/apiinteraction/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/connect/PinCreationResult;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/connect/PinExchangeResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract GetApiClient(Ljava/lang/String;)Lmediabrowser/apiinteraction/ApiClient;
.end method

.method public abstract GetApiClient(Lmediabrowser/model/dto/IHasServerId;)Lmediabrowser/apiinteraction/ApiClient;
.end method

.method public abstract GetAvailableServers(Lmediabrowser/apiinteraction/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract GetPinStatus(Lmediabrowser/model/connect/PinCreationResult;Lmediabrowser/apiinteraction/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/connect/PinCreationResult;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/connect/PinStatusResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract GetRegistrationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
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
.end method

.method public abstract GetSavedServers(Lmediabrowser/apiinteraction/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract LoginToConnect(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation
.end method

.method public abstract Logout(Lmediabrowser/apiinteraction/EmptyResponse;)V
.end method

.method public abstract WakeServer(Lmediabrowser/model/apiclient/WakeOnLanInfo;Lmediabrowser/apiinteraction/EmptyResponse;)V
.end method

.method public abstract getClientCapabilities()Lmediabrowser/model/session/ClientCapabilities;
.end method

.method public abstract getDevice()Lmediabrowser/apiinteraction/device/IDevice;
.end method

.method public abstract getServerInfo(Ljava/lang/String;)Lmediabrowser/model/apiclient/ServerInfo;
.end method
