.class public Lmediabrowser/apiinteraction/connectionmanager/AddAuthenticationInfoFromConnectResponse;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "AddAuthenticationInfoFromConnectResponse.java"


# instance fields
.field private parentResponse:Lmediabrowser/apiinteraction/connectionmanager/EnsureConnectUserResponse;


# direct methods
.method public constructor <init>(Lmediabrowser/apiinteraction/connectionmanager/EnsureConnectUserResponse;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    .line 13
    iput-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/AddAuthenticationInfoFromConnectResponse;->parentResponse:Lmediabrowser/apiinteraction/connectionmanager/EnsureConnectUserResponse;

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 1

    .line 19
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/AddAuthenticationInfoFromConnectResponse;->parentResponse:Lmediabrowser/apiinteraction/connectionmanager/EnsureConnectUserResponse;

    invoke-virtual {v0}, Lmediabrowser/apiinteraction/connectionmanager/EnsureConnectUserResponse;->onEnsureConnectUserDone()V

    return-void
.end method
