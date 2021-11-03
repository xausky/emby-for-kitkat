.class public Lmediabrowser/model/dlna/ResponseProfile;
.super Ljava/lang/Object;
.source "ResponseProfile.java"


# instance fields
.field private AudioCodec:Ljava/lang/String;

.field private Conditions:[Lmediabrowser/model/dlna/ProfileCondition;

.field private Container:Ljava/lang/String;

.field private MimeType:Ljava/lang/String;

.field private OrgPn:Ljava/lang/String;

.field private Type:Lmediabrowser/model/dlna/DlnaProfileType;

.field private VideoCodec:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lmediabrowser/model/dlna/DlnaProfileType;->values()[Lmediabrowser/model/dlna/DlnaProfileType;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/dlna/ResponseProfile;->Type:Lmediabrowser/model/dlna/DlnaProfileType;

    .line 89
    new-array v0, v1, [Lmediabrowser/model/dlna/ProfileCondition;

    invoke-virtual {p0, v0}, Lmediabrowser/model/dlna/ResponseProfile;->setConditions([Lmediabrowser/model/dlna/ProfileCondition;)V

    return-void
.end method


# virtual methods
.method public final GetAudioCodecs()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-virtual {p0}, Lmediabrowser/model/dlna/ResponseProfile;->getAudioCodec()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dlna/ResponseProfile;->getAudioCodec()Ljava/lang/String;

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

    .line 110
    invoke-static {v4}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 112
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

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    invoke-virtual {p0}, Lmediabrowser/model/dlna/ResponseProfile;->getContainer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dlna/ResponseProfile;->getContainer()Ljava/lang/String;

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

    .line 97
    invoke-static {v4}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 99
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public final GetVideoCodecs()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-virtual {p0}, Lmediabrowser/model/dlna/ResponseProfile;->getVideoCodec()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dlna/ResponseProfile;->getVideoCodec()Ljava/lang/String;

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

    .line 123
    invoke-static {v4}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 125
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public final getAudioCodec()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lmediabrowser/model/dlna/ResponseProfile;->AudioCodec:Ljava/lang/String;

    return-object v0
.end method

.method public final getConditions()[Lmediabrowser/model/dlna/ProfileCondition;
    .locals 1

    .line 80
    iget-object v0, p0, Lmediabrowser/model/dlna/ResponseProfile;->Conditions:[Lmediabrowser/model/dlna/ProfileCondition;

    return-object v0
.end method

.method public final getContainer()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lmediabrowser/model/dlna/ResponseProfile;->Container:Ljava/lang/String;

    return-object v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lmediabrowser/model/dlna/ResponseProfile;->MimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrgPn()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lmediabrowser/model/dlna/ResponseProfile;->OrgPn:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lmediabrowser/model/dlna/DlnaProfileType;
    .locals 1

    .line 46
    iget-object v0, p0, Lmediabrowser/model/dlna/ResponseProfile;->Type:Lmediabrowser/model/dlna/DlnaProfileType;

    return-object v0
.end method

.method public final getVideoCodec()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lmediabrowser/model/dlna/ResponseProfile;->VideoCodec:Ljava/lang/String;

    return-object v0
.end method

.method public final setAudioCodec(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lmediabrowser/model/dlna/ResponseProfile;->AudioCodec:Ljava/lang/String;

    return-void
.end method

.method public final setConditions([Lmediabrowser/model/dlna/ProfileCondition;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lmediabrowser/model/dlna/ResponseProfile;->Conditions:[Lmediabrowser/model/dlna/ProfileCondition;

    return-void
.end method

.method public final setContainer(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lmediabrowser/model/dlna/ResponseProfile;->Container:Ljava/lang/String;

    return-void
.end method

.method public final setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lmediabrowser/model/dlna/ResponseProfile;->MimeType:Ljava/lang/String;

    return-void
.end method

.method public final setOrgPn(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lmediabrowser/model/dlna/ResponseProfile;->OrgPn:Ljava/lang/String;

    return-void
.end method

.method public final setType(Lmediabrowser/model/dlna/DlnaProfileType;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lmediabrowser/model/dlna/ResponseProfile;->Type:Lmediabrowser/model/dlna/DlnaProfileType;

    return-void
.end method

.method public final setVideoCodec(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lmediabrowser/model/dlna/ResponseProfile;->VideoCodec:Ljava/lang/String;

    return-void
.end method
