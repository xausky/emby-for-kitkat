.class public abstract Lfr/bmartel/youtubetv/media/MediaPlayerGlue;
.super Landroidx/leanback/app/PlaybackControlGlue;
.source "MediaPlayerGlue.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;,
        Lfr/bmartel/youtubetv/media/MediaPlayerGlue$OnMediaFileFinishedPlayingListener;
    }
.end annotation


# static fields
.field public static final FAST_FORWARD_REWIND_REPEAT_DELAY:I = 0xc8

.field public static final FAST_FORWARD_REWIND_STEP:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "MediaPlayerGlue"


# instance fields
.field private isPlaying:Z

.field private mControlsRow:Landroidx/leanback/widget/PlaybackControlsRow;

.field private mCurrentTime:I

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private mLastKeyDownEvent:J

.field private mMediaFileFinishedPlayingListener:Lfr/bmartel/youtubetv/media/MediaPlayerGlue$OnMediaFileFinishedPlayingListener;

.field private mMetaData:Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;

.field private mPlayer:Lfr/bmartel/youtubetv/IYoutubeApi;

.field private final mRepeatAction:Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSelectedAction:Landroidx/leanback/widget/Action;

.field private final mShuffleAction:Landroidx/leanback/widget/PlaybackControlsRow$ShuffleAction;

.field private mVideoDuration:I

