.class public Lmediabrowser/model/dlna/DirectPlayProfile;
.super Ljava/lang/Object;
.source "DirectPlayProfile.java"


# instance fields
.field private AudioCodec:Ljava/lang/String;

.field private Container:Ljava/lang/String;

.field private Type:Lmediabrowser/model/dlna/DlnaProfileType;

.field private VideoCodec:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lmediabrowser/model/dlna/DlnaProfileType;->values()[Lmediabrowser/model/dlna/DlnaProfileType;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/dlna/DirectPlayProfile;->Type:Lmediabrowser/model/dlna/DlnaProfileType;

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

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-virtual {p0}, Lmediabrowser/model/dlna/DirectPlayProfile;->getAudioCodec()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dlna/DirectPlayProfile;->getAudioCodec()Ljava/lang/String;

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

    .line 71
    invoke-static {v4}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 73
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

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-virtual {p0}, Lmediabrowser/model/dlna/DirectPlayProfile;->getContainer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dlna/DirectPlayProfile;->getContainer()Ljava/lang/String;

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

    .line 58
    invoke-static {v4}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 60
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

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-virtual {p0}, Lmediabrowser/model/dlna/DirectPlayProfile;->getVideoCodec()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dlna/DirectPlayProfile;->getVideoCodec()Ljava/lang/String;

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

    .line 84
    invoke-static {v4}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 86
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
    iget-object v0, p0, Lmediabrowser/model/dlna/DirectPlayProfile;->AudioCodec:Ljava/lang/String;

    return-object v0
.end method

.method public final getContainer()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lmediabrowser/model/dlna/DirectPlayProfile;->Container:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lmediabrowser/model/dlna/DlnaProfileType;
    .locals 1

    .line 46
    iget-object v0, p0, Lmediabrowser/model/dlna/DirectPlayProfile;->Type:Lmediabrowser/model/dlna/DlnaProfileType;

    return-object v0
.end method

.method public final getVideoCodec()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lmediabrowser/model/dlna/DirectPlayProfile;->VideoCodec:Ljava/lang/String;

    return-object v0
.end method

.method public final setAudioCodec(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lmediabrowser/model/dlna/DirectPlayProfile;->AudioCodec:Ljava/lang/String;

    return-void
.end method

.method public final setContainer(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lmediabrowser/model/dlna/DirectPlayProfile;->Container:Ljava/lang/String;

    return-void
.end method

.method public final setType(Lmediabrowser/model/dlna/DlnaProfileType;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lmediabrowser/model/dlna/DirectPlayProfile;->Type:Lmediabrowser/model/dlna/DlnaProfileType;

    return-void
.end method

.method public final setVideoCodec(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lmediabrowser/model/dlna/DirectPlayProfile;->VideoCodec:Ljava/lang/String;

    return-void
.end method
