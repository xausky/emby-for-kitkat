.class public Lmediabrowser/model/livetv/LiveTvTunerInfoDto;
.super Ljava/lang/Object;
.source "LiveTvTunerInfoDto.java"


# instance fields
.field private CanReset:Z

.field private ChannelId:Ljava/lang/String;

.field private ChannelName:Ljava/lang/String;

.field private Clients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Id:Ljava/lang/String;

.field private Name:Ljava/lang/String;

.field private ProgramName:Ljava/lang/String;

.field private RecordingId:Ljava/lang/String;

.field private SourceType:Ljava/lang/String;

.field private Status:Lmediabrowser/model/livetv/LiveTvTunerStatus;

.field private Url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {}, Lmediabrowser/model/livetv/LiveTvTunerStatus;->values()[Lmediabrowser/model/livetv/LiveTvTunerStatus;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/livetv/LiveTvTunerInfoDto;->Status:Lmediabrowser/model/livetv/LiveTvTunerStatus;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/livetv/LiveTvTunerInfoDto;->setClients(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final getCanReset()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lmediabrowser/model/livetv/LiveTvTunerInfoDto;->CanReset:Z

    return v0
.end method

.method public final getChannelId()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvTunerInfoDto;->ChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getChannelName()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvTunerInfoDto;->ChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public final getClients()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvTunerInfoDto;->Clients:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvTunerInfoDto;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvTunerInfoDto;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getProgramName()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvTunerInfoDto;->ProgramName:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecordingId()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvTunerInfoDto;->RecordingId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSourceType()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvTunerInfoDto;->SourceType:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Lmediabrowser/model/livetv/LiveTvTunerStatus;
    .locals 1

    .line 73
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvTunerInfoDto;->Status:Lmediabrowser/model/livetv/LiveTvTunerStatus;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lmediabrowser/model/livetv/LiveTvTunerInfoDto;->Url:Ljava/lang/String;

    return-object v0
.end method

.method public final setCanReset(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lmediabrowser/model/livetv/LiveTvTunerInfoDto;->CanReset:Z

    return-void
.end method

.method public final setChannelId(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvTunerInfoDto;->ChannelId:Ljava/lang/String;

    return-void
.end method

.method public final setChannelName(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvTunerInfoDto;->ChannelName:Ljava/lang/String;

    return-void
.end method

.method public final setClients(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvTunerInfoDto;->Clients:Ljava/util/ArrayList;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvTunerInfoDto;->Id:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvTunerInfoDto;->Name:Ljava/lang/String;

    return-void
.end method

.method public final setProgramName(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvTunerInfoDto;->ProgramName:Ljava/lang/String;

    return-void
.end method

.method public final setRecordingId(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvTunerInfoDto;->RecordingId:Ljava/lang/String;

    return-void
.end method

.method public final setSourceType(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvTunerInfoDto;->SourceType:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(Lmediabrowser/model/livetv/LiveTvTunerStatus;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvTunerInfoDto;->Status:Lmediabrowser/model/livetv/LiveTvTunerStatus;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lmediabrowser/model/livetv/LiveTvTunerInfoDto;->Url:Ljava/lang/String;

    return-void
.end method
