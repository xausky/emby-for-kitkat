.class public Lmediabrowser/model/livetv/BaseTimerInfoDto;
.super Ljava/lang/Object;
.source "BaseTimerInfoDto.java"

# interfaces
.implements Lmediabrowser/model/dto/IHasServerId;


# instance fields
.field private ChannelId:Ljava/lang/String;

.field private ChannelName:Ljava/lang/String;

.field private EndDate:Ljava/util/Date;

.field private ExternalChannelId:Ljava/lang/String;

.field private ExternalId:Ljava/lang/String;

.field private ExternalProgramId:Ljava/lang/String;

.field private Id:Ljava/lang/String;

.field private IsPostPaddingRequired:Z

.field private IsPrePaddingRequired:Z

.field private KeepUntil:Lmediabrowser/model/livetv/KeepUntil;

.field private Name:Ljava/lang/String;

.field private Overview:Ljava/lang/String;

.field private ParentBackdropImageTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ParentBackdropItemId:Ljava/lang/String;

.field private PostPaddingSeconds:I

.field private PrePaddingSeconds:I

.field private Priority:I

.field private ProgramId:Ljava/lang/String;

.field private ServerId:Ljava/lang/String;

.field private ServiceName:Ljava/lang/String;

.field private StartDate:Ljava/util/Date;

.field private Type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->StartDate:Ljava/util/Date;

    .line 173
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->EndDate:Ljava/util/Date;

    .line 302
    invoke-virtual {p0}, Lmediabrowser/model/livetv/BaseTimerInfoDto;->getKeepUntil()Lmediabrowser/model/livetv/KeepUntil;

    invoke-static {}, Lmediabrowser/model/livetv/KeepUntil;->values()[Lmediabrowser/model/livetv/KeepUntil;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->KeepUntil:Lmediabrowser/model/livetv/KeepUntil;

    return-void
.end method


# virtual methods
.method public final getChannelId()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->ChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getChannelName()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->ChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public final getEndDate()Ljava/util/Date;
    .locals 1

    .line 176
    iget-object v0, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->EndDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getExternalChannelId()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->ExternalChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getExternalId()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->ExternalId:Ljava/lang/String;

    return-object v0
.end method

.method public final getExternalProgramId()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->ExternalProgramId:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsPostPaddingRequired()Z
    .locals 1

    .line 296
    iget-boolean v0, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->IsPostPaddingRequired:Z

    return v0
.end method

.method public final getIsPrePaddingRequired()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->IsPrePaddingRequired:Z

    return v0
.end method

.method public final getKeepUntil()Lmediabrowser/model/livetv/KeepUntil;
    .locals 1

    .line 305
    iget-object v0, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->KeepUntil:Lmediabrowser/model/livetv/KeepUntil;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOverview()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->Overview:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentBackdropImageTags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->ParentBackdropImageTags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getParentBackdropItemId()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->ParentBackdropItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPostPaddingSeconds()I
    .locals 1

    .line 236
    iget v0, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->PostPaddingSeconds:I

    return v0
.end method

.method public final getPrePaddingSeconds()I
    .locals 1

    .line 221
    iget v0, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->PrePaddingSeconds:I

    return v0
.end method

.method public final getPriority()I
    .locals 1

    .line 206
    iget v0, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->Priority:I

    return v0
.end method

.method public final getProgramId()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->ProgramId:Ljava/lang/String;

    return-object v0
.end method

.method public final getServerId()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->ServerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceName()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->ServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartDate()Ljava/util/Date;
    .locals 1

    .line 163
    iget-object v0, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->StartDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->Type:Ljava/lang/String;

    return-object v0
.end method

.method public final setChannelId(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->ChannelId:Ljava/lang/String;

    return-void
.end method

.method public final setChannelName(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->ChannelName:Ljava/lang/String;

    return-void
.end method

.method public final setEndDate(Ljava/util/Date;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->EndDate:Ljava/util/Date;

    return-void
.end method

.method public final setExternalChannelId(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->ExternalChannelId:Ljava/lang/String;

    return-void
.end method

.method public final setExternalId(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->ExternalId:Ljava/lang/String;

    return-void
.end method

.method public final setExternalProgramId(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->ExternalProgramId:Ljava/lang/String;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->Id:Ljava/lang/String;

    return-void
.end method

.method public final setIsPostPaddingRequired(Z)V
    .locals 0

    .line 300
    iput-boolean p1, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->IsPostPaddingRequired:Z

    return-void
.end method

.method public final setIsPrePaddingRequired(Z)V
    .locals 0

    .line 255
    iput-boolean p1, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->IsPrePaddingRequired:Z

    return-void
.end method

.method public final setKeepUntil(Lmediabrowser/model/livetv/KeepUntil;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->KeepUntil:Lmediabrowser/model/livetv/KeepUntil;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->Name:Ljava/lang/String;

    return-void
.end method

.method public final setOverview(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->Overview:Ljava/lang/String;

    return-void
.end method

.method public final setParentBackdropImageTags(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 285
    iput-object p1, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->ParentBackdropImageTags:Ljava/util/ArrayList;

    return-void
.end method

.method public final setParentBackdropItemId(Ljava/lang/String;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->ParentBackdropItemId:Ljava/lang/String;

    return-void
.end method

.method public final setPostPaddingSeconds(I)V
    .locals 0

    .line 240
    iput p1, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->PostPaddingSeconds:I

    return-void
.end method

.method public final setPrePaddingSeconds(I)V
    .locals 0

    .line 225
    iput p1, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->PrePaddingSeconds:I

    return-void
.end method

.method public final setPriority(I)V
    .locals 0

    .line 210
    iput p1, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->Priority:I

    return-void
.end method

.method public final setProgramId(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->ProgramId:Ljava/lang/String;

    return-void
.end method

.method public final setServerId(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->ServerId:Ljava/lang/String;

    return-void
.end method

.method public final setServiceName(Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->ServiceName:Ljava/lang/String;

    return-void
.end method

.method public final setStartDate(Ljava/util/Date;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->StartDate:Ljava/util/Date;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lmediabrowser/model/livetv/BaseTimerInfoDto;->Type:Ljava/lang/String;

    return-void
.end method
