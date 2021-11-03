.class public Lmediabrowser/model/net/EndPointInfo;
.super Ljava/lang/Object;
.source "EndPointInfo.java"


# instance fields
.field private IsInNetwork:Z

.field private IsLocal:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIsInNetwork()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lmediabrowser/model/net/EndPointInfo;->IsInNetwork:Z

    return v0
.end method

.method public final getIsLocal()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lmediabrowser/model/net/EndPointInfo;->IsLocal:Z

    return v0
.end method

.method public final setIsInNetwork(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lmediabrowser/model/net/EndPointInfo;->IsInNetwork:Z

    return-void
.end method

.method public final setIsLocal(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lmediabrowser/model/net/EndPointInfo;->IsLocal:Z

    return-void
.end method
