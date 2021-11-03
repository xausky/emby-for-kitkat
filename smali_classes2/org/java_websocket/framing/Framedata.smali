.class public interface abstract Lorg/java_websocket/framing/Framedata;
.super Ljava/lang/Object;
.source "Framedata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/java_websocket/framing/Framedata$Opcode;
    }
.end annotation


# virtual methods
.method public abstract append(Lorg/java_websocket/framing/Framedata;)V
.end method

.method public abstract getOpcode()Lorg/java_websocket/framing/Framedata$Opcode;
.end method

.method public abstract getPayloadData()Ljava/nio/ByteBuffer;
.end method

.method public abstract getTransfereMasked()Z
.end method

.method public abstract isFin()Z
.end method

.method public abstract isRSV1()Z
.end method

.method public abstract isRSV2()Z
.end method

.method public abstract isRSV3()Z
.end method
