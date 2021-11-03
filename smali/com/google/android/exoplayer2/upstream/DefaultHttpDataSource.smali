.class public Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;
.super Lcom/google/android/exoplayer2/upstream/BaseDataSource;
.source "DefaultHttpDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/HttpDataSource;


# static fields
.field private static final CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;

.field public static final DEFAULT_CONNECT_TIMEOUT_MILLIS:I = 0x1f40

.field public static final DEFAULT_READ_TIMEOUT_MILLIS:I = 0x1f40

.field private static final HTTP_STATUS_PERMANENT_REDIRECT:I = 0x134

.field private static final HTTP_STATUS_TEMPORARY_REDIRECT:I = 0x133

.field private static final MAX_BYTES_TO_DRAIN:J = 0x800L

.field private static final MAX_REDIRECTS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "DefaultHttpDataSource"

.field private static final skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final allowCrossProtocolRedirects:Z

.field private bytesRead:J

.field private bytesSkipped:J

.field private bytesToRead:J

.field private bytesToSkip:J

.field private final connectTimeoutMillis:I

.field private connection:Ljava/net/HttpURLConnection;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private contentTypePredicate:Lcom/google/android/exoplayer2/util/Predicate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private inputStream:Ljava/io/InputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private opened:Z

.field private final readTimeoutMillis:I

.field private final requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

.field private responseCode:I

.field private final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    .line 74
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x1f40

    .line 99
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 110
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V
    .locals 1
    .param p5    # Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 136
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;-><init>(Z)V

    .line 137
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->userAgent:Ljava/lang/String;

    .line 138
    new-instance p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 139
    iput p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connectTimeoutMillis:I

    .line 140
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->readTimeoutMillis:I

    .line 141
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    .line 142
    iput-object p5, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/util/Predicate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/util/Predicate<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x1f40

    .line 155
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;II)V
    .locals 7
    .param p2    # Lcom/google/android/exoplayer2/util/Predicate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/util/Predicate<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 181
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/util/Predicate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/util/Predicate<",
            "Ljava/lang/String;",
            ">;IIZ",
            "Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 215
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;-><init>(Z)V

    .line 216
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->userAgent:Ljava/lang/String;

    .line 217
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->contentTypePredicate:Lcom/google/android/exoplayer2/util/Predicate;

    .line 218
    new-instance p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 219
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connectTimeoutMillis:I

    .line 220
    iput p4, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->readTimeoutMillis:I

    .line 221
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    .line 222
    iput-object p6, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    return-void
.end method

.method private closeConnectionQuietly()V
    .locals 3

    .line 759
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 761
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DefaultHttpDataSource"

    const-string v2, "Unexpected error while disconnecting"

    .line 763
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 765
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method

.method private static getContentLength(Ljava/net/HttpURLConnection;)J
    .locals 8

    const-string v0, "Content-Length"

    .line 598
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 599
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 601
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "DefaultHttpDataSource"

    .line 603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected Content-Length ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v1, -0x1

    :goto_0
    const-string v3, "Content-Range"

    .line 606
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 607
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 608
    sget-object v3, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 609
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    .line 612
    :try_start_1
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v3, 0x0

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v1, v6

    if-gez v3, :cond_1

    move-wide v1, v4

    goto :goto_1

    :cond_1
    cmp-long v3, v1, v4

    if-eqz v3, :cond_2

    const-string v3, "DefaultHttpDataSource"

    .line 622
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inconsistent headers ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v1, v3

    goto :goto_1

    :catch_1
    const-string v0, "DefaultHttpDataSource"

    .line 627
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected Content-Range ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-wide v1
.end method

