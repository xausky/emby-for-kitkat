.class public Lmediabrowser/apiinteraction/connectionmanager/ExchangePinResponse;
.super Lmediabrowser/apiinteraction/Response;
.source "ExchangePinResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/connect/PinExchangeResult;",
        ">;"
    }
.end annotation


# instance fields
.field private credentialProvider:Lmediabrowser/apiinteraction/ICredentialProvider;

.field private response:Lmediabrowser/apiinteraction/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/connect/PinExchangeResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmediabrowser/apiinteraction/ICredentialProvider;Lmediabrowser/apiinteraction/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/ICredentialProvider;",
            "Lmediabrowser/apiinteraction/Response<",
            "Lmediabrowser/model/connect/PinExchangeResult;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    .line 14
    iput-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/ExchangePinResponse;->credentialProvider:Lmediabrowser/apiinteraction/ICredentialProvider;

    .line 15
    iput-object p2, p0, Lmediabrowser/apiinteraction/connectionmanager/ExchangePinResponse;->response:Lmediabrowser/apiinteraction/Response;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ExchangePinResponse;->response:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lmediabrowser/model/connect/PinExchangeResult;

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/connectionmanager/ExchangePinResponse;->onResponse(Lmediabrowser/model/connect/PinExchangeResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/connect/PinExchangeResult;)V
    .locals 2

    .line 21
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ExchangePinResponse;->credentialProvider:Lmediabrowser/apiinteraction/ICredentialProvider;

    invoke-interface {v0}, Lmediabrowser/apiinteraction/ICredentialProvider;->GetCredentials()Lmediabrowser/model/apiclient/ServerCredentials;

    move-result-object v0

    .line 23
    invoke-virtual {p1}, Lmediabrowser/model/connect/PinExchangeResult;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/apiclient/ServerCredentials;->setConnectAccessToken(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lmediabrowser/model/connect/PinExchangeResult;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/apiclient/ServerCredentials;->setConnectUserId(Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lmediabrowser/apiinteraction/connectionmanager/ExchangePinResponse;->credentialProvider:Lmediabrowser/apiinteraction/ICredentialProvider;

    invoke-interface {v1, v0}, Lmediabrowser/apiinteraction/ICredentialProvider;->SaveCredentials(Lmediabrowser/model/apiclient/ServerCredentials;)V

    .line 28
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/ExchangePinResponse;->response:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
