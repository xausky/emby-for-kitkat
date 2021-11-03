.class public Lmediabrowser/model/livetv/ChannelInfoDto;
.super Ljava/lang/Object;
.source "ChannelInfoDto.java"

# interfaces
.implements Lmediabrowser/model/dto/IHasServerId;


# instance fields
.field private ChannelType:Lmediabrowser/model/livetv/ChannelType;

.field private CurrentProgram:Lmediabrowser/model/dto/BaseItemDto;

.field private ExternalId:Ljava/lang/String;

.field private Id:Ljava/lang/String;

.field private ImageTags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lmediabrowser/model/entities/ImageType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private MediaSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/MediaSourceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private MediaType:Ljava/lang/String;

.field private Name:Ljava/lang/String;

.field private Number:Ljava/lang/String;

.field private PlayAccess:Lmediabrowser/model/library/PlayAccess;

.field private PrimaryImageAspectRatio:Ljava/lang/Double;

.field private ServerId:Ljava/lang/String;

.field private ServiceName:Ljava/lang/String;

.field private Type:Ljava/lang/String;

.field private UserData:Lmediabrowser/model/dto/UserItemDataDto;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-virtual {p0}, Lmediabrowser/model/livetv/ChannelInfoDto;->getPlayAccess()Lmediabrowser/model/library/PlayAccess;

    invoke-static {}, Lmediabrowser/model/library/PlayAccess;->values()[Lmediabrowser/model/library/PlayAccess;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->PlayAccess:Lmediabrowser/model/library/PlayAccess;

    .line 154
    invoke-virtual {p0}, Lmediabrowser/model/livetv/ChannelInfoDto;->getChannelType()Lmediabrowser/model/livetv/ChannelType;

    invoke-static {}, Lmediabrowser/model/livetv/ChannelType;->values()[Lmediabrowser/model/livetv/ChannelType;

    move-result-object v0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->ChannelType:Lmediabrowser/model/livetv/ChannelType;

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->PrimaryImageAspectRatio:Ljava/lang/Double;

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/livetv/ChannelInfoDto;->setImageTags(Ljava/util/HashMap;)V

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/livetv/ChannelInfoDto;->setMediaSources(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final getChannelType()Lmediabrowser/model/livetv/ChannelType;
    .locals 1

    .line 157
    iget-object v0, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->ChannelType:Lmediabrowser/model/livetv/ChannelType;

    return-object v0
.end method

.method public final getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;
    .locals 1

    .line 217
    iget-object v0, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->CurrentProgram:Lmediabrowser/model/dto/BaseItemDto;

    return-object v0
.end method

.method public final getExternalId()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->ExternalId:Ljava/lang/String;

    return-object v0
.end method

.method public final getHasPrimaryImage()Z
    .locals 2

    .line 248
    invoke-virtual {p0}, Lmediabrowser/model/livetv/ChannelInfoDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/livetv/ChannelInfoDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/entities/ImageType;->Primary:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageTags()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lmediabrowser/model/entities/ImageType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->ImageTags:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getMediaSources()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/MediaSourceInfo;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->MediaSources:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMediaType()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->MediaType:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNumber()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->Number:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayAccess()Lmediabrowser/model/library/PlayAccess;
    .locals 1

    .line 127
    iget-object v0, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->PlayAccess:Lmediabrowser/model/library/PlayAccess;

    return-object v0
.end method

.method public final getPrimaryImageAspectRatio()Ljava/lang/Double;
    .locals 1

    .line 232
    iget-object v0, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->PrimaryImageAspectRatio:Ljava/lang/Double;

    return-object v0
.end method

.method public final getServerId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->ServerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceName()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->ServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->Type:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserData()Lmediabrowser/model/dto/UserItemDataDto;
    .locals 1

    .line 202
    iget-object v0, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->UserData:Lmediabrowser/model/dto/UserItemDataDto;

    return-object v0
.end method

.method public final setChannelType(Lmediabrowser/model/livetv/ChannelType;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->ChannelType:Lmediabrowser/model/livetv/ChannelType;

    return-void
.end method

.method public final setCurrentProgram(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->CurrentProgram:Lmediabrowser/model/dto/BaseItemDto;

    return-void
.end method

.method public final setExternalId(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->ExternalId:Ljava/lang/String;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->Id:Ljava/lang/String;

    return-void
.end method

.method public final setImageTags(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lmediabrowser/model/entities/ImageType;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->ImageTags:Ljava/util/HashMap;

    return-void
.end method

.method public final setMediaSources(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/MediaSourceInfo;",
            ">;)V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->MediaSources:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMediaType(Ljava/lang/String;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->MediaType:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->Name:Ljava/lang/String;

    return-void
.end method

.method public final setNumber(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->Number:Ljava/lang/String;

    return-void
.end method

.method public final setPlayAccess(Lmediabrowser/model/library/PlayAccess;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->PlayAccess:Lmediabrowser/model/library/PlayAccess;

    return-void
.end method

.method public final setPrimaryImageAspectRatio(Ljava/lang/Double;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->PrimaryImageAspectRatio:Ljava/lang/Double;

    return-void
.end method

.method public final setServerId(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->ServerId:Ljava/lang/String;

    return-void
.end method

.method public final setServiceName(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->ServiceName:Ljava/lang/String;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->Type:Ljava/lang/String;

    return-void
.end method

.method public final setUserData(Lmediabrowser/model/dto/UserItemDataDto;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lmediabrowser/model/livetv/ChannelInfoDto;->UserData:Lmediabrowser/model/dto/UserItemDataDto;

    return-void
.end method
