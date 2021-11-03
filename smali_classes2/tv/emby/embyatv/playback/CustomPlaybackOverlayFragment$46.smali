.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$46;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "CustomPlaybackOverlayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->cancelRecording(Lmediabrowser/model/dto/BaseItemDto;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V
    .locals 0

    .line 2003
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$46;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 2014
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$46;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v0, 0x7f10065c

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method public onResponse()V
    .locals 2

    .line 2006
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$46;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v1, 0x7f100644

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    .line 2007
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$46;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->updateTvProgramInfo(Z)V

    .line 2008
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$46;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$3200(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)Ltv/emby/embyatv/ui/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$46;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$3200(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)Ltv/emby/embyatv/ui/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/ImageButton;->toggleState()V

    .line 2009
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->forceReload()V

    return-void
.end method
