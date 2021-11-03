.class public Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;
.super Landroid/app/Fragment;
.source "CustomPlaybackOverlayFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;
    }
.end annotation


# static fields
.field private static final MENU_AUDIO_DELAY:I = 0x3e8

.field private static final MENU_SWITCH_DIRECT:I = 0x7d0

.field private static final MENU_SWITCH_TRANS:I = 0xbb8

.field private static final qualityOptionsMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private clearNumDisplay:Ljava/lang/Runnable;

.field fadeOut:Landroid/view/animation/Animation;

.field private hideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field hideNextUp:Landroid/view/animation/Animation;

.field hidePopup:Landroid/view/animation/Animation;

.field hideSmNextUp:Landroid/view/animation/Animation;

.field private itemViewClickedListener:Landroidx/leanback/widget/OnItemViewClickedListener;

.field private keyListener:Ltv/emby/embyatv/base/IKeyListener;

.field private lastReportedPosMs:J

.field private longPressProcessed:Z

.field mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

.field mAllowTopWithMin:Z

.field mAllowVisualSeeking:Z

.field mApplication:Ltv/emby/embyatv/TvApp;

.field private mAudioBtn:Ltv/emby/embyatv/ui/ImageButton;

.field private mAudioFocusChanged:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field mAudioPopup:Ltv/emby/embyatv/ui/AudioDelayPopup;

.field mBottomPanel:Landroid/view/View;

.field mBottomPanelMin:Landroid/view/View;

.field mButtonRow:Landroid/widget/LinearLayout;

.field mButtonRow2:Landroid/widget/LinearLayout;

.field mButtonSize:I

.field mCancelButton:Landroid/widget/Button;

.field mCurrentDuration:I

.field mCurrentPos:Landroid/widget/TextView;

.field mCurrentPosMin:Landroid/widget/TextView;

.field private mCurrentProgramsNeedRefresh:Z

.field mCurrentProgress:Ltv/emby/embyatv/ui/InteractiveProgressBar;

.field mCurrentProgressMin:Ltv/emby/embyatv/ui/InteractiveProgressBar;

.field mEndTime:Landroid/widget/TextView;

.field mFadeEnabled:Z

.field mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

.field private mGuideVisible:Z

.field mHandler:Landroid/os/Handler;

.field mHideTask:Ljava/lang/Runnable;

.field mInfoRow:Landroid/widget/LinearLayout;

.field mInfoSummary:Landroid/widget/TextView;

.field mIsVisible:Z

.field private mItemsToPlay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;"
        }
    .end annotation
.end field

.field mLogoImage:Landroid/widget/ImageView;

.field private mManualSubs:Lmediabrowser/model/mediainfo/SubtitleTrackInfo;

.field mNextButton:Landroid/widget/Button;

.field mNextUpInfoRow:Landroid/widget/LinearLayout;

.field mNextUpPanel:Landroid/view/View;

.field mNextUpPanelVisible:Z

.field mNextUpPoster:Landroid/widget/ImageView;

.field mNextUpSummary:Landroid/widget/TextView;

.field mNextUpTitle:Landroid/widget/TextView;

.field mNumberDisplay:Landroid/widget/TextView;

.field mPauseShield:Landroid/widget/FrameLayout;

.field mPlayPauseBtn:Ltv/emby/embyatv/ui/ImageButton;

.field mPlayPauseBtnMin:Ltv/emby/embyatv/ui/ImageButton;

.field mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

.field mPopupArea:Landroid/widget/FrameLayout;

.field mPopupPanelVisible:Z

.field mPopupRow:Landroidx/leanback/widget/ListRow;

.field mPopupRowAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field mPopupRowPresenter:Ltv/emby/embyatv/presentation/PositionableListRowPresenter;

.field mPopupRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

.field mPoster:Landroid/widget/ImageView;

.field private mRecordingBtn:Ltv/emby/embyatv/ui/ImageButton;

.field mRemainingTime:Landroid/widget/TextView;

.field mRemainingTimeMin:Landroid/widget/TextView;

.field mSmCancelButton:Landroid/widget/Button;

.field mSmNextButton:Landroid/widget/Button;

.field mSmNextUpPanel:Landroid/view/View;

.field mSmNextUpPanelVisible:Z

.field mSmNextUpTitle:Landroid/widget/TextView;

.field mSmStartsIn:Landroid/widget/TextView;

.field mStartsIn:Landroid/widget/TextView;

.field mStatsForNerds:Landroid/view/View;

.field mStudioImage:Landroid/widget/ImageView;

.field private mSubtBtn:Ltv/emby/embyatv/ui/ImageButton;

.field mSubtitleText:Landroid/widget/TextView;

.field mTitle:Landroid/widget/TextView;

.field mTopPanel:Landroid/view/View;

.field private mTvGuide:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

.field mUsingMinPanel:Z

.field private numProgressiveSkips:I

.field private progressiveSkipRunnable:Ljava/lang/Runnable;

.field private progressiveSkipping:Z

.field private showAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field showNextUp:Landroid/view/animation/Animation;

.field showPopup:Landroid/view/animation/Animation;

.field showSmNextUp:Landroid/view/animation/Animation;

.field private skipBackAmt:I

.field private skipFwdAmt:I

.field private skippingForward:Z

.field slideDown:Landroid/view/animation/Animation;

