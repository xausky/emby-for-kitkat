.class public Lorg/java_websocket/framing/CloseFrame;
.super Lorg/java_websocket/framing/ControlFrame;
.source "CloseFrame.java"


# static fields
.field public static final ABNORMAL_CLOSE:I = 0x3ee

.field public static final BAD_GATEWAY:I = 0x3f6

.field public static final BUGGYCLOSE:I = -0x2

.field public static final EXTENSION:I = 0x3f2

.field public static final FLASHPOLICY:I = -0x3

.field public static final GOING_AWAY:I = 0x3e9

.field public static final NEVER_CONNECTED:I = -0x1

.field public static final NOCODE:I = 0x3ed

.field public static final NORMAL:I = 0x3e8

.field public static final NO_UTF8:I = 0x3ef

.field public static final POLICY_VALIDATION:I = 0x3f0

.field public static final PROTOCOL_ERROR:I = 0x3ea

.field public static final REFUSE:I = 0x3eb

.field public static final SERVICE_RESTART:I = 0x3f4

.field public static final TLS_ERROR:I = 0x3f7

.field public static final TOOBIG:I = 0x3f1

.field public static final TRY_AGAIN_LATER:I = 0x3f5

.field public static final UNEXPECTED_CONDITION:I = 0x3f3


# instance fields
.field private code:I

.field private reason:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 181
    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->CLOSING:Lorg/java_websocket/framing/Framedata$Opcode;

    invoke-direct {p0, v0}, Lorg/java_websocket/framing/ControlFrame;-><init>(Lorg/java_websocket/framing/Framedata$Opcode;)V

    const-string v0, ""

    .line 182
    invoke-virtual {p0, v0}, Lorg/java_websocket/framing/CloseFrame;->setReason(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    .line 183
    invoke-virtual {p0, v0}, Lorg/java_websocket/framing/CloseFrame;->setCode(I)V

    return-void
.end method

.method private updatePayload()V
    .locals 4

    .line 291
    iget-object v0, p0, Lorg/java_websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    invoke-static {v0}, Lorg/java_websocket/util/Charsetfunctions;->utf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x4

    .line 292
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 293
    iget v2, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v2, 0x2

    .line 294
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 295
    array-length v3, v0

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 296
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 297
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 298
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 299
    invoke-super {p0, v2}, Lorg/java_websocket/framing/ControlFrame;->setPayload(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public getCloseCode()I
    .locals 1

    .line 217
    iget v0, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lorg/java_websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getPayloadData()Ljava/nio/ByteBuffer;
    .locals 2

    .line 304
    iget v0, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    const/16 v1, 0x3ed

    if-ne v0, v1, :cond_0

    .line 305
    invoke-static {}, Lorg/java_websocket/util/ByteBufferUtils;->getEmptyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 306
    :cond_0
    invoke-super {p0}, Lorg/java_websocket/framing/ControlFrame;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isValid()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 236
    invoke-super {p0}, Lorg/java_websocket/framing/ControlFrame;->isValid()V

    .line 237
    iget v0, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    const/16 v1, 0x3ef

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/java_websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    new-instance v0, Lorg/java_websocket/exceptions/InvalidDataException;

    const-string v2, "Received text is no valid utf8 string!"

    invoke-direct {v0, v1, v2}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 240
    :cond_1
    :goto_0
    iget v0, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    const/16 v1, 0x3ea

    const/16 v2, 0x3ed

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lorg/java_websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_1

    .line 241
    :cond_2
    new-instance v0, Lorg/java_websocket/exceptions/InvalidDataException;

    const-string v2, "A close frame must have a closecode if it has a reason"

    invoke-direct {v0, v1, v2}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 244
    :cond_3
    :goto_1
    iget v0, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    const/16 v3, 0x3f7

    if-le v0, v3, :cond_5

    iget v0, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    const/16 v4, 0xbb8

    if-lt v0, v4, :cond_4

    goto :goto_2

    .line 245
    :cond_4
    new-instance v0, Lorg/java_websocket/exceptions/InvalidDataException;

    const-string v2, "Trying to send an illegal close code!"

    invoke-direct {v0, v1, v2}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 247
    :cond_5
    :goto_2
    iget v0, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    const/16 v1, 0x3ee

    if-eq v0, v1, :cond_6

    iget v0, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    if-eq v0, v3, :cond_6

    iget v0, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    if-eq v0, v2, :cond_6

    iget v0, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    const/16 v1, 0x1387

    if-gt v0, v1, :cond_6

    iget v0, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_6

    iget v0, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    const/16 v1, 0x3ec

    if-eq v0, v1, :cond_6

    return-void

    .line 248
    :cond_6
    new-instance v0, Lorg/java_websocket/exceptions/InvalidFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closecode must not be sent over the wire: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCode(I)V
    .locals 1

    .line 191
    iput p1, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    const/16 v0, 0x3f7

    if-ne p1, v0, :cond_0

    const/16 p1, 0x3ed

    .line 194
    iput p1, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    const-string p1, ""

    .line 195
    iput-object p1, p0, Lorg/java_websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    .line 197
    :cond_0
    invoke-direct {p0}, Lorg/java_websocket/framing/CloseFrame;->updatePayload()V

    return-void
.end method

.method public setPayload(Ljava/nio/ByteBuffer;)V
    .locals 4

    const/16 v0, 0x3ed

    .line 254
    iput v0, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    const-string v0, ""

    .line 255
    iput-object v0, p0, Lorg/java_websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    .line 256
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 257
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x3e8

    .line 258
    iput p1, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    goto :goto_1

    .line 259
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 p1, 0x3ea

    .line 260
    iput p1, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    goto :goto_1

    .line 262
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    const/4 v0, 0x4

    .line 263
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 264
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 265
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    .line 266
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 267
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    .line 269
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    const/16 v0, 0x3ef

    .line 271
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2
    :try_end_0
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1

    .line 273
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 274
    invoke-static {p1}, Lorg/java_websocket/util/Charsetfunctions;->stringUtf8(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/java_websocket/framing/CloseFrame;->reason:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    :try_start_2
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_2
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 276
    :catch_0
    :try_start_3
    new-instance v1, Lorg/java_websocket/exceptions/InvalidDataException;

    invoke-direct {v1, v0}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(I)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 278
    :goto_0
    :try_start_4
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v1
    :try_end_4
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_4 .. :try_end_4} :catch_1

    .line 281
    :catch_1
    iput v0, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    const/4 p1, 0x0

    .line 282
    iput-object p1, p0, Lorg/java_websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 208
    :cond_0
    iput-object p1, p0, Lorg/java_websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    .line 209
    invoke-direct {p0}, Lorg/java_websocket/framing/CloseFrame;->updatePayload()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/java_websocket/framing/ControlFrame;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
