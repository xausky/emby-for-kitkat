.class Ltv/emby/embyatv/playback/AudioNowPlayingActivity$16;
.super Ljava/lang/Object;
.source "AudioNowPlayingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V
    .locals 0

    .line 366
    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$16;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 369
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$16;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$16;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$000(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/MediaManager;->isPlayingAudio()Z

    move-result v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$100(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;Z)V

    .line 370
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$16;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$1200(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V

    return-void
.end method
