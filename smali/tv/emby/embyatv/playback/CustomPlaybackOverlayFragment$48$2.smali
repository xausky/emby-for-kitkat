.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48$2;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "CustomPlaybackOverlayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;->onResponse(Lmediabrowser/model/livetv/SeriesTimerInfoDto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;)V
    .locals 0

    .line 2058
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48$2;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 2069
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48$2;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v0, 0x7f10065d

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method public onResponse()V
    .locals 2

    .line 2061
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48$2;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48$2;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;

    iget-object v1, v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;->val$program:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getIsSeries()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f100651

    goto :goto_0

    :cond_0
    const v1, 0x7f100650

    :goto_0
    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    .line 2062
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48$2;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->updateTvProgramInfo(Z)V

    .line 2063
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->forceReload()V

    .line 2064
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48$2;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$3200(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)Ltv/emby/embyatv/ui/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48$2;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$3200(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)Ltv/emby/embyatv/ui/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/ImageButton;->toggleState()V

    :cond_1
    return-void
.end method
