.class Ltv/emby/embyatv/playback/PlaybackController$20;
.super Ljava/lang/Object;
.source "PlaybackController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/PlaybackController;->delayedSeek(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/PlaybackController;

.field final synthetic val$position:J


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/PlaybackController;J)V
    .locals 0

    .line 1380
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$20;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iput-wide p2, p0, Ltv/emby/embyatv/playback/PlaybackController$20;->val$position:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1383
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$20;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1385
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$20;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$200(Ltv/emby/embyatv/playback/PlaybackController;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1388
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$20;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    iget-wide v4, p0, Ltv/emby/embyatv/playback/PlaybackController$20;->val$position:J

    invoke-virtual {v0, v4, v5}, Ltv/emby/embyatv/playback/VideoManager;->seekTo(J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1389
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const-string v1, "Unable to seek"

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1391
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$20;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    sget-object v1, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->PLAYING:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    invoke-static {v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$2802(Ltv/emby/embyatv/playback/PlaybackController;Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;)Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    .line 1392
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$20;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$1902(Ltv/emby/embyatv/playback/PlaybackController;Z)Z

    .line 1393
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$20;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$300(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$20;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v1, v1, Ltv/emby/embyatv/playback/PlaybackController;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/VideoManager;->getDuration()J

    move-result-wide v1

    iget-wide v3, p0, Ltv/emby/embyatv/playback/PlaybackController$20;->val$position:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->updateEndTime(J)V

    :goto_0
    return-void
.end method
