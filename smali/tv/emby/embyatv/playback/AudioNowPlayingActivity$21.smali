.class Ltv/emby/embyatv/playback/AudioNowPlayingActivity$21;
.super Ljava/lang/Object;
.source "AudioNowPlayingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->updateButtons(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

.field final synthetic val$playing:Z


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;Z)V
    .locals 0

    .line 543
    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$21;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    iput-boolean p2, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$21;->val$playing:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 546
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$21;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$1600(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-boolean v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$21;->val$playing:Z

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setKeepScreenOn(Z)V

    .line 547
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$21;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$1100(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/ui/ImageButton;

    move-result-object v0

    iget-boolean v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$21;->val$playing:Z

    if-nez v1, :cond_0

    sget v1, Ltv/emby/embyatv/ui/ImageButton;->STATE_PRIMARY:I

    goto :goto_0

    :cond_0
    sget v1, Ltv/emby/embyatv/ui/ImageButton;->STATE_SECONDARY:I

    :goto_0
    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/ImageButton;->setState(I)V

    .line 548
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$21;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$1700(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/ui/ImageButton;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$21;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$000(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/MediaManager;->isRepeatMode()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Ltv/emby/embyatv/ui/ImageButton;->STATE_SECONDARY:I

    goto :goto_1

    :cond_1
    sget v1, Ltv/emby/embyatv/ui/ImageButton;->STATE_PRIMARY:I

    :goto_1
    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/ImageButton;->setState(I)V

    .line 549
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$21;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$1800(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/ui/ImageButton;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$21;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$000(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentAudioQueueSize()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/ImageButton;->setEnabled(Z)V

    .line 550
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$21;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$1900(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/ui/ImageButton;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$21;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$000(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/MediaManager;->hasPrevAudioItem()Z

    move-result v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/ImageButton;->setEnabled(Z)V

    .line 551
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$21;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$2000(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/ui/ImageButton;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$21;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$000(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/MediaManager;->hasNextAudioItem()Z

    move-result v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/ImageButton;->setEnabled(Z)V

    .line 552
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$21;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$2100(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/ui/ImageButton;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$21;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$000(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentAudioQueueSize()I

    move-result v1

    if-le v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/ImageButton;->setEnabled(Z)V

    .line 553
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$21;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$500(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 554
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$21;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$2200(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/ui/ImageButton;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$21;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$500(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/ImageButton;->setEnabled(Z)V

    .line 555
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$21;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$2300(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/ui/ImageButton;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$21;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$500(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumArtists()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$21;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$500(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumArtists()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_6

    :cond_5
    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$21;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$500(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getArtistItems()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$21;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$500(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getArtistItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    :cond_6
    const/4 v2, 0x1

    :cond_7
    invoke-virtual {v0, v2}, Ltv/emby/embyatv/ui/ImageButton;->setEnabled(Z)V

    .line 556
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$21;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$1300(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/ui/ImageButton;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$21;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$500(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$21;->this$0:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    invoke-static {v1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->access$500(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserItemDataDto;->getIsFavorite()Z

    move-result v1

    if-eqz v1, :cond_8

    sget v1, Ltv/emby/embyatv/ui/ImageButton;->STATE_SECONDARY:I

    goto :goto_5

    :cond_8
    sget v1, Ltv/emby/embyatv/ui/ImageButton;->STATE_PRIMARY:I

    :goto_5
    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/ImageButton;->setState(I)V

    :cond_9
    return-void
.end method
