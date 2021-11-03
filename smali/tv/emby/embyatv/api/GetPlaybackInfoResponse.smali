.class public Ltv/emby/embyatv/api/GetPlaybackInfoResponse;
.super Lmediabrowser/apiinteraction/Response;
.source "GetPlaybackInfoResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/mediainfo/PlaybackInfoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private apiClient:Lmediabrowser/apiinteraction/ApiClient;

.field private isVideo:Z

.field private options:Ltv/emby/embyatv/api/AudioOptions;

.field private playbackManager:Ltv/emby/embyatv/api/PlaybackManager;

.field private response:Lmediabrowser/apiinteraction/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmediabrowser/apiinteraction/Response<",
            "Ltv/emby/embyatv/api/StreamInfo;",
            ">;"
        }
    .end annotation
.end field

.field private startPositionTicks:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ltv/emby/embyatv/api/PlaybackManager;Lmediabrowser/apiinteraction/ApiClient;Ltv/emby/embyatv/api/AudioOptions;Lmediabrowser/apiinteraction/Response;ZLjava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/emby/embyatv/api/PlaybackManager;",
            "Lmediabrowser/apiinteraction/ApiClient;",
            "Ltv/emby/embyatv/api/AudioOptions;",
            "Lmediabrowser/apiinteraction/Response<",
            "Ltv/emby/embyatv/api/StreamInfo;",
            ">;Z",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p4}, Lmediabrowser/apiinteraction/Response;-><init>(Lmediabrowser/apiinteraction/IResponse;)V

    .line 36
    iput-object p1, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->playbackManager:Ltv/emby/embyatv/api/PlaybackManager;

    .line 37
    iput-object p2, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    .line 38
    iput-object p3, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->options:Ltv/emby/embyatv/api/AudioOptions;

    .line 39
    iput-object p4, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->response:Lmediabrowser/apiinteraction/Response;

    .line 40
    iput-boolean p5, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->isVideo:Z

    .line 41
    iput-object p6, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->startPositionTicks:Ljava/lang/Long;

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/api/GetPlaybackInfoResponse;Lmediabrowser/model/mediainfo/PlaybackInfoResponse;Lmediabrowser/model/dto/MediaSourceInfo;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->onResponseInternal(Lmediabrowser/model/mediainfo/PlaybackInfoResponse;Lmediabrowser/model/dto/MediaSourceInfo;)V

    return-void
.end method

