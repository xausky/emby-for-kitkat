.class Ltv/emby/embyatv/playback/AudioNowPlayingActivity$22;
.super Ljava/lang/Object;
.source "AudioNowPlayingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->rotateBackdrops()V
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

    .line 601
    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$22;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 604
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$22;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$500(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$22;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$500(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getParentBackdropImageTags()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$22;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$500(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getParentBackdropImageTags()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$22;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    iget-object v2, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$22;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v2}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$500(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v3

    invoke-static {v2, v3, v1}, Ltv/emby/embyatv/util/Utils;->getBackdropImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->updateBackground(Ljava/lang/String;)V

    .line 606
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$22;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$000(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->isPlayingAudio()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$22;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$2400(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$22;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v2}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$2500(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 607
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$22;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->startScreenSaver()V

    .line 609
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$22;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$2600(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Landroid/os/Handler;

    move-result-object v0

    sget v1, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->BACKDROP_ROTATION_INTERVAL:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
