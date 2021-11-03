.class public abstract Lorg/java_websocket/framing/ControlFrame;
.super Lorg/java_websocket/framing/FramedataImpl1;
.source "ControlFrame.java"


# direct methods
.method public constructor <init>(Lorg/java_websocket/framing/Framedata$Opcode;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lorg/java_websocket/framing/FramedataImpl1;-><init>(Lorg/java_websocket/framing/Framedata$Opcode;)V

    return-void
.end method


# virtual methods
.method public isValid()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lorg/java_websocket/framing/ControlFrame;->isFin()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    invoke-virtual {p0}, Lorg/java_websocket/framing/ControlFrame;->isRSV1()Z

    move-result v0

    if-nez v0, :cond_2

    .line 52
    invoke-virtual {p0}, Lorg/java_websocket/framing/ControlFrame;->isRSV2()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    invoke-virtual {p0}, Lorg/java_websocket/framing/ControlFrame;->isRSV3()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    new-instance v0, Lorg/java_websocket/exceptions/InvalidFrameException;

    const-string v1, "Control frame cant have rsv3==true set"

    invoke-direct {v0, v1}, Lorg/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    new-instance v0, Lorg/java_websocket/exceptions/InvalidFrameException;

    const-string v1, "Control frame cant have rsv2==true set"

    invoke-direct {v0, v1}, Lorg/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_2
    new-instance v0, Lorg/java_websocket/exceptions/InvalidFrameException;

    const-string v1, "Control frame cant have rsv1==true set"

    invoke-direct {v0, v1}, Lorg/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_3
    new-instance v0, Lorg/java_websocket/exceptions/InvalidFrameException;

    const-string v1, "Control frame cant have fin==false set"

    invoke-direct {v0, v1}, Lorg/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
