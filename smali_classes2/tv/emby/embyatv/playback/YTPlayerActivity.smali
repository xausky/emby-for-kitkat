.class public Ltv/emby/embyatv/playback/YTPlayerActivity;
.super Ltv/emby/embyatv/base/BaseActivity;
.source "YTPlayerActivity.java"


# instance fields
.field fadeOut:Landroid/view/animation/Animation;

.field private hideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field mBottomPanelMin:Landroid/widget/RelativeLayout;

.field mCurrentDuration:Ljava/lang/Integer;

.field mCurrentPosMin:Landroid/widget/TextView;

.field mCurrentProgressMin:Ltv/emby/embyatv/ui/InteractiveProgressBar;

.field mCurrentSecs:I

.field mHandler:Landroid/os/Handler;

.field mHideTask:Ljava/lang/Runnable;

.field mPlayPauseBtnMin:Ltv/emby/embyatv/ui/ImageButton;

.field mRemainingTimeMin:Landroid/widget/TextView;

.field mVisible:Z

.field player:Lfr/bmartel/youtubetv/YoutubeTvView;

.field private showAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field slideUp:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ltv/emby/embyatv/base/BaseActivity;-><init>()V

    .line 171
    new-instance v0, Ltv/emby/embyatv/playback/YTPlayerActivity$6;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/YTPlayerActivity$6;-><init>(Ltv/emby/embyatv/playback/YTPlayerActivity;)V

    iput-object v0, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->hideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 188
    new-instance v0, Ltv/emby/embyatv/playback/YTPlayerActivity$7;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/YTPlayerActivity$7;-><init>(Ltv/emby/embyatv/playback/YTPlayerActivity;)V

    iput-object v0, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->showAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/playback/YTPlayerActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ltv/emby/embyatv/playback/YTPlayerActivity;->hide()V

    return-void
.end method

.method private hide()V
    .locals 2

    .line 140
    iget-object v0, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->mBottomPanelMin:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->fadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->mVisible:Z

    return-void
.end method

.method private show()V
    .locals 2

    .line 145
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->mVisible:Z

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->mBottomPanelMin:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->slideUp:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 147
    iget-object v0, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->mPlayPauseBtnMin:Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/ImageButton;->requestFocus()Z

    .line 148
    invoke-direct {p0}, Ltv/emby/embyatv/playback/YTPlayerActivity;->startFadeTimer()V

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->mVisible:Z

    :cond_0
    return-void
.end method

