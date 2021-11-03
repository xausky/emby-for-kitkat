.class Ltv/emby/embyatv/playback/AudioNowPlayingActivity$13;
.super Ltv/emby/embyatv/presentation/ItemClickedListener;
.source "AudioNowPlayingActivity.java"


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

    .line 290
    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$13;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-direct {p0}, Ltv/emby/embyatv/presentation/ItemClickedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(Ltv/emby/embyatv/itemhandling/BaseRowItem;)V
    .locals 3

    .line 293
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$13;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$800(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    .line 294
    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getIndex()I

    move-result v1

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentAudioQueuePosition()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 296
    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->isPlayingAudio()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 297
    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->pauseAudio()V

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->resumeAudio()V

    goto :goto_0

    .line 303
    :cond_1
    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getIndex()I

    move-result p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/playback/MediaManager;->playFrom(I)Z

    :goto_0
    return-void
.end method
