.class public Lmediabrowser/apiinteraction/connectionmanager/FindServersInnerResponse;
.super Lmediabrowser/apiinteraction/Response;
.source "FindServersInnerResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Ljava/util/ArrayList<",
        "Lmediabrowser/model/apiclient/ServerDiscoveryInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

.field private response:Lmediabrowser/apiinteraction/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;Lmediabrowser/apiinteraction/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    .line 17
    iput-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/FindServersInnerResponse;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    .line 18
    iput-object p2, p0, Lmediabrowser/apiinteraction/connectionmanager/FindServersInnerResponse;->response:Lmediabrowser/apiinteraction/Response;

    return-void
.end method

.method private ConvertEndpointAddressToManualAddress(Lmediabrowser/model/apiclient/ServerDiscoveryInfo;)Ljava/lang/String;
    .locals 4

    .line 56
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerDiscoveryInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerDiscoveryInfo;->getEndpointAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerDiscoveryInfo;->getEndpointAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 61
    invoke-virtual {p1}, Lmediabrowser/model/apiclient/ServerDiscoveryInfo;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 62
    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 64
    array-length v2, p1

    sub-int/2addr v2, v3

    aget-object p1, p1, v2

    .line 67
    new-instance v2, Ltangible/RefObject;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v1}, Ltangible/RefObject;-><init>(Ljava/lang/Object;)V

    .line 68
    invoke-static {p1, v2}, Lmediabrowser/model/extensions/IntHelper;->TryParseCultureInvariant(Ljava/lang/String;Ltangible/RefObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    :cond_0
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/FindServersInnerResponse;->connectionManager:Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;

    invoke-virtual {p1, v0}, Lmediabrowser/apiinteraction/connectionmanager/ConnectionManager;->NormalizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    iget-object v0, p0, Lmediabrowser/apiinteraction/connectionmanager/FindServersInnerResponse;->response:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {v0, p1}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lmediabrowser/apiinteraction/connectionmanager/FindServersInnerResponse;->onResponse(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onResponse(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/apiclient/ServerDiscoveryInfo;",
            ">;)V"
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 26
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 28
    new-instance v2, Lmediabrowser/model/apiclient/ServerInfo;

    invoke-direct {v2}, Lmediabrowser/model/apiclient/ServerInfo;-><init>()V

    .line 29
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmediabrowser/model/apiclient/ServerDiscoveryInfo;

    .line 31
    invoke-virtual {v3}, Lmediabrowser/model/apiclient/ServerDiscoveryInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmediabrowser/model/apiclient/ServerInfo;->setId(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v3}, Lmediabrowser/model/apiclient/ServerDiscoveryInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmediabrowser/model/apiclient/ServerInfo;->setName(Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, v3}, Lmediabrowser/apiinteraction/connectionmanager/FindServersInnerResponse;->ConvertEndpointAddressToManualAddress(Lmediabrowser/model/apiclient/ServerDiscoveryInfo;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 36
    invoke-virtual {v3}, Lmediabrowser/model/apiclient/ServerDiscoveryInfo;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 38
    :cond_0
    invoke-virtual {v2, v4}, Lmediabrowser/model/apiclient/ServerInfo;->setLocalAddress(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    :cond_1
    iget-object p1, p0, Lmediabrowser/apiinteraction/connectionmanager/FindServersInnerResponse;->response:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {p1, v0}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
