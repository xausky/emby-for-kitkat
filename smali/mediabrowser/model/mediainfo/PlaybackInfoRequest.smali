.class public Lmediabrowser/model/mediainfo/PlaybackInfoRequest;
.super Ljava/lang/Object;
.source "PlaybackInfoRequest.java"


# instance fields
.field private AllowAudioStreamCopy:Z

.field private AllowVideoStreamCopy:Z

.field private AudioStreamIndex:Ljava/lang/Integer;

.field private AutoOpenLiveStream:Z

.field private CurrentPlaySessionId:Ljava/lang/String;

.field private DeviceProfile:Lmediabrowser/model/dlna/DeviceProfile;

.field private EnableDirectPlay:Z

.field private EnableDirectStream:Z

.field private EnableTranscoding:Z

.field private ForceDirectPlayRemoteMediaSource:Z

.field private Id:Ljava/lang/String;

.field private LiveStreamId:Ljava/lang/String;

.field private MaxAudioChannels:Ljava/lang/Integer;

.field private MaxStreamingBitrate:Ljava/lang/Long;

.field private MediaSourceId:Ljava/lang/String;

.field private StartTimeTicks:Ljava/lang/Long;

.field private SubtitleStreamIndex:Ljava/lang/Integer;

.field private UserId:Ljava/lang/String;

.field private isPlayback:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 192
    invoke-virtual {p0, v0}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->setForceDirectPlayRemoteMediaSource(Z)V

    .line 193
    invoke-virtual {p0, v0}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->setEnableDirectPlay(Z)V

    .line 194
    invoke-virtual {p0, v0}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->setEnableDirectStream(Z)V

    .line 195
    invoke-virtual {p0, v0}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->setEnableTranscoding(Z)V

    .line 196
    invoke-virtual {p0, v0}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->setPlayback(Z)V

    return-void
.end method


# virtual methods
.method public final getAllowAudioStreamCopy()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->AllowAudioStreamCopy:Z

    return v0
.end method

.method public final getAllowVideoStreamCopy()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->AllowVideoStreamCopy:Z

    return v0
.end method

.method public final getAudioStreamIndex()Ljava/lang/Integer;
    .locals 1

    .line 50
    iget-object v0, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->AudioStreamIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getAutoOpenLiveStream()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->AutoOpenLiveStream:Z

    return v0
.end method

.method public final getCurrentPlaySessionId()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->CurrentPlaySessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceProfile()Lmediabrowser/model/dlna/DeviceProfile;
    .locals 1

    .line 110
    iget-object v0, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->DeviceProfile:Lmediabrowser/model/dlna/DeviceProfile;

    return-object v0
.end method

.method public final getEnableDirectPlay()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->EnableDirectPlay:Z

    return v0
.end method

.method public final getEnableDirectStream()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->EnableDirectStream:Z

    return v0
.end method

.method public final getEnableTranscoding()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->EnableTranscoding:Z

    return v0
.end method

.method public final getForceDirectPlayRemoteMediaSource()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->ForceDirectPlayRemoteMediaSource:Z

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLiveStreamId()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->LiveStreamId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxAudioChannels()Ljava/lang/Integer;
    .locals 1

    .line 70
    iget-object v0, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->MaxAudioChannels:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMaxStreamingBitrate()Ljava/lang/Long;
    .locals 1

    .line 30
    iget-object v0, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->MaxStreamingBitrate:Ljava/lang/Long;

    return-object v0
.end method

.method public final getMediaSourceId()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->MediaSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartTimeTicks()Ljava/lang/Long;
    .locals 1

    .line 40
    iget-object v0, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->StartTimeTicks:Ljava/lang/Long;

    return-object v0
.end method

.method public final getSubtitleStreamIndex()Ljava/lang/Integer;
    .locals 1

    .line 60
    iget-object v0, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->SubtitleStreamIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public final isPlayback()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->isPlayback:Z

    return v0
.end method

.method public final setAllowAudioStreamCopy(Z)V
    .locals 0

    .line 179
    iput-boolean p1, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->AllowAudioStreamCopy:Z

    return-void
.end method

.method public final setAllowVideoStreamCopy(Z)V
    .locals 0

    .line 169
    iput-boolean p1, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->AllowVideoStreamCopy:Z

    return-void
.end method

.method public final setAudioStreamIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->AudioStreamIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setAutoOpenLiveStream(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->AutoOpenLiveStream:Z

    return-void
.end method

.method public final setCurrentPlaySessionId(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->CurrentPlaySessionId:Ljava/lang/String;

    return-void
.end method

.method public final setDeviceProfile(Lmediabrowser/model/dlna/DeviceProfile;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->DeviceProfile:Lmediabrowser/model/dlna/DeviceProfile;

    return-void
.end method

.method public final setEnableDirectPlay(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->EnableDirectPlay:Z

    return-void
.end method

.method public final setEnableDirectStream(Z)V
    .locals 0

    .line 142
    iput-boolean p1, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->EnableDirectStream:Z

    return-void
.end method

.method public final setEnableTranscoding(Z)V
    .locals 0

    .line 151
    iput-boolean p1, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->EnableTranscoding:Z

    return-void
.end method

.method public final setForceDirectPlayRemoteMediaSource(Z)V
    .locals 0

    .line 160
    iput-boolean p1, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->ForceDirectPlayRemoteMediaSource:Z

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->Id:Ljava/lang/String;

    return-void
.end method

.method public final setLiveStreamId(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->LiveStreamId:Ljava/lang/String;

    return-void
.end method

.method public final setMaxAudioChannels(Ljava/lang/Integer;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->MaxAudioChannels:Ljava/lang/Integer;

    return-void
.end method

.method public final setMaxStreamingBitrate(Ljava/lang/Long;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->MaxStreamingBitrate:Ljava/lang/Long;

    return-void
.end method

.method public final setMediaSourceId(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->MediaSourceId:Ljava/lang/String;

    return-void
.end method

.method public final setPlayback(Z)V
    .locals 0

    .line 188
    iput-boolean p1, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->isPlayback:Z

    return-void
.end method

.method public final setStartTimeTicks(Ljava/lang/Long;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->StartTimeTicks:Ljava/lang/Long;

    return-void
.end method

.method public final setSubtitleStreamIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->SubtitleStreamIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->UserId:Ljava/lang/String;

    return-void
.end method