.method private getOptimalMediaSource(Ljava/util/ArrayList;)Lmediabrowser/model/dto/MediaSourceInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/MediaSourceInfo;",
            ">;)",
            "Lmediabrowser/model/dto/MediaSourceInfo;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->options:Ltv/emby/embyatv/api/AudioOptions;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/AudioOptions;->getEnableDirectPlay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/dto/MediaSourceInfo;

    .line 172
    invoke-direct {p0, v1}, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->supportsDirectPlay(Lmediabrowser/model/dto/MediaSourceInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 178
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->options:Ltv/emby/embyatv/api/AudioOptions;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/AudioOptions;->getEnableDirectStream()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/dto/MediaSourceInfo;

    .line 180
    invoke-virtual {v1}, Lmediabrowser/model/dto/MediaSourceInfo;->getSupportsDirectStream()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 186
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/dto/MediaSourceInfo;

    .line 187
    invoke-virtual {v1}, Lmediabrowser/model/dto/MediaSourceInfo;->getSupportsTranscoding()Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    .line 192
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    const/4 v0, 0x0

    .line 196
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/dto/MediaSourceInfo;

    return-object p1
.end method

.method private isHostReachable(Lmediabrowser/model/dto/MediaSourceInfo;)Z
    .locals 4

    .line 201
    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getIsRemote()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 203
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->isInNetwork()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 204
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->isLocalConnection()Z

    move-result v0

    if-nez v0, :cond_2

    .line 205
    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "localhost"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "127.0.0.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    return v2

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method private onResponseInternal(Lmediabrowser/model/mediainfo/PlaybackInfoResponse;Lmediabrowser/model/dto/MediaSourceInfo;)V
    .locals 4

    .line 92
    invoke-virtual {p1}, Lmediabrowser/model/mediainfo/PlaybackInfoResponse;->getErrorCode()Lmediabrowser/model/dlna/PlaybackErrorCode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    new-instance p2, Ltv/emby/embyatv/api/PlaybackException;

    invoke-direct {p2}, Ltv/emby/embyatv/api/PlaybackException;-><init>()V

    .line 95
    invoke-virtual {p1}, Lmediabrowser/model/mediainfo/PlaybackInfoResponse;->getErrorCode()Lmediabrowser/model/dlna/PlaybackErrorCode;

    move-result-object p1

    invoke-virtual {p2, p1}, Ltv/emby/embyatv/api/PlaybackException;->setErrorCode(Lmediabrowser/model/dlna/PlaybackErrorCode;)V

    .line 96
    iget-object p1, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->response:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {p1, p2}, Lmediabrowser/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    return-void

    .line 102
    :cond_0
    new-instance v0, Ltv/emby/embyatv/api/StreamInfo;

    invoke-direct {v0}, Ltv/emby/embyatv/api/StreamInfo;-><init>()V

    .line 103
    iget-object v1, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->options:Ltv/emby/embyatv/api/AudioOptions;

    invoke-virtual {v1}, Ltv/emby/embyatv/api/AudioOptions;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/api/StreamInfo;->setItemId(Ljava/lang/String;)V

    .line 104
    sget-object v1, Lmediabrowser/model/dlna/DlnaProfileType;->Audio:Lmediabrowser/model/dlna/DlnaProfileType;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/api/StreamInfo;->setMediaType(Lmediabrowser/model/dlna/DlnaProfileType;)V

    .line 106
    invoke-virtual {v0, p2}, Ltv/emby/embyatv/api/StreamInfo;->setMediaSource(Lmediabrowser/model/dto/MediaSourceInfo;)V

    .line 107
    invoke-virtual {p2}, Lmediabrowser/model/dto/MediaSourceInfo;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/api/StreamInfo;->setRunTimeTicks(Ljava/lang/Long;)V

    .line 109
    iget-object v1, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->options:Ltv/emby/embyatv/api/AudioOptions;

    invoke-virtual {v1}, Ltv/emby/embyatv/api/AudioOptions;->getContext()Lmediabrowser/model/dlna/EncodingContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/api/StreamInfo;->setContext(Lmediabrowser/model/dlna/EncodingContext;)V

    .line 110
    iget-object v1, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->options:Ltv/emby/embyatv/api/AudioOptions;

    invoke-virtual {v1}, Ltv/emby/embyatv/api/AudioOptions;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/api/StreamInfo;->setItemId(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {v1}, Lmediabrowser/apiinteraction/ApiClient;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/api/StreamInfo;->setDeviceId(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->options:Ltv/emby/embyatv/api/AudioOptions;

    invoke-virtual {v1}, Ltv/emby/embyatv/api/AudioOptions;->getProfile()Lmediabrowser/model/dlna/DeviceProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/api/StreamInfo;->setDeviceProfile(Lmediabrowser/model/dlna/DeviceProfile;)V

    .line 113
    invoke-virtual {p1}, Lmediabrowser/model/mediainfo/PlaybackInfoResponse;->getPlaySessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/api/StreamInfo;->setPlaySessionId(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lmediabrowser/model/mediainfo/PlaybackInfoResponse;->getMediaSources()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/api/StreamInfo;->setAllMediaSources(Ljava/util/ArrayList;)V

    .line 115
    iget-object p1, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->startPositionTicks:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ltv/emby/embyatv/api/StreamInfo;->setStartPositionTicks(J)V

    .line 117
    iget-object p1, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->options:Ltv/emby/embyatv/api/AudioOptions;

    invoke-virtual {p1}, Ltv/emby/embyatv/api/AudioOptions;->getEnableDirectPlay()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lmediabrowser/model/dto/MediaSourceInfo;->getSupportsDirectPlay()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->supportsDirectPlay(Lmediabrowser/model/dto/MediaSourceInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 118
    sget-object p1, Lmediabrowser/model/session/PlayMethod;->DirectPlay:Lmediabrowser/model/session/PlayMethod;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/api/StreamInfo;->setPlayMethod(Lmediabrowser/model/session/PlayMethod;)V

    .line 119
    invoke-virtual {p2}, Lmediabrowser/model/dto/MediaSourceInfo;->getContainer()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/api/StreamInfo;->setContainer(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Lmediabrowser/model/dto/MediaSourceInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/api/StreamInfo;->setMediaUrl(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 121
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->options:Ltv/emby/embyatv/api/AudioOptions;

    invoke-virtual {p1}, Ltv/emby/embyatv/api/AudioOptions;->getEnableDirectStream()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Lmediabrowser/model/dto/MediaSourceInfo;->getSupportsDirectStream()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 123
    sget-object p1, Lmediabrowser/model/session/PlayMethod;->DirectStream:Lmediabrowser/model/session/PlayMethod;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/api/StreamInfo;->setPlayMethod(Lmediabrowser/model/session/PlayMethod;)V

    .line 124
    invoke-virtual {p2}, Lmediabrowser/model/dto/MediaSourceInfo;->getDirectStreamUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 126
    iget-object p1, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {p2}, Lmediabrowser/model/dto/MediaSourceInfo;->getDirectStreamUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/api/StreamInfo;->setMediaUrl(Ljava/lang/String;)V

    .line 127
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string p2, "**** Using direct stream url"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, p2, v1}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 130
    :cond_2
    invoke-virtual {p2}, Lmediabrowser/model/dto/MediaSourceInfo;->getContainer()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, ""

    .line 134
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-virtual {p2}, Lmediabrowser/model/dto/MediaSourceInfo;->getContainer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/api/StreamInfo;->setContainer(Ljava/lang/String;)V

    .line 138
    new-instance v1, Lmediabrowser/apiinteraction/QueryStringDictionary;

    invoke-direct {v1}, Lmediabrowser/apiinteraction/QueryStringDictionary;-><init>()V

    const-string v2, "Static"

    const-string v3, "true"

    .line 139
    invoke-virtual {v1, v2, v3}, Lmediabrowser/apiinteraction/QueryStringDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "MediaSourceId"

    .line 140
    invoke-virtual {p2}, Lmediabrowser/model/dto/MediaSourceInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lmediabrowser/apiinteraction/QueryStringDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "DeviceId"

    .line 141
    iget-object v3, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {v3}, Lmediabrowser/apiinteraction/ApiClient;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lmediabrowser/apiinteraction/QueryStringDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "api_key"

    .line 142
    iget-object v3, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {v3}, Lmediabrowser/apiinteraction/ApiClient;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lmediabrowser/apiinteraction/QueryStringDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-virtual {p2}, Lmediabrowser/model/dto/MediaSourceInfo;->getETag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Lmediabrowser/model/dto/MediaSourceInfo;->getETag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, "Tag"

    .line 145
    invoke-virtual {p2}, Lmediabrowser/model/dto/MediaSourceInfo;->getETag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lmediabrowser/apiinteraction/QueryStringDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_4
    invoke-virtual {p2}, Lmediabrowser/model/dto/MediaSourceInfo;->getLiveStreamId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Lmediabrowser/model/dto/MediaSourceInfo;->getLiveStreamId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    const-string v2, "LiveStreamId"

    .line 149
    invoke-virtual {p2}, Lmediabrowser/model/dto/MediaSourceInfo;->getLiveStreamId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lmediabrowser/apiinteraction/QueryStringDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_5
    iget-boolean p2, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->isVideo:Z

    if-eqz p2, :cond_6

    const-string p2, "Videos"

    goto :goto_0

    :cond_6
    const-string p2, "Audio"

    .line 153
    :goto_0
    iget-object v2, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->options:Ltv/emby/embyatv/api/AudioOptions;

    invoke-virtual {p2}, Ltv/emby/embyatv/api/AudioOptions;->getItemId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/stream."

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;Lmediabrowser/apiinteraction/QueryStringDictionary;)Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-virtual {v0, p1}, Ltv/emby/embyatv/api/StreamInfo;->setMediaUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 159
    :cond_7
    invoke-virtual {p2}, Lmediabrowser/model/dto/MediaSourceInfo;->getSupportsTranscoding()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 160
    sget-object p1, Lmediabrowser/model/session/PlayMethod;->Transcode:Lmediabrowser/model/session/PlayMethod;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/api/StreamInfo;->setPlayMethod(Lmediabrowser/model/session/PlayMethod;)V

    .line 161
    invoke-virtual {p2}, Lmediabrowser/model/dto/MediaSourceInfo;->getTranscodingContainer()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/api/StreamInfo;->setContainer(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Lmediabrowser/model/dto/MediaSourceInfo;->getTranscodingUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {p2}, Lmediabrowser/model/dto/MediaSourceInfo;->getTranscodingUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmediabrowser/apiinteraction/ApiClient;->GetApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_8
    invoke-virtual {p2}, Lmediabrowser/model/dto/MediaSourceInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, p1}, Ltv/emby/embyatv/api/StreamInfo;->setMediaUrl(Ljava/lang/String;)V

    .line 165
    :cond_9
    :goto_2
    iget-object p1, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->playbackManager:Ltv/emby/embyatv/api/PlaybackManager;

    iget-object p2, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->response:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {p1, p2, v0}, Ltv/emby/embyatv/api/PlaybackManager;->SendResponse(Lmediabrowser/apiinteraction/Response;Ltv/emby/embyatv/api/StreamInfo;)V

    return-void
.end method

.method private supportsDirectPlay(Lmediabrowser/model/dto/MediaSourceInfo;)Z
    .locals 3

    .line 219
    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getProtocol()Lmediabrowser/model/mediainfo/MediaProtocol;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/mediainfo/MediaProtocol;->Http:Lmediabrowser/model/mediainfo/MediaProtocol;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getRequiredHttpHeaders()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 221
    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getIsRemote()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 223
    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getSupportsDirectStream()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getSupportsTranscoding()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 228
    :cond_1
    invoke-direct {p0, p1}, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->isHostReachable(Lmediabrowser/model/dto/MediaSourceInfo;)Z

    move-result p1

    return p1

    :cond_2
    return v2
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lmediabrowser/model/mediainfo/PlaybackInfoResponse;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->onResponse(Lmediabrowser/model/mediainfo/PlaybackInfoResponse;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/mediainfo/PlaybackInfoResponse;)V
    .locals 4

    .line 47
    invoke-virtual {p1}, Lmediabrowser/model/mediainfo/PlaybackInfoResponse;->getErrorCode()Lmediabrowser/model/dlna/PlaybackErrorCode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ltv/emby/embyatv/api/PlaybackException;

    invoke-direct {v0}, Ltv/emby/embyatv/api/PlaybackException;-><init>()V

    .line 50
    invoke-virtual {p1}, Lmediabrowser/model/mediainfo/PlaybackInfoResponse;->getErrorCode()Lmediabrowser/model/dlna/PlaybackErrorCode;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/api/PlaybackException;->setErrorCode(Lmediabrowser/model/dlna/PlaybackErrorCode;)V

    .line 51
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** Playback Info Error Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/PlaybackException;->getErrorCode()Lmediabrowser/model/dlna/PlaybackErrorCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iget-object p1, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->response:Lmediabrowser/apiinteraction/Response;

    invoke-virtual {p1, v0}, Lmediabrowser/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    return-void

    .line 58
    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/mediainfo/PlaybackInfoResponse;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->getOptimalMediaSource(Ljava/util/ArrayList;)Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 61
    iget-object p1, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->playbackManager:Ltv/emby/embyatv/api/PlaybackManager;

    iget-object v0, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->response:Lmediabrowser/apiinteraction/Response;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltv/emby/embyatv/api/PlaybackManager;->SendResponse(Lmediabrowser/apiinteraction/Response;Ltv/emby/embyatv/api/StreamInfo;)V

    return-void

    .line 65
    :cond_1
    invoke-virtual {v0}, Lmediabrowser/model/dto/MediaSourceInfo;->getRequiresOpening()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lmediabrowser/model/dto/MediaSourceInfo;->getLiveStreamId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 67
    new-instance v1, Lmediabrowser/model/mediainfo/LiveStreamRequest;

    invoke-direct {v1}, Lmediabrowser/model/mediainfo/LiveStreamRequest;-><init>()V

    .line 68
    iget-object v2, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    invoke-virtual {v2}, Lmediabrowser/apiinteraction/ApiClient;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediabrowser/model/mediainfo/LiveStreamRequest;->setUserId(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Lmediabrowser/model/dto/MediaSourceInfo;->getOpenToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmediabrowser/model/mediainfo/LiveStreamRequest;->setOpenToken(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lmediabrowser/model/mediainfo/PlaybackInfoResponse;->getPlaySessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmediabrowser/model/mediainfo/LiveStreamRequest;->setPlaySessionId(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->options:Ltv/emby/embyatv/api/AudioOptions;

    invoke-virtual {v0}, Ltv/emby/embyatv/api/AudioOptions;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmediabrowser/model/mediainfo/LiveStreamRequest;->setItemId(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    new-instance v2, Ltv/emby/embyatv/api/GetPlaybackInfoResponse$1;

    iget-object v3, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->response:Lmediabrowser/apiinteraction/Response;

    invoke-direct {v2, p0, v3, p1}, Ltv/emby/embyatv/api/GetPlaybackInfoResponse$1;-><init>(Ltv/emby/embyatv/api/GetPlaybackInfoResponse;Lmediabrowser/apiinteraction/IResponse;Lmediabrowser/model/mediainfo/PlaybackInfoResponse;)V

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->OpenLiveStream(Lmediabrowser/model/mediainfo/LiveStreamRequest;Lmediabrowser/apiinteraction/Response;)V

    return-void

    .line 87
    :cond_2
    invoke-direct {p0, p1, v0}, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->onResponseInternal(Lmediabrowser/model/mediainfo/PlaybackInfoResponse;Lmediabrowser/model/dto/MediaSourceInfo;)V

    return-void
.end method
