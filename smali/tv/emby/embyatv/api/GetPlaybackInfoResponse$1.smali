.class Ltv/emby/embyatv/api/GetPlaybackInfoResponse$1;
.super Lmediabrowser/apiinteraction/Response;
.source "GetPlaybackInfoResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->onResponse(Lmediabrowser/model/mediainfo/PlaybackInfoResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/mediainfo/LiveStreamResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/api/GetPlaybackInfoResponse;

.field final synthetic val$playbackInfo:Lmediabrowser/model/mediainfo/PlaybackInfoResponse;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/api/GetPlaybackInfoResponse;Lmediabrowser/apiinteraction/IResponse;Lmediabrowser/model/mediainfo/PlaybackInfoResponse;)V
    .locals 0

    .line 73
    iput-object p1, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse$1;->this$0:Ltv/emby/embyatv/api/GetPlaybackInfoResponse;

    iput-object p3, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse$1;->val$playbackInfo:Lmediabrowser/model/mediainfo/PlaybackInfoResponse;

    invoke-direct {p0, p2}, Lmediabrowser/apiinteraction/Response;-><init>(Lmediabrowser/apiinteraction/IResponse;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 73
    check-cast p1, Lmediabrowser/model/mediainfo/LiveStreamResponse;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/api/GetPlaybackInfoResponse$1;->onResponse(Lmediabrowser/model/mediainfo/LiveStreamResponse;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/mediainfo/LiveStreamResponse;)V
    .locals 2

    .line 78
    iget-object v0, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse$1;->val$playbackInfo:Lmediabrowser/model/mediainfo/PlaybackInfoResponse;

    invoke-virtual {v0}, Lmediabrowser/model/mediainfo/PlaybackInfoResponse;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
    iget-object v0, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse$1;->val$playbackInfo:Lmediabrowser/model/mediainfo/PlaybackInfoResponse;

    invoke-virtual {v0}, Lmediabrowser/model/mediainfo/PlaybackInfoResponse;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lmediabrowser/model/mediainfo/LiveStreamResponse;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse$1;->this$0:Ltv/emby/embyatv/api/GetPlaybackInfoResponse;

    iget-object v1, p0, Ltv/emby/embyatv/api/GetPlaybackInfoResponse$1;->val$playbackInfo:Lmediabrowser/model/mediainfo/PlaybackInfoResponse;

    invoke-virtual {p1}, Lmediabrowser/model/mediainfo/LiveStreamResponse;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ltv/emby/embyatv/api/GetPlaybackInfoResponse;->access$000(Ltv/emby/embyatv/api/GetPlaybackInfoResponse;Lmediabrowser/model/mediainfo/PlaybackInfoResponse;Lmediabrowser/model/dto/MediaSourceInfo;)V

    return-void
.end method