.method private static handleRedirect(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 574
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 576
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    const-string p1, "https"

    .line 577
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "http"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 578
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported protocol redirect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object v0

    .line 571
    :cond_2
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Null location redirect"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static isCompressed(Ljava/net/HttpURLConnection;)Z
    .locals 1

    const-string v0, "Content-Encoding"

    .line 770
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "gzip"

    .line 771
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private makeConnection(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/net/HttpURLConnection;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 429
    new-instance v1, Ljava/net/URL;

    iget-object v2, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 430
    iget v2, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    .line 431
    iget-object v3, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpBody:[B

    .line 432
    iget-wide v14, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    .line 433
    iget-wide v12, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const/4 v10, 0x1

    .line 434
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/upstream/DataSpec;->isFlagSet(I)Z

    move-result v16

    move-object/from16 v11, p0

    .line 436
    iget-boolean v4, v11, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    if-nez v4, :cond_0

    const/4 v9, 0x1

    .line 439
    iget-object v10, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    move-object/from16 v0, p0

    move-wide v4, v14

    move-wide v6, v12

    move/from16 v8, v16

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->makeConnection(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v8, v4, 0x1

    const/16 v5, 0x14

    if-gt v4, v5, :cond_6

    const/16 v17, 0x0

    .line 453
    iget-object v9, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    move-object/from16 v4, p0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    move v0, v8

    move-object/from16 v18, v9

    move-wide v8, v14

    move-object/from16 v19, v3

    const/4 v3, 0x1

    move-wide v10, v12

    move-wide/from16 v20, v12

    move/from16 v12, v16

    move/from16 v13, v17

    move-wide/from16 v22, v14

    move-object/from16 v14, v18

    .line 454
    invoke-direct/range {v4 .. v14}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->makeConnection(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 463
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const-string v6, "Location"

    .line 464
    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x12f

    const/16 v8, 0x12e

    const/16 v9, 0x12d

    const/16 v10, 0x12c

    if-eq v2, v3, :cond_1

    const/4 v11, 0x3

    if-ne v2, v11, :cond_2

    :cond_1
    if-eq v5, v10, :cond_5

    if-eq v5, v9, :cond_5

    if-eq v5, v8, :cond_5

    if-eq v5, v7, :cond_5

    const/16 v11, 0x133

    if-eq v5, v11, :cond_5

    const/16 v11, 0x134

    if-ne v5, v11, :cond_2

    goto :goto_1

    :cond_2
    const/4 v11, 0x2

    if-ne v2, v11, :cond_4

    if-eq v5, v10, :cond_3

    if-eq v5, v9, :cond_3

    if-eq v5, v8, :cond_3

    if-ne v5, v7, :cond_4

    .line 480
    :cond_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v2, 0x0

    .line 483
    invoke-static {v1, v6}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->handleRedirect(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    move-object/from16 v19, v2

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    return-object v4

    .line 472
    :cond_5
    :goto_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 473
    invoke-static {v1, v6}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->handleRedirect(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    :goto_2
    const/4 v10, 0x1

    move-object/from16 v11, p0

    move v4, v0

    move-object/from16 v3, v19

    move-wide/from16 v12, v20

    move-wide/from16 v14, v22

    move-object/from16 v0, p1

    goto :goto_0

    :cond_6
    move v0, v8

    .line 490
    new-instance v1, Ljava/net/NoRouteToHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many redirects: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private makeConnection(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I[BJJZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 516
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connectTimeoutMillis:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 517
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->readTimeoutMillis:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 519
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 520
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    if-eqz v1, :cond_0

    .line 521
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 523
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 524
    invoke-interface {v0, p10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 526
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p10

    invoke-interface {p10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p10

    :goto_0
    invoke-interface {p10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 527
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long p10, p4, v0

    const-wide/16 v0, -0x1

    if-nez p10, :cond_2

    cmp-long p10, p6, v0

    if-eqz p10, :cond_4

    .line 531
    :cond_2
    new-instance p10, Ljava/lang/StringBuilder;

    invoke-direct {p10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {p10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p10, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {p10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p10

    cmp-long v0, p6, v0

    if-eqz v0, :cond_3

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long/2addr p4, p6

    const-wide/16 p6, 0x1

    sub-long/2addr p4, p6

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p10

    :cond_3
    const-string p4, "Range"

    .line 535
    invoke-virtual {p1, p4, p10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string p4, "User-Agent"

    .line 537
    iget-object p5, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->userAgent:Ljava/lang/String;

    invoke-virtual {p1, p4, p5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "Accept-Encoding"

    if-eqz p8, :cond_5

    const-string p5, "gzip"

    goto :goto_1

    :cond_5
    const-string p5, "identity"

    .line 538
    :goto_1
    invoke-virtual {p1, p4, p5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-virtual {p1, p9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz p3, :cond_6

    const/4 p4, 0x1

    goto :goto_2

    :cond_6
    const/4 p4, 0x0

    .line 540
    :goto_2
    invoke-virtual {p1, p4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 541
    invoke-static {p2}, Lcom/google/android/exoplayer2/upstream/DataSpec;->getStringForHttpMethod(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_7

    .line 544
    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 545
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 546
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 547
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 548
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_3

    .line 550
    :cond_7
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    :goto_3
    return-object p1
.end method

.method private static maybeTerminateInputStream(Ljava/net/HttpURLConnection;J)V
    .locals 2

    .line 722
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    return-void

    .line 727
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 730
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    return-void

    :cond_1
    const-wide/16 v0, 0x800

    cmp-long p1, p1, v0

    if-gtz p1, :cond_2

    return-void

    .line 738
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    .line 739
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 741
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 742
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "unexpectedEndOfInput"

    const/4 v0, 0x0

    .line 743
    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x1

    .line 744
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 745
    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method private readInternal([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 688
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 689
    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesRead:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    return v1

    :cond_1
    int-to-long v6, p3

    .line 693
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int p3, v4

    .line 696
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 698
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    cmp-long p1, p1, v2

    if-nez p1, :cond_3

    return v1

    .line 700
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 705
    :cond_4
    iget-wide p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesRead:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesRead:J

    .line 706
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesTransferred(I)V

    return p1
.end method

.method private skipInternal()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 643
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesSkipped:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesToSkip:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 648
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_1

    const/16 v0, 0x1000

    .line 650
    new-array v0, v0, [B

    .line 653
    :cond_1
    :goto_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesSkipped:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesToSkip:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 654
    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesToSkip:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesSkipped:J

    sub-long/2addr v1, v3

    array-length v3, v0

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 655
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 656
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 662
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesSkipped:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesSkipped:J

    .line 663
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesTransferred(I)V

    goto :goto_0

    .line 660
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 657
    :cond_3
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 667
    :cond_4
    sget-object v1, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final bytesRead()J
    .locals 2

    .line 410
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesRead:J

    return-wide v0
.end method

.method protected final bytesRemaining()J
    .locals 4

    .line 422
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesRead:J

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method protected final bytesSkipped()J
    .locals 2

    .line 400
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesSkipped:J

    return-wide v0
.end method

.method public clearAllRequestProperties()V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->clear()V

    return-void
.end method

.method public clearRequestProperty(Ljava/lang/String;)V
    .locals 1

    .line 261
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 366
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 367
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesRemaining()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->maybeTerminateInputStream(Ljava/net/HttpURLConnection;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    :try_start_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 371
    :try_start_2
    new-instance v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/4 v5, 0x3

    invoke-direct {v3, v2, v4, v5}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 375
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 376
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 377
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->opened:Z

    if-eqz v1, :cond_1

    .line 378
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->opened:Z

    .line 379
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->transferEnded()V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    .line 375
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 376
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 377
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->opened:Z

    if-eqz v1, :cond_2

    .line 378
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->opened:Z

    .line 379
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->transferEnded()V

    .line 381
    :cond_2
    throw v2
.end method

.method protected final getConnection()Ljava/net/HttpURLConnection;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->responseCode:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->responseCode:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    const-wide/16 v0, 0x0

    .line 276
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesRead:J

    .line 277
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesSkipped:J

    .line 278
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->transferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    const/4 v2, 0x1

    .line 280
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->makeConnection(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/net/HttpURLConnection;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 288
    :try_start_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->responseCode:I

    .line 289
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 297
    iget v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->responseCode:I

    const/16 v5, 0xc8

    if-lt v4, v5, :cond_8

    iget v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->responseCode:I

    const/16 v6, 0x12b

    if-le v4, v6, :cond_0

    goto/16 :goto_2

    .line 309
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 310
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->contentTypePredicate:Lcom/google/android/exoplayer2/util/Predicate;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->contentTypePredicate:Lcom/google/android/exoplayer2/util/Predicate;

    invoke-interface {v4, v3}, Lcom/google/android/exoplayer2/util/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 311
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 312
    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;

    invoke-direct {v0, v3, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    throw v0

    .line 318
    :cond_2
    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->responseCode:I

    if-ne v3, v5, :cond_3

    iget-wide v3, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v3, v3, v0

    if-eqz v3, :cond_3

    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    :cond_3
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesToSkip:J

    .line 321
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->isCompressed(Ljava/net/HttpURLConnection;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 323
    iget-wide v3, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    .line 324
    iget-wide v3, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    goto :goto_1

    .line 326
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->getContentLength(Ljava/net/HttpURLConnection;)J

    move-result-wide v3

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    .line 327
    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesToSkip:J

    sub-long v5, v3, v5

    :cond_5
    iput-wide v5, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    goto :goto_1

    .line 334
    :cond_6
    iget-wide v3, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    .line 338
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_7

    .line 340
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 347
    :cond_7
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->opened:Z

    .line 348
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 350
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    return-wide v0

    :catch_0
    move-exception v0

    .line 343
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 344
    new-instance v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    invoke-direct {v1, v0, p1, v2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)V

    throw v1

    .line 298
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 299
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 300
    new-instance v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->responseCode:I

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/lang/String;Ljava/util/Map;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 302
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->responseCode:I

    const/16 v0, 0x1a0

    if-ne p1, v0, :cond_9

    .line 303
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 305
    :cond_9
    throw v1

    :catch_1
    move-exception v0

    .line 291
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 292
    new-instance v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    const-string v3, "Unable to connect"

    invoke-direct {v1, v3, v0, p1, v2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)V

    throw v1

    :catch_2
    move-exception v0

    .line 282
    new-instance v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    const-string v3, "Unable to connect"

    invoke-direct {v1, v3, v0, p1, v2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)V

    throw v1
.end method

.method openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 558
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 356
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->skipInternal()V

    .line 357
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->readInternal([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 359
    new-instance p2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    iget-object p3, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p3, v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)V

    throw p2
.end method

.method public setContentTypePredicate(Lcom/google/android/exoplayer2/util/Predicate;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/util/Predicate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/Predicate<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->contentTypePredicate:Lcom/google/android/exoplayer2/util/Predicate;

    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 254
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
