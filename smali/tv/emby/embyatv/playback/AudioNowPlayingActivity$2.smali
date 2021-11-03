.class Ltv/emby/embyatv/playback/AudioNowPlayingActivity$2;
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

    .line 164
    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$2;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 167
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$2;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$000(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentAudioPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    move-wide v0, v2

    .line 169
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$2;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$000(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ltv/emby/embyatv/playback/MediaManager;->seekTo(J)J

    return-void
.end method
