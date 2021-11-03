.class public Lmediabrowser/model/apiclient/ServerInfo;
.super Ljava/lang/Object;
.source "ServerInfo.java"


# instance fields
.field private AccessToken:Ljava/lang/String;

.field private ConnectServerId:Ljava/lang/String;

.field private DateLastAccessed:Ljava/util/Date;

.field private ExchangeToken:Ljava/lang/String;

.field private Id:Ljava/lang/String;

.field private LastConnectionMode:Lmediabrowser/model/apiclient/ConnectionMode;

.field private LocalAddress:Ljava/lang/String;

.field private ManualAddress:Ljava/lang/String;

.field private Name:Ljava/lang/String;

.field private RemoteAddress:Ljava/lang/String;

.field private UserId:Ljava/lang/String;

.field private WakeOnLanInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/WakeOnLanInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lmediabrowser/model/apiclient/ServerInfo;->DateLastAccessed:Ljava/util/Date;

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lmediabrowser/model/apiclient/ServerInfo;->LastConnectionMode:Lmediabrowser/model/apiclient/ConnectionMode;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/apiclient/ServerInfo;->setWakeOnLanInfos(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final GetAddress(Lmediabrowser/model/apiclient/ConnectionMode;)Ljava/lang/String;
    .locals 1

    .line 158
    sget-object v0, Lmediabrowser/model/apiclient/ServerInfo$1;->$SwitchMap$mediabrowser$model$apiclient$ConnectionMode:[I

    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ConnectionMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 167
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected ConnectionMode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 165
    :pswitch_0
    invoke-virtual {p0}, Lmediabrowser/model/apiclient/ServerInfo;->getRemoteAddress()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 163
    :pswitch_1
    invoke-virtual {p0}, Lmediabrowser/model/apiclient/ServerInfo;->getManualAddress()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 161
    :pswitch_2
    invoke-virtual {p0}, Lmediabrowser/model/apiclient/ServerInfo;->getLocalAddress()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ImportInfo(Lmediabrowser/model/system/PublicSystemInfo;)V
    .locals 1

    if-eqz p1, :cond_4

    .line 128
    invoke-virtual {p1}, Lmediabrowser/model/system/PublicSystemInfo;->getServerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmediabrowser/model/apiclient/ServerInfo;->setName(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Lmediabrowser/model/system/PublicSystemInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmediabrowser/model/apiclient/ServerInfo;->setId(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Lmediabrowser/model/system/PublicSystemInfo;->getLocalAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p1}, Lmediabrowser/model/system/PublicSystemInfo;->getLocalAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmediabrowser/model/apiclient/ServerInfo;->setLocalAddress(Ljava/lang/String;)V

    .line 136
    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/system/PublicSystemInfo;->getWanAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    invoke-virtual {p1}, Lmediabrowser/model/system/PublicSystemInfo;->getWanAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmediabrowser/model/apiclient/ServerInfo;->setRemoteAddress(Ljava/lang/String;)V

    .line 141
    :cond_1
    instance-of v0, p1, Lmediabrowser/model/system/SystemInfo;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Lmediabrowser/model/system/SystemInfo;

    if-eqz p1, :cond_3

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/apiclient/ServerInfo;->setWakeOnLanInfos(Ljava/util/ArrayList;)V

    .line 147
    invoke-virtual {p1}, Lmediabrowser/model/system/SystemInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 149
    new-instance v0, Lmediabrowser/model/apiclient/WakeOnLanInfo;

    invoke-direct {v0}, Lmediabrowser/model/apiclient/WakeOnLanInfo;-><init>()V

    .line 150
    invoke-virtual {p1}, Lmediabrowser/model/system/SystemInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmediabrowser/model/apiclient/WakeOnLanInfo;->setMacAddress(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lmediabrowser/model/apiclient/ServerInfo;->getWakeOnLanInfos()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void

    .line 126
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final getAccessToken()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lmediabrowser/model/apiclient/ServerInfo;->AccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getConnectServerId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lmediabrowser/model/apiclient/ServerInfo;->ConnectServerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDateLastAccessed()Ljava/util/Date;
    .locals 1

    .line 93
    iget-object v0, p0, Lmediabrowser/model/apiclient/ServerInfo;->DateLastAccessed:Ljava/util/Date;

    return-object v0
.end method

.method public final getExchangeToken()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lmediabrowser/model/apiclient/ServerInfo;->ExchangeToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lmediabrowser/model/apiclient/ServerInfo;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastConnectionMode()Lmediabrowser/model/apiclient/ConnectionMode;
    .locals 1

    .line 111
    iget-object v0, p0, Lmediabrowser/model/apiclient/ServerInfo;->LastConnectionMode:Lmediabrowser/model/apiclient/ConnectionMode;

    return-object v0
.end method

.method public final getLocalAddress()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lmediabrowser/model/apiclient/ServerInfo;->LocalAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getManualAddress()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lmediabrowser/model/apiclient/ServerInfo;->ManualAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lmediabrowser/model/apiclient/ServerInfo;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getRemoteAddress()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lmediabrowser/model/apiclient/ServerInfo;->RemoteAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lmediabrowser/model/apiclient/ServerInfo;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public final getWakeOnLanInfos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/WakeOnLanInfo;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lmediabrowser/model/apiclient/ServerInfo;->WakeOnLanInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lmediabrowser/model/apiclient/ServerInfo;->AccessToken:Ljava/lang/String;

    return-void
.end method

.method public final setConnectServerId(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lmediabrowser/model/apiclient/ServerInfo;->ConnectServerId:Ljava/lang/String;

    return-void
.end method

.method public final setDateLastAccessed(Ljava/util/Date;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lmediabrowser/model/apiclient/ServerInfo;->DateLastAccessed:Ljava/util/Date;

    return-void
.end method

.method public final setExchangeToken(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lmediabrowser/model/apiclient/ServerInfo;->ExchangeToken:Ljava/lang/String;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lmediabrowser/model/apiclient/ServerInfo;->Id:Ljava/lang/String;

    return-void
.end method

.method public final setLastConnectionMode(Lmediabrowser/model/apiclient/ConnectionMode;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lmediabrowser/model/apiclient/ServerInfo;->LastConnectionMode:Lmediabrowser/model/apiclient/ConnectionMode;

    return-void
.end method

.method public final setLocalAddress(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lmediabrowser/model/apiclient/ServerInfo;->LocalAddress:Ljava/lang/String;

    return-void
.end method

.method public final setManualAddress(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lmediabrowser/model/apiclient/ServerInfo;->ManualAddress:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lmediabrowser/model/apiclient/ServerInfo;->Name:Ljava/lang/String;

    return-void
.end method

.method public final setRemoteAddress(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lmediabrowser/model/apiclient/ServerInfo;->RemoteAddress:Ljava/lang/String;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lmediabrowser/model/apiclient/ServerInfo;->UserId:Ljava/lang/String;

    return-void
.end method

.method public final setWakeOnLanInfos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/WakeOnLanInfo;",
            ">;)V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lmediabrowser/model/apiclient/ServerInfo;->WakeOnLanInfos:Ljava/util/ArrayList;

    return-void
.end method
