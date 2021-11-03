.class public Lmediabrowser/apiinteraction/websocket/BasicWebSocketMessage;
.super Ljava/lang/Object;
.source "BasicWebSocketMessage.java"


# instance fields
.field private MessageType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMessageType()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lmediabrowser/apiinteraction/websocket/BasicWebSocketMessage;->MessageType:Ljava/lang/String;

    return-object v0
.end method

.method public final setMessageType(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lmediabrowser/apiinteraction/websocket/BasicWebSocketMessage;->MessageType:Ljava/lang/String;

    return-void
.end method
