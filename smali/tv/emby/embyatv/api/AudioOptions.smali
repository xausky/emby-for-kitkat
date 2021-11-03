.class public Ltv/emby/embyatv/api/AudioOptions;
.super Ljava/lang/Object;
.source "AudioOptions.java"


# instance fields
.field private AudioTranscodingBitrate:Ljava/lang/Integer;

.field private Context:Lmediabrowser/model/dlna/EncodingContext;

.field private DeviceId:Ljava/lang/String;

.field private EnableDirectPlay:Z

.field private EnableDirectStream:Z

.field private ForceDirectPlay:Z

.field private ForceDirectStream:Z

.field private ItemId:Ljava/lang/String;

.field private ItemType:Ljava/lang/String;

.field private LiveStreamId:Ljava/lang/String;

.field private MaxAudioChannels:Ljava/lang/Integer;

.field private MaxBitrate:Ljava/lang/Integer;

.field private MediaSourceId:Ljava/lang/String;

.field private MediaSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/MediaSourceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private Profile:Lmediabrowser/model/dlna/DeviceProfile;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Ltv/emby/embyatv/api/AudioOptions;->MaxAudioChannels:Ljava/lang/Integer;

    .line 148
    iput-object v0, p0, Ltv/emby/embyatv/api/AudioOptions;->MaxBitrate:Ljava/lang/Integer;

    .line 163
    invoke-static {}, Lmediabrowser/model/dlna/EncodingContext;->values()[Lmediabrowser/model/dlna/EncodingContext;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Ltv/emby/embyatv/api/AudioOptions;->Context:Lmediabrowser/model/dlna/EncodingContext;

    .line 178
    iput-object v0, p0, Ltv/emby/embyatv/api/AudioOptions;->AudioTranscodingBitrate:Ljava/lang/Integer;

    .line 16
    sget-object v0, Lmediabrowser/model/dlna/EncodingContext;->Streaming:Lmediabrowser/model/dlna/EncodingContext;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/api/AudioOptions;->setContext(Lmediabrowser/model/dlna/EncodingContext;)V

    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/api/AudioOptions;->setEnableDirectPlay(Z)V

    .line 19
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/api/AudioOptions;->setEnableDirectStream(Z)V

    return-void
.end method


# virtual methods
.method public final GetMaxBitrate(Z)Ljava/lang/Integer;
    .locals 2

    .line 195
    invoke-virtual {p0}, Ltv/emby/embyatv/api/AudioOptions;->getMaxBitrate()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Ltv/emby/embyatv/api/AudioOptions;->getMaxBitrate()Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 200
    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/api/AudioOptions;->getProfile()Lmediabrowser/model/dlna/DeviceProfile;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 202
    invoke-virtual {p0}, Ltv/emby/embyatv/api/AudioOptions;->getContext()Lmediabrowser/model/dlna/EncodingContext;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/dlna/EncodingContext;->Static:Lmediabrowser/model/dlna/EncodingContext;

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_1

    .line 204
    invoke-virtual {p0}, Ltv/emby/embyatv/api/AudioOptions;->getProfile()Lmediabrowser/model/dlna/DeviceProfile;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dlna/DeviceProfile;->getMaxStaticMusicBitrate()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 206
    invoke-virtual {p0}, Ltv/emby/embyatv/api/AudioOptions;->getProfile()Lmediabrowser/model/dlna/DeviceProfile;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dlna/DeviceProfile;->getMaxStaticMusicBitrate()Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 208
    :cond_1
    invoke-virtual {p0}, Ltv/emby/embyatv/api/AudioOptions;->getProfile()Lmediabrowser/model/dlna/DeviceProfile;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dlna/DeviceProfile;->getMaxStaticBitrate()Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 211
    :cond_2
    invoke-virtual {p0}, Ltv/emby/embyatv/api/AudioOptions;->getProfile()Lmediabrowser/model/dlna/DeviceProfile;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dlna/DeviceProfile;->getMaxStreamingBitrate()Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getAudioTranscodingBitrate()Ljava/lang/Integer;
    .locals 1

    .line 181
    iget-object v0, p0, Ltv/emby/embyatv/api/AudioOptions;->AudioTranscodingBitrate:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getContext()Lmediabrowser/model/dlna/EncodingContext;
    .locals 1

    .line 166
    iget-object v0, p0, Ltv/emby/embyatv/api/AudioOptions;->Context:Lmediabrowser/model/dlna/EncodingContext;

    return-object v0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Ltv/emby/embyatv/api/AudioOptions;->DeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnableDirectPlay()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Ltv/emby/embyatv/api/AudioOptions;->EnableDirectPlay:Z

    return v0
.end method

.method public final getEnableDirectStream()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Ltv/emby/embyatv/api/AudioOptions;->EnableDirectStream:Z

    return v0
.end method

.method public final getForceDirectPlay()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Ltv/emby/embyatv/api/AudioOptions;->ForceDirectPlay:Z

    return v0
.end method

.method public final getForceDirectStream()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Ltv/emby/embyatv/api/AudioOptions;->ForceDirectStream:Z

    return v0
.end method

.method public final getItemId()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Ltv/emby/embyatv/api/AudioOptions;->ItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getItemType()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Ltv/emby/embyatv/api/AudioOptions;->ItemType:Ljava/lang/String;

    return-object v0
.end method

.method public final getLiveStreamId()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Ltv/emby/embyatv/api/AudioOptions;->LiveStreamId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxAudioChannels()Ljava/lang/Integer;
    .locals 1

    .line 138
    iget-object v0, p0, Ltv/emby/embyatv/api/AudioOptions;->MaxAudioChannels:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMaxBitrate()Ljava/lang/Integer;
    .locals 1

    .line 151
    iget-object v0, p0, Ltv/emby/embyatv/api/AudioOptions;->MaxBitrate:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMediaSourceId()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Ltv/emby/embyatv/api/AudioOptions;->MediaSourceId:Ljava/lang/String;

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

    .line 79
    iget-object v0, p0, Ltv/emby/embyatv/api/AudioOptions;->MediaSources:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getProfile()Lmediabrowser/model/dlna/DeviceProfile;
    .locals 1

    .line 88
    iget-object v0, p0, Ltv/emby/embyatv/api/AudioOptions;->Profile:Lmediabrowser/model/dlna/DeviceProfile;

    return-object v0
.end method

.method public final setAudioTranscodingBitrate(Ljava/lang/Integer;)V
    .locals 0

    .line 185
    iput-object p1, p0, Ltv/emby/embyatv/api/AudioOptions;->AudioTranscodingBitrate:Ljava/lang/Integer;

    return-void
.end method

.method public final setContext(Lmediabrowser/model/dlna/EncodingContext;)V
    .locals 0

    .line 170
    iput-object p1, p0, Ltv/emby/embyatv/api/AudioOptions;->Context:Lmediabrowser/model/dlna/EncodingContext;

    return-void
.end method

.method public final setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Ltv/emby/embyatv/api/AudioOptions;->DeviceId:Ljava/lang/String;

    return-void
.end method

.method public final setEnableDirectPlay(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Ltv/emby/embyatv/api/AudioOptions;->EnableDirectPlay:Z

    return-void
.end method

.method public final setEnableDirectStream(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Ltv/emby/embyatv/api/AudioOptions;->EnableDirectStream:Z

    return-void
.end method

.method public final setForceDirectPlay(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Ltv/emby/embyatv/api/AudioOptions;->ForceDirectPlay:Z

    return-void
.end method

.method public final setForceDirectStream(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Ltv/emby/embyatv/api/AudioOptions;->ForceDirectStream:Z

    return-void
.end method

.method public final setItemId(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Ltv/emby/embyatv/api/AudioOptions;->ItemId:Ljava/lang/String;

    return-void
.end method

.method public final setItemType(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Ltv/emby/embyatv/api/AudioOptions;->ItemType:Ljava/lang/String;

    return-void
.end method

.method public final setLiveStreamId(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Ltv/emby/embyatv/api/AudioOptions;->LiveStreamId:Ljava/lang/String;

    return-void
.end method

.method public final setMaxAudioChannels(Ljava/lang/Integer;)V
    .locals 0

    .line 142
    iput-object p1, p0, Ltv/emby/embyatv/api/AudioOptions;->MaxAudioChannels:Ljava/lang/Integer;

    return-void
.end method

.method public final setMaxBitrate(Ljava/lang/Integer;)V
    .locals 0

    .line 155
    iput-object p1, p0, Ltv/emby/embyatv/api/AudioOptions;->MaxBitrate:Ljava/lang/Integer;

    return-void
.end method

.method public final setMediaSourceId(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Ltv/emby/embyatv/api/AudioOptions;->MediaSourceId:Ljava/lang/String;

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

    .line 83
    iput-object p1, p0, Ltv/emby/embyatv/api/AudioOptions;->MediaSources:Ljava/util/ArrayList;

    return-void
.end method

.method public final setProfile(Lmediabrowser/model/dlna/DeviceProfile;)V
    .locals 0

    .line 92
    iput-object p1, p0, Ltv/emby/embyatv/api/AudioOptions;->Profile:Lmediabrowser/model/dlna/DeviceProfile;

    return-void
.end method
