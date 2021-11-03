.class public final synthetic Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory$-CC;
.super Ljava/lang/Object;
.source "HttpDataSource.java"


# direct methods
.method public static synthetic $default$createDataSource(Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 1
    .param p0, "-this"    # Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    .line 40
    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/HttpDataSource;

    move-result-object v0

    return-object v0
.end method
