.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$21;
.super Ljava/lang/Object;
.source "CustomPlaybackOverlayFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showStillWatching()V
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

    .line 1089
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$21;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1092
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$21;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->isStillWatchingActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$21;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->finish()V

    :cond_0
    return-void
.end method
