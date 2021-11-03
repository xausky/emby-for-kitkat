.class public final Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Factory;
.super Ljava/lang/Object;
.source "ResolvingDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final resolver:Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;

.field private final upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Factory;->upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 73
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Factory;->resolver:Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;

    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;
    .locals 3

    .line 78
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Factory;->upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Factory;->resolver:Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/ResolvingDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/ResolvingDataSource$Resolver;)V

    return-object v0
.end method
