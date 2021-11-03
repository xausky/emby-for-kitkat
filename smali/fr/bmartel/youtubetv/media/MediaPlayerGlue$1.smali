.class Lfr/bmartel/youtubetv/media/MediaPlayerGlue$1;
.super Ljava/lang/Object;
.source "MediaPlayerGlue.java"

# interfaces
.implements Lfr/bmartel/youtubetv/listener/IProgressUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/bmartel/youtubetv/media/MediaPlayerGlue;-><init>(Landroid/content/Context;Landroidx/leanback/app/PlaybackOverlayFragment;Lfr/bmartel/youtubetv/IYoutubeApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;


# direct methods
.method constructor <init>(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$1;->this$0:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(F)V
    .locals 2

    .line 124
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$1;->this$0:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-static {v0, p1}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->access$002(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;I)I

    .line 125
    iget-object p1, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$1;->this$0:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    invoke-static {p1}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->access$100(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$1$1;

    invoke-direct {v0, p0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$1$1;-><init>(Lfr/bmartel/youtubetv/media/MediaPlayerGlue$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