.field slideUp:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1901
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->qualityOptionsMap:Ljava/util/List;

    .line 1903
    sget-object v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->qualityOptionsMap:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;

    const-string v2, "100 Mb/s"

    const v3, 0x5f5e100

    invoke-direct {v1, v3, v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1904
    sget-object v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->qualityOptionsMap:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;

    const-string v2, "40 Mb/s"

    const v3, 0x2625a00

    invoke-direct {v1, v3, v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1905
    sget-object v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->qualityOptionsMap:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;

    const-string v2, "30 Mb/s"

    const v3, 0x1c9c380

    invoke-direct {v1, v3, v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1906
    sget-object v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->qualityOptionsMap:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;

    const-string v2, "20 Mb/s"

    const v3, 0x1406f40

    invoke-direct {v1, v3, v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1907
    sget-object v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->qualityOptionsMap:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;

    const-string v2, "15 Mb/s"

    const v3, 0xe4e1c0

    invoke-direct {v1, v3, v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1908
    sget-object v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->qualityOptionsMap:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;

    const-string v2, "10 Mb/s"

    const v3, 0x989680

    invoke-direct {v1, v3, v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1909
    sget-object v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->qualityOptionsMap:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;

    const-string v2, "5 Mb/s"

    const v3, 0x4c4b40

    invoke-direct {v1, v3, v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1910
    sget-object v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->qualityOptionsMap:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;

    const-string v2, "3 Mb/s"

    const v3, 0x2dc6c0

    invoke-direct {v1, v3, v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1911
    sget-object v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->qualityOptionsMap:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;

    const-string v2, "2 Mb/s"

    const v3, 0x1e8480

    invoke-direct {v1, v3, v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1912
    sget-object v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->qualityOptionsMap:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;

    const-string v2, "1.5 Mb/s"

    const v3, 0x16e360

    invoke-direct {v1, v3, v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1913
    sget-object v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->qualityOptionsMap:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;

    const-string v2, "1 Mb/s"

    const v3, 0xf4240

    invoke-direct {v1, v3, v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1914
    sget-object v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->qualityOptionsMap:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;

    const-string v2, "720 Kb/s"

    const v3, 0xafc80

    invoke-direct {v1, v3, v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1915
    sget-object v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->qualityOptionsMap:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;

    const-string v2, "420 kb/s"

    const v3, 0x668a0

    invoke-direct {v1, v3, v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1916
    sget-object v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->qualityOptionsMap:Ljava/util/List;

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;

    const-string v2, "240 kb/s"

    const v3, 0x3a980

    invoke-direct {v1, v3, v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 89
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mGuideVisible:Z

    .line 156
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mHandler:Landroid/os/Handler;

    .line 165
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mFadeEnabled:Z

    .line 166
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mUsingMinPanel:Z

    .line 167
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mAllowTopWithMin:Z

    .line 168
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mIsVisible:Z

    .line 169
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupPanelVisible:Z

    .line 170
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNextUpPanelVisible:Z

    .line 171
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSmNextUpPanelVisible:Z

    .line 172
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mAllowVisualSeeking:Z

    const/16 v1, 0x7530

    .line 175
    iput v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->skipFwdAmt:I

    const/16 v1, 0x2710

    .line 176
    iput v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->skipBackAmt:I

    .line 456
    iput v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->numProgressiveSkips:I

    .line 457
    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$10;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$10;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    iput-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->progressiveSkipRunnable:Ljava/lang/Runnable;

    .line 611
    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$17;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$17;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    iput-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mAudioFocusChanged:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 628
    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$18;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    iput-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->itemViewClickedListener:Landroidx/leanback/widget/OnItemViewClickedListener;

    .line 698
    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$19;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$19;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    iput-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->clearNumDisplay:Ljava/lang/Runnable;

    .line 705
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->longPressProcessed:Z

    .line 706
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->progressiveSkipping:Z

    .line 709
    new-instance v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$20;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    iput-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->keyListener:Ltv/emby/embyatv/base/IKeyListener;

    .line 1347
    new-instance v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$24;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$24;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    iput-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1375
    new-instance v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$25;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$25;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    iput-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method private ShowPremiereMessage()V
    .locals 3

    .line 1983
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Emby Premiere Required"

    .line 1984
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Recording functionality requires an active Emby Premiere subscription.  Learn more at http://emby.media/premiere."

    .line 1985
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1003b8

    const/4 v2, 0x0

    .line 1986
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$45;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$45;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    const v2, 0x7f1003b6

    .line 1987
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1995
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->startFadeTimer()V

    return-void
.end method

.method static synthetic access$100(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->longPressProcessed:Z

    return p0
.end method

.method static synthetic access$1000(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Ljava/lang/String;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->switchChannel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Z)Z
    .locals 0

    .line 89
    iput-boolean p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->longPressProcessed:Z

    return p1
.end method

.method static synthetic access$1100(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Ltv/emby/embyatv/itemhandling/BaseRowItem;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->navigateToPerson(Ltv/emby/embyatv/itemhandling/BaseRowItem;)V

    return-void
.end method

.method static synthetic access$1200(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mGuideVisible:Z

    return p0
.end method

.method static synthetic access$1300(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hideGuide()V

    return-void
.end method

.method static synthetic access$1400(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)Z
    .locals 0

    .line 89
    invoke-direct {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showLiveControls()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showGuide()V

    return-void
.end method

.method static synthetic access$1600(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->toggleRecording()V

    return-void
.end method

.method static synthetic access$1700(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hideNextUpPanel()V

    return-void
.end method

.method static synthetic access$1800(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hideSmNextUpPanel()V

    return-void
.end method

.method static synthetic access$1900(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showNextUpPanel()V

    return-void
.end method

.method static synthetic access$200(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->startProgressiveSkippingFwd()V

    return-void
.end method

.method static synthetic access$2000(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 89
    iget-object p0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->clearNumDisplay:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2100(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Z)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showQuickChannelChanger(Z)V

    return-void
.end method

.method static synthetic access$2200(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->scrollLivePanelTo(I)V

    return-void
.end method

.method static synthetic access$2300(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showChapters()V

    return-void
.end method

.method static synthetic access$2400(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hideInfo()V

    return-void
.end method

.method static synthetic access$2500(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showInfo()V

    return-void
.end method

.method static synthetic access$2600(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)Ltv/emby/embyatv/base/IKeyListener;
    .locals 0

    .line 89
    iget-object p0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->keyListener:Ltv/emby/embyatv/base/IKeyListener;

    return-object p0
.end method

.method static synthetic access$2700(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)Ltv/emby/embyatv/ui/ImageButton;
    .locals 0

    .line 89
    iget-object p0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mAudioBtn:Ltv/emby/embyatv/ui/ImageButton;

    return-object p0
.end method

.method static synthetic access$2800(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)Ltv/emby/embyatv/ui/ImageButton;
    .locals 0

    .line 89
    iget-object p0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSubtBtn:Ltv/emby/embyatv/ui/ImageButton;

    return-object p0
.end method

.method static synthetic access$2900(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showCast()V

    return-void
.end method

.method static synthetic access$300(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->startProgressiveSkippingBack()V

    return-void
.end method

.method static synthetic access$3000(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Landroid/view/Menu;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->buildCurrentBitrateOptions(Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$3100(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Lmediabrowser/model/dto/BaseItemDto;Z)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->cancelRecording(Lmediabrowser/model/dto/BaseItemDto;Z)V

    return-void
.end method

.method static synthetic access$3200(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)Ltv/emby/embyatv/ui/ImageButton;
    .locals 0

    .line 89
    iget-object p0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mRecordingBtn:Ltv/emby/embyatv/ui/ImageButton;

    return-object p0
.end method

.method static synthetic access$3300(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Z)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hideNextUpPanel(Z)V

    return-void
.end method

.method static synthetic access$3400(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Z)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hideSmNextUpPanel(Z)V

    return-void
.end method

.method static synthetic access$3500(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->updateCurrentDuration(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method static synthetic access$3600(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/ImageView;Z)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->updatePoster(Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic access$3700(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/ImageView;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->updateLogo(Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$3800(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->updateStudio(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method static synthetic access$3900(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->addButtons(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method static synthetic access$400(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)I
    .locals 0

    .line 89
    iget p0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->numProgressiveSkips:I

    return p0
.end method

.method static synthetic access$4000(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showSmNextUpPanel()V

    return-void
.end method

.method static synthetic access$408(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)I
    .locals 2

    .line 89
    iget v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->numProgressiveSkips:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->numProgressiveSkips:I

    return v0
.end method

.method static synthetic access$500(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->skippingForward:Z

    return p0
.end method

.method static synthetic access$600(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)I
    .locals 0

    .line 89
    iget p0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->skipFwdAmt:I

    return p0
.end method

.method static synthetic access$700(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)I
    .locals 0

    .line 89
    iget p0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->skipBackAmt:I

    return p0
.end method

.method static synthetic access$800(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->progressiveSkipping:Z

    return p0
.end method

.method static synthetic access$802(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Z)Z
    .locals 0

    .line 89
    iput-boolean p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->progressiveSkipping:Z

    return p1
.end method

.method static synthetic access$900(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hidePopupPanel()V

    return-void
.end method

.method private addButtons(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 11

    .line 1500
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1501
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonRow2:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1502
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isFireTv()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->canSeek()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1506
    iget-object v3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonRow:Landroid/widget/LinearLayout;

    new-instance v10, Ltv/emby/embyatv/ui/ImageButton;

    iget-object v5, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v6, 0x7f080173

    iget v7, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonSize:I

    new-instance v8, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$28;

    invoke-direct {v8, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$28;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    new-instance v9, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$29;

    invoke-direct {v9, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$29;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Ltv/emby/embyatv/ui/ImageButton;-><init>(Landroid/content/Context;IILandroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1523
    :cond_1
    new-instance v3, Ltv/emby/embyatv/ui/ImageButton;

    iget-object v4, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    iget v5, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonSize:I

    new-instance v6, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$30;

    invoke-direct {v6, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$30;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    const v7, 0x7f080162

    invoke-direct {v3, v4, v7, v5, v6}, Ltv/emby/embyatv/ui/ImageButton;-><init>(Landroid/content/Context;IILandroid/view/View$OnClickListener;)V

    iput-object v3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlayPauseBtn:Ltv/emby/embyatv/ui/ImageButton;

    .line 1531
    iget-object v3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlayPauseBtn:Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {v3, v7}, Ltv/emby/embyatv/ui/ImageButton;->setPrimaryImage(I)V

    .line 1532
    iget-object v3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlayPauseBtn:Ltv/emby/embyatv/ui/ImageButton;

    const v4, 0x7f080113

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/ui/ImageButton;->setSecondaryImage(I)V

    .line 1533
    iget-object v3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonRow:Landroid/widget/LinearLayout;

    iget-object v4, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlayPauseBtn:Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v0, :cond_2

    .line 1537
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonRow:Landroid/widget/LinearLayout;

    new-instance v9, Ltv/emby/embyatv/ui/ImageButton;

    iget-object v4, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v5, 0x7f080191

    iget v6, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonSize:I

    new-instance v7, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$31;

    invoke-direct {v7, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$31;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    new-instance v8, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$32;

    invoke-direct {v8, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$32;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Ltv/emby/embyatv/ui/ImageButton;-><init>(Landroid/content/Context;IILandroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1555
    :cond_2
    invoke-direct {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showLiveControls()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1557
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->canManageRecordings()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1558
    new-instance v0, Ltv/emby/embyatv/ui/ImageButton;

    iget-object v3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v4, 0x7f08016c

    iget v5, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonSize:I

    new-instance v6, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$33;

    invoke-direct {v6, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$33;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    invoke-direct {v0, v3, v4, v5, v6}, Ltv/emby/embyatv/ui/ImageButton;-><init>(Landroid/content/Context;IILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mRecordingBtn:Ltv/emby/embyatv/ui/ImageButton;

    .line 1564
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mRecordingBtn:Ltv/emby/embyatv/ui/ImageButton;

    const v3, 0x7f080166

    invoke-virtual {v0, v3}, Ltv/emby/embyatv/ui/ImageButton;->setSecondaryImage(I)V

    .line 1565
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getTimerId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mRecordingBtn:Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/ImageButton;->toggleState()V

    .line 1566
    :cond_3
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonRow:Landroid/widget/LinearLayout;

    iget-object v3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mRecordingBtn:Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1570
    :cond_4
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonRow:Landroid/widget/LinearLayout;

    new-instance v3, Ltv/emby/embyatv/ui/ImageButton;

    iget-object v4, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v5, 0x7f0800e9

    iget v6, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonSize:I

    new-instance v7, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$34;

    invoke-direct {v7, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$34;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    invoke-direct {v3, v4, v5, v6, v7}, Ltv/emby/embyatv/ui/ImageButton;-><init>(Landroid/content/Context;IILandroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1588
    new-instance v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$35;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$35;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    invoke-static {v0}, Ltv/emby/embyatv/livetv/TvManager;->loadAllChannels(Lmediabrowser/apiinteraction/Response;)V

    .line 1619
    :cond_5
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->GetSubtitleStreams(Lmediabrowser/model/dto/MediaSourceInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    .line 1620
    :goto_1
    iget-object v3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v3}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v3

    invoke-static {v3}, Ltv/emby/embyatv/util/Utils;->GetAudioStreams(Lmediabrowser/model/dto/MediaSourceInfo;)Ljava/util/List;

    move-result-object v3

    .line 1621
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_7

    const/4 v4, 0x1

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_8

    .line 1623
    iget-object v3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Multiple Audio tracks found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v5}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v5

    invoke-static {v5}, Ltv/emby/embyatv/util/Utils;->GetAudioStreams(Lmediabrowser/model/dto/MediaSourceInfo;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1624
    new-instance v3, Ltv/emby/embyatv/ui/ImageButton;

    iget-object v4, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v5, 0x7f080061

    iget v6, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonSize:I

    new-instance v7, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36;

    invoke-direct {v7, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    invoke-direct {v3, v4, v5, v6, v7}, Ltv/emby/embyatv/ui/ImageButton;-><init>(Landroid/content/Context;IILandroid/view/View$OnClickListener;)V

    iput-object v3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mAudioBtn:Ltv/emby/embyatv/ui/ImageButton;

    .line 1663
    iget-object v3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonRow:Landroid/widget/LinearLayout;

    iget-object v4, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mAudioBtn:Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 1665
    :cond_8
    iget-object v4, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v4}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9

    const-string v3, "Only one audio track."

    goto :goto_3

    :cond_9
    const-string v3, "No Audio Tracks!"

    :goto_3
    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v4, v3, v5}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    if-eqz v0, :cond_a

    .line 1669
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Subtitle tracks found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v4}, Ltv/emby/embyatv/playback/PlaybackController;->getSubtitleStreams()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1670
    new-instance v0, Ltv/emby/embyatv/ui/ImageButton;

    iget-object v3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v4, 0x7f08019a

    iget v5, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonSize:I

    new-instance v6, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$37;

    invoke-direct {v6, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$37;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    invoke-direct {v0, v3, v4, v5, v6}, Ltv/emby/embyatv/ui/ImageButton;-><init>(Landroid/content/Context;IILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSubtBtn:Ltv/emby/embyatv/ui/ImageButton;

    .line 1708
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonRow:Landroid/widget/LinearLayout;

    iget-object v3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSubtBtn:Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 1710
    :cond_a
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v3, "No sub tracks found."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1713
    :goto_5
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->hasNextItem()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1714
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonRow:Landroid/widget/LinearLayout;

    new-instance v3, Ltv/emby/embyatv/ui/ImageButton;

    iget-object v4, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v5, 0x7f08011d

    iget v6, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonSize:I

    new-instance v7, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$38;

    invoke-direct {v7, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$38;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    invoke-direct {v3, v4, v5, v6, v7}, Ltv/emby/embyatv/ui/ImageButton;-><init>(Landroid/content/Context;IILandroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1722
    :cond_b
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getOverview()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1723
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonRow2:Landroid/widget/LinearLayout;

    new-instance v3, Ltv/emby/embyatv/ui/ImageButton;

    iget-object v4, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v5, 0x7f0800fa

    iget v6, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonSize:I

    new-instance v7, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$39;

    invoke-direct {v7, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$39;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    invoke-direct {v3, v4, v5, v6, v7}, Ltv/emby/embyatv/ui/ImageButton;-><init>(Landroid/content/Context;IILandroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1731
    :cond_c
    invoke-direct {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showLiveControls()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getPeople()[Lmediabrowser/model/dto/BaseItemPerson;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getPeople()[Lmediabrowser/model/dto/BaseItemPerson;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_e

    .line 1733
    new-instance v0, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getPeople()[Lmediabrowser/model/dto/BaseItemPerson;

    move-result-object v3

    new-instance v4, Ltv/emby/embyatv/presentation/CardPresenter;

    const/16 v5, 0xc8

    invoke-direct {v4, v1, v5, v2}, Ltv/emby/embyatv/presentation/CardPresenter;-><init>(ZII)V

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupRowAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v0, v3, v4, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;-><init>([Lmediabrowser/model/dto/BaseItemPerson;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 1734
    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    .line 1735
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupRow:Landroidx/leanback/widget/ListRow;

    if-eqz v1, :cond_d

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupRowAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupRow:Landroidx/leanback/widget/ListRow;

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    .line 1736
    :cond_d
    new-instance v1, Landroidx/leanback/widget/ListRow;

    new-instance v2, Landroidx/leanback/widget/HeaderItem;

    const v3, 0x7f100467

    invoke-virtual {p0, v3}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    iput-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupRow:Landroidx/leanback/widget/ListRow;

    .line 1737
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupRowAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupRow:Landroidx/leanback/widget/ListRow;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 1739
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonRow2:Landroid/widget/LinearLayout;

    new-instance v1, Ltv/emby/embyatv/ui/ImageButton;

    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v3, 0x7f08019d

    iget v4, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonSize:I

    new-instance v5, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$40;

    invoke-direct {v5, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$40;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    invoke-direct {v1, v2, v3, v4, v5}, Ltv/emby/embyatv/ui/ImageButton;-><init>(Landroid/content/Context;IILandroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1747
    :cond_e
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getChapters()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1748
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f

    .line 1749
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonRow2:Landroid/widget/LinearLayout;

    new-instance v2, Ltv/emby/embyatv/ui/ImageButton;

    iget-object v3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v4, 0x7f080084

    iget v5, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonSize:I

    new-instance v6, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$41;

    invoke-direct {v6, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$41;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    invoke-direct {v2, v3, v4, v5, v6}, Ltv/emby/embyatv/ui/ImageButton;-><init>(Landroid/content/Context;IILandroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1758
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgressMin:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setChapters(Ljava/util/List;Ljava/lang/String;)V

    .line 1762
    :cond_f
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonRow2:Landroid/widget/LinearLayout;

    new-instance v0, Ltv/emby/embyatv/ui/ImageButton;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v2, 0x7f080087

    iget v3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonSize:I

    new-instance v4, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;

    invoke-direct {v4, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    invoke-direct {v0, v1, v2, v3, v4}, Ltv/emby/embyatv/ui/ImageButton;-><init>(Landroid/content/Context;IILandroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private buildCurrentBitrateOptions(Landroid/view/Menu;)V
    .locals 10

    .line 1921
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentItemBitrate()I

    move-result v0

    const-string v1, ""

    .line 1925
    sget-object v2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->qualityOptionsMap:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v5, v1

    const/4 v1, -0x1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;

    .line 1926
    invoke-virtual {v6}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;->getKey()I

    move-result v7

    if-le v7, v0, :cond_1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 1934
    :cond_0
    invoke-virtual {v6}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;->getKey()I

    move-result v1

    .line 1935
    invoke-virtual {v6}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v7, 0x1

    if-lez v1, :cond_2

    add-int/lit8 v8, v4, 0x1

    .line 1929
    invoke-interface {p1, v7, v1, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move v4, v8

    const/4 v1, -0x1

    .line 1932
    :cond_2
    invoke-virtual {v6}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;->getKey()I

    move-result v8

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v6}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$QualityOption;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v8, v4, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move v4, v9

    goto :goto_0

    :cond_3
    return-void
.end method

.method private cancelRecording(Lmediabrowser/model/dto/BaseItemDto;Z)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 2003
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p2

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesTimerId()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$46;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$46;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    invoke-virtual {p2, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->CancelLiveTvSeriesTimerAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    goto :goto_0

    .line 2018
    :cond_0
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p2

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getTimerId()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$47;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$47;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    invoke-virtual {p2, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->CancelLiveTvTimerAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getCurrentChapterIndex(Lmediabrowser/model/dto/BaseItemDto;J)I
    .locals 4

    .line 1872
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** looking for chapter at pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1873
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getChapters()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1874
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getChapters()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/dto/ChapterInfoDto;

    .line 1876
    invoke-virtual {v0}, Lmediabrowser/model/dto/ChapterInfoDto;->getStartPositionTicks()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-lez v0, :cond_0

    add-int/lit8 v2, v2, -0x1

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method private getStatLine(ILjava/lang/String;)Landroid/widget/LinearLayout;
    .locals 6

    .line 1064
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 1065
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1066
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1067
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 1068
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const v3, -0x333334

    .line 1069
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1070
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1071
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {p1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1072
    iget-object v4, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const/4 v5, 0x5

    invoke-static {v4, v5}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v4

    iput v4, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1073
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1074
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1075
    new-instance p1, Landroid/widget/TextView;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-direct {p1, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1076
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1077
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1078
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x3f59999a    # 0.85f

    .line 1079
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1080
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private hideGuide()V
    .locals 4

    .line 1328
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mTvGuide:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mGuideVisible:Z

    if-eqz v0, :cond_0

    .line 1330
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a013c

    new-instance v2, Landroid/app/Fragment;

    invoke-direct {v2}, Landroid/app/Fragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 1331
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mTopPanel:Landroid/view/View;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->fadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1332
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mTvGuide:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->setChainedKeyListener(Ltv/emby/embyatv/base/IKeyListener;)V

    .line 1333
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$23;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$23;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    .line 1340
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mGuideVisible:Z

    .line 1341
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->setAllowLongPress(Z)V

    .line 1342
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->showPlayerStats()Z

    move-result v0

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showStats(Z)V

    :cond_0
    return-void
.end method

.method private hideInfo()V
    .locals 3

    .line 1293
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonRow:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1294
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonRow2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1295
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgress:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setVisibility(I)V

    .line 1296
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mRemainingTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1297
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentPos:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1298
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mEndTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1299
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPoster:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1300
    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-static {v2, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1301
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPoster:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1302
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPoster:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1303
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mInfoSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1304
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 1305
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlayPauseBtn:Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/ImageButton;->requestFocus()Z

    const/4 v0, 0x1

    .line 1306
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setFadingEnabled(Z)V

    :cond_0
    return-void
.end method

.method private hideNextUpPanel()V
    .locals 1

    const/4 v0, 0x0

    .line 1250
    invoke-direct {p0, v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hideNextUpPanel(Z)V

    return-void
.end method

.method private hideNextUpPanel(Z)V
    .locals 1

    .line 1253
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNextUpPanelVisible:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1254
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNextUpPanel:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNextUpPanel:Landroid/view/View;

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hideNextUp:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    const/4 p1, 0x0

    .line 1255
    iput-boolean p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNextUpPanelVisible:Z

    .line 1256
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->setAllowLongPress(Z)V

    :cond_1
    return-void
.end method

.method private hidePopupPanel()V
    .locals 3

    const/4 v0, 0x1

    .line 1235
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setFadingEnabled(Z)V

    .line 1236
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupArea:Landroid/widget/FrameLayout;

    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hidePopup:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1237
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNumberDisplay:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 1238
    iput-boolean v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupPanelVisible:Z

    .line 1239
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-virtual {v1, v0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->setAllowLongPress(Z)V

    return-void
.end method

.method private hideSmNextUpPanel()V
    .locals 1

    const/4 v0, 0x0

    .line 1269
    invoke-direct {p0, v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hideSmNextUpPanel(Z)V

    return-void
.end method

.method private hideSmNextUpPanel(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1272
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSmNextUpPanel:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSmNextUpPanel:Landroid/view/View;

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hideSmNextUp:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    const/4 p1, 0x0

    .line 1273
    iput-boolean p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSmNextUpPanelVisible:Z

    .line 1274
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->setAllowLongPress(Z)V

    return-void
.end method

.method private navigateToPerson(Ltv/emby/embyatv/itemhandling/BaseRowItem;)V
    .locals 3

    .line 689
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->pause()V

    .line 690
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Ltv/emby/embyatv/itemhandling/ItemLauncher;->launch(Ltv/emby/embyatv/itemhandling/BaseRowItem;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILandroid/app/Activity;)V

    return-void
.end method

.method private recordProgram(Lmediabrowser/model/dto/BaseItemDto;Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 2040
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;

    invoke-direct {v2, p0, p2, p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$48;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;ZLmediabrowser/model/dto/BaseItemDto;)V

    invoke-virtual {v0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetDefaultLiveTvTimerInfo(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    :cond_0
    return-void
.end method

.method private scrollLivePanelTo(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    .line 1487
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupRowPresenter:Ltv/emby/embyatv/presentation/PositionableListRowPresenter;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;->setPosition(I)V

    add-int/lit8 p1, p1, -0x4

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1490
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupRow:Landroidx/leanback/widget/ListRow;

    invoke-virtual {v0}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    const/16 v1, 0xc

    .line 1491
    invoke-virtual {v0, p1, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->notifyArrayItemRangeChanged(II)V

    :cond_1
    return-void
.end method

.method private setTimedText(Lmediabrowser/model/mediainfo/SubtitleTrackEvent;)V
    .locals 2

    .line 2314
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$57;

    invoke-direct {v1, p0, p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$57;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Lmediabrowser/model/mediainfo/SubtitleTrackEvent;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setupNextUpAnimations()V
    .locals 4

    .line 535
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v1, 0x7f010006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showNextUp:Landroid/view/animation/Animation;

    .line 536
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showNextUp:Landroid/view/animation/Animation;

    new-instance v2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$13;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$13;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 553
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v2, 0x7f010001

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hideNextUp:Landroid/view/animation/Animation;

    .line 554
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hideNextUp:Landroid/view/animation/Animation;

    new-instance v3, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$14;

    invoke-direct {v3, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$14;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 571
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showSmNextUp:Landroid/view/animation/Animation;

    .line 572
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showSmNextUp:Landroid/view/animation/Animation;

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$15;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$15;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 589
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hideSmNextUp:Landroid/view/animation/Animation;

    .line 590
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hideSmNextUp:Landroid/view/animation/Animation;

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$16;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$16;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private setupPopupAnimations()V
    .locals 2

    .line 495
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v1, 0x7f010006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showPopup:Landroid/view/animation/Animation;

    .line 496
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showPopup:Landroid/view/animation/Animation;

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$11;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$11;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 513
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v1, 0x7f010001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hidePopup:Landroid/view/animation/Animation;

    .line 514
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hidePopup:Landroid/view/animation/Animation;

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$12;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$12;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private showCast()V
    .locals 1

    .line 1479
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupRow:Landroidx/leanback/widget/ListRow;

    if-eqz v0, :cond_0

    .line 1480
    invoke-direct {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showPopupPanel()V

    const/4 v0, 0x0

    .line 1481
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setFadingEnabled(Z)V

    :cond_0
    return-void
.end method

.method private showChapters()V
    .locals 2

    .line 1218
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgressMin:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setStartInChapterMode(Z)V

    const/4 v0, 0x0

    .line 1219
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showMin(Z)V

    .line 1220
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setFadingEnabled(Z)V

    .line 1221
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgressMin:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setCanFocus(Z)V

    .line 1222
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgressMin:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->requestFocus()Z

    return-void
.end method

.method private showGuide()V
    .locals 4

    const/4 v0, 0x1

    .line 1311
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hide(Z)V

    const/4 v1, 0x0

    .line 1312
    invoke-virtual {p0, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showStats(Z)V

    .line 1315
    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mTvGuide:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    if-nez v2, :cond_0

    .line 1316
    new-instance v2, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-direct {v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;-><init>()V

    iput-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mTvGuide:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    .line 1317
    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mTvGuide:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-virtual {v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->setOverlayMode()V

    .line 1320
    :cond_0
    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mTvGuide:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    iget-object v3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->keyListener:Ltv/emby/embyatv/base/IKeyListener;

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->setChainedKeyListener(Ltv/emby/embyatv/base/IKeyListener;)V

    .line 1321
    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-virtual {v2, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->setAllowLongPress(Z)V

    .line 1323
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a013c

    iget-object v3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mTvGuide:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 1324
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mGuideVisible:Z

    return-void
.end method

.method private showInfo()V
    .locals 3

    .line 1278
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonRow:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1279
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonRow2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1280
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgress:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setVisibility(I)V

    .line 1281
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mRemainingTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1282
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentPos:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1283
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mEndTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1284
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPoster:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1285
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const/16 v2, 0x96

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1286
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPoster:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1287
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPoster:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1288
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mInfoSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1289
    invoke-virtual {p0, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setFadingEnabled(Z)V

    return-void
.end method

.method private showLiveControls()Z
    .locals 1

    .line 452
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->isLiveTv()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->isInProgressRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showNextUpPanel()V
    .locals 2

    .line 1243
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mIsVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hide()V

    .line 1244
    :cond_0
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupPanelVisible:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hidePopupPanel()V

    :cond_1
    const/4 v0, 0x1

    .line 1246
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNextUpPanelVisible:Z

    .line 1247
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNextUpPanel:Landroid/view/View;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showNextUp:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private showPopupPanel()V
    .locals 2

    const/4 v0, 0x1

    .line 1226
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupPanelVisible:Z

    const/4 v0, 0x0

    .line 1227
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setFadingEnabled(Z)V

    .line 1228
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-virtual {v1, v0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->setAllowLongPress(Z)V

    .line 1230
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupArea:Landroid/widget/FrameLayout;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showPopup:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1231
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mBottomPanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showQuickChannelChanger(Z)V
    .locals 4

    .line 1465
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupRow:Landroidx/leanback/widget/ListRow;

    if-eqz v0, :cond_0

    .line 1466
    invoke-direct {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showPopupPanel()V

    .line 1467
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$27;

    invoke-direct {v1, p0, p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$27;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Z)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private showSmNextUpPanel()V
    .locals 2

    .line 1261
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mIsVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hide()V

    .line 1262
    :cond_0
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupPanelVisible:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hidePopupPanel()V

    .line 1264
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->setAllowLongPress(Z)V

    const/4 v0, 0x1

    .line 1265
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSmNextUpPanelVisible:Z

    .line 1266
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSmNextUpPanel:Landroid/view/View;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showSmNextUp:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startFadeTimer()V
    .locals 4

    .line 1130
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mHideTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1131
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mHideTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startProgressiveSkippingBack()V
    .locals 2

    const/4 v0, 0x0

    .line 486
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->skippingForward:Z

    .line 487
    iget-boolean v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mIsVisible:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showMin()V

    .line 488
    :cond_0
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/PlaybackController;->pause()V

    .line 489
    iput v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->numProgressiveSkips:I

    const/4 v0, 0x1

    .line 490
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->progressiveSkipping:Z

    .line 491
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->progressiveSkipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startProgressiveSkippingFwd()V
    .locals 2

    const/4 v0, 0x1

    .line 477
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->skippingForward:Z

    .line 478
    iget-boolean v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mIsVisible:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showMin()V

    .line 479
    :cond_0
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/PlaybackController;->pause()V

    const/4 v1, 0x0

    .line 480
    iput v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->numProgressiveSkips:I

    .line 481
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->progressiveSkipping:Z

    .line 482
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->progressiveSkipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private switchChannel(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1103
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1105
    invoke-direct {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hideGuide()V

    goto :goto_0

    .line 1107
    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->stop()V

    .line 1108
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->clearStreamInfo()V

    .line 1109
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgress:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setVisibility(I)V

    .line 1110
    invoke-direct {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hideGuide()V

    .line 1111
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$22;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$22;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    invoke-virtual {v0, p1, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    :goto_0
    return-void
.end method

.method private toggleRecording()V
    .locals 4

    .line 1941
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getCurrentProgram()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    .line 1943
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_4

    .line 1945
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getTimerId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1947
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesTimerId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1948
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f100465

    .line 1949
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f100623

    .line 1950
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f100466

    new-instance v3, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$44;

    invoke-direct {v3, p0, v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$44;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Lmediabrowser/model/dto/BaseItemDto;)V

    .line 1951
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Just this one"

    new-instance v3, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$43;

    invoke-direct {v3, p0, v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$43;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Lmediabrowser/model/dto/BaseItemDto;)V

    .line 1957
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1963
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1964
    :cond_0
    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getIsSeries()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 1966
    invoke-direct {p0, v0, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->recordProgram(Lmediabrowser/model/dto/BaseItemDto;Z)V

    goto :goto_0

    .line 1969
    :cond_1
    invoke-direct {p0, v0, v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->cancelRecording(Lmediabrowser/model/dto/BaseItemDto;Z)V

    goto :goto_0

    .line 1972
    :cond_2
    invoke-direct {p0, v0, v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->recordProgram(Lmediabrowser/model/dto/BaseItemDto;Z)V

    goto :goto_0

    .line 1977
    :cond_3
    invoke-direct {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->ShowPremiereMessage()V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateCurrentDuration(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 4

    .line 1460
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-string v0, "Recording"

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "InProgress"

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 1461
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    iput p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentDuration:I

    return-void
.end method

.method private updateLogo(Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/ImageView;)V
    .locals 1

    .line 1408
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1409
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->getLogoImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1410
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-static {v0, p1, p2}, Ltv/emby/embyatv/util/ImageUtils;->loadImageIntoView(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method private updateManualSubtitlePosition()V
    .locals 3

    .line 2246
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2247
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2248
    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-virtual {v2}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2249
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, -0x8c

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2250
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x6

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2251
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updatePoster(Lmediabrowser/model/dto/BaseItemDto;Landroid/widget/ImageView;Z)V
    .locals 8

    .line 1399
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1400
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v7

    .line 1401
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move v6, p3

    invoke-static/range {v2 .. v7}, Ltv/emby/embyatv/util/Utils;->getPrimaryImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;ZZZI)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1402
    iget-object p3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-static {p3, p1, p2}, Ltv/emby/embyatv/util/ImageUtils;->loadImageIntoView(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method private updateStudio(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 3

    .line 1415
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1416
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    .line 1417
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const/16 v2, 0x46

    invoke-static {v1, v2}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    .line 1418
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getStudios()[Lmediabrowser/model/dto/StudioDto;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getStudios()[Lmediabrowser/model/dto/StudioDto;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getStudios()[Lmediabrowser/model/dto/StudioDto;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lmediabrowser/model/dto/StudioDto;->getHasPrimaryImage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1419
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getStudios()[Lmediabrowser/model/dto/StudioDto;

    move-result-object p1

    aget-object p1, p1, v2

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    invoke-static {p1, v1, v0}, Ltv/emby/embyatv/util/Utils;->getPrimaryImageUrl(Lmediabrowser/model/dto/StudioDto;Lmediabrowser/apiinteraction/ApiClient;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1421
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mStudioImage:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1}, Ltv/emby/embyatv/util/ImageUtils;->loadImageIntoView(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addManualSubtitles(Lmediabrowser/model/mediainfo/SubtitleTrackInfo;)V
    .locals 2

    .line 2255
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mManualSubs:Lmediabrowser/model/mediainfo/SubtitleTrackInfo;

    const-wide/16 v0, 0x0

    .line 2256
    iput-wide v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->lastReportedPosMs:J

    .line 2258
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    new-instance v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$55;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$55;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createStats()V
    .locals 3

    .line 1010
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentStreamInfo()Ltv/emby/embyatv/api/StreamInfo;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v2}, Ltv/emby/embyatv/playback/PlaybackController;->getTranscodingInfo()Lmediabrowser/model/session/TranscodingInfo;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->createStats(Lmediabrowser/model/dto/MediaSourceInfo;Ltv/emby/embyatv/api/StreamInfo;Lmediabrowser/model/session/TranscodingInfo;)V

    return-void
.end method

.method public createStats(Lmediabrowser/model/dto/MediaSourceInfo;Ltv/emby/embyatv/api/StreamInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 1006
    invoke-virtual {p0, p1, p2, v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->createStats(Lmediabrowser/model/dto/MediaSourceInfo;Ltv/emby/embyatv/api/StreamInfo;Lmediabrowser/model/session/TranscodingInfo;)V

    return-void
.end method

.method public createStats(Lmediabrowser/model/dto/MediaSourceInfo;Ltv/emby/embyatv/api/StreamInfo;Lmediabrowser/model/session/TranscodingInfo;)V
    .locals 11

    .line 1014
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mStatsForNerds:Landroid/view/View;

    const v1, 0x7f0a0221

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1015
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mStatsForNerds:Landroid/view/View;

    const v2, 0x7f0a02bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1016
    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mStatsForNerds:Landroid/view/View;

    const v3, 0x7f0a020c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1018
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1019
    iget-object v3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v3}, Ltv/emby/embyatv/playback/PlaybackController;->isNativeMode()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ExoPlayer"

    goto :goto_0

    :cond_0
    const-string v3, "MPV"

    :goto_0
    const v4, 0x7f1005d5

    invoke-direct {p0, v4, v3}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getStatLine(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1020
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isBravia()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isPhilipsTv()Z

    move-result v3

    if-nez v3, :cond_1

    const v3, 0x7f100492

    invoke-static {}, Ltv/emby/embyatv/display/DisplayHelper;->getCurrentDisplayModeName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getStatLine(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    const v3, 0x7f1005d4

    if-eqz p3, :cond_3

    .line 1021
    invoke-virtual {p3}, Lmediabrowser/model/session/TranscodingInfo;->getIsVideoDirect()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "Direct Stream"

    goto :goto_1

    :cond_2
    const-string v4, "Transcode"

    goto :goto_1

    :cond_3
    const-string v4, "Direct Play"

    :goto_1
    invoke-direct {p0, v3, v4}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getStatLine(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v3, 0x7f1005d7

    if-eqz p3, :cond_4

    const-string v4, "HLS"

    goto :goto_2

    .line 1022
    :cond_4
    invoke-virtual {p2}, Ltv/emby/embyatv/api/StreamInfo;->getContainer()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-direct {p0, v3, v4}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getStatLine(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1024
    invoke-virtual {p2}, Ltv/emby/embyatv/api/StreamInfo;->getAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Ltv/emby/embyatv/api/StreamInfo;->getAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/entities/MediaStream;

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getDefaultAudioStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v0

    .line 1025
    :goto_3
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    const v3, 0x7f1005ce

    const v4, 0x7f1005d0

    const v5, 0x7f1005dc

    const/4 v6, 0x1

    const v7, 0x7f1005cf

    const v8, 0x7f1005db

    const/4 v9, 0x0

    if-eqz p3, :cond_b

    .line 1027
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lmediabrowser/model/session/TranscodingInfo;->getWidth()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "x"

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lmediabrowser/model/session/TranscodingInfo;->getHeight()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v5, p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getStatLine(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1028
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lmediabrowser/model/session/TranscodingInfo;->getVideoCodec()Ljava/lang/String;

    move-result-object v5

    const-string v10, ""

    invoke-static {v5, v10}, Ltv/emby/embyatv/util/Utils;->getFriendlyCodec(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lmediabrowser/model/session/TranscodingInfo;->getIsVideoDirect()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, " (direct)"

    goto :goto_4

    :cond_6
    const-string v5, ""

    :goto_4
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v8, p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getStatLine(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1029
    invoke-virtual {p3}, Lmediabrowser/model/session/TranscodingInfo;->getAudioCodec()Ljava/lang/String;

    move-result-object p2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lmediabrowser/model/session/TranscodingInfo;->getIsAudioDirect()Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, " (direct)"

    goto :goto_5

    :cond_7
    const-string v10, ""

    :goto_5
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Ltv/emby/embyatv/util/Utils;->getFriendlyCodec(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v7, p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getStatLine(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1030
    invoke-virtual {p3}, Lmediabrowser/model/session/TranscodingInfo;->getAudioChannels()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Ltv/emby/embyatv/util/Utils;->getAudioChannelsString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v3, p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getStatLine(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1031
    invoke-virtual {p3}, Lmediabrowser/model/session/TranscodingInfo;->getBitrate()Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Ltv/emby/embyatv/util/Utils;->getFriendlyBitrate(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v4, p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getStatLine(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const p2, 0x7f10050d

    .line 1032
    iget-object v4, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v4}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentMaxBitrateStr()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2, v4}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getStatLine(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1033
    invoke-virtual {p3}, Lmediabrowser/model/session/TranscodingInfo;->getFramerate()Ljava/lang/Float;

    move-result-object p2

    if-eqz p2, :cond_8

    const p2, 0x7f1005d8

    const-string v4, "%.2f fps"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p3}, Lmediabrowser/model/session/TranscodingInfo;->getFramerate()Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2, v4}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getStatLine(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1034
    :cond_8
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {p2}, Ltv/emby/embyatv/playback/PlaybackController;->getTranscodeReasons()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_9

    const p2, 0x7f1005f8

    .line 1035
    iget-object v4, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v4}, Ltv/emby/embyatv/playback/PlaybackController;->getTranscodeReasons()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2, v4}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getStatLine(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1037
    :cond_9
    invoke-virtual {p3}, Lmediabrowser/model/session/TranscodingInfo;->getCompletionPercentage()Ljava/lang/Double;

    move-result-object p2

    if-eqz p2, :cond_a

    const p2, 0x7f1005d9

    const-string v4, "%.2f%%"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p3}, Lmediabrowser/model/session/TranscodingInfo;->getCompletionPercentage()Ljava/lang/Double;

    move-result-object p3

    aput-object p3, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getStatLine(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1038
    :cond_a
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {p2}, Ltv/emby/embyatv/playback/PlaybackController;->isBurningSubs()Z

    move-result p2

    if-eqz p2, :cond_e

    const p2, 0x7f100461

    const-string p3, ""

    invoke-direct {p0, p2, p3}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getStatLine(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_7

    .line 1040
    :cond_b
    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getVideoStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object p3

    if-eqz p3, :cond_c

    .line 1041
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getVideoStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v10

    invoke-virtual {v10}, Lmediabrowser/model/entities/MediaStream;->getWidth()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "x"

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getVideoStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v10

    invoke-virtual {v10}, Lmediabrowser/model/entities/MediaStream;->getHeight()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, v5, p3}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getStatLine(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1042
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getVideoStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v5

    invoke-virtual {v5}, Lmediabrowser/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v5

    const-string v10, ""

    invoke-static {v5, v10}, Ltv/emby/embyatv/util/Utils;->getFriendlyCodec(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (direct)"

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, v8, p3}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getStatLine(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1043
    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getVideoStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object p3

    invoke-virtual {p3}, Lmediabrowser/model/entities/MediaStream;->getBitRate()Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3}, Ltv/emby/embyatv/util/Utils;->getFriendlyBitrate(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, v4, p3}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getStatLine(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_c
    if-eqz v0, :cond_e

    .line 1045
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lmediabrowser/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lmediabrowser/model/entities/MediaStream;->getProfile()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ltv/emby/embyatv/util/Utils;->getFriendlyCodec(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ltv/emby/embyatv/api/StreamInfo;->getMaxAudioChannels()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {p2}, Ltv/emby/embyatv/api/StreamInfo;->getMaxAudioChannels()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v4, 0x2

    if-ne p2, v4, :cond_d

    const-string p2, " (local downmix)"

    goto :goto_6

    :cond_d
    const-string p2, " (direct)"

    :goto_6
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v7, p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getStatLine(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1048
    :cond_e
    :goto_7
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    const p2, 0x7f1005d1

    .line 1049
    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getContainer()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getStatLine(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1050
    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getVideoStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object p2

    if-eqz p2, :cond_10

    .line 1051
    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getVideoStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object p2

    invoke-virtual {p2}, Lmediabrowser/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    invoke-static {p2, p3}, Ltv/emby/embyatv/util/Utils;->getFriendlyCodec(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v8, p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getStatLine(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1052
    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getVideoStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object p2

    invoke-virtual {p2}, Lmediabrowser/model/entities/MediaStream;->getBitRate()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_f

    const p2, 0x7f1005da

    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getVideoStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object p3

    invoke-virtual {p3}, Lmediabrowser/model/entities/MediaStream;->getBitRate()Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3}, Ltv/emby/embyatv/util/Utils;->getFriendlyBitrate(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getStatLine(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_f
    const p2, 0x7f1005d3

    const-string p3, "%.2f fps"

    .line 1053
    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getVideoStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getAverageFrameRate()Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v9

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getStatLine(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_10
    if-eqz v0, :cond_14

    .line 1056
    invoke-virtual {v0}, Lmediabrowser/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lmediabrowser/model/entities/MediaStream;->getProfile()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ltv/emby/embyatv/util/Utils;->getFriendlyCodec(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v7, p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getStatLine(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1057
    invoke-virtual {v0}, Lmediabrowser/model/entities/MediaStream;->getBitRate()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_11

    const p1, 0x7f1005cd

    invoke-virtual {v0}, Lmediabrowser/model/entities/MediaStream;->getBitRate()Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Ltv/emby/embyatv/util/Utils;->getFriendlyBitrate(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getStatLine(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1058
    :cond_11
    invoke-virtual {v0}, Lmediabrowser/model/entities/MediaStream;->getChannelLayout()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {v0}, Lmediabrowser/model/entities/MediaStream;->getChannelLayout()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_12
    invoke-virtual {v0}, Lmediabrowser/model/entities/MediaStream;->getChannels()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-virtual {v0}, Lmediabrowser/model/entities/MediaStream;->getChannels()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_13
    const p1, 0x7f10045d

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_8
    invoke-direct {p0, v3, p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getStatLine(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_14
    return-void
.end method

.method public finish()V
    .locals 1

    .line 2235
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x0

    .line 1205
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hide(Z)V

    return-void
.end method

.method public hide(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 1209
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mIsVisible:Z

    .line 1210
    iget-boolean v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mUsingMinPanel:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mBottomPanelMin:Landroid/view/View;

    :goto_0
    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->fadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mBottomPanel:Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    if-nez p1, :cond_2

    .line 1211
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mTopPanel:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mTopPanel:Landroid/view/View;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->fadeOut:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1212
    :cond_2
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgress:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setCanFocus(Z)V

    .line 1213
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgressMin:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setCanFocus(Z)V

    .line 1214
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->setAllowLongPress(Z)V

    return-void
.end method

.method public nextItemThresholdHit(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 3

    .line 2221
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$54;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$54;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    invoke-virtual {v0, p1, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13

    .line 265
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 266
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mItemsToPlay:Ljava/util/List;

    if-eqz p1, :cond_2

    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mItemsToPlay:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 268
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v0, 0x7f0a022e

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPoster:Landroid/widget/ImageView;

    .line 269
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v0, 0x7f0a01f3

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNextUpPoster:Landroid/widget/ImageView;

    .line 270
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v0, 0x7f0a02be

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mStudioImage:Landroid/widget/ImageView;

    .line 271
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v0, 0x7f0a01c6

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mLogoImage:Landroid/widget/ImageView;

    .line 272
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v0, 0x7f0a0312

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mTopPanel:Landroid/view/View;

    .line 273
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v0, 0x7f0a0069

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mBottomPanelMin:Landroid/view/View;

    .line 274
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v0, 0x7f0a0068

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mBottomPanel:Landroid/view/View;

    .line 275
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v0, 0x7f0a01f2

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNextUpPanel:Landroid/view/View;

    .line 276
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v0, 0x7f0a02ba

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mStatsForNerds:Landroid/view/View;

    .line 277
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v0, 0x7f0a01ff

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNumberDisplay:Landroid/widget/TextView;

    .line 278
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNumberDisplay:Landroid/widget/TextView;

    const/high16 v0, -0x1000000

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 280
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v1, 0x7f0a02a1

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSmNextUpPanel:Landroid/view/View;

    .line 281
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v1, 0x7f0a0215

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPauseShield:Landroid/widget/FrameLayout;

    .line 283
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v1, 0x7f0a0219

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/ui/ImageButton;

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlayPauseBtnMin:Ltv/emby/embyatv/ui/ImageButton;

    .line 284
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlayPauseBtnMin:Ltv/emby/embyatv/ui/ImageButton;

    const v1, 0x7f080113

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/ui/ImageButton;->setSecondaryImage(I)V

    .line 285
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlayPauseBtnMin:Ltv/emby/embyatv/ui/ImageButton;

    const v1, 0x7f080162

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/ui/ImageButton;->setPrimaryImage(I)V

    .line 286
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlayPauseBtnMin:Ltv/emby/embyatv/ui/ImageButton;

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$3;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$3;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/ui/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v1, 0x7f0a0180

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mInfoRow:Landroid/widget/LinearLayout;

    .line 295
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v1, 0x7f0a01f1

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNextUpInfoRow:Landroid/widget/LinearLayout;

    .line 296
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v1, 0x7f0a0085

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonRow:Landroid/widget/LinearLayout;

    .line 297
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v1, 0x7f0a0086

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonRow2:Landroid/widget/LinearLayout;

    .line 298
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v1, 0x7f0a0181

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mInfoSummary:Landroid/widget/TextView;

    .line 299
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v1, 0x7f0a0307

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mTitle:Landroid/widget/TextView;

    .line 300
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v1, 0x7f0a01f5

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNextUpTitle:Landroid/widget/TextView;

    .line 301
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v1, 0x7f0a02a3

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSmNextUpTitle:Landroid/widget/TextView;

    .line 302
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v1, 0x7f0a01f4

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNextUpSummary:Landroid/widget/TextView;

    .line 303
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getDefaultFontBold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 304
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNextUpTitle:Landroid/widget/TextView;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getDefaultFontBold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 305
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object p1

    .line 306
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSmNextUpTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 307
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNextUpSummary:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 308
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mInfoSummary:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 309
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v2, 0x7f0a00ee

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mEndTime:Landroid/widget/TextView;

    .line 310
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mEndTime:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 311
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v2, 0x7f0a00bc

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentPos:Landroid/widget/TextView;

    .line 312
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentPos:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 313
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v2, 0x7f0a0254

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mRemainingTime:Landroid/widget/TextView;

    .line 314
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mRemainingTime:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 315
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v2, 0x7f0a00bd

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentPosMin:Landroid/widget/TextView;

    .line 316
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentPosMin:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 317
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v2, 0x7f0a0255

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mRemainingTimeMin:Landroid/widget/TextView;

    .line 318
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mRemainingTimeMin:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 319
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v1, 0x7f0a0224

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/ui/InteractiveProgressBar;

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgressMin:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    .line 320
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgressMin:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-virtual {p1, p0}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setFragment(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    .line 321
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v1, 0x7f0a0223

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/ui/InteractiveProgressBar;

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgress:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    .line 322
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgress:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-virtual {p1, p0}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setFragment(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    .line 323
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v1, 0x7f0a022b

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupArea:Landroid/widget/FrameLayout;

    .line 324
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v1, 0x7f0a02b7

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mStartsIn:Landroid/widget/TextView;

    .line 325
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v1, 0x7f0a01f0

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNextButton:Landroid/widget/Button;

    .line 326
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mNextButton:Landroid/widget/Button;

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$4;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$4;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v1, 0x7f0a008a

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCancelButton:Landroid/widget/Button;

    .line 334
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$5;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$5;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v1, 0x7f0a02a2

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSmStartsIn:Landroid/widget/TextView;

    .line 342
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v1, 0x7f0a007b

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSmNextButton:Landroid/widget/Button;

    .line 343
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSmNextButton:Landroid/widget/Button;

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$6;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$6;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v1, 0x7f0a007a

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSmCancelButton:Landroid/widget/Button;

    .line 351
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSmCancelButton:Landroid/widget/Button;

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$7;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$7;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v1, 0x7f0a0203

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSubtitleText:Landroid/widget/TextView;

    .line 361
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSubtitleText:Landroid/widget/TextView;

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 362
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mSubtitleText:Landroid/widget/TextView;

    const v1, 0x3fcccccd    # 1.6f

    const/high16 v2, 0x3fc00000    # 1.5f

    const v3, 0x3fa66666    # 1.3f

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 363
    invoke-direct {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->updateManualSubtitlePosition()V

    .line 366
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v0, 0x7f010001

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->fadeOut:Landroid/view/animation/Animation;

    .line 367
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->fadeOut:Landroid/view/animation/Animation;

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 368
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v0, 0x7f010007

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->slideDown:Landroid/view/animation/Animation;

    .line 369
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v0, 0x7f010006

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->slideUp:Landroid/view/animation/Animation;

    .line 370
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->slideUp:Landroid/view/animation/Animation;

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 371
    invoke-direct {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setupPopupAnimations()V

    .line 372
    invoke-direct {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setupNextUpAnimations()V

    .line 374
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    new-instance v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$8;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$8;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->setLongPressEvent(Lmediabrowser/apiinteraction/Response;)V

    .line 414
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->setAllowLongPress(Z)V

    .line 416
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Position"

    const/4 v1, 0x0

    .line 418
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "MediaSourceId"

    .line 419
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    .line 421
    new-instance v3, Ltv/emby/embyatv/api/VideoOptions;

    invoke-direct {v3}, Ltv/emby/embyatv/api/VideoOptions;-><init>()V

    .line 422
    invoke-virtual {v3, v1}, Ltv/emby/embyatv/api/VideoOptions;->setMediaSourceId(Ljava/lang/String;)V

    const-string v1, "AudioStreamNdx"

    .line 423
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ltv/emby/embyatv/api/VideoOptions;->setAudioStreamIndex(Ljava/lang/Integer;)V

    const-string v1, "SubtitleStreamNdx"

    .line 424
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ltv/emby/embyatv/api/VideoOptions;->setSubtitleStreamIndex(Ljava/lang/Integer;)V

    .line 425
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    int-to-long v4, v0

    const-string v0, "MainItemId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v4, v5, p1, v3}, Ltv/emby/embyatv/playback/PlaybackController;->play(JLjava/lang/String;Ltv/emby/embyatv/api/VideoOptions;)V

    goto :goto_0

    .line 427
    :cond_1
    iget-object v6, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    int-to-long v7, v0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const-string v0, "AudioStreamNdx"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string v0, "SubtitleStreamNdx"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual/range {v6 .. v12}, Ltv/emby/embyatv/playback/PlaybackController;->play(JIIII)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 180
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 181
    iput-object p0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mFragment:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    .line 182
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    .line 183
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    .line 186
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->stopAudio()V

    .line 187
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->clearAudioQueue()V

    .line 189
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/TvApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mAudioManager:Landroid/media/AudioManager;

    .line 191
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mAudioManager:Landroid/media/AudioManager;

    if-nez p1, :cond_0

    .line 192
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    const-string v0, "Unable to get audio manager"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f100626

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void

    .line 197
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->setVolumeControlStream(I)V

    .line 198
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->keyListener:Ltv/emby/embyatv/base/IKeyListener;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->registerKeyListener(Ltv/emby/embyatv/base/IKeyListener;)V

    .line 200
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentVideoQueue()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mItemsToPlay:Ljava/util/List;

    .line 202
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mItemsToPlay:Ljava/util/List;

    if-eqz p1, :cond_2

    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mItemsToPlay:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 208
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const/16 v0, 0x1c

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mButtonSize:I

    .line 210
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    new-instance v0, Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mItemsToPlay:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Ltv/emby/embyatv/playback/PlaybackController;-><init>(Ljava/util/List;Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/TvApp;->setPlaybackController(Ltv/emby/embyatv/playback/PlaybackController;)V

    .line 211
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPlaybackController()Ltv/emby/embyatv/playback/PlaybackController;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    .line 212
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "pref_skip_fwd"

    const-string v1, "30000"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->skipFwdAmt:I

    .line 213
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "pref_skip_back"

    const-string v1, "10000"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->skipBackAmt:I

    .line 216
    new-instance p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$1;

    invoke-direct {p1, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$1;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mHideTask:Ljava/lang/Runnable;

    return-void

    .line 203
    :cond_2
    :goto_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v1, 0x7f100639

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 204
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->finish()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const p3, 0x7f0d00ad

    .line 228
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 231
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    const p3, 0x7f0a0268

    invoke-virtual {p2, p3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object p2

    if-nez p2, :cond_0

    .line 232
    new-instance p2, Landroidx/leanback/app/RowsSupportFragment;

    invoke-direct {p2}, Landroidx/leanback/app/RowsSupportFragment;-><init>()V

    iput-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    .line 233
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-virtual {p2}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    .line 234
    invoke-virtual {p2, p3, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 236
    :cond_0
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-virtual {p2}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    .line 237
    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Landroidx/leanback/app/RowsSupportFragment;

    iput-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    .line 240
    :goto_0
    new-instance p2, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;

    invoke-direct {p2}, Ltv/emby/embyatv/presentation/PositionableListRowPresenter;-><init>()V

    iput-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupRowPresenter:Ltv/emby/embyatv/presentation/PositionableListRowPresenter;

    .line 241
    new-instance p2, Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object p3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupRowPresenter:Ltv/emby/embyatv/presentation/PositionableListRowPresenter;

    invoke-direct {p2, p3}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupRowAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 242
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    iget-object p3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupRowAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p2, p3}, Landroidx/leanback/app/RowsSupportFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 243
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p3

    const/16 v0, 0x2d

    invoke-static {p3, v0}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroidx/leanback/app/RowsSupportFragment;->setAlignment(I)V

    .line 244
    iget-object p2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupRowsFragment:Landroidx/leanback/app/RowsSupportFragment;

    iget-object p3, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->itemViewClickedListener:Landroidx/leanback/widget/OnItemViewClickedListener;

    invoke-virtual {p2, p3}, Landroidx/leanback/app/RowsSupportFragment;->setOnItemViewClickedListener(Landroidx/leanback/widget/BaseOnItemViewClickedListener;)V

    .line 246
    new-instance p2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$2;

    invoke-direct {p2, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$2;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1152
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1153
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->progressiveSkipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1154
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->removePreviousQueueItems()V

    .line 1156
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "YtTrailer"

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ltv/emby/embyatv/integration/RecommendationManager;->getInstance()Ltv/emby/embyatv/integration/RecommendationManager;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/integration/RecommendationManager;->recommend(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 1162
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1163
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment pausing. IsFinishing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-virtual {v2}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1136
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 1137
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mAudioFocusChanged:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, v2, :cond_0

    .line 1138
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v2, "Unable to get audio focus"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1139
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f100626

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;I)V

    return-void

    .line 1143
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->isPlayingIntros()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1145
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->setPlayingIntros(Z)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1168
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1169
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment stopping. IsFinishing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-virtual {v2}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1170
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->stop()V

    .line 1171
    sget v0, Ltv/emby/embyatv/ui/ImageButton;->STATE_PRIMARY:I

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setPlayPauseActionState(I)V

    .line 1172
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->clearNumDisplay:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1175
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mAudioFocusChanged:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1176
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->finish()V

    :cond_0
    return-void
.end method

.method public positionSelected(I)V
    .locals 3

    .line 433
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ltv/emby/embyatv/playback/PlaybackController;->seek(J)V

    .line 434
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/PlaybackController;->unPause()V

    .line 435
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$9;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$9;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public progressGotFocus()V
    .locals 1

    .line 444
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->pause()V

    return-void
.end method

.method public progressLostFocus()V
    .locals 1

    .line 448
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->unPause()V

    return-void
.end method

.method public setCurrentTime(J)V
    .locals 2

    .line 2082
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2083
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$49;

    invoke-direct {v1, p0, p1, p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$49;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;J)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setFadingEnabled(Z)V
    .locals 1

    .line 2110
    iput-boolean p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mFadeEnabled:Z

    .line 2111
    iget-boolean p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mFadeEnabled:Z

    if-eqz p1, :cond_0

    .line 2112
    iget-boolean p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mIsVisible:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->startFadeTimer()V

    goto :goto_0

    .line 2114
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mHideTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2115
    iget-boolean p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mIsVisible:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPopupPanelVisible:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$50;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$50;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLiveStartTime(J)V
    .locals 2

    .line 2269
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgress:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setStartOffset(I)V

    .line 2270
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgressMin:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setStartOffset(I)V

    return-void
.end method

.method public setPlayPauseActionState(I)V
    .locals 2

    .line 2125
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlayPauseBtn:Ltv/emby/embyatv/ui/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$51;

    invoke-direct {v1, p0, p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$51;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setProgressiveSkipping(Z)V
    .locals 0

    .line 707
    iput-boolean p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->progressiveSkipping:Z

    return-void
.end method

.method public setSecondaryTime(J)V
    .locals 2

    .line 2105
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgress:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setSecondaryProgress(I)V

    .line 2106
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgressMin:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setSecondaryProgress(I)V

    return-void
.end method

.method public show()V
    .locals 3

    .line 1181
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->setAllowLongPress(Z)V

    .line 1182
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mBottomPanel:Landroid/view/View;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->slideUp:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1183
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mTopPanel:Landroid/view/View;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->slideDown:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    .line 1184
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mIsVisible:Z

    .line 1185
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mCurrentProgress:Ltv/emby/embyatv/ui/InteractiveProgressBar;

    iget-boolean v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mAllowVisualSeeking:Z

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/ui/InteractiveProgressBar;->setCanFocus(Z)V

    .line 1186
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlayPauseBtn:Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {v1}, Ltv/emby/embyatv/ui/ImageButton;->requestFocus()Z

    .line 1187
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setFadingEnabled(Z)V

    return-void
.end method

.method public showMin()V
    .locals 1

    const/4 v0, 0x0

    .line 1191
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showMin(Z)V

    return-void
.end method

.method public showMin(Z)V
    .locals 3

    const/4 v0, 0x1

    .line 1194
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mUsingMinPanel:Z

    .line 1195
    iput-boolean p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mAllowTopWithMin:Z

    .line 1196
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mBottomPanelMin:Landroid/view/View;

    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->slideUp:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    if-eqz p1, :cond_0

    .line 1197
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mTopPanel:Landroid/view/View;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->slideDown:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1198
    :cond_0
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mIsVisible:Z

    .line 1199
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlayPauseBtnMin:Ltv/emby/embyatv/ui/ImageButton;

    invoke-virtual {p1}, Ltv/emby/embyatv/ui/ImageButton;->requestFocus()Z

    .line 1200
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setFadingEnabled(Z)V

    .line 1201
    invoke-direct {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->startFadeTimer()V

    return-void
.end method

.method public showStats(Z)V
    .locals 1

    .line 1002
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mStatsForNerds:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showStillWatching()V
    .locals 4

    .line 1087
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->setStillWatchingActive(Z)V

    .line 1088
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v2, 0x7f100653

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    const v3, 0x7f100620

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4650

    invoke-virtual {v0, v1, v2, v3}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->showMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1089
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$21;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$21;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    const-wide/16 v2, 0x32c8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showSubLoadingMsg(Z)V
    .locals 2

    .line 2274
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$56;

    invoke-direct {v1, p0, p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$56;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Z)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public togglePauseShield(Z)V
    .locals 1

    .line 695
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPauseShield:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public toggleStats()V
    .locals 2

    .line 996
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->showPlayerStats()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->setShowPlayerStats(Z)V

    .line 997
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->showPlayerStats()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->createStats()V

    .line 998
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->showPlayerStats()Z

    move-result v0

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->showStats(Z)V

    return-void
.end method

.method public updateDisplay()V
    .locals 5

    .line 2135
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentlyPlayingItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2136
    :goto_0
    iget-object v4, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2137
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mActivity:Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    new-instance v2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;

    invoke-direct {v2, p0, v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$52;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;Lmediabrowser/model/dto/BaseItemDto;)V

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2190
    iget-object v1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$53;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$53;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V

    invoke-virtual {v1, v0, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetThumbnails(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    :cond_2
    return-void
.end method

.method public updateEndTime(J)V
    .locals 6

    .line 1445
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1446
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v1

    const-string v2, "**** Time Left: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    .line 1447
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$26;

    invoke-direct {v1, p0, p1, p2}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$26;-><init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;J)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public updateSubtitles(J)V
    .locals 4

    .line 2290
    iget-wide v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->lastReportedPosMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2291
    iget-wide v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->lastReportedPosMs:J

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 2296
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mManualSubs:Lmediabrowser/model/mediainfo/SubtitleTrackInfo;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-wide/16 v0, 0x2710

    mul-long p1, p1, v0

    .line 2302
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mManualSubs:Lmediabrowser/model/mediainfo/SubtitleTrackInfo;

    invoke-virtual {v0}, Lmediabrowser/model/mediainfo/SubtitleTrackInfo;->getTrackEvents()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/mediainfo/SubtitleTrackEvent;

    .line 2303
    invoke-virtual {v1}, Lmediabrowser/model/mediainfo/SubtitleTrackEvent;->getStartPositionTicks()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-ltz v2, :cond_2

    invoke-virtual {v1}, Lmediabrowser/model/mediainfo/SubtitleTrackEvent;->getEndPositionTicks()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gtz v2, :cond_2

    .line 2304
    invoke-direct {p0, v1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setTimedText(Lmediabrowser/model/mediainfo/SubtitleTrackEvent;)V

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 2309
    invoke-direct {p0, p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->setTimedText(Lmediabrowser/model/mediainfo/SubtitleTrackEvent;)V

    return-void
.end method
