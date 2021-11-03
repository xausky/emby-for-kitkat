.class public Lorg/java_websocket/framing/BinaryFrame;
.super Lorg/java_websocket/framing/DataFrame;
.source "BinaryFrame.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->BINARY:Lorg/java_websocket/framing/Framedata$Opcode;

    invoke-direct {p0, v0}, Lorg/java_websocket/framing/DataFrame;-><init>(Lorg/java_websocket/framing/Framedata$Opcode;)V

    return-void
.end method
