.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48$1;
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

    .line 2044
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48$1;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 2054
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48$1;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v0, 0x7f10065d

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method public onResponse()V
    .locals 3

    .line 2047
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48$1;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48$1;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;

    iget-object v1, v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    const v2, 0x7f10064f

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 2048
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48$1;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->updateTvProgramInfo(Z)V

    .line 2049
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->forceReload()V

    return-void
.end method
