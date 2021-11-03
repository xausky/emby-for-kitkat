.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$10;
.super Ljava/lang/Object;
.source "CustomPlaybackOverlayFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;
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

    .line 457
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$10;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 460
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$10;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$408(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)I

    .line 461
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$10;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mBottomPanelMin:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 463
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$10;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$500(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)Z

    move-result v0

    const/4 v2, 0x4

    const/16 v3, 0x8

    const/16 v4, 0xc

    if-eqz v0, :cond_3

    .line 464
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$10;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$400(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)I

    move-result v0

    if-le v0, v4, :cond_0

    const v0, 0x493e0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$10;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$400(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)I

    move-result v0

    if-le v0, v3, :cond_1

    const v0, 0x2bf20

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$10;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$400(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)I

    move-result v0

    if-le v0, v2, :cond_2

    const v0, 0xea60

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$10;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$600(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)I

    move-result v0

    .line 465
    :goto_0
    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$10;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v2, v2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v2, v0}, Ltv/emby/embyatv/playback/PlaybackController;->skip(I)V

    goto :goto_2

    .line 467
    :cond_3
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$10;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$400(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)I

    move-result v0

    if-le v0, v4, :cond_4

    const v0, -0x493e0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$10;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$400(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)I

    move-result v0

    if-le v0, v3, :cond_5

    const v0, -0x2bf20

    goto :goto_1

    :cond_5
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$10;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$400(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)I

    move-result v0

    if-le v0, v2, :cond_6

    const/16 v0, -0x7530

    goto :goto_1

    :cond_6
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$10;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$700(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)I

    move-result v0

    neg-int v0, v0

    .line 468
    :goto_1
    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$10;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v2, v2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v2, v0}, Ltv/emby/embyatv/playback/PlaybackController;->skip(I)V

    .line 471
    :goto_2
    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$10;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v2, v2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v2

    const-string v3, "**** Skipped %d after %d iterations"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x1

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$10;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$400(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-interface {v2, v3, v4}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$10;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$800(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$10;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    return-void
.end method
