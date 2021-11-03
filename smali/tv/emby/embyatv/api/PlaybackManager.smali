.class public Ltv/emby/embyatv/api/PlaybackManager;
.super Ljava/lang/Object;
.source "PlaybackManager.java"


# instance fields
.field private device:Lmediabrowser/apiinteraction/device/IDevice;

.field private logger:Lmediabrowser/model/logging/ILogger;


# direct methods
.method public constructor <init>(Lmediabrowser/apiinteraction/device/IDevice;Lmediabrowser/model/logging/ILogger;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Ltv/emby/embyatv/api/PlaybackManager;->device:Lmediabrowser/apiinteraction/device/IDevice;

    .line 35
    iput-object p2, p0, Ltv/emby/embyatv/api/PlaybackManager;->logger:Lmediabrowser/model/logging/ILogger;

    return-void
.end method

.method private Normalize(Ltv/emby/embyatv/api/AudioOptions;)V
    .locals 1

    .line 44
    iget-object v0, p0, Ltv/emby/embyatv/api/PlaybackManager;->device:Lmediabrowser/apiinteraction/device/IDevice;

    invoke-interface {v0}, Lmediabrowser/apiinteraction/device/IDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/api/AudioOptions;->setDeviceId(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method SendResponse(Lmediabrowser/apiinteraction/Response;Ltv/emby/embyatv/api/StreamInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "Ltv/emby/embyatv/api/StreamInfo;",
            ">;",
            "Ltv/emby/embyatv/api/StreamInfo;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 50
    new-instance p2, Ltv/emby/embyatv/api/PlaybackException;

    invoke-direct {p2}, Ltv/emby/embyatv/api/PlaybackException;-><init>()V

    .line 51
    sget-object v0, Lmediabrowser/model/dlna/PlaybackErrorCode;->NoCompatibleStream:Lmediabrowser/model/dlna/PlaybackErrorCode;

    invoke-virtual {p2, v0}, Ltv/emby/embyatv/api/PlaybackException;->setErrorCode(Lmediabrowser/model/dlna/PlaybackErrorCode;)V

    .line 52
    invoke-virtual {p1, p2}, Lmediabrowser/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p1, p2}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public changeVideoStream(Ltv/emby/embyatv/api/StreamInfo;Ljava/lang/String;Ltv/emby/embyatv/api/VideoOptions;Ljava/lang/Long;Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/apiinteraction/Response;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/emby/embyatv/api/StreamInfo;",
            "Ljava/lang/String;",
            "Ltv/emby/embyatv/api/VideoOptions;",
            "Ljava/lang/Long;",
            "Lmediabrowser/apiinteraction/ApiClient;",
            "Lmediabrowser/apiinteraction/Response<",
            "Ltv/emby/embyatv/api/StreamInfo;",
            ">;)V"
        }
    .end annotation

    move-object v9, p0

    move-object/from16 v4, p3

    .line 109
    invoke-direct {p0, v4}, Ltv/emby/embyatv/api/PlaybackManager;->Normalize(Ltv/emby/embyatv/api/AudioOptions;)V

    .line 111
    invoke-virtual {p1}, Ltv/emby/embyatv/api/StreamInfo;->getPlaySessionId()Ljava/lang/String;

    move-result-object v10

    .line 113
    iget-object v0, v9, Ltv/emby/embyatv/api/PlaybackManager;->device:Lmediabrowser/apiinteraction/device/IDevice;

    invoke-interface {v0}, Lmediabrowser/apiinteraction/device/IDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ltv/emby/embyatv/api/StopTranscodingResponse;

    iget-object v5, v9, Ltv/emby/embyatv/api/PlaybackManager;->logger:Lmediabrowser/model/logging/ILogger;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Ltv/emby/embyatv/api/StopTranscodingResponse;-><init>(Ltv/emby/embyatv/api/PlaybackManager;Ljava/lang/String;Ltv/emby/embyatv/api/StreamInfo;Ltv/emby/embyatv/api/AudioOptions;Lmediabrowser/model/logging/ILogger;Ljava/lang/Long;Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/apiinteraction/Response;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v11, v10, v12}, Lmediabrowser/apiinteraction/ApiClient;->StopTranscodingProcesses(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method

.method public getAudioStreamInfo(Ljava/lang/String;Ltv/emby/embyatv/api/AudioOptions;Ljava/lang/Long;ZLmediabrowser/apiinteraction/ApiClient;Lmediabrowser/apiinteraction/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltv/emby/embyatv/api/AudioOptions;",
            "Ljava/lang/Long;",
            "Z",
            "Lmediabrowser/apiinteraction/ApiClient;",
            "Lmediabrowser/apiinteraction/Response<",
            "Ltv/emby/embyatv/api/StreamInfo;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p2}, Ltv/emby/embyatv/api/PlaybackManager;->Normalize(Ltv/emby/embyatv/api/AudioOptions;)V

    if-nez p4, :cond_0

    .line 65
    new-instance p1, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;

    invoke-direct {p1}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;-><init>()V

    .line 66
    invoke-virtual {p2}, Ltv/emby/embyatv/api/AudioOptions;->getItemId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->setId(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p5}, Lmediabrowser/apiinteraction/ApiClient;->getCurrentUserId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->setUserId(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Ltv/emby/embyatv/api/AudioOptions;->getMaxBitrate()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    int-to-long v0, p4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p1, p4}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->setMaxStreamingBitrate(Ljava/lang/Long;)V

    .line 69
    invoke-virtual {p2}, Ltv/emby/embyatv/api/AudioOptions;->getMediaSourceId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->setMediaSourceId(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1, p3}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->setStartTimeTicks(Ljava/lang/Long;)V

    .line 71
    invoke-virtual {p2}, Ltv/emby/embyatv/api/AudioOptions;->getProfile()Lmediabrowser/model/dlna/DeviceProfile;

    move-result-object p4

    invoke-virtual {p1, p4}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->setDeviceProfile(Lmediabrowser/model/dlna/DeviceProfile;)V

    .line 72
    invoke-virtual {p2}, Ltv/emby/embyatv/api/AudioOptions;->getMaxAudioChannels()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p4}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->setMaxAudioChannels(Ljava/lang/Integer;)V

    .line 74
    new-instance p4, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;

    const/4 v5, 0x0

    move-object v0, p4

    move-object v1, p0

    move-object v2, p5

    move-object v3, p2

    move-object v4, p6

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;-><init>(Ltv/emby/embyatv/api/PlaybackManager;Lmediabrowser/apiinteraction/ApiClient;Ltv/emby/embyatv/api/AudioOptions;Lmediabrowser/apiinteraction/Response;ZLjava/lang/Long;)V

    invoke-virtual {p5, p1, p4}, Lmediabrowser/apiinteraction/ApiClient;->GetPlaybackInfoWithPost(Lmediabrowser/model/mediainfo/PlaybackInfoRequest;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Offline not supported"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6, p1}, Lmediabrowser/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public getInPlaybackSelectableAudioStreams(Ltv/emby/embyatv/api/StreamInfo;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/emby/embyatv/api/StreamInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/entities/MediaStream;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-virtual {p1}, Ltv/emby/embyatv/api/StreamInfo;->GetSelectableAudioStreams()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getVideoStreamInfo(Ltv/emby/embyatv/api/VideoOptions;Ljava/lang/Long;ZLmediabrowser/apiinteraction/ApiClient;Lmediabrowser/apiinteraction/Response;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/emby/embyatv/api/VideoOptions;",
            "Ljava/lang/Long;",
            "Z",
            "Lmediabrowser/apiinteraction/ApiClient;",
            "Lmediabrowser/apiinteraction/Response<",
            "Ltv/emby/embyatv/api/StreamInfo;",
            ">;)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1}, Ltv/emby/embyatv/api/PlaybackManager;->Normalize(Ltv/emby/embyatv/api/AudioOptions;)V

    .line 85
    new-instance v0, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;

    invoke-direct {v0}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;-><init>()V

    .line 86
    invoke-virtual {p1}, Ltv/emby/embyatv/api/VideoOptions;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->setId(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p4}, Lmediabrowser/apiinteraction/ApiClient;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->setUserId(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Ltv/emby/embyatv/api/VideoOptions;->getMaxBitrate()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->setMaxStreamingBitrate(Ljava/lang/Long;)V

    .line 89
    invoke-virtual {p1}, Ltv/emby/embyatv/api/VideoOptions;->getMediaSourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->setMediaSourceId(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Ltv/emby/embyatv/api/VideoOptions;->getAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->setAudioStreamIndex(Ljava/lang/Integer;)V

    .line 91
    invoke-virtual {p1}, Ltv/emby/embyatv/api/VideoOptions;->getSubtitleStreamIndex()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->setSubtitleStreamIndex(Ljava/lang/Integer;)V

    .line 92
    invoke-virtual {v0, p2}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->setStartTimeTicks(Ljava/lang/Long;)V

    .line 93
    invoke-virtual {p1}, Ltv/emby/embyatv/api/VideoOptions;->getProfile()Lmediabrowser/model/dlna/DeviceProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->setDeviceProfile(Lmediabrowser/model/dlna/DeviceProfile;)V

    .line 94
    invoke-virtual {p1}, Ltv/emby/embyatv/api/VideoOptions;->getEnableDirectStream()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->setEnableDirectStream(Z)V

    .line 95
    invoke-virtual {p1}, Ltv/emby/embyatv/api/VideoOptions;->getEnableDirectPlay()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->setEnableDirectPlay(Z)V

    .line 96
    invoke-virtual {p1}, Ltv/emby/embyatv/api/VideoOptions;->getAllowVideoStreamCopy()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->setAllowVideoStreamCopy(Z)V

    const/4 v1, 0x1

    .line 97
    invoke-virtual {v0, v1}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->setAllowAudioStreamCopy(Z)V

    .line 98
    invoke-virtual {p1}, Ltv/emby/embyatv/api/VideoOptions;->getMaxAudioChannels()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->setMaxAudioChannels(Ljava/lang/Integer;)V

    .line 99
    invoke-virtual {v0, v1}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->setAutoOpenLiveStream(Z)V

    .line 100
    invoke-virtual {p1}, Ltv/emby/embyatv/api/VideoOptions;->getLiveStreamId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->setLiveStreamId(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, p3}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->setPlayback(Z)V

    .line 102
    invoke-virtual {p1}, Ltv/emby/embyatv/api/VideoOptions;->getCurrentPlaySessionId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lmediabrowser/model/mediainfo/PlaybackInfoRequest;->setCurrentPlaySessionId(Ljava/lang/String;)V

    .line 104
    new-instance p3, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;

    const/4 v6, 0x1

    move-object v1, p3

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;-><init>(Ltv/emby/embyatv/api/PlaybackManager;Lmediabrowser/apiinteraction/ApiClient;Ltv/emby/embyatv/api/AudioOptions;Lmediabrowser/apiinteraction/Response;ZLjava/lang/Long;)V

    invoke-virtual {p4, v0, p3}, Lmediabrowser/apiinteraction/ApiClient;->GetPlaybackInfoWithPost(Lmediabrowser/model/mediainfo/PlaybackInfoRequest;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public reportPlaybackProgress(Lmediabrowser/model/session/PlaybackProgressInfo;Ltv/emby/embyatv/api/StreamInfo;ZLmediabrowser/apiinteraction/ApiClient;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 2

    .line 129
    invoke-virtual {p2}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lmediabrowser/model/dto/MediaSourceInfo;->getLiveStreamId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmediabrowser/model/session/PlaybackProgressInfo;->setLiveStreamId(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Lmediabrowser/model/dto/MediaSourceInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmediabrowser/model/session/PlaybackProgressInfo;->setMediaSourceId(Ljava/lang/String;)V

    .line 136
    :cond_0
    invoke-virtual {p2}, Ltv/emby/embyatv/api/StreamInfo;->getPlaySessionId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmediabrowser/model/session/PlaybackProgressInfo;->setPlaySessionId(Ljava/lang/String;)V

    if-nez p3, :cond_1

    if-eqz p4, :cond_1

    .line 140
    invoke-virtual {p4, p1, p5}, Lmediabrowser/apiinteraction/ApiClient;->ReportPlaybackProgressAsync(Lmediabrowser/model/session/PlaybackProgressInfo;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void

    .line 144
    :cond_1
    invoke-virtual {p5}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    return-void
.end method

.method public reportPlaybackStart(Lmediabrowser/model/session/PlaybackStartInfo;ZLmediabrowser/apiinteraction/ApiClient;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 0

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    .line 120
    invoke-virtual {p3, p1, p4}, Lmediabrowser/apiinteraction/ApiClient;->ReportPlaybackStartAsync(Lmediabrowser/model/session/PlaybackStartInfo;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void

    .line 124
    :cond_0
    invoke-virtual {p4}, Lmediabrowser/apiinteraction/EmptyResponse;->onResponse()V

    return-void
.end method

.method public reportPlaybackStopped(Lmediabrowser/model/session/PlaybackStopInfo;Ltv/emby/embyatv/api/StreamInfo;Ljava/lang/String;Ljava/lang/String;ZLmediabrowser/apiinteraction/ApiClient;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 149
    invoke-virtual {p2}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 152
    invoke-virtual {p2}, Lmediabrowser/model/dto/MediaSourceInfo;->getLiveStreamId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lmediabrowser/model/session/PlaybackStopInfo;->setLiveStreamId(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Lmediabrowser/model/dto/MediaSourceInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmediabrowser/model/session/PlaybackStopInfo;->setMediaSourceId(Ljava/lang/String;)V

    .line 156
    :cond_1
    invoke-virtual {p1, p3}, Lmediabrowser/model/session/PlaybackStopInfo;->setPlaySessionId(Ljava/lang/String;)V

    if-eqz p6, :cond_2

    .line 158
    invoke-virtual {p6, p1, p7}, Lmediabrowser/apiinteraction/ApiClient;->ReportPlaybackStoppedAsync(Lmediabrowser/model/session/PlaybackStopInfo;Lmediabrowser/apiinteraction/EmptyResponse;)V

    :cond_2
    return-void
.end method
