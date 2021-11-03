.class public Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
.super Ljava/io/IOException;
.source "HttpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpDataSourceException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException$Type;
    }
.end annotation


# static fields
.field public static final TYPE_CLOSE:I = 0x3

.field public static final TYPE_OPEN:I = 0x1

.field public static final TYPE_READ:I = 0x2


# instance fields
.field public final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field public final type:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSpec;I)V
    .locals 0

    .line 251
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 253
    iput p2, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)V
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 264
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 265
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;I)V
    .locals 0

    .line 257
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 258
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 259
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)V
    .locals 0

    .line 270
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 272
    iput p4, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->type:I

    return-void
.end method
