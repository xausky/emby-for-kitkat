.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;
.super Ljava/lang/Object;
.source "CustomPlaybackOverlayFragment.java"

# interfaces
.implements Ltv/emby/embyatv/base/IKeyListener;


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

    .line 709
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 12

    .line 713
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->setLastStillWatchingCheck(J)V

    .line 714
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {p2}, Ltv/emby/embyatv/playback/PlaybackController;->isPaused()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p2, v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->togglePauseShield(Z)V

    .line 718
    :cond_0
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$100(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)Z

    move-result p2

    const/16 v1, 0x15

    const/16 v2, 0x16

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-eqz p2, :cond_3

    if-eq p1, v3, :cond_1

    const/16 p2, 0x60

    if-eq p1, p2, :cond_1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_1

    const/16 p2, 0x59

    if-ne p1, p2, :cond_3

    .line 721
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1, v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$102(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Z)Z

    .line 722
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$800(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 723
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1, v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$802(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Z)Z

    .line 724
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/PlaybackController;->playPause()V

    :cond_2
    return v4

    .line 729
    :cond_3
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {p2}, Ltv/emby/embyatv/playback/PlaybackController;->isStillWatchingActive()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 730
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/PlaybackController;->setStillWatchingActive(Z)V

    .line 731
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v0, 0x7f100653

    invoke-virtual {p2, v0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v1, 0x7f100654

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->showMessage(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_4
    const/16 p2, 0x56

    if-ne p1, p2, :cond_5

    .line 735
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    if-eqz p2, :cond_5

    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-virtual {p2}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_5

    .line 736
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->finish()V

    return v4

    .line 740
    :cond_5
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupPanelVisible:Z

    const/16 v5, 0x6f

    const/16 v6, 0x61

    const/4 v7, 0x4

    if-eqz p2, :cond_8

    if-eq p1, v7, :cond_6

    if-eq p1, v6, :cond_6

    if-ne p1, v5, :cond_8

    .line 742
    :cond_6
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$900(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    .line 743
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mIsVisible:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hide()V

    :cond_7
    return v4

    .line 746
    :cond_8
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$1200(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)Z

    move-result p2

    const/16 v8, 0xac

    const/16 v9, 0x64

    const/16 v10, 0x52

    if-eqz p2, :cond_b

    if-eq p1, v7, :cond_a

    if-eq p1, v6, :cond_a

    if-eq p1, v5, :cond_a

    if-eq p1, v10, :cond_a

    if-eq p1, v9, :cond_a

    if-ne p1, v8, :cond_9

    goto :goto_0

    :cond_9
    return v0

    .line 749
    :cond_a
    :goto_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$1300(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    return v4

    .line 756
    :cond_b
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$1400(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)Z

    move-result p2

    if-eqz p2, :cond_14

    if-eq p1, v10, :cond_13

    if-eq p1, v9, :cond_13

    if-ne p1, v8, :cond_c

    goto :goto_1

    :cond_c
    const/16 p2, 0x82

    if-ne p1, p2, :cond_d

    .line 765
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$1600(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    :cond_d
    const/16 p2, 0xe5

    if-eq p1, p2, :cond_e

    const/16 p2, 0x85

    if-ne p1, p2, :cond_f

    .line 768
    :cond_e
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getPrevLiveTvChannel()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 769
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getPrevLiveTvChannel()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$1000(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Ljava/lang/String;)V

    return v4

    .line 773
    :cond_f
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    if-eqz p2, :cond_14

    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {p2}, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv()Z

    move-result p2

    if-eqz p2, :cond_14

    const/16 p2, 0xa6

    if-ne p1, p2, :cond_11

    .line 775
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getNextChannel()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 776
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p2, p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$1000(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Ljava/lang/String;)V

    :cond_10
    return v4

    :cond_11
    const/16 p2, 0xa7

    if-ne p1, p2, :cond_14

    .line 779
    invoke-static {}, Ltv/emby/embyatv/livetv/TvManager;->getPrevChannel()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 780
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p2, p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$1000(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Ljava/lang/String;)V

    :cond_12
    return v4

    .line 760
    :cond_13
    :goto_1
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$1500(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    return v4

    .line 786
    :cond_14
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNextUpPanelVisible:Z

    if-eqz p2, :cond_17

    if-eq p1, v7, :cond_16

    if-eq p1, v6, :cond_16

    if-ne p1, v5, :cond_15

    goto :goto_2

    :cond_15
    return v0

    .line 789
    :cond_16
    :goto_2
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$1700(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    return v4

    .line 794
    :cond_17
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSmNextUpPanelVisible:Z

    const/16 v8, 0x13

    const/16 v9, 0x14

    if-eqz p2, :cond_1b

    if-eq p1, v7, :cond_1a

    if-eq p1, v6, :cond_1a

    if-eq p1, v5, :cond_1a

    if-ne p1, v9, :cond_18

    goto :goto_3

    :cond_18
    if-ne p1, v8, :cond_19

    .line 801
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$1900(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    .line 802
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$1800(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    return v4

    :cond_19
    return v0

    .line 797
    :cond_1a
    :goto_3
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$1800(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    return v4

    .line 807
    :cond_1b
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mIsVisible:Z

    if-eqz p2, :cond_1d

    if-eq p1, v7, :cond_1c

    if-eq p1, v6, :cond_1c

    if-ne p1, v5, :cond_1d

    .line 809
    :cond_1c
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hide()V

    return v4

    .line 813
    :cond_1d
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    if-eqz p2, :cond_21

    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$1400(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)Z

    move-result p2

    if-eqz p2, :cond_21

    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupRow:Landroidx/leanback/widget/ListRow;

    if-eqz p2, :cond_21

    const/16 p2, 0x38

    if-eq p1, p2, :cond_1e

    const/16 p2, 0x9e

    if-eq p1, p2, :cond_1e

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_5

    .line 865
    :pswitch_0
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNumberDisplay:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v11, v11, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNumberDisplay:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "9"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 860
    :pswitch_1
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNumberDisplay:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v11, v11, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNumberDisplay:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "8"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 855
    :pswitch_2
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNumberDisplay:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v11, v11, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNumberDisplay:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "7"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 850
    :pswitch_3
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNumberDisplay:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v11, v11, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNumberDisplay:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "6"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 845
    :pswitch_4
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNumberDisplay:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v11, v11, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNumberDisplay:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "5"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 840
    :pswitch_5
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNumberDisplay:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v11, v11, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNumberDisplay:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "4"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 835
    :pswitch_6
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNumberDisplay:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v11, v11, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNumberDisplay:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "3"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 830
    :pswitch_7
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNumberDisplay:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v11, v11, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNumberDisplay:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "2"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 825
    :pswitch_8
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNumberDisplay:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v11, v11, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNumberDisplay:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    const/4 p2, 0x1

    goto :goto_6

    .line 870
    :pswitch_9
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNumberDisplay:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_1f

    .line 871
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNumberDisplay:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v11, v11, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNumberDisplay:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 818
    :cond_1e
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNumberDisplay:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_1f

    .line 819
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNumberDisplay:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v11, v11, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNumberDisplay:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_1f
    :goto_5
    const/4 p2, 0x0

    :goto_6
    if-eqz p2, :cond_21

    .line 878
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$2000(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 879
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$2000(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 880
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupPanelVisible:Z

    if-nez p1, :cond_20

    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1, v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$2100(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Z)V

    .line 882
    :cond_20
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNumberDisplay:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ltv/emby/embyatv/livetv/TvManager;->getChannelNdxByNumber(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$2200(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;I)V

    return v4

    :cond_21
    if-eq p1, v7, :cond_39

    if-eq p1, v6, :cond_39

    if-eq p1, v5, :cond_39

    const/16 p2, 0x18

    if-eq p1, p2, :cond_39

    const/16 p2, 0x19

    if-eq p1, p2, :cond_39

    .line 888
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupPanelVisible:Z

    if-eqz p2, :cond_24

    if-eq p1, v9, :cond_22

    if-ne p1, v8, :cond_23

    .line 891
    :cond_22
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$900(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    .line 892
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mIsVisible:Z

    if-eqz p1, :cond_23

    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hide()V

    :cond_23
    return v4

    :cond_24
    if-ne p1, v2, :cond_27

    .line 897
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mIsVisible:Z

    if-eqz p2, :cond_25

    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mUsingMinPanel:Z

    if-eqz p2, :cond_27

    .line 898
    :cond_25
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mIsVisible:Z

    if-nez p1, :cond_26

    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showMin()V

    .line 899
    :cond_26
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mBottomPanel:Landroid/view/View;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/view/View;->playSoundEffect(I)V

    .line 900
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$600(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/playback/PlaybackController;->skip(I)V

    return v4

    :cond_27
    if-ne p1, v1, :cond_2a

    .line 905
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mIsVisible:Z

    if-eqz p2, :cond_28

    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mUsingMinPanel:Z

    if-eqz p2, :cond_2a

    .line 906
    :cond_28
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mIsVisible:Z

    if-nez p1, :cond_29

    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showMin()V

    .line 907
    :cond_29
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mBottomPanel:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->playSoundEffect(I)V

    .line 908
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$700(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)I

    move-result p2

    neg-int p2, p2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/playback/PlaybackController;->skip(I)V

    return v4

    :cond_2a
    if-ne p1, v8, :cond_2d

    .line 913
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mIsVisible:Z

    if-eqz p2, :cond_2b

    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mUsingMinPanel:Z

    if-eqz p2, :cond_2d

    .line 914
    :cond_2b
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$1400(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)Z

    move-result p2

    if-eqz p2, :cond_2c

    .line 915
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$1500(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    return v4

    .line 918
    :cond_2c
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {p2}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p2

    if-eqz p2, :cond_2d

    .line 919
    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getChapters()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-virtual {p2}, Lmediabrowser/model/dto/BaseItemDto;->getChapters()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2d

    .line 920
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$2300(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    return v4

    :cond_2d
    if-ne p1, v9, :cond_32

    .line 926
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mIsVisible:Z

    if-eqz p2, :cond_32

    .line 927
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mUsingMinPanel:Z

    if-eqz p1, :cond_2e

    .line 928
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hide()V

    goto :goto_8

    .line 929
    :cond_2e
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlayPauseBtn:Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {p1}, Ltv/emby/embyatv/ui/ImageButton;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_30

    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mInfoSummary:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2f

    goto :goto_7

    :cond_2f
    return v0

    .line 930
    :cond_30
    :goto_7
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mInfoSummary:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_31

    .line 931
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$2400(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    goto :goto_8

    .line 933
    :cond_31
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$2500(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    :goto_8
    return v4

    :cond_32
    if-ne p1, v3, :cond_33

    .line 942
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean p2, p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mIsVisible:Z

    if-nez p2, :cond_33

    .line 943
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/PlaybackController;->playPause()V

    return v4

    :cond_33
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_9

    .line 956
    :sswitch_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPlaybackController()Ltv/emby/embyatv/playback/PlaybackController;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/PlaybackController;->pause()V

    return v4

    .line 953
    :sswitch_1
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPlaybackController()Ltv/emby/embyatv/playback/PlaybackController;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->play(J)V

    return v4

    .line 965
    :sswitch_2
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mIsVisible:Z

    if-nez p1, :cond_34

    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showMin()V

    .line 966
    :cond_34
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPlaybackController()Ltv/emby/embyatv/playback/PlaybackController;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$600(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/playback/PlaybackController;->skip(I)V

    return v4

    .line 971
    :sswitch_3
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mIsVisible:Z

    if-nez p1, :cond_35

    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showMin()V

    .line 972
    :cond_35
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPlaybackController()Ltv/emby/embyatv/playback/PlaybackController;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$700(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)I

    move-result p2

    neg-int p2, p2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/playback/PlaybackController;->skip(I)V

    return v4

    .line 975
    :sswitch_4
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/PlaybackController;->hasNextItem()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 976
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/PlaybackController;->next()V

    return v4

    .line 949
    :sswitch_5
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/PlaybackController;->stop()V

    .line 950
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->finish()V

    return v4

    .line 959
    :sswitch_6
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/PlaybackController;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_36

    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hide()V

    .line 960
    :cond_36
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPlaybackController()Ltv/emby/embyatv/playback/PlaybackController;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/PlaybackController;->playPause()V

    return v4

    .line 983
    :cond_37
    :goto_9
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mIsVisible:Z

    if-nez p1, :cond_38

    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->show()V

    .line 986
    :cond_38
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mFadeEnabled:Z

    if-eqz p1, :cond_39

    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$000(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    :cond_39
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x90
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x55 -> :sswitch_6
        0x56 -> :sswitch_5
        0x57 -> :sswitch_4
        0x59 -> :sswitch_3
        0x5a -> :sswitch_2
        0x66 -> :sswitch_3
        0x67 -> :sswitch_2
        0x68 -> :sswitch_3
        0x69 -> :sswitch_2
        0x7e -> :sswitch_1
        0x7f -> :sswitch_0
    .end sparse-switch
.end method
