.class public Lmediabrowser/model/dlna/ContainerProfile;
.super Ljava/lang/Object;
.source "ContainerProfile.java"


# instance fields
.field private Conditions:[Lmediabrowser/model/dlna/ProfileCondition;

.field private Container:Ljava/lang/String;

.field private Type:Lmediabrowser/model/dlna/DlnaProfileType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {}, Lmediabrowser/model/dlna/DlnaProfileType;->values()[Lmediabrowser/model/dlna/DlnaProfileType;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/dlna/ContainerProfile;->Type:Lmediabrowser/model/dlna/DlnaProfileType;

    .line 43
    new-array v0, v1, [Lmediabrowser/model/dlna/ProfileCondition;

    invoke-virtual {p0, v0}, Lmediabrowser/model/dlna/ContainerProfile;->setConditions([Lmediabrowser/model/dlna/ProfileCondition;)V

    return-void
.end method


# virtual methods
.method public final ContainsContainer(Ljava/lang/String;)Z
    .locals 2

    .line 61
    invoke-virtual {p0}, Lmediabrowser/model/dlna/ContainerProfile;->GetContainers()Ljava/util/ArrayList;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-static {v0, p1}, Lmediabrowser/model/extensions/ListHelper;->ContainsIgnoreCase(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method

.method public final GetContainers()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-virtual {p0}, Lmediabrowser/model/dlna/ContainerProfile;->getContainer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dlna/ContainerProfile;->getContainer()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const-string v2, "[,]"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 51
    invoke-static {v4}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 53
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public final getConditions()[Lmediabrowser/model/dlna/ProfileCondition;
    .locals 1

    .line 22
    iget-object v0, p0, Lmediabrowser/model/dlna/ContainerProfile;->Conditions:[Lmediabrowser/model/dlna/ProfileCondition;

    return-object v0
.end method

.method public final getContainer()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lmediabrowser/model/dlna/ContainerProfile;->Container:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lmediabrowser/model/dlna/DlnaProfileType;
    .locals 1

    .line 13
    iget-object v0, p0, Lmediabrowser/model/dlna/ContainerProfile;->Type:Lmediabrowser/model/dlna/DlnaProfileType;

    return-object v0
.end method

.method public final setConditions([Lmediabrowser/model/dlna/ProfileCondition;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lmediabrowser/model/dlna/ContainerProfile;->Conditions:[Lmediabrowser/model/dlna/ProfileCondition;

    return-void
.end method

.method public final setContainer(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lmediabrowser/model/dlna/ContainerProfile;->Container:Ljava/lang/String;

    return-void
.end method

.method public final setType(Lmediabrowser/model/dlna/DlnaProfileType;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lmediabrowser/model/dlna/ContainerProfile;->Type:Lmediabrowser/model/dlna/DlnaProfileType;

    return-void
.end method
