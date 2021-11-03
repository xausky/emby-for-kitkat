.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;
.super Lmediabrowser/apiinteraction/Response;
.source "CustomPlaybackOverlayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->recordProgram(Lmediabrowser/model/dto/BaseItemDto;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/livetv/SeriesTimerInfoDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

.field final synthetic val$program:Lmediabrowser/model/dto/BaseItemDto;

.field final synthetic val$series:Z


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;ZLmediabrowser/model/dto/BaseItemDto;)V
    .locals 0

    .line 2040
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iput-boolean p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;->val$series:Z

    iput-object p3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;->val$program:Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 2040
    check-cast p1, Lmediabrowser/model/livetv/SeriesTimerInfoDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;->onResponse(Lmediabrowser/model/livetv/SeriesTimerInfoDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/livetv/SeriesTimerInfoDto;)V
    .locals 2

    .line 2043
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;->val$series:Z

    if-eqz v0, :cond_0

    .line 2044
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48$1;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;)V

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->CreateLiveTvSeriesTimerAsync(Lmediabrowser/model/livetv/SeriesTimerInfoDto;Lmediabrowser/apiinteraction/EmptyResponse;)V

    goto :goto_0

    .line 2058
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48$2;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48$2;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;)V

    invoke-virtual {v0, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->CreateLiveTvTimerAsync(Lmediabrowser/model/livetv/BaseTimerInfoDto;Lmediabrowser/apiinteraction/EmptyResponse;)V

    :goto_0
    return-void
.end method