.method private startFadeTimer()V
    .locals 4

    .line 154
    iget-object v0, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->mHideTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 155
    iget-object v0, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->mHideTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 45
    invoke-super {p0, p1}, Ltv/emby/embyatv/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002f

    .line 47
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/YTPlayerActivity;->setContentView(I)V

    const p1, 0x7f0a0331

    .line 49
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/YTPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lfr/bmartel/youtubetv/YoutubeTvView;

    iput-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->player:Lfr/bmartel/youtubetv/YoutubeTvView;

    .line 50
    iget-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->player:Lfr/bmartel/youtubetv/YoutubeTvView;

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/YTPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->getYouTubeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfr/bmartel/youtubetv/YoutubeTvView;->playVideo(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object p1

    const v0, 0x7f0a0069

    .line 53
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/YTPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->mBottomPanelMin:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00bd

    .line 54
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/YTPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->mCurrentPosMin:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->mCurrentPosMin:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0a0255

    .line 56
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/YTPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->mRemainingTimeMin:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->mRemainingTimeMin:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f0a0224

    .line 58
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/YTPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/ui/InteractiveProgressBar;

    iput-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->mCurrentProgressMin:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    const p1, 0x7f0a0219

    .line 60
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/YTPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/ui/ImageButton;

    iput-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->mPlayPauseBtnMin:Ltv/emby/embyatv/ui/ImageButton;

    .line 61
    iget-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->mPlayPauseBtnMin:Ltv/emby/embyatv/ui/ImageButton;

    const v0, 0x7f080113

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/ImageButton;->setSecondaryImage(I)V

    .line 62
    iget-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->mPlayPauseBtnMin:Ltv/emby/embyatv/ui/ImageButton;

    const v0, 0x7f080162

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/ImageButton;->setPrimaryImage(I)V

    .line 63
    iget-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->mPlayPauseBtnMin:Ltv/emby/embyatv/ui/ImageButton;

    new-instance v0, Ltv/emby/embyatv/playback/YTPlayerActivity$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/YTPlayerActivity$1;-><init>(Ltv/emby/embyatv/playback/YTPlayerActivity;)V

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->player:Lfr/bmartel/youtubetv/YoutubeTvView;

    new-instance v0, Ltv/emby/embyatv/playback/YTPlayerActivity$2;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/YTPlayerActivity$2;-><init>(Ltv/emby/embyatv/playback/YTPlayerActivity;)V

    invoke-virtual {p1, v0}, Lfr/bmartel/youtubetv/YoutubeTvView;->addPlayerListener(Lfr/bmartel/youtubetv/listener/IPlayerListener;)V

    .line 94
    iget-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->player:Lfr/bmartel/youtubetv/YoutubeTvView;

    new-instance v0, Ltv/emby/embyatv/playback/YTPlayerActivity$3;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/YTPlayerActivity$3;-><init>(Ltv/emby/embyatv/playback/YTPlayerActivity;)V

    invoke-virtual {p1, v0}, Lfr/bmartel/youtubetv/YoutubeTvView;->setOnProgressUpdateListener(Lfr/bmartel/youtubetv/listener/IProgressUpdateListener;)V

    const p1, 0x7f010001

    .line 101
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->fadeOut:Landroid/view/animation/Animation;

    .line 102
    iget-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->fadeOut:Landroid/view/animation/Animation;

    iget-object v0, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->hideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const p1, 0x7f010006

    .line 103
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->slideUp:Landroid/view/animation/Animation;

    .line 104
    iget-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->slideUp:Landroid/view/animation/Animation;

    iget-object v0, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->showAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 106
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->mHandler:Landroid/os/Handler;

    .line 108
    new-instance p1, Ltv/emby/embyatv/playback/YTPlayerActivity$4;

    invoke-direct {p1, p0}, Ltv/emby/embyatv/playback/YTPlayerActivity$4;-><init>(Ltv/emby/embyatv/playback/YTPlayerActivity;)V

    iput-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->mHideTask:Ljava/lang/Runnable;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 207
    invoke-super {p0}, Ltv/emby/embyatv/base/BaseActivity;->onDestroy()V

    .line 208
    iget-object v0, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->player:Lfr/bmartel/youtubetv/YoutubeTvView;

    invoke-virtual {v0}, Lfr/bmartel/youtubetv/YoutubeTvView;->closePlayer()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    const/16 v0, 0x61

    if-eq p1, v0, :cond_6

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 p2, 0x16

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, p2, :cond_5

    const/16 p2, 0x5a

    if-ne p1, p2, :cond_1

    goto :goto_2

    :cond_1
    const/16 p2, 0x15

    if-eq p1, p2, :cond_4

    const/16 p2, 0x59

    if-ne p1, p2, :cond_2

    goto :goto_1

    .line 135
    :cond_2
    iget-boolean p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->mVisible:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Ltv/emby/embyatv/playback/YTPlayerActivity;->hide()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Ltv/emby/embyatv/playback/YTPlayerActivity;->show()V

    :goto_0
    return v1

    .line 128
    :cond_4
    :goto_1
    invoke-direct {p0}, Ltv/emby/embyatv/playback/YTPlayerActivity;->show()V

    .line 129
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string p2, "*** Seeking to: %d"

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->mCurrentSecs:I

    add-int/lit8 v3, v3, -0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-interface {p1, p2, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->player:Lfr/bmartel/youtubetv/YoutubeTvView;

    iget-object p2, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->player:Lfr/bmartel/youtubetv/YoutubeTvView;

    invoke-virtual {p2}, Lfr/bmartel/youtubetv/YoutubeTvView;->getCurrentPosition()F

    move-result p2

    float-to-int p2, p2

    add-int/lit8 p2, p2, -0xa

    invoke-virtual {p1, p2}, Lfr/bmartel/youtubetv/YoutubeTvView;->seekTo(I)V

    return v1

    .line 123
    :cond_5
    :goto_2
    invoke-direct {p0}, Ltv/emby/embyatv/playback/YTPlayerActivity;->show()V

    .line 124
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string p2, "*** Seeking to: %d"

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->mCurrentSecs:I

    add-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-interface {p1, p2, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iget-object p1, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->player:Lfr/bmartel/youtubetv/YoutubeTvView;

    iget-object p2, p0, Ltv/emby/embyatv/playback/YTPlayerActivity;->player:Lfr/bmartel/youtubetv/YoutubeTvView;

    invoke-virtual {p2}, Lfr/bmartel/youtubetv/YoutubeTvView;->getCurrentPosition()F

    move-result p2

    float-to-int p2, p2

    add-int/lit8 p2, p2, 0xa

    invoke-virtual {p1, p2}, Lfr/bmartel/youtubetv/YoutubeTvView;->seekTo(I)V

    return v1

    .line 120
    :cond_6
    :goto_3
    invoke-super {p0, p1, p2}, Ltv/emby/embyatv/base/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setCurrentTime(J)V
    .locals 1

    .line 159
    new-instance v0, Ltv/emby/embyatv/playback/YTPlayerActivity$5;

    invoke-direct {v0, p0, p1, p2}, Ltv/emby/embyatv/playback/YTPlayerActivity$5;-><init>(Ltv/emby/embyatv/playback/YTPlayerActivity;J)V

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/YTPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
