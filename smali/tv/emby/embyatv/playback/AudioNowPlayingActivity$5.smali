.class Ltv/emby/embyatv/playback/AudioNowPlayingActivity$5;
.super Ljava/lang/Object;
.source "AudioNowPlayingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 189
    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$5;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 192
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$5;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$000(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->toggleRepeat()Z

    .line 193
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$5;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$5;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$000(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->isPlayingAudio()Z

    move-result v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$100(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;Z)V

    return-void
.end method
