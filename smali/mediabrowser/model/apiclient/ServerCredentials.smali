.class public Lmediabrowser/model/apiclient/ServerCredentials;
.super Ljava/lang/Object;
.source "ServerCredentials.java"


# instance fields
.field private ConnectAccessToken:Ljava/lang/String;

.field private ConnectUserId:Ljava/lang/String;

.field private Servers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/apiclient/ServerCredentials;->setServers(Ljava/util/ArrayList;)V

    return-void
.end method

.method private FindIndex(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 121
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/apiclient/ServerInfo;

    .line 123
    invoke-virtual {v1}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public final AddOrUpdateServer(Lmediabrowser/model/apiclient/ServerInfo;)V
    .locals 5

    if-eqz p1, :cond_c

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-virtual {p0}, Lmediabrowser/model/apiclient/ServerCredentials;->getServers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmediabrowser/model/apiclient/ServerInfo;

    .line 52
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmediabrowser/model/apiclient/ServerCredentials;->FindIndex(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/apiclient/ServerInfo;

    .line 62
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getDateLastAccessed()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1}, Lmediabrowser/model/apiclient/ServerInfo;->getDateLastAccessed()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    if-lez v2, :cond_1

    .line 64
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getDateLastAccessed()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediabrowser/model/apiclient/ServerInfo;->setDateLastAccessed(Ljava/util/Date;)V

    .line 67
    :cond_1
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 69
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediabrowser/model/apiclient/ServerInfo;->setAccessToken(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediabrowser/model/apiclient/ServerInfo;->setUserId(Ljava/lang/String;)V

    .line 72
    :cond_2
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getExchangeToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 74
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getExchangeToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediabrowser/model/apiclient/ServerInfo;->setExchangeToken(Ljava/lang/String;)V

    .line 76
    :cond_3
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getRemoteAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 78
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getRemoteAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediabrowser/model/apiclient/ServerInfo;->setRemoteAddress(Ljava/lang/String;)V

    .line 80
    :cond_4
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getConnectServerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 82
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getConnectServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediabrowser/model/apiclient/ServerInfo;->setConnectServerId(Ljava/lang/String;)V

    .line 84
    :cond_5
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getLocalAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 86
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getLocalAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediabrowser/model/apiclient/ServerInfo;->setLocalAddress(Ljava/lang/String;)V

    .line 88
    :cond_6
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getManualAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 90
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getManualAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediabrowser/model/apiclient/ServerInfo;->setManualAddress(Ljava/lang/String;)V

    .line 92
    :cond_7
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 94
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediabrowser/model/apiclient/ServerInfo;->setName(Ljava/lang/String;)V

    .line 96
    :cond_8
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getWakeOnLanInfos()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getWakeOnLanInfos()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 98
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lmediabrowser/model/apiclient/ServerInfo;->setWakeOnLanInfos(Ljava/util/ArrayList;)V

    .line 99
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getWakeOnLanInfos()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmediabrowser/model/apiclient/WakeOnLanInfo;

    .line 101
    invoke-virtual {v1}, Lmediabrowser/model/apiclient/ServerInfo;->getWakeOnLanInfos()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 104
    :cond_9
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getLastConnectionMode()Lmediabrowser/model/apiclient/ConnectionMode;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 106
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerInfo;->getLastConnectionMode()Lmediabrowser/model/apiclient/ConnectionMode;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmediabrowser/model/apiclient/ServerInfo;->setLastConnectionMode(Lmediabrowser/model/apiclient/ConnectionMode;)V

    goto :goto_2

    .line 111
    :cond_a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_b
    :goto_2
    invoke-virtual {p0, v0}, Lmediabrowser/model/apiclient/ServerCredentials;->setServers(Ljava/util/ArrayList;)V

    return-void

    .line 45
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "server"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final GetServer(Ljava/lang/String;)Lmediabrowser/model/apiclient/ServerInfo;
    .locals 3

    .line 136
    invoke-virtual {p0}, Lmediabrowser/model/apiclient/ServerCredentials;->getServers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/apiclient/ServerInfo;

    .line 138
    invoke-virtual {v1}, Lmediabrowser/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getConnectAccessToken()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lmediabrowser/model/apiclient/ServerCredentials;->ConnectAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getConnectUserId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lmediabrowser/model/apiclient/ServerCredentials;->ConnectUserId:Ljava/lang/String;

    return-object v0
.end method

.method public final getServers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lmediabrowser/model/apiclient/ServerCredentials;->Servers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final setConnectAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lmediabrowser/model/apiclient/ServerCredentials;->ConnectAccessToken:Ljava/lang/String;

    return-void
.end method

.method public final setConnectUserId(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lmediabrowser/model/apiclient/ServerCredentials;->ConnectUserId:Ljava/lang/String;

    return-void
.end method

.method public final setServers(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lmediabrowser/model/apiclient/ServerCredentials;->Servers:Ljava/util/ArrayList;

    return-void
.end method
