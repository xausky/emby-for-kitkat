.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$53;
.super Lmediabrowser/apiinteraction/Response;
.source "CustomPlaybackOverlayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->updateDisplay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/dto/ImageSet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V
    .locals 0

    .line 2190
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$53;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 2209
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$53;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "No thumbs for item"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2211
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$53;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iput-boolean v1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mAllowVisualSeeking:Z

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 2190
    check-cast p1, Lmediabrowser/model/dto/ImageSet;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$53;->onResponse(Lmediabrowser/model/dto/ImageSet;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/ImageSet;)V
    .locals 2

    .line 2194
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$53;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$53;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$53;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2195
    invoke-virtual {p1}, Lmediabrowser/model/dto/ImageSet;->getThumbnails()[Lmediabrowser/model/dto/ThumbnailInfoDto;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmediabrowser/model/dto/ImageSet;->getThumbnails()[Lmediabrowser/model/dto/ThumbnailInfoDto;

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 2196
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$53;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgress:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-virtual {p1}, Lmediabrowser/model/dto/ImageSet;->getThumbnails()[Lmediabrowser/model/dto/ThumbnailInfoDto;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setThumbNails([Lmediabrowser/model/dto/ThumbnailInfoDto;)V

    .line 2197
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$53;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgressMin:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-virtual {p1}, Lmediabrowser/model/dto/ImageSet;->getThumbnails()[Lmediabrowser/model/dto/ThumbnailInfoDto;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setThumbNails([Lmediabrowser/model/dto/ThumbnailInfoDto;)V

    .line 2198
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$53;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    const/4 v0, 0x1

    iput-boolean v0, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mAllowVisualSeeking:Z

    goto :goto_0

    .line 2201
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$53;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    const/4 v0, 0x0

    iput-boolean v0, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mAllowVisualSeeking:Z

    :cond_1
    :goto_0
    return-void
.end method
