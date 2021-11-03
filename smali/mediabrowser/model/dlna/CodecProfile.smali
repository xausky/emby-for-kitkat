.class public Lmediabrowser/model/dlna/CodecProfile;
.super Ljava/lang/Object;
.source "CodecProfile.java"


# instance fields
.field private ApplyConditions:[Lmediabrowser/model/dlna/ProfileCondition;

.field private Codec:Ljava/lang/String;

.field private Conditions:[Lmediabrowser/model/dlna/ProfileCondition;

.field private Container:Ljava/lang/String;

.field private Type:Lmediabrowser/model/dlna/CodecType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {}, Lmediabrowser/model/dlna/CodecType;->values()[Lmediabrowser/model/dlna/CodecType;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/dlna/CodecProfile;->Type:Lmediabrowser/model/dlna/CodecType;

    .line 65
    new-array v0, v1, [Lmediabrowser/model/dlna/ProfileCondition;

    invoke-virtual {p0, v0}, Lmediabrowser/model/dlna/CodecProfile;->setConditions([Lmediabrowser/model/dlna/ProfileCondition;)V

    .line 66
    new-array v0, v1, [Lmediabrowser/model/dlna/ProfileCondition;

    invoke-virtual {p0, v0}, Lmediabrowser/model/dlna/CodecProfile;->setApplyConditions([Lmediabrowser/model/dlna/ProfileCondition;)V

    return-void
.end method

.method private ContainsContainer(Ljava/lang/String;)Z
    .locals 2

    .line 97
    invoke-virtual {p0}, Lmediabrowser/model/dlna/CodecProfile;->GetContainers()Ljava/util/ArrayList;

    move-result-object v0

    .line 99
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


# virtual methods
.method public final ContainsCodec(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 104
    invoke-direct {p0, p2}, Lmediabrowser/model/dlna/CodecProfile;->ContainsContainer(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 109
    :cond_0
    invoke-virtual {p0}, Lmediabrowser/model/dlna/CodecProfile;->GetCodecs()Ljava/util/ArrayList;

    move-result-object p2

    .line 111
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2, p1}, Lmediabrowser/model/extensions/ListHelper;->ContainsIgnoreCase(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final GetCodecs()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-virtual {p0}, Lmediabrowser/model/dlna/CodecProfile;->getCodec()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dlna/CodecProfile;->getCodec()Ljava/lang/String;

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

    .line 74
    invoke-static {v4}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 76
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0
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

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-virtual {p0}, Lmediabrowser/model/dlna/CodecProfile;->getContainer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dlna/CodecProfile;->getContainer()Ljava/lang/String;

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

    .line 87
    invoke-static {v4}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 89
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public final getApplyConditions()[Lmediabrowser/model/dlna/ProfileCondition;
    .locals 1

    .line 32
    iget-object v0, p0, Lmediabrowser/model/dlna/CodecProfile;->ApplyConditions:[Lmediabrowser/model/dlna/ProfileCondition;

    return-object v0
.end method

.method public final getCodec()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lmediabrowser/model/dlna/CodecProfile;->Codec:Ljava/lang/String;

    return-object v0
.end method

.method public final getConditions()[Lmediabrowser/model/dlna/ProfileCondition;
    .locals 1

    .line 22
    iget-object v0, p0, Lmediabrowser/model/dlna/CodecProfile;->Conditions:[Lmediabrowser/model/dlna/ProfileCondition;

    return-object v0
.end method

.method public final getContainer()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lmediabrowser/model/dlna/CodecProfile;->Container:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lmediabrowser/model/dlna/CodecType;
    .locals 1

    .line 12
    iget-object v0, p0, Lmediabrowser/model/dlna/CodecProfile;->Type:Lmediabrowser/model/dlna/CodecType;

    return-object v0
.end method

.method public final setApplyConditions([Lmediabrowser/model/dlna/ProfileCondition;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lmediabrowser/model/dlna/CodecProfile;->ApplyConditions:[Lmediabrowser/model/dlna/ProfileCondition;

    return-void
.end method

.method public final setCodec(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lmediabrowser/model/dlna/CodecProfile;->Codec:Ljava/lang/String;

    return-void
.end method

.method public final setConditions([Lmediabrowser/model/dlna/ProfileCondition;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lmediabrowser/model/dlna/CodecProfile;->Conditions:[Lmediabrowser/model/dlna/ProfileCondition;

    return-void
.end method

.method public final setContainer(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lmediabrowser/model/dlna/CodecProfile;->Container:Ljava/lang/String;

    return-void
.end method

.method public final setType(Lmediabrowser/model/dlna/CodecType;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lmediabrowser/model/dlna/CodecProfile;->Type:Lmediabrowser/model/dlna/CodecType;

    return-void
.end method
