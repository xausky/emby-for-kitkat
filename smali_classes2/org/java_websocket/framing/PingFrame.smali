.class public Lorg/java_websocket/framing/PingFrame;
.super Lorg/java_websocket/framing/ControlFrame;
.source "PingFrame.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->PING:Lorg/java_websocket/framing/Framedata$Opcode;

    invoke-direct {p0, v0}, Lorg/java_websocket/framing/ControlFrame;-><init>(Lorg/java_websocket/framing/Framedata$Opcode;)V

    return-void
.end method
