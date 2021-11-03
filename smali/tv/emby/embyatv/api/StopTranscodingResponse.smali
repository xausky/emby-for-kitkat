.class public Ltv/emby/embyatv/api/StopTranscodingResponse;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "StopTranscodingResponse.java"


# instance fields
.field private apiClient:Lmediabrowser/apiinteraction/ApiClient;

.field private logger:Lmediabrowser/model/logging/ILogger;

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

.field private serverId:Ljava/lang/String;

.field private startPositionTicks:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ltv/emby/embyatv/api/PlaybackManager;Ljava/lang/String;Ltv/emby/embyatv/api/StreamInfo;Ltv/emby/embyatv/api/AudioOptions;Lmediabrowser/model/logging/ILogger;Ljava/lang/Long;Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/apiinteraction/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/emby/embyatv/api/PlaybackManager;",
            "Ljava/lang/String;",
            "Ltv/emby/embyatv/api/StreamInfo;",
            "Ltv/emby/embyatv/api/AudioOptions;",
            "Lmediabrowser/model/logging/ILogger;",
            "Ljava/lang/Long;",
            "Lmediabrowser/apiinteraction/ApiClient;",
            "Lmediabrowser/apiinteraction/Response<",
            "Ltv/emby/embyatv/api/StreamInfo;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    .line 26
    iput-object p1, p0, Ltv/emby/embyatv/api/StopTranscodingResponse;->playbackManager:Ltv/emby/embyatv/api/PlaybackManager;

    .line 27
    iput-object p2, p0, Ltv/emby/embyatv/api/StopTranscodingResponse;->serverId:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Ltv/emby/embyatv/api/StopTranscodingResponse;->options:Ltv/emby/embyatv/api/AudioOptions;

    .line 29
    iput-object p5, p0, Ltv/emby/embyatv/api/StopTranscodingResponse;->logger:Lmediabrowser/model/logging/ILogger;

    .line 30
    iput-object p8, p0, Ltv/emby/embyatv/api/StopTranscodingResponse;->response:Lmediabrowser/apiinteraction/Response;

    .line 31
    iput-object p6, p0, Ltv/emby/embyatv/api/StopTranscodingResponse;->startPositionTicks:Ljava/lang/Long;

    .line 32
    iput-object p7, p0, Ltv/emby/embyatv/api/StopTranscodingResponse;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    return-void
.end method

.method private onAny()V
    .locals 6

    .line 37
    iget-object v0, p0, Ltv/emby/embyatv/api/StopTranscodingResponse;->playbackManager:Ltv/emby/embyatv/api/PlaybackManager;

    iget-object v1, p0, Ltv/emby/embyatv/api/StopTranscodingResponse;->options:Ltv/emby/embyatv/api/AudioOptions;

    check-cast v1, Ltv/emby/embyatv/api/VideoOptions;

    iget-object v2, p0, Ltv/emby/embyatv/api/StopTranscodingResponse;->startPositionTicks:Ljava/lang/Long;

    iget-object v4, p0, Ltv/emby/embyatv/api/StopTranscodingResponse;->apiClient:Lmediabrowser/apiinteraction/ApiClient;

    iget-object v5, p0, Ltv/emby/embyatv/api/StopTranscodingResponse;->response:Lmediabrowser/apiinteraction/Response;

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v5}, Ltv/emby/embyatv/api/PlaybackManager;->getVideoStreamInfo(Ltv/emby/embyatv/api/VideoOptions;Ljava/lang/Long;ZLmediabrowser/apiinteraction/ApiClient;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 48
    iget-object v0, p0, Ltv/emby/embyatv/api/StopTranscodingResponse;->logger:Lmediabrowser/model/logging/ILogger;

    const-string v1, "Error in StopTranscodingProcesses"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 49
    invoke-direct {p0}, Ltv/emby/embyatv/api/StopTranscodingResponse;->onAny()V

    return-void
.end method

.method public onResponse()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ltv/emby/embyatv/api/StopTranscodingResponse;->onAny()V

    return-void
.end method
