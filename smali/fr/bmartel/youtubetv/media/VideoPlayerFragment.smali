.class public Lfr/bmartel/youtubetv/media/VideoPlayerFragment;
.super Landroidx/leanback/app/PlaybackOverlayFragment;
.source "VideoPlayerFragment.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewClickedListener;
.implements Lfr/bmartel/youtubetv/media/MediaPlayerGlue$OnMediaFileFinishedPlayingListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "VideoPlayerFragment"


# instance fields
.field private mGlue:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

.field private mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field private youtubeTvView:Lfr/bmartel/youtubetv/YoutubeTvView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Landroidx/leanback/app/PlaybackOverlayFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lfr/bmartel/youtubetv/media/VideoPlayerFragment;)Landroidx/leanback/widget/ArrayObjectAdapter;
    .locals 0

    .line 56
    iget-object p0, p0, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    return-object p0
.end method

.method private addPlaybackControlsRow()V
    .locals 2

    .line 111
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->mGlue:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    .line 112
    invoke-virtual {v0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->createControlsRowAndPresenter()Landroidx/leanback/widget/PlaybackControlsRowPresenter;

    move-result-object v0

    .line 113
    new-instance v1, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    iput-object v1, p0, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 114
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v1, p0, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->mGlue:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    invoke-virtual {v1}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->getControlsRow()Landroidx/leanback/widget/PlaybackControlsRow;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p0, v0}, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 116
    invoke-virtual {p0, p0}, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->setOnItemViewClickedListener(Landroidx/leanback/widget/BaseOnItemViewClickedListener;)V

    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lfr/bmartel/youtubetv/media/VideoPlayerFragment;
    .locals 1

    .line 65
    new-instance v0, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;

    invoke-direct {v0}, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;-><init>()V

    .line 66
    invoke-virtual {v0, p0}, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public closePlayer()V
    .locals 1

    .line 137
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->youtubeTvView:Lfr/bmartel/youtubetv/YoutubeTvView;

    invoke-virtual {v0}, Lfr/bmartel/youtubetv/YoutubeTvView;->closePlayer()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 73
    invoke-super {p0, p1}, Landroidx/leanback/app/PlaybackOverlayFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lfr/bmartel/youtubetv/R$id;->youtubetv_view:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lfr/bmartel/youtubetv/YoutubeTvView;

    iput-object p1, p0, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->youtubeTvView:Lfr/bmartel/youtubetv/YoutubeTvView;

    .line 77
    iget-object p1, p0, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->youtubeTvView:Lfr/bmartel/youtubetv/YoutubeTvView;

    invoke-virtual {p0}, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfr/bmartel/youtubetv/YoutubeTvView;->updateView(Landroid/os/Bundle;)V

    .line 79
    iget-object p1, p0, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->youtubeTvView:Lfr/bmartel/youtubetv/YoutubeTvView;

    invoke-virtual {p0}, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "videoId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfr/bmartel/youtubetv/YoutubeTvView;->playVideo(Ljava/lang/String;)V

    .line 81
    new-instance p1, Lfr/bmartel/youtubetv/media/VideoPlayerFragment$1;

    invoke-virtual {p0}, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->youtubeTvView:Lfr/bmartel/youtubetv/YoutubeTvView;

    invoke-direct {p1, p0, v0, p0, v1}, Lfr/bmartel/youtubetv/media/VideoPlayerFragment$1;-><init>(Lfr/bmartel/youtubetv/media/VideoPlayerFragment;Landroid/content/Context;Landroidx/leanback/app/PlaybackOverlayFragment;Lfr/bmartel/youtubetv/IYoutubeApi;)V

    iput-object p1, p0, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->mGlue:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    .line 89
    iget-object p1, p0, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->mGlue:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    invoke-virtual {p1, p0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->setOnMediaFileFinishedPlayingListener(Lfr/bmartel/youtubetv/media/MediaPlayerGlue$OnMediaFileFinishedPlayingListener;)V

    .line 91
    iget-object p1, p0, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->mGlue:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    invoke-virtual {p1}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->prepareMediaForPlaying()V

    const/4 p1, 0x2

    .line 93
    invoke-virtual {p0, p1}, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->setBackgroundType(I)V

    .line 94
    invoke-direct {p0}, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->addPlaybackControlsRow()V

    return-void
.end method

.method public onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 0

    .line 122
    instance-of p1, p2, Landroidx/leanback/widget/Action;

    if-nez p1, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object p1, p0, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->mGlue:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    check-cast p2, Landroidx/leanback/widget/Action;

    invoke-virtual {p1, p2}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->onActionClicked(Landroidx/leanback/widget/Action;)V

    return-void
.end method

.method public bridge synthetic onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method

.method public onMediaFileFinishedPlaying(Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;)V
    .locals 0

    .line 129
    iget-object p1, p0, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->mGlue:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    invoke-virtual {p1}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->startPlayback()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 99
    invoke-super {p0}, Landroidx/leanback/app/PlaybackOverlayFragment;->onStart()V

    .line 100
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->mGlue:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    iget-object v1, p0, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->mGlue:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    invoke-virtual {v1}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->hasValidMedia()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->mGlue:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    invoke-virtual {v1}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->isMediaPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->enableProgressUpdating(Z)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 105
    invoke-super {p0}, Landroidx/leanback/app/PlaybackOverlayFragment;->onStop()V

    .line 106
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->mGlue:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->enableProgressUpdating(Z)V

    .line 107
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->mGlue:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    invoke-virtual {v0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->reset()V

    return-void
.end method

.method public setPlaybackQuality(Lfr/bmartel/youtubetv/model/VideoQuality;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->youtubeTvView:Lfr/bmartel/youtubetv/YoutubeTvView;

    invoke-virtual {v0, p1}, Lfr/bmartel/youtubetv/YoutubeTvView;->setPlaybackQuality(Lfr/bmartel/youtubetv/model/VideoQuality;)V

    return-void
.end method
