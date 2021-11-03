.class public Ltv/emby/embyatv/playback/AudioNowPlayingActivity;
.super Ltv/emby/embyatv/base/BaseActivity;
.source "AudioNowPlayingActivity.java"


# static fields
.field public static BACKDROP_ROTATION_INTERVAL:I = 0x2710


# instance fields
.field private BUTTON_SIZE:I

.field private audioEventListener:Ltv/emby/embyatv/playback/AudioEventListener;

.field private lastBdUrl:Ljava/lang/String;

.field private lastUserInteraction:J

.field private mActivity:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

.field private mAlbumButton:Ltv/emby/embyatv/ui/ImageButton;

.field private mApplication:Ltv/emby/embyatv/TvApp;

.field private mArtistButton:Ltv/emby/embyatv/ui/ImageButton;

.field private mArtistName:Landroid/widget/TextView;

.field private mAudioQueuePresenter:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mBackdropLoop:Ljava/lang/Runnable;

.field private mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

.field private mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

.field private mClock:Ltv/emby/embyatv/ui/ClockUserView;

.field private mCounter:Landroid/widget/TextView;

.field private mCurrentDuration:I

.field private mCurrentFocusIndex:I

.field private mCurrentPos:Landroid/widget/TextView;

.field private mCurrentProgress:Landroid/widget/ProgressBar;

.field private mDisplayDuration:Ljava/lang/String;

.field private mFavButton:Ltv/emby/embyatv/ui/ImageButton;

.field private mLastFocusView:Landroid/view/View;

.field private mLogoImage:Landroid/widget/ImageView;

.field private mLoopHandler:Landroid/os/Handler;

.field private mMainView:Landroid/widget/FrameLayout;

.field private mMediaManager:Ltv/emby/embyatv/playback/MediaManager;

.field private mNextButton:Ltv/emby/embyatv/ui/ImageButton;

.field private mPlayPauseButton:Ltv/emby/embyatv/ui/ImageButton;

.field private mPrevButton:Ltv/emby/embyatv/ui/ImageButton;

.field private mQueueAdapter:Ltv/emby/embyatv/presentation/CardItemAdapter;

.field private mQueueRow:Landroidx/recyclerview/widget/RecyclerView;

.field private mRemainingTime:Landroid/widget/TextView;

.field private mRepeatButton:Ltv/emby/embyatv/ui/ImageButton;

.field private mSSAlbumSong:Landroid/widget/TextView;

.field private mSSArea:Landroid/widget/RelativeLayout;

.field private mSSQueueStatus:Landroid/widget/TextView;

.field private mSSTime:Landroid/widget/TextView;

.field private mSSUpNext:Landroid/widget/TextView;

.field private mSaveButton:Ltv/emby/embyatv/ui/ImageButton;

.field private mShuffleButton:Ltv/emby/embyatv/ui/ImageButton;

.field private roboto:Landroid/graphics/Typeface;