.field private mVideoInfoListener:Lfr/bmartel/youtubetv/listener/IVideoInfoListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/leanback/app/PlaybackOverlayFragment;Lfr/bmartel/youtubetv/IYoutubeApi;)V
    .locals 3

    const/4 v0, 0x1

    .line 107
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-direct {p0, p1, p2, v1}, Landroidx/leanback/app/PlaybackControlGlue;-><init>(Landroid/content/Context;Landroidx/leanback/app/PlaybackOverlayFragment;[I)V

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mHandler:Landroid/os/Handler;

    .line 96
    iput-boolean v2, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mInitialized:Z

    const-wide/16 v0, 0x0

    .line 99
    iput-wide v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mLastKeyDownEvent:J

    .line 108
    iput-object p3, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mPlayer:Lfr/bmartel/youtubetv/IYoutubeApi;

    .line 110
    new-instance p3, Landroidx/leanback/widget/PlaybackControlsRow$ShuffleAction;

    invoke-direct {p3, p1}, Landroidx/leanback/widget/PlaybackControlsRow$ShuffleAction;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mShuffleAction:Landroidx/leanback/widget/PlaybackControlsRow$ShuffleAction;

    .line 111
    new-instance p3, Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;

    invoke-direct {p3, p1}, Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mRepeatAction:Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;

    .line 119
    invoke-virtual {p2, p0}, Landroidx/leanback/app/PlaybackOverlayFragment;->setOnItemViewSelectedListener(Landroidx/leanback/widget/BaseOnItemViewSelectedListener;)V

    .line 121
    iget-object p1, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mPlayer:Lfr/bmartel/youtubetv/IYoutubeApi;

    new-instance p2, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$1;

    invoke-direct {p2, p0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$1;-><init>(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;)V

    invoke-interface {p1, p2}, Lfr/bmartel/youtubetv/IYoutubeApi;->setOnProgressUpdateListener(Lfr/bmartel/youtubetv/listener/IProgressUpdateListener;)V

    return-void
.end method

.method static synthetic access$002(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;I)I
    .locals 0

    .line 81
    iput p1, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mCurrentTime:I

    return p1
.end method

.method static synthetic access$100(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;)Landroid/os/Handler;
    .locals 0

    .line 81
    iget-object p0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;)Landroidx/leanback/widget/PlaybackControlsRow;
    .locals 0

    .line 81
    iget-object p0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mControlsRow:Landroidx/leanback/widget/PlaybackControlsRow;

    return-object p0
.end method

.method static synthetic access$200(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mInitialized:Z

    return p0
.end method

.method static synthetic access$202(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mInitialized:Z

    return p1
.end method

.method static synthetic access$300(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;)V
    .locals 0

    .line 81
    invoke-virtual {p0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->onStateChanged()V

    return-void
.end method

.method static synthetic access$400(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;)Lfr/bmartel/youtubetv/listener/IVideoInfoListener;
    .locals 0

    .line 81
    iget-object p0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mVideoInfoListener:Lfr/bmartel/youtubetv/listener/IVideoInfoListener;

    return-object p0
.end method

.method static synthetic access$500(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;)Lfr/bmartel/youtubetv/media/MediaPlayerGlue$OnMediaFileFinishedPlayingListener;
    .locals 0

    .line 81
    iget-object p0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mMediaFileFinishedPlayingListener:Lfr/bmartel/youtubetv/media/MediaPlayerGlue$OnMediaFileFinishedPlayingListener;

    return-object p0
.end method

.method static synthetic access$600(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;)Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;
    .locals 0

    .line 81
    iget-object p0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mMetaData:Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;

    return-object p0
.end method

.method static synthetic access$702(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->isPlaying:Z

    return p1
.end method

.method static synthetic access$802(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;I)I
    .locals 0

    .line 81
    iput p1, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mVideoDuration:I

    return p1
.end method

.method static synthetic access$900(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;)V
    .locals 0

    .line 81
    invoke-virtual {p0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->onStateChanged()V

    return-void
.end method


# virtual methods
.method protected addSecondaryActions(Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mShuffleAction:Landroidx/leanback/widget/PlaybackControlsRow$ShuffleAction;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mRepeatAction:Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public createControlsRowAndPresenter()Landroidx/leanback/widget/PlaybackControlsRowPresenter;
    .locals 3

    .line 191
    invoke-super {p0}, Landroidx/leanback/app/PlaybackControlGlue;->createControlsRowAndPresenter()Landroidx/leanback/widget/PlaybackControlsRowPresenter;

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->getControlsRow()Landroidx/leanback/widget/PlaybackControlsRow;

    move-result-object v1

    iput-object v1, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mControlsRow:Landroidx/leanback/widget/PlaybackControlsRow;

    .line 195
    new-instance v1, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v2, Landroidx/leanback/widget/ControlButtonPresenterSelector;

    invoke-direct {v2}, Landroidx/leanback/widget/ControlButtonPresenterSelector;-><init>()V

    invoke-direct {v1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/PresenterSelector;)V

    .line 197
    iget-object v2, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mControlsRow:Landroidx/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v2, v1}, Landroidx/leanback/widget/PlaybackControlsRow;->setSecondaryActionsAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 198
    invoke-virtual {p0, v1}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->addSecondaryActions(Landroidx/leanback/widget/ArrayObjectAdapter;)V

    .line 199
    invoke-virtual {p0, v0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->setupControlsRowPresenter(Landroidx/leanback/widget/PlaybackControlsRowPresenter;)V

    return-object v0
.end method

.method public enableProgressUpdating(Z)V
    .locals 1

    if-nez p1, :cond_1

    .line 206
    iget-object p1, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 314
    iget-boolean v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mCurrentTime:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCurrentSpeedId()I
    .locals 1

    .line 309
    iget-boolean v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->isPlaying:Z

    return v0
.end method

.method public getMediaArt()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 298
    invoke-virtual {p0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->hasValidMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mMetaData:Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;

    invoke-virtual {v0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;->getCover()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMediaDuration()I
    .locals 1

    .line 293
    iget-boolean v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mVideoDuration:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMediaSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 288
    invoke-virtual {p0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->hasValidMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mMetaData:Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;

    invoke-virtual {v0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;->getArtist()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "N/a"

    :goto_0
    return-object v0
.end method

.method public getMediaTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 283
    invoke-virtual {p0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->hasValidMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mMetaData:Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;

    invoke-virtual {v0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "N/a"

    :goto_0
    return-object v0
.end method

.method public getSupportedActions()J
    .locals 2

    const-wide/16 v0, 0xe0

    return-wide v0
.end method

.method public hasValidMedia()Z
    .locals 1

    .line 273
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mMetaData:Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMediaPlaying()Z
    .locals 1

    .line 278
    iget-boolean v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->isPlaying:Z

    return v0
.end method

.method public onActionClicked(Landroidx/leanback/widget/Action;)V
    .locals 1

    .line 215
    invoke-super {p0, p1}, Landroidx/leanback/app/PlaybackControlGlue;->onActionClicked(Landroidx/leanback/widget/Action;)V

    .line 216
    instance-of v0, p1, Landroidx/leanback/widget/PlaybackControlsRow$ShuffleAction;

    if-eqz v0, :cond_0

    const-string p1, "MediaPlayerGlue"

    const-string v0, "ShuffleAction"

    .line 217
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object p1, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mShuffleAction:Landroidx/leanback/widget/PlaybackControlsRow$ShuffleAction;

    invoke-virtual {p1}, Landroidx/leanback/widget/PlaybackControlsRow$ShuffleAction;->nextIndex()V

    goto :goto_0

    .line 219
    :cond_0
    instance-of p1, p1, Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;

    if-eqz p1, :cond_1

    const-string p1, "MediaPlayerGlue"

    const-string v0, "RepeatAction"

    .line 220
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object p1, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mRepeatAction:Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;

    invoke-virtual {p1}, Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;->nextIndex()V

    .line 240
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->onMetadataChanged()V

    return-void
.end method

.method public onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 0

    .line 465
    instance-of p1, p2, Landroidx/leanback/widget/Action;

    if-eqz p1, :cond_0

    .line 466
    check-cast p2, Landroidx/leanback/widget/Action;

    iput-object p2, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mSelectedAction:Landroidx/leanback/widget/Action;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 468
    iput-object p1, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mSelectedAction:Landroidx/leanback/widget/Action;

    :goto_0
    return-void
.end method

.method public bridge synthetic onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 81
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7

    .line 249
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mSelectedAction:Landroidx/leanback/widget/Action;

    instance-of v0, v0, Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 250
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mSelectedAction:Landroidx/leanback/widget/Action;

    instance-of v0, v0, Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 251
    iget-boolean v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mInitialized:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    .line 252
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x17

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_4

    .line 253
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_5

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mLastKeyDownEvent:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xc8

    cmp-long v0, v3, v5

    if-lez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_9

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mLastKeyDownEvent:J

    .line 258
    invoke-virtual {p0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->getCurrentPosition()I

    move-result p1

    add-int/lit16 p1, p1, 0x2710

    .line 259
    iget-object p2, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mSelectedAction:Landroidx/leanback/widget/Action;

    instance-of p2, p2, Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

    if-eqz p2, :cond_6

    .line 260
    invoke-virtual {p0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->getCurrentPosition()I

    move-result p1

    add-int/lit16 p1, p1, -0x2710

    :cond_6
    if-gez p1, :cond_7

    const/4 p1, 0x0

    .line 264
    :cond_7
    invoke-virtual {p0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->getMediaDuration()I

    move-result p2

    if-le p1, p2, :cond_8

    invoke-virtual {p0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->getMediaDuration()I

    move-result p1

    .line 265
    :cond_8
    invoke-virtual {p0, p1}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->seekTo(I)V

    return v2

    .line 268
    :cond_9
    invoke-super {p0, p1, p2, p3}, Landroidx/leanback/app/PlaybackControlGlue;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected pausePlayback()V
    .locals 1

    .line 324
    iget-boolean v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->isPlaying:Z

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mPlayer:Lfr/bmartel/youtubetv/IYoutubeApi;

    invoke-interface {v0}, Lfr/bmartel/youtubetv/IYoutubeApi;->pause()V

    :cond_0
    return-void
.end method

.method public prepareMediaForPlaying()V
    .locals 3

    .line 350
    invoke-virtual {p0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->reset()V

    .line 352
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mPlayer:Lfr/bmartel/youtubetv/IYoutubeApi;

    new-instance v1, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2;

    invoke-direct {v1, p0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2;-><init>(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;)V

    invoke-interface {v0, v1}, Lfr/bmartel/youtubetv/IYoutubeApi;->addPlayerListener(Lfr/bmartel/youtubetv/listener/IPlayerListener;)V

    .line 395
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mPlayer:Lfr/bmartel/youtubetv/IYoutubeApi;

    new-instance v1, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$3;

    invoke-direct {v1, p0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$3;-><init>(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;)V

    invoke-interface {v0, v1}, Lfr/bmartel/youtubetv/IYoutubeApi;->setOnBufferingUpdateListener(Lfr/bmartel/youtubetv/listener/IBufferStateListener;)V

    .line 403
    new-instance v0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;

    invoke-direct {v0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;-><init>()V

    .line 405
    iget-object v1, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mPlayer:Lfr/bmartel/youtubetv/IYoutubeApi;

    invoke-interface {v1}, Lfr/bmartel/youtubetv/IYoutubeApi;->getVideoInfo()Lfr/bmartel/youtubetv/model/VideoInfo;

    move-result-object v1

    .line 406
    invoke-virtual {v1}, Lfr/bmartel/youtubetv/model/VideoInfo;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;->setArtist(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v1}, Lfr/bmartel/youtubetv/model/VideoInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;->setTitle(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0, v0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->setMetaData(Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;)V

    .line 411
    invoke-virtual {p0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->onStateChanged()V

    return-void
.end method

.method public repeatAll()Z
    .locals 2

    .line 442
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mRepeatAction:Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;

    invoke-virtual {v0}, Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;->getIndex()I

    move-result v0

    sget v1, Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;->ALL:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public repeatOne()Z
    .locals 2

    .line 435
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mRepeatAction:Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;

    invoke-virtual {v0}, Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;->getIndex()I

    move-result v0

    sget v1, Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;->ONE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mInitialized:Z

    return-void
.end method

.method protected seekTo(I)V
    .locals 1

    .line 346
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mPlayer:Lfr/bmartel/youtubetv/IYoutubeApi;

    div-int/lit16 p1, p1, 0x3e8

    invoke-interface {v0, p1}, Lfr/bmartel/youtubetv/IYoutubeApi;->seekTo(I)V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public setMetaData(Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mMetaData:Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;

    .line 447
    invoke-virtual {p0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->onMetadataChanged()V

    return-void
.end method

.method public setOnMediaFileFinishedPlayingListener(Lfr/bmartel/youtubetv/media/MediaPlayerGlue$OnMediaFileFinishedPlayingListener;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mMediaFileFinishedPlayingListener:Lfr/bmartel/youtubetv/media/MediaPlayerGlue$OnMediaFileFinishedPlayingListener;

    return-void
.end method

.method protected setVideoInfoListener(Lfr/bmartel/youtubetv/listener/IVideoInfoListener;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mVideoInfoListener:Lfr/bmartel/youtubetv/listener/IVideoInfoListener;

    return-void
.end method

.method public setupControlsRowPresenter(Landroidx/leanback/widget/PlaybackControlsRowPresenter;)V
    .locals 2

    .line 183
    invoke-virtual {p0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lfr/bmartel/youtubetv/R$color;->player_progress_color_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/PlaybackControlsRowPresenter;->setProgressColor(I)V

    .line 185
    invoke-virtual {p0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lfr/bmartel/youtubetv/R$color;->player_background_color_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/PlaybackControlsRowPresenter;->setBackgroundColor(I)V

    return-void
.end method

.method protected skipToNext()V
    .locals 0

    return-void
.end method

.method protected skipToPrevious()V
    .locals 0

    return-void
.end method

.method public startPlayback()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 421
    invoke-virtual {p0, v0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->startPlayback(I)V

    return-void
.end method

.method protected startPlayback(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 319
    iget-object p1, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mPlayer:Lfr/bmartel/youtubetv/IYoutubeApi;

    invoke-interface {p1}, Lfr/bmartel/youtubetv/IYoutubeApi;->start()V

    return-void
.end method

.method public useShuffle()Z
    .locals 2

    .line 428
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->mShuffleAction:Landroidx/leanback/widget/PlaybackControlsRow$ShuffleAction;

    invoke-virtual {v0}, Landroidx/leanback/widget/PlaybackControlsRow$ShuffleAction;->getIndex()I

    move-result v0

    sget v1, Landroidx/leanback/widget/PlaybackControlsRow$ShuffleAction;->ON:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
