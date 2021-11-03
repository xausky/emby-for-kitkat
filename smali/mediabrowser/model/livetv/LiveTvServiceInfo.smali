.class public Lmediabrowser/model/livetv/LiveTvServiceInfo;
.super Ljava/lang/Object;
.source "LiveTvServiceInfo.java"


# instance fields
.field private HasUpdateAvailable:Z

.field private HomePageUrl:Ljava/lang/String;

.field private IsVisible:Z

.field private Name:Ljava/lang/String;

.field private Status:Lmediabrowser/model/livetv/LiveTvServiceStatus;

.field private StatusMessage:Ljava/lang/String;

.field private Tuners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/livetv/LiveTvTunerInfoDto;",
            ">;"
        }
    .end annotation
.end field

.field private Version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lmediabrowser/model/livetv/LiveTvServiceStatus;->values()[Lmediabrowser/model/livetv/LiveTvServiceStatus;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/livetv/LiveTvServiceInfo;->Status:Lmediabrowser/model/livetv/LiveTvServiceStatus;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/livetv/LiveTvServiceInfo;->setTuners(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final getHasUpdateAvailable()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lmediabrowser/model/livetv/LiveTvServiceInfo;->HasUpdateAvailable:Z

    return v0
.end method

.method public final getHomePageUrl()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvServiceInfo;->HomePageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsVisible()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lmediabrowser/model/livetv/LiveTvServiceInfo;->IsVisible:Z

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvServiceInfo;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Lmediabrowser/model/livetv/LiveTvServiceStatus;
    .locals 1

    .line 46
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvServiceInfo;->Status:Lmediabrowser/model/livetv/LiveTvServiceStatus;

    return-object v0
.end method

.method public final getStatusMessage()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvServiceInfo;->StatusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getTuners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/livetv/LiveTvTunerInfoDto;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvServiceInfo;->Tuners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvServiceInfo;->Version:Ljava/lang/String;

    return-object v0
.end method

.method public final setHasUpdateAvailable(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lmediabrowser/model/livetv/LiveTvServiceInfo;->HasUpdateAvailable:Z

    return-void
.end method

.method public final setHomePageUrl(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvServiceInfo;->HomePageUrl:Ljava/lang/String;

    return-void
.end method

.method public final setIsVisible(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lmediabrowser/model/livetv/LiveTvServiceInfo;->IsVisible:Z

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvServiceInfo;->Name:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(Lmediabrowser/model/livetv/LiveTvServiceStatus;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvServiceInfo;->Status:Lmediabrowser/model/livetv/LiveTvServiceStatus;

    return-void
.end method

.method public final setStatusMessage(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvServiceInfo;->StatusMessage:Ljava/lang/String;

    return-void
.end method

.method public final setTuners(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/livetv/LiveTvTunerInfoDto;",
            ">;)V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvServiceInfo;->Tuners:Ljava/util/ArrayList;

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvServiceInfo;->Version:Ljava/lang/String;

    return-void
.end method
