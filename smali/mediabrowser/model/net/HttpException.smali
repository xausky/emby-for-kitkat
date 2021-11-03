.class public Lmediabrowser/model/net/HttpException;
.super Ljava/lang/RuntimeException;
.source "HttpException.java"


# instance fields
.field private IsTimedOut:Z

.field private StatusCode:Ljava/lang/Integer;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lmediabrowser/model/net/HttpException;->StatusCode:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lmediabrowser/model/net/HttpException;->StatusCode:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lmediabrowser/model/net/HttpException;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public final getIsTimedOut()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lmediabrowser/model/net/HttpException;->IsTimedOut:Z

    return v0
.end method

.method public final getStatusCode()Ljava/lang/Integer;
    .locals 1

    .line 18
    iget-object v0, p0, Lmediabrowser/model/net/HttpException;->StatusCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lmediabrowser/model/net/HttpException;->headers:Ljava/util/Map;

    return-void
.end method

.method public final setIsTimedOut(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lmediabrowser/model/net/HttpException;->IsTimedOut:Z

    return-void
.end method

.method public final setStatusCode(Ljava/lang/Integer;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lmediabrowser/model/net/HttpException;->StatusCode:Ljava/lang/Integer;

    return-void
.end method
