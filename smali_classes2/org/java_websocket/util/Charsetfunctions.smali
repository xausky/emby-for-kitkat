.class public Lorg/java_websocket/util/Charsetfunctions;
.super Ljava/lang/Object;
.source "Charsetfunctions.java"


# static fields
.field public static codingErrorAction:Ljava/nio/charset/CodingErrorAction;

.field private static final utf8d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    sput-object v0, Lorg/java_websocket/util/Charsetfunctions;->codingErrorAction:Ljava/nio/charset/CodingErrorAction;

    const/16 v0, 0x190

    .line 107
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/java_websocket/util/Charsetfunctions;->utf8d:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x8
        0x8
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0xa
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x4
        0x3
        0x3
        0xb
        0x6
        0x6
        0x6
        0x5
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0x0
        0x1
        0x2
        0x3
        0x5
        0x8
        0x7
        0x1
        0x1
        0x1
        0x4
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
        0x1
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x1
        0x3
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x1
        0x3
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asciiBytes(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    const-string v0, "ASCII"

    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 67
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static isValidUTF8(Ljava/nio/ByteBuffer;)Z
    .locals 1

    const/4 v0, 0x0

    .line 155
    invoke-static {p0, v0}, Lorg/java_websocket/util/Charsetfunctions;->isValidUTF8(Ljava/nio/ByteBuffer;I)Z

    move-result p0

    return p0
.end method

.method public static isValidUTF8(Ljava/nio/ByteBuffer;I)Z
    .locals 7

    .line 134
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge p1, v0, :cond_2

    .line 140
    sget-object v4, Lorg/java_websocket/util/Charsetfunctions;->utf8d:[I

    shl-int/lit8 v2, v2, 0x4

    add-int/lit16 v2, v2, 0x100

    sget-object v5, Lorg/java_websocket/util/Charsetfunctions;->utf8d:[I

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    add-int/2addr v2, v5

    aget v2, v4, v2

    if-ne v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public static stringAscii([B)Ljava/lang/String;
    .locals 2

    .line 72
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/java_websocket/util/Charsetfunctions;->stringAscii([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stringAscii([BII)Ljava/lang/String;
    .locals 2

    .line 77
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "ASCII"

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 79
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static stringUtf8(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    const-string v0, "UTF8"

    .line 88
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 89
    sget-object v1, Lorg/java_websocket/util/Charsetfunctions;->codingErrorAction:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 90
    sget-object v1, Lorg/java_websocket/util/Charsetfunctions;->codingErrorAction:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 94
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 95
    invoke-virtual {v0, p0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 98
    new-instance v0, Lorg/java_websocket/exceptions/InvalidDataException;

    const/16 v1, 0x3ef

    invoke-direct {v0, v1, p0}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public static stringUtf8([B)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 84
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lorg/java_websocket/util/Charsetfunctions;->stringUtf8(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static utf8Bytes(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    const-string v0, "UTF8"

    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
