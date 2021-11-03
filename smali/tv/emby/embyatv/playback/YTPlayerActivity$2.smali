.class Ltv/emby/embyatv/playback/YTPlayerActivity$2;
.super Ljava/lang/Object;
.source "YTPlayerActivity.java"

# interfaces
.implements Lfr/bmartel/youtubetv/listener/IPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/YTPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/YTPlayerActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/YTPlayerActivity;)V
    .locals 0

    .line 71
    iput-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity$2;->this$0:Ltv/emby/embyatv/playback/YTPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayerReady(Lfr/bmartel/youtubetv/model/VideoInfo;)V
    .locals 0

    return-void
.end method

.method public onPlayerStateChange(Lfr/bmartel/youtubetv/model/VideoState;JFFLfr/bmartel/youtubetv/model/VideoInfo;)V
    .locals 3

    .line 79
    sget-object p4, Lfr/bmartel/youtubetv/model/VideoState;->ENDED:Lfr/bmartel/youtubetv/model/VideoState;

    if-ne p1, p4, :cond_0

    .line 80
    iget-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity$2;->this$0:Ltv/emby/embyatv/playback/YTPlayerActivity;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/YTPlayerActivity;->finish()V

    goto :goto_0

    .line 81
    :cond_0
    sget-object p4, Lfr/bmartel/youtubetv/model/VideoState;->PLAYING:Lfr/bmartel/youtubetv/model/VideoState;

    const/4 p6, 0x0

    if-ne p1, p4, :cond_1

    .line 83
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string p4, "***** Video Duration is: %f"

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, p6

    invoke-interface {p1, p4, v1}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity$2;->this$0:Ltv/emby/embyatv/playback/YTPlayerActivity;

    const/high16 p4, 0x447a0000    # 1000.0f

    mul-float p5, p5, p4

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Float;->intValue()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iput-object p4, p1, Ltv/emby/embyatv/playback/YTPlayerActivity;->mCurrentDuration:Ljava/lang/Integer;

    .line 85
    iget-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity$2;->this$0:Ltv/emby/embyatv/playback/YTPlayerActivity;

    iget-object p1, p1, Ltv/emby/embyatv/playback/YTPlayerActivity;->mCurrentProgressMin:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    iget-object p4, p0, Ltv/emby/embyatv/playback/YTPlayerActivity$2;->this$0:Ltv/emby/embyatv/playback/YTPlayerActivity;

    iget-object p4, p4, Ltv/emby/embyatv/playback/YTPlayerActivity;->mCurrentDuration:Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p1, p4}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setMax(I)V

    .line 86
    iget-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity$2;->this$0:Ltv/emby/embyatv/playback/YTPlayerActivity;

    invoke-virtual {p1, p2, p3}, Ltv/emby/embyatv/playback/YTPlayerActivity;->setCurrentTime(J)V

    .line 87
    iget-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity$2;->this$0:Ltv/emby/embyatv/playback/YTPlayerActivity;

    iget-object p1, p1, Ltv/emby/embyatv/playback/YTPlayerActivity;->mPlayPauseBtnMin:Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/ImageButton;->setState(I)V

    goto :goto_0

    .line 88
    :cond_1
    sget-object p2, Lfr/bmartel/youtubetv/model/VideoState;->PAUSED:Lfr/bmartel/youtubetv/model/VideoState;

    if-ne p1, p2, :cond_2

    .line 89
    iget-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity$2;->this$0:Ltv/emby/embyatv/playback/YTPlayerActivity;

    iget-object p1, p1, Ltv/emby/embyatv/playback/YTPlayerActivity;->mPlayPauseBtnMin:Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {p1, p6}, Ltv/emby/embyatv/ui/ImageButton;->setState(I)V

    :cond_2
    :goto_0
    return-void
.end method
