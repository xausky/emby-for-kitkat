.class public Lmediabrowser/apiinteraction/websocket/UserDataChangeMessage;
.super Lmediabrowser/model/net/WebSocketMessage;
.source "UserDataChangeMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/model/net/WebSocketMessage<",
        "Lmediabrowser/model/session/UserDataChangeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lmediabrowser/model/net/WebSocketMessage;-><init>()V

    return-void
.end method
