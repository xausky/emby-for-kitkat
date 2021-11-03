.class Lfr/bmartel/youtubetv/media/VideoPlayerFragment$1;
.super Lfr/bmartel/youtubetv/media/VideoMediaPlayerGlue;
.source "VideoPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/bmartel/youtubetv/media/VideoPlayerFragment;


# direct methods
.method constructor <init>(Lfr/bmartel/youtubetv/media/VideoPlayerFragment;Landroid/content/Context;Landroidx/leanback/app/PlaybackOverlayFragment;Lfr/bmartel/youtubetv/IYoutubeApi;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lfr/bmartel/youtubetv/media/VideoPlayerFragment$1;->this$0:Lfr/bmartel/youtubetv/media/VideoPlayerFragment;

    invoke-direct {p0, p2, p3, p4}, Lfr/bmartel/youtubetv/media/VideoMediaPlayerGlue;-><init>(Landroid/content/Context;Landroidx/leanback/app/PlaybackOverlayFragment;Lfr/bmartel/youtubetv/IYoutubeApi;)V

    return-void
.end method


# virtual methods
.method protected onRowChanged(Landroidx/leanback/widget/PlaybackControlsRow;)V
    .locals 2

    .line 85
    iget-object p1, p0, Lfr/bmartel/youtubetv/media/VideoPlayerFragment$1;->this$0:Lfr/bmartel/youtubetv/media/VideoPlayerFragment;

    invoke-static {p1}, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->access$000(Lfr/bmartel/youtubetv/media/VideoPlayerFragment;)Landroidx/leanback/widget/ArrayObjectAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object p1, p0, Lfr/bmartel/youtubetv/media/VideoPlayerFragment$1;->this$0:Lfr/bmartel/youtubetv/media/VideoPlayerFragment;

    invoke-static {p1}, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->access$000(Lfr/bmartel/youtubetv/media/VideoPlayerFragment;)Landroidx/leanback/widget/ArrayObjectAdapter;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->notifyArrayItemRangeChanged(II)V

    return-void
.end method
