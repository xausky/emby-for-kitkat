.class public Lmediabrowser/model/session/SessionInfoDto;
.super Ljava/lang/Object;
.source "SessionInfoDto.java"


# instance fields
.field private AdditionalUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/session/SessionUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private AppIconUrl:Ljava/lang/String;

.field private ApplicationVersion:Ljava/lang/String;

.field private Client:Ljava/lang/String;

.field private DeviceId:Ljava/lang/String;

.field private DeviceName:Ljava/lang/String;

.field private Id:Ljava/lang/String;

.field private LastActivityDate:Ljava/util/Date;

.field private NowPlayingItem:Lmediabrowser/model/entities/BaseItemInfo;

.field private NowViewingItem:Lmediabrowser/model/entities/BaseItemInfo;

.field private PlayState:Lmediabrowser/model/session/PlayerStateInfo;

.field private PlayableMediaTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private QueueableMediaTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private SupportedCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private SupportsRemoteControl:Z

.field private TranscodingInfo:Lmediabrowser/model/session/TranscodingInfo;

.field private UserId:Ljava/lang/String;

.field private UserName:Ljava/lang/String;

.field private UserPrimaryImageTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lmediabrowser/model/session/SessionInfoDto;->LastActivityDate:Ljava/util/Date;

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/session/SessionInfoDto;->setAdditionalUsers(Ljava/util/ArrayList;)V

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/session/SessionInfoDto;->setPlayableMediaTypes(Ljava/util/ArrayList;)V

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/session/SessionInfoDto;->setQueueableMediaTypes(Ljava/util/ArrayList;)V

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/session/SessionInfoDto;->setSupportedCommands(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final getAdditionalUsers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/session/SessionUserInfo;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lmediabrowser/model/session/SessionInfoDto;->AdditionalUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getAppIconUrl()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lmediabrowser/model/session/SessionInfoDto;->AppIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getApplicationVersion()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lmediabrowser/model/session/SessionInfoDto;->ApplicationVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getClient()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lmediabrowser/model/session/SessionInfoDto;->Client:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lmediabrowser/model/session/SessionInfoDto;->DeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceName()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lmediabrowser/model/session/SessionInfoDto;->DeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lmediabrowser/model/session/SessionInfoDto;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastActivityDate()Ljava/util/Date;
    .locals 1

    .line 167
    iget-object v0, p0, Lmediabrowser/model/session/SessionInfoDto;->LastActivityDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getNowPlayingItem()Lmediabrowser/model/entities/BaseItemInfo;
    .locals 1

    .line 212
    iget-object v0, p0, Lmediabrowser/model/session/SessionInfoDto;->NowPlayingItem:Lmediabrowser/model/entities/BaseItemInfo;

    return-object v0
.end method

.method public final getNowViewingItem()Lmediabrowser/model/entities/BaseItemInfo;
    .locals 1

    .line 182
    iget-object v0, p0, Lmediabrowser/model/session/SessionInfoDto;->NowViewingItem:Lmediabrowser/model/entities/BaseItemInfo;

    return-object v0
.end method

.method public final getPlayState()Lmediabrowser/model/session/PlayerStateInfo;
    .locals 1

    .line 267
    iget-object v0, p0, Lmediabrowser/model/session/SessionInfoDto;->PlayState:Lmediabrowser/model/session/PlayerStateInfo;

    return-object v0
.end method

.method public final getPlayableMediaTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lmediabrowser/model/session/SessionInfoDto;->PlayableMediaTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getQueueableMediaTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lmediabrowser/model/session/SessionInfoDto;->QueueableMediaTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getSupportedCommands()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lmediabrowser/model/session/SessionInfoDto;->SupportedCommands:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getSupportsRemoteControl()Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Lmediabrowser/model/session/SessionInfoDto;->SupportsRemoteControl:Z

    return v0
.end method

.method public final getTranscodingInfo()Lmediabrowser/model/session/TranscodingInfo;
    .locals 1

    .line 277
    iget-object v0, p0, Lmediabrowser/model/session/SessionInfoDto;->TranscodingInfo:Lmediabrowser/model/session/TranscodingInfo;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lmediabrowser/model/session/SessionInfoDto;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserName()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lmediabrowser/model/session/SessionInfoDto;->UserName:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserPrimaryImageTag()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lmediabrowser/model/session/SessionInfoDto;->UserPrimaryImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final setAdditionalUsers(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/session/SessionUserInfo;",
            ">;)V"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lmediabrowser/model/session/SessionInfoDto;->AdditionalUsers:Ljava/util/ArrayList;

    return-void
.end method

.method public final setAppIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lmediabrowser/model/session/SessionInfoDto;->AppIconUrl:Ljava/lang/String;

    return-void
.end method

.method public final setApplicationVersion(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lmediabrowser/model/session/SessionInfoDto;->ApplicationVersion:Ljava/lang/String;

    return-void
.end method

.method public final setClient(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lmediabrowser/model/session/SessionInfoDto;->Client:Ljava/lang/String;

    return-void
.end method

.method public final setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lmediabrowser/model/session/SessionInfoDto;->DeviceId:Ljava/lang/String;

    return-void
.end method

.method public final setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lmediabrowser/model/session/SessionInfoDto;->DeviceName:Ljava/lang/String;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lmediabrowser/model/session/SessionInfoDto;->Id:Ljava/lang/String;

    return-void
.end method

.method public final setLastActivityDate(Ljava/util/Date;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lmediabrowser/model/session/SessionInfoDto;->LastActivityDate:Ljava/util/Date;

    return-void
.end method

.method public final setNowPlayingItem(Lmediabrowser/model/entities/BaseItemInfo;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lmediabrowser/model/session/SessionInfoDto;->NowPlayingItem:Lmediabrowser/model/entities/BaseItemInfo;

    return-void
.end method

.method public final setNowViewingItem(Lmediabrowser/model/entities/BaseItemInfo;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lmediabrowser/model/session/SessionInfoDto;->NowViewingItem:Lmediabrowser/model/entities/BaseItemInfo;

    return-void
.end method

.method public final setPlayState(Lmediabrowser/model/session/PlayerStateInfo;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lmediabrowser/model/session/SessionInfoDto;->PlayState:Lmediabrowser/model/session/PlayerStateInfo;

    return-void
.end method

.method public final setPlayableMediaTypes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lmediabrowser/model/session/SessionInfoDto;->PlayableMediaTypes:Ljava/util/ArrayList;

    return-void
.end method

.method public final setQueueableMediaTypes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lmediabrowser/model/session/SessionInfoDto;->QueueableMediaTypes:Ljava/util/ArrayList;

    return-void
.end method

.method public final setSupportedCommands(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lmediabrowser/model/session/SessionInfoDto;->SupportedCommands:Ljava/util/ArrayList;

    return-void
.end method

.method public final setSupportsRemoteControl(Z)V
    .locals 0

    .line 261
    iput-boolean p1, p0, Lmediabrowser/model/session/SessionInfoDto;->SupportsRemoteControl:Z

    return-void
.end method

.method public final setTranscodingInfo(Lmediabrowser/model/session/TranscodingInfo;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lmediabrowser/model/session/SessionInfoDto;->TranscodingInfo:Lmediabrowser/model/session/TranscodingInfo;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lmediabrowser/model/session/SessionInfoDto;->UserId:Ljava/lang/String;

    return-void
.end method

.method public final setUserName(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lmediabrowser/model/session/SessionInfoDto;->UserName:Ljava/lang/String;

    return-void
.end method

.method public final setUserPrimaryImageTag(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lmediabrowser/model/session/SessionInfoDto;->UserPrimaryImageTag:Ljava/lang/String;

    return-void
.end method
