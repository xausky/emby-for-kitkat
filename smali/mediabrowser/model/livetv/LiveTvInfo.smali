.class public Lmediabrowser/model/livetv/LiveTvInfo;
.super Ljava/lang/Object;
.source "LiveTvInfo.java"


# instance fields
.field private EnabledUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private IsEnabled:Z

.field private Services:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/livetv/LiveTvServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/livetv/LiveTvInfo;->setServices(Ljava/util/ArrayList;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/livetv/LiveTvInfo;->setEnabledUsers(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final getEnabledUsers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvInfo;->EnabledUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getIsEnabled()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lmediabrowser/model/livetv/LiveTvInfo;->IsEnabled:Z

    return v0
.end method

.method public final getServices()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/livetv/LiveTvServiceInfo;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvInfo;->Services:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final setEnabledUsers(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvInfo;->EnabledUsers:Ljava/util/ArrayList;

    return-void
.end method

.method public final setIsEnabled(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lmediabrowser/model/livetv/LiveTvInfo;->IsEnabled:Z

    return-void
.end method

.method public final setServices(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/livetv/LiveTvServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvInfo;->Services:Ljava/util/ArrayList;

    return-void
.end method
