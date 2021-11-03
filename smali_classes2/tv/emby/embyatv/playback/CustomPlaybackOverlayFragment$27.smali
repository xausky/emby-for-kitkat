.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$27;
.super Ljava/lang/Object;
.source "CustomPlaybackOverlayFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showQuickChannelChanger(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

.field final synthetic val$scrollToLive:Z


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Z)V
    .locals 0

    .line 1467
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$27;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iput-boolean p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$27;->val$scrollToLive:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1470
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$27;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setFadingEnabled(Z)V

    .line 1471
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$27;->val$scrollToLive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$27;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getLastLiveTvChannel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/livetv/TvManager;->getAllChannelsIndex(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$2200(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;I)V

    :cond_0
    return-void
.end method