.field private ssActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ltv/emby/embyatv/base/BaseActivity;-><init>()V

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mLoopHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mCurrentFocusIndex:I

    .line 487
    new-instance v0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$19;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$19;-><init>(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V

    iput-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->audioEventListener:Ltv/emby/embyatv/playback/AudioEventListener;

    return-void
.end method

.method static synthetic access$000(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/playback/MediaManager;
    .locals 0

    .line 48
    iget-object p0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mMediaManager:Ltv/emby/embyatv/playback/MediaManager;

    return-object p0
.end method

.method static synthetic access$100(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->updateButtons(Z)V

    return-void
.end method

.method static synthetic access$1000(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 48
    iget-object p0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mQueueRow:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$1100(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/ui/ImageButton;
    .locals 0

    .line 48
    iget-object p0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mPlayPauseButton:Ltv/emby/embyatv/ui/ImageButton;

    return-object p0
.end method

.method static synthetic access$1200(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->focusCurrentQueueItem()V

    return-void
.end method

.method static synthetic access$1300(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/ui/ImageButton;
    .locals 0

    .line 48
    iget-object p0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mFavButton:Ltv/emby/embyatv/ui/ImageButton;

    return-object p0
.end method

.method static synthetic access$1400(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->loadItem()V

    return-void
.end method

.method static synthetic access$1500(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->updateCurrentItemDisplay(I)V

    return-void
.end method

.method static synthetic access$1600(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 48
    iget-object p0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mMainView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1700(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/ui/ImageButton;
    .locals 0

    .line 48
    iget-object p0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mRepeatButton:Ltv/emby/embyatv/ui/ImageButton;

    return-object p0
.end method

.method static synthetic access$1800(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/ui/ImageButton;
    .locals 0

    .line 48
    iget-object p0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mSaveButton:Ltv/emby/embyatv/ui/ImageButton;

    return-object p0
.end method

.method static synthetic access$1900(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/ui/ImageButton;
    .locals 0

    .line 48
    iget-object p0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mPrevButton:Ltv/emby/embyatv/ui/ImageButton;

    return-object p0
.end method

.method static synthetic access$200(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->toggleFavorite()V

    return-void
.end method

.method static synthetic access$2000(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/ui/ImageButton;
    .locals 0

    .line 48
    iget-object p0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mNextButton:Ltv/emby/embyatv/ui/ImageButton;

    return-object p0
.end method

.method static synthetic access$2100(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/ui/ImageButton;
    .locals 0

    .line 48
    iget-object p0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mShuffleButton:Ltv/emby/embyatv/ui/ImageButton;

    return-object p0
.end method

.method static synthetic access$2200(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/ui/ImageButton;
    .locals 0

    .line 48
    iget-object p0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mAlbumButton:Ltv/emby/embyatv/ui/ImageButton;

    return-object p0
.end method

.method static synthetic access$2300(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/ui/ImageButton;
    .locals 0

    .line 48
    iget-object p0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mArtistButton:Ltv/emby/embyatv/ui/ImageButton;

    return-object p0
.end method

.method static synthetic access$2400(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->ssActive:Z

    return p0
.end method

.method static synthetic access$2500(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)J
    .locals 2

    .line 48
    iget-wide v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->lastUserInteraction:J

    return-wide v0
.end method

.method static synthetic access$2600(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Landroid/os/Handler;
    .locals 0

    .line 48
    iget-object p0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mLoopHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/playback/AudioNowPlayingActivity;
    .locals 0

    .line 48
    iget-object p0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mActivity:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    return-object p0
.end method

.method static synthetic access$400(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/presentation/CardItemAdapter;
    .locals 0

    .line 48
    iget-object p0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mQueueAdapter:Ltv/emby/embyatv/presentation/CardItemAdapter;

    return-object p0
.end method

.method static synthetic access$500(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Lmediabrowser/model/dto/BaseItemDto;
    .locals 0

    .line 48
    iget-object p0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    return-object p0
.end method

.method static synthetic access$600(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->updateCounter(I)V

    return-void
.end method

.method static synthetic access$700(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)I
    .locals 0

    .line 48
    iget p0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mCurrentFocusIndex:I

    return p0
.end method

.method static synthetic access$702(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;I)I
    .locals 0

    .line 48
    iput p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mCurrentFocusIndex:I

    return p1
.end method

.method static synthetic access$800(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Ltv/emby/embyatv/TvApp;
    .locals 0

    .line 48
    iget-object p0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    return-object p0
.end method

.method static synthetic access$900(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)Landroid/view/View;
    .locals 0

    .line 48
    iget-object p0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mLastFocusView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$902(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 48
    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mLastFocusView:Landroid/view/View;

    return-object p1
.end method

.method private addGenres(Landroid/widget/LinearLayout;)V
    .locals 10

    .line 589
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 590
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getGenreItems()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getGenreItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 592
    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1}, Lmediabrowser/model/dto/BaseItemDto;->getGenreItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmediabrowser/model/dto/NameIdPair;

    if-nez v0, :cond_0

    const-string v0, "  /  "

    const/16 v3, 0xe

    .line 593
    invoke-static {p0, p1, v0, v3}, Ltv/emby/embyatv/util/InfoLayoutHelper;->addSpacer(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    :cond_0
    const/4 v0, 0x0

    .line 595
    new-instance v9, Ltv/emby/embyatv/ui/GenreButton;

    iget-object v5, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->roboto:Landroid/graphics/Typeface;

    const/16 v6, 0x10

    invoke-virtual {v2}, Lmediabrowser/model/dto/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Ltv/emby/embyatv/ui/GenreButton;-><init>(Landroid/content/Context;Landroid/graphics/Typeface;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private focusCurrentQueueItem()V
    .locals 2

    .line 350
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mQueueRow:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mLastFocusView:Landroid/view/View;

    .line 351
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mQueueRow:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mQueueAdapter:Ltv/emby/embyatv/presentation/CardItemAdapter;

    invoke-virtual {v1}, Ltv/emby/embyatv/presentation/CardItemAdapter;->getCurrentItemNdx()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 353
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mQueueRow:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestFocus()Z

    :goto_1
    return-void
.end method

.method private getArtistName(Lmediabrowser/model/dto/BaseItemDto;)Ljava/lang/String;
    .locals 2

    .line 564
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getArtistItems()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getArtistItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getArtistItems()Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/dto/NameIdPair;

    invoke-virtual {p1}, Lmediabrowser/model/dto/NameIdPair;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumArtists()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumArtists()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumArtists()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method private loadItem()V
    .locals 4

    .line 528
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mMediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentAudioItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    .line 529
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {p0, v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->updateInfo(Lmediabrowser/model/dto/BaseItemDto;)V

    .line 531
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->formatMillis(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mDisplayDuration:Ljava/lang/String;

    .line 533
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mLoopHandler:Landroid/os/Handler;

    new-instance v1, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$20;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$20;-><init>(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V

    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private rotateBackdrops()V
    .locals 4

    .line 601
    new-instance v0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$22;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$22;-><init>(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V

    iput-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mBackdropLoop:Ljava/lang/Runnable;

    .line 613
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mLoopHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mBackdropLoop:Ljava/lang/Runnable;

    sget v2, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->BACKDROP_ROTATION_INTERVAL:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopRotate()V
    .locals 2

    .line 617
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mLoopHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mBackdropLoop:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mLoopHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mBackdropLoop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private toggleFavorite()V
    .locals 5

    .line 450
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    .line 451
    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserItemDataDto;->getIsFavorite()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v4, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$17;

    invoke-direct {v4, p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$17;-><init>(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lmediabrowser/apiinteraction/ApiClient;->UpdateFavoriteStatusAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method private updateButtons(Z)V
    .locals 1

    .line 543
    new-instance v0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$21;

    invoke-direct {v0, p0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$21;-><init>(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;Z)V

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateCounter(I)V
    .locals 2

    .line 462
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mCounter:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " | "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mQueueAdapter:Ltv/emby/embyatv/presentation/CardItemAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/presentation/CardItemAdapter;->getItemCount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateCurrentItemDisplay(I)V
    .locals 1

    const/4 v0, 0x1

    .line 465
    invoke-direct {p0, p1, v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->updateCurrentItemDisplay(IZ)V

    return-void
.end method

.method private updateCurrentItemDisplay(IZ)V
    .locals 2

    .line 468
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mQueueAdapter:Ltv/emby/embyatv/presentation/CardItemAdapter;

    invoke-virtual {v0}, Ltv/emby/embyatv/presentation/CardItemAdapter;->getCurrentItemNdx()I

    move-result v0

    .line 469
    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mQueueAdapter:Ltv/emby/embyatv/presentation/CardItemAdapter;

    invoke-virtual {v1, p1}, Ltv/emby/embyatv/presentation/CardItemAdapter;->setCurrentItemNdx(I)V

    if-ltz p1, :cond_1

    .line 471
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mQueueRow:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$18;

    invoke-direct {v1, p0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$18;-><init>(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    if-eqz p2, :cond_0

    .line 480
    iget-object p2, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mQueueRow:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mQueueRow:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 481
    :goto_0
    invoke-direct {p0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->updateCounter(I)V

    goto :goto_1

    .line 483
    :cond_1
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mQueueAdapter:Ltv/emby/embyatv/presentation/CardItemAdapter;

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/presentation/CardItemAdapter;->notifyItemChanged(I)V

    :goto_1
    return-void
.end method

.method private updateInfo(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 569
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mArtistName:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->getArtistName(Lmediabrowser/model/dto/BaseItemDto;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mCurrentDuration:I

    .line 572
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mCurrentProgress:Landroid/widget/ProgressBar;

    iget v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mCurrentDuration:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 573
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Ltv/emby/embyatv/util/Utils;->getBackdropImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->updateBackground(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 119
    invoke-super {p0, p1}, Ltv/emby/embyatv/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001c

    .line 120
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->setContentView(I)V

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->lastUserInteraction:J

    const/16 p1, 0x23

    .line 126
    invoke-static {p0, p1}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->BUTTON_SIZE:I

    .line 127
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    .line 128
    iput-object p0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mActivity:Ltv/emby/embyatv/playback/AudioNowPlayingActivity;

    .line 129
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mMediaManager:Ltv/emby/embyatv/playback/MediaManager;

    .line 130
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getDefaultFont()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->roboto:Landroid/graphics/Typeface;

    .line 131
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getDefaultFontLight()Landroid/graphics/Typeface;

    move-result-object p1

    const v0, 0x7f0a00a4

    .line 133
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/ui/ClockUserView;

    iput-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mClock:Ltv/emby/embyatv/ui/ClockUserView;

    .line 134
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mClock:Ltv/emby/embyatv/ui/ClockUserView;

    invoke-virtual {v0}, Ltv/emby/embyatv/ui/ClockUserView;->setSmallPresentation()V

    const v0, 0x7f0a0057

    .line 135
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mArtistName:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mArtistName:Landroid/widget/TextView;

    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->roboto:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 137
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mArtistName:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a01c8

    .line 138
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mMainView:Landroid/widget/FrameLayout;

    const v0, 0x7f0a00bb

    .line 139
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mCounter:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mCounter:Landroid/widget/TextView;

    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->roboto:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 141
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mCounter:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0056

    .line 142
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mLogoImage:Landroid/widget/ImageView;

    const v0, 0x7f0a02b1

    .line 144
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mSSArea:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a02b3

    .line 145
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mSSTime:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mSSTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f0a02b0

    .line 147
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mSSAlbumSong:Landroid/widget/TextView;

    .line 148
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mSSAlbumSong:Landroid/widget/TextView;

    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->roboto:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f0a02b2

    .line 149
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mSSQueueStatus:Landroid/widget/TextView;

    .line 150
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mSSQueueStatus:Landroid/widget/TextView;

    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->roboto:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f0a02b4

    .line 151
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mSSUpNext:Landroid/widget/TextView;

    .line 152
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mSSUpNext:Landroid/widget/TextView;

    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->roboto:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f0a0218

    .line 154
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/ui/ImageButton;

    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mPlayPauseButton:Ltv/emby/embyatv/ui/ImageButton;

    .line 155
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mPlayPauseButton:Ltv/emby/embyatv/ui/ImageButton;

    const v0, 0x7f080113

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/ImageButton;->setSecondaryImage(I)V

    .line 156
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mPlayPauseButton:Ltv/emby/embyatv/ui/ImageButton;

    const v0, 0x7f080162

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/ImageButton;->setPrimaryImage(I)V

    const p1, 0x7f0a0234

    .line 157
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/ui/ImageButton;

    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mPrevButton:Ltv/emby/embyatv/ui/ImageButton;

    .line 158
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mPrevButton:Ltv/emby/embyatv/ui/ImageButton;

    new-instance v0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$1;-><init>(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a025d

    .line 164
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$2;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$2;-><init>(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a011d

    .line 172
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$3;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$3;-><init>(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a01ef

    .line 179
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/ui/ImageButton;

    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mNextButton:Ltv/emby/embyatv/ui/ImageButton;

    .line 180
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mNextButton:Ltv/emby/embyatv/ui/ImageButton;

    new-instance v0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$4;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$4;-><init>(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0257

    .line 186
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/ui/ImageButton;

    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mRepeatButton:Ltv/emby/embyatv/ui/ImageButton;

    .line 187
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mRepeatButton:Ltv/emby/embyatv/ui/ImageButton;

    const v0, 0x7f08013d

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/ImageButton;->setPrimaryImage(I)V

    .line 188
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mRepeatButton:Ltv/emby/embyatv/ui/ImageButton;

    const v0, 0x7f08013e

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/ImageButton;->setSecondaryImage(I)V

    .line 189
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mRepeatButton:Ltv/emby/embyatv/ui/ImageButton;

    new-instance v0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$5;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$5;-><init>(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0112

    .line 196
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/ui/ImageButton;

    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mFavButton:Ltv/emby/embyatv/ui/ImageButton;

    .line 197
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mFavButton:Ltv/emby/embyatv/ui/ImageButton;

    const v0, 0x7f0801b9

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/ImageButton;->setPrimaryImage(I)V

    .line 198
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mFavButton:Ltv/emby/embyatv/ui/ImageButton;

    const v0, 0x7f080171

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/ImageButton;->setSecondaryImage(I)V

    .line 199
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mFavButton:Ltv/emby/embyatv/ui/ImageButton;

    new-instance v0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$6;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$6;-><init>(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a026a

    .line 205
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/ui/ImageButton;

    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mSaveButton:Ltv/emby/embyatv/ui/ImageButton;

    .line 206
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mSaveButton:Ltv/emby/embyatv/ui/ImageButton;

    new-instance v0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$7;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$7;-><init>(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a029e

    .line 212
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/ui/ImageButton;

    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mShuffleButton:Ltv/emby/embyatv/ui/ImageButton;

    .line 213
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mShuffleButton:Ltv/emby/embyatv/ui/ImageButton;

    new-instance v0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$8;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$8;-><init>(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a004e

    .line 230
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/ui/ImageButton;

    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mAlbumButton:Ltv/emby/embyatv/ui/ImageButton;

    .line 231
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mAlbumButton:Ltv/emby/embyatv/ui/ImageButton;

    new-instance v0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$9;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$9;-><init>(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0055

    .line 239
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/ui/ImageButton;

    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mArtistButton:Ltv/emby/embyatv/ui/ImageButton;

    .line 240
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mArtistButton:Ltv/emby/embyatv/ui/ImageButton;

    new-instance v0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$10;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$10;-><init>(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0223

    .line 257
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mCurrentProgress:Landroid/widget/ProgressBar;

    const p1, 0x7f0a00bc

    .line 258
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mCurrentPos:Landroid/widget/TextView;

    .line 259
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mCurrentPos:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f0a0254

    .line 260
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mRemainingTime:Landroid/widget/TextView;

    .line 261
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mRemainingTime:Landroid/widget/TextView;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 263
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mPlayPauseButton:Ltv/emby/embyatv/ui/ImageButton;

    new-instance v0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$11;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$11;-><init>(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a005b

    .line 271
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/ui/BackgroundFrame;

    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    .line 272
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/ui/BackgroundFrame;->setFullMode(Z)V

    .line 273
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    const v1, 0x3f266666    # 0.65f

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/ui/BackgroundFrame;->setAlpha(F)V

    .line 274
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/ui/BackgroundFrame;->setDarkening(F)V

    .line 276
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getBrowseTheme()I

    move-result p1

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->setTheme(I)V

    const p1, 0x7f0a0244

    .line 279
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mQueueRow:Landroidx/recyclerview/widget/RecyclerView;

    .line 280
    new-instance p1, Ltv/emby/embyatv/presentation/CustomLinearLayoutManager;

    invoke-direct {p1, p0}, Ltv/emby/embyatv/presentation/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mAudioQueuePresenter:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 281
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mAudioQueuePresenter:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 282
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mQueueRow:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mAudioQueuePresenter:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 283
    new-instance p1, Ltv/emby/embyatv/presentation/CardItemAdapter;

    new-instance v1, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$12;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$12;-><init>(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V

    new-instance v2, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$13;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$13;-><init>(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V

    new-instance v3, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$14;

    invoke-direct {v3, p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$14;-><init>(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V

    invoke-direct {p1, p0, v1, v2, v3}, Ltv/emby/embyatv/presentation/CardItemAdapter;-><init>(Landroid/content/Context;Ltv/emby/embyatv/presentation/ItemSelectedListener;Ltv/emby/embyatv/presentation/ItemClickedListener;Ltv/emby/embyatv/presentation/ItemClickedListener;)V

    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mQueueAdapter:Ltv/emby/embyatv/presentation/CardItemAdapter;

    .line 314
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mQueueRow:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mQueueAdapter:Ltv/emby/embyatv/presentation/CardItemAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 315
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mQueueAdapter:Ltv/emby/embyatv/presentation/CardItemAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentAudioQueue()Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    move-result-object v1

    invoke-virtual {p1, v1}, Ltv/emby/embyatv/presentation/CardItemAdapter;->setBaseAdapter(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;)V

    .line 316
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mCurrentProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setFocusable(Z)V

    .line 317
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mCurrentProgress:Landroid/widget/ProgressBar;

    new-instance v0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$15;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$15;-><init>(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 344
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mQueueRow:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mLastFocusView:Landroid/view/View;

    .line 345
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mQueueRow:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestFocus()Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v0, 0x1

    const/16 v1, 0x16

    if-eq p1, v1, :cond_2

    const/16 v1, 0x15

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    iget-boolean v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->ssActive:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x13

    if-eq p1, v1, :cond_1

    const/16 v1, 0x14

    if-ne p1, v1, :cond_4

    :cond_1
    return v0

    .line 104
    :cond_2
    :goto_0
    iget-wide v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->lastNavKeyDown:J

    const-wide/16 v3, 0x64

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    return v0

    .line 107
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->lastNavKeyDown:J

    .line 108
    iget-boolean v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->ssActive:Z

    if-eqz v1, :cond_4

    return v0

    .line 114
    :cond_4
    invoke-super {p0, p1, p2}, Ltv/emby/embyatv/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->lastUserInteraction:J

    const/16 v0, 0x7e

    const/4 v1, 0x1

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    const-wide/16 v2, 0x2710

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 406
    :pswitch_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mMediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->isPlayingAudio()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mMediaManager:Ltv/emby/embyatv/playback/MediaManager;

    iget-object p2, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mMediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {p2}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentAudioPosition()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Ltv/emby/embyatv/playback/MediaManager;->seekTo(J)J

    return v1

    .line 415
    :pswitch_1
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mMediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->isPlayingAudio()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 416
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mMediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentAudioPosition()J

    move-result-wide p1

    sub-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    move-wide p1, v2

    .line 419
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mMediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {v0, p1, p2}, Ltv/emby/embyatv/playback/MediaManager;->seekTo(J)J

    return v1

    .line 424
    :pswitch_2
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mMediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->prevAudioItem()I

    return v1

    .line 412
    :pswitch_3
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mMediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->nextAudioItem()I

    return v1

    .line 402
    :pswitch_4
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mMediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->stopAudio()V

    .line 403
    iget-boolean p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->ssActive:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->stopScreenSaver()V

    :cond_1
    return v1

    .line 427
    :pswitch_5
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->ssActive:Z

    if-eqz v0, :cond_2

    .line 428
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mMediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->nextAudioItem()I

    return v1

    .line 433
    :pswitch_6
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->ssActive:Z

    if-eqz v0, :cond_2

    .line 434
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mMediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->prevAudioItem()I

    return v1

    .line 441
    :cond_2
    :goto_0
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->ssActive:Z

    if-eqz v0, :cond_3

    .line 442
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->stopScreenSaver()V

    return v1

    .line 446
    :cond_3
    invoke-super {p0, p1, p2}, Ltv/emby/embyatv/base/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 396
    :cond_4
    :pswitch_7
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mMediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->isPlayingAudio()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mMediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->pauseAudio()V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mMediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/MediaManager;->resumeAudio()V

    .line 397
    :goto_1
    iget-boolean p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->ssActive:Z

    if-eqz p1, :cond_6

    .line 398
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->stopScreenSaver()V

    :cond_6
    return v1

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x55
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .line 377
    invoke-super {p0}, Ltv/emby/embyatv/base/BaseActivity;->onPause()V

    .line 378
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mMainView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setKeepScreenOn(Z)V

    .line 379
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mMediaManager:Ltv/emby/embyatv/playback/MediaManager;

    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->audioEventListener:Ltv/emby/embyatv/playback/AudioEventListener;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/MediaManager;->removeAudioEventListener(Ltv/emby/embyatv/playback/AudioEventListener;)V

    .line 380
    invoke-direct {p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->stopRotate()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 358
    invoke-super {p0}, Ltv/emby/embyatv/base/BaseActivity;->onResume()V

    .line 359
    invoke-direct {p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->loadItem()V

    .line 360
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mQueueAdapter:Ltv/emby/embyatv/presentation/CardItemAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mMediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/MediaManager;->isPlayingAudio()Z

    move-result v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/presentation/CardItemAdapter;->setCurrentlyPlaying(Z)V

    .line 361
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mMediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentAudioQueuePosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->updateCurrentItemDisplay(IZ)V

    .line 362
    invoke-direct {p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->rotateBackdrops()V

    .line 364
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mMediaManager:Ltv/emby/embyatv/playback/MediaManager;

    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->audioEventListener:Ltv/emby/embyatv/playback/AudioEventListener;

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/playback/MediaManager;->addAudioEventListener(Ltv/emby/embyatv/playback/AudioEventListener;)V

    .line 366
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mLoopHandler:Landroid/os/Handler;

    new-instance v1, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$16;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity$16;-><init>(Ltv/emby/embyatv/playback/AudioNowPlayingActivity;)V

    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 385
    invoke-super {p0}, Ltv/emby/embyatv/base/BaseActivity;->onStop()V

    .line 386
    invoke-direct {p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->stopRotate()V

    return-void
.end method

.method public setCurrentTime(J)V
    .locals 4

    .line 579
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->ssActive:Z

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mSSTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ltv/emby/embyatv/util/Utils;->formatMillis(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mDisplayDuration:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 582
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mCurrentProgress:Landroid/widget/ProgressBar;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 583
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mCurrentPos:Landroid/widget/TextView;

    invoke-static {p1, p2}, Ltv/emby/embyatv/util/Utils;->formatMillis(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mRemainingTime:Landroid/widget/TextView;

    iget v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mCurrentDuration:I

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mCurrentDuration:I

    int-to-long v2, v2

    sub-long/2addr v2, p1

    invoke-static {v2, v3}, Ltv/emby/embyatv/util/Utils;->formatMillis(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method protected startScreenSaver()V
    .locals 5

    .line 623
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mArtistName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 624
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/BackgroundFrame;->setDarkening(F)V

    .line 625
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/BackgroundFrame;->setAlpha(F)V

    .line 626
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mClock:Ltv/emby/embyatv/ui/ClockUserView;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/ClockUserView;->setAlpha(F)V

    .line 627
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mMainView:Landroid/widget/FrameLayout;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x3e8

    .line 628
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 629
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 630
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mSSArea:Landroid/widget/RelativeLayout;

    const-string v1, "alpha"

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 631
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 632
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    const/4 v0, 0x1

    .line 634
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->ssActive:Z

    .line 635
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mMediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentAudioPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->setCurrentTime(J)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected stopScreenSaver()V
    .locals 2

    .line 639
    invoke-direct {p0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->focusCurrentQueueItem()V

    .line 640
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mLogoImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/BackgroundFrame;->setDarkening(F)V

    .line 642
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    const v1, 0x3f266666    # 0.65f

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/BackgroundFrame;->setAlpha(F)V

    .line 643
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mSSArea:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 644
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mArtistName:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 645
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mClock:Ltv/emby/embyatv/ui/ClockUserView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/ui/ClockUserView;->setAlpha(F)V

    .line 646
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mMainView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 v0, 0x0

    .line 647
    iput-boolean v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->ssActive:Z

    .line 648
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mMediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentAudioPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->setCurrentTime(J)V

    return-void
.end method

.method protected updateBackground(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 674
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->lastBdUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 675
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/ui/BackgroundFrame;->setImageUrl(Ljava/lang/String;)V

    .line 676
    iput-object p1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->lastBdUrl:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method protected updateLogo()V
    .locals 4

    .line 660
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getHasLogo()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getParentLogoImageTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 667
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mLogoImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 668
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 661
    :cond_1
    :goto_0
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->ssActive:Z

    if-eqz v0, :cond_2

    .line 662
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mLogoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 663
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->getLogoImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mLogoImage:Landroid/widget/ImageView;

    const/16 v2, 0x2bc

    const/16 v3, 0xc8

    invoke-static {p0, v0, v1, v2, v3}, Ltv/emby/embyatv/util/ImageUtils;->loadImageIntoView(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;II)V

    .line 664
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mArtistName:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected updateSSInfo()V
    .locals 5

    .line 653
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mSSAlbumSong:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getAlbum()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mBaseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mSSQueueStatus:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mMediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {v2}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentAudioQueueDisplayPosition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mMediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {v2}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentAudioQueueDisplaySize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    iget-object v0, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mMediaManager:Ltv/emby/embyatv/playback/MediaManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/MediaManager;->getNextAudioItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    .line 656
    iget-object v1, p0, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->mSSUpNext:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f100603

    invoke-virtual {p0, v3}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->getArtistName(Lmediabrowser/model/dto/BaseItemDto;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Ltv/emby/embyatv/playback/AudioNowPlayingActivity;->getArtistName(Lmediabrowser/model/dto/BaseItemDto;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, ""

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
