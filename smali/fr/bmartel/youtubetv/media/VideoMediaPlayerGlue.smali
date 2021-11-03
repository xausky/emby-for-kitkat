.class public abstract Lfr/bmartel/youtubetv/media/VideoMediaPlayerGlue;
.super Lfr/bmartel/youtubetv/media/MediaPlayerGlue;
.source "VideoMediaPlayerGlue.java"

# interfaces
.implements Lfr/bmartel/youtubetv/listener/IVideoInfoListener;


# instance fields
.field private final mHighQualityAction:Landroidx/leanback/widget/PlaybackControlsRow$HighQualityAction;

.field private mVideoInfo:Lfr/bmartel/youtubetv/model/VideoInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/leanback/app/PlaybackOverlayFragment;Lfr/bmartel/youtubetv/IYoutubeApi;)V
    .locals 3

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;-><init>(Landroid/content/Context;Landroidx/leanback/app/PlaybackOverlayFragment;Lfr/bmartel/youtubetv/IYoutubeApi;)V

    .line 60
    new-instance p2, Lfr/bmartel/youtubetv/model/VideoInfo;

    const-string p3, ""

    const-string v0, ""

    const-string v1, ""

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p2, p3, v0, v1, v2}, Lfr/bmartel/youtubetv/model/VideoInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iput-object p2, p0, Lfr/bmartel/youtubetv/media/VideoMediaPlayerGlue;->mVideoInfo:Lfr/bmartel/youtubetv/model/VideoInfo;

    .line 66
    invoke-virtual {p0, p0}, Lfr/bmartel/youtubetv/media/VideoMediaPlayerGlue;->setVideoInfoListener(Lfr/bmartel/youtubetv/listener/IVideoInfoListener;)V

    .line 70
    new-instance p2, Landroidx/leanback/widget/PlaybackControlsRow$HighQualityAction;

    invoke-direct {p2, p1}, Landroidx/leanback/widget/PlaybackControlsRow$HighQualityAction;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lfr/bmartel/youtubetv/media/VideoMediaPlayerGlue;->mHighQualityAction:Landroidx/leanback/widget/PlaybackControlsRow$HighQualityAction;

    .line 71
    iget-object p1, p0, Lfr/bmartel/youtubetv/media/VideoMediaPlayerGlue;->mHighQualityAction:Landroidx/leanback/widget/PlaybackControlsRow$HighQualityAction;

    const-string p2, "Quality"

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/PlaybackControlsRow$HighQualityAction;->setLabel1(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 73
    invoke-virtual {p0, p1}, Lfr/bmartel/youtubetv/media/VideoMediaPlayerGlue;->setFadingEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected addSecondaryActions(Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 0

    return-void
.end method

.method public onActionClicked(Landroidx/leanback/widget/Action;)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->onActionClicked(Landroidx/leanback/widget/Action;)V

    .line 89
    iget-object p1, p0, Lfr/bmartel/youtubetv/media/VideoMediaPlayerGlue;->mHighQualityAction:Landroidx/leanback/widget/PlaybackControlsRow$HighQualityAction;

    return-void
.end method

.method public onVideoInfoReceived(Lfr/bmartel/youtubetv/model/VideoInfo;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lfr/bmartel/youtubetv/media/VideoMediaPlayerGlue;->mVideoInfo:Lfr/bmartel/youtubetv/model/VideoInfo;

    return-void
.end method

.method public setupControlsRowPresenter(Landroidx/leanback/widget/PlaybackControlsRowPresenter;)V
    .locals 1

    const-string v0, "#e3e3e3"

    .line 98
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/PlaybackControlsRowPresenter;->setProgressColor(I)V

    const-string v0, "#e52d27"

    .line 99
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/PlaybackControlsRowPresenter;->setBackgroundColor(I)V

    return-void
.end method
