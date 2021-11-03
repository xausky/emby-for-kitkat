.class public Lmediabrowser/model/net/WebSocketMessage;
.super Ljava/lang/Object;
.source "WebSocketMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private Data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private MessageType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lmediabrowser/model/net/WebSocketMessage;->Data:Ljava/lang/Object;

    return-object v0
.end method

.method public final getMessageType()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lmediabrowser/model/net/WebSocketMessage;->MessageType:Ljava/lang/String;

    return-object v0
.end method

.method public final setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lmediabrowser/model/net/WebSocketMessage;->Data:Ljava/lang/Object;

    return-void
.end method

.method public final setMessageType(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lmediabrowser/model/net/WebSocketMessage;->MessageType:Ljava/lang/String;

    return-void
.end method
