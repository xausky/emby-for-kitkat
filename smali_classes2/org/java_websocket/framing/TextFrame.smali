.class public Lorg/java_websocket/framing/TextFrame;
.super Lorg/java_websocket/framing/DataFrame;
.source "TextFrame.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->TEXT:Lorg/java_websocket/framing/Framedata$Opcode;

    invoke-direct {p0, v0}, Lorg/java_websocket/framing/DataFrame;-><init>(Lorg/java_websocket/framing/Framedata$Opcode;)V

    return-void
.end method


# virtual methods
.method public isValid()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 45
    invoke-super {p0}, Lorg/java_websocket/framing/DataFrame;->isValid()V

    .line 46
    invoke-virtual {p0}, Lorg/java_websocket/framing/TextFrame;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lorg/java_websocket/util/Charsetfunctions;->isValidUTF8(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 47
    :cond_0
    new-instance v0, Lorg/java_websocket/exceptions/InvalidDataException;

    const/16 v1, 0x3ef

    const-string v2, "Received text is no valid utf8 string!"

    invoke-direct {v0, v1, v2}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v0
.end method
