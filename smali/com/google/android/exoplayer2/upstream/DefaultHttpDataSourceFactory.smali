.class public final Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;
.super Lcom/google/android/exoplayer2/upstream/HttpDataSource$BaseFactory;
.source "DefaultHttpDataSourceFactory.java"


# instance fields
.field private final allowCrossProtocolRedirects:Z

.field private final connectTimeoutMillis:I

.field private final listener:Lcom/google/android/exoplayer2/upstream/TransferListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final readTimeoutMillis:I

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 73
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 6
    .param p2    # Lcom/google/android/exoplayer2/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 55
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZ)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 96
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$BaseFactory;-><init>()V

    .line 97
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;->userAgent:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 99
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;->connectTimeoutMillis:I

    .line 100
    iput p4, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;->readTimeoutMillis:I

    .line 101
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;->allowCrossProtocolRedirects:Z

    return-void
.end method


# virtual methods
.method protected createDataSourceInternal(Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;
    .locals 7

    .line 107
    new-instance v6, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;->userAgent:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;->connectTimeoutMillis:I

    iget v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;->readTimeoutMillis:I

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;->allowCrossProtocolRedirects:Z

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V

    .line 114
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-virtual {v6, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    :cond_0
    return-object v6
.end method

.method protected bridge synthetic createDataSourceInternal(Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lcom/google/android/exoplayer2/upstream/HttpDataSource;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;->createDataSourceInternal(Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;

    move-result-object p1

    return-object p1
.end method
