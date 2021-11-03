.class Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2$1;
.super Ljava/lang/Object;
.source "MediaPlayerGlue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2;->onPlayerStateChange(Lfr/bmartel/youtubetv/model/VideoState;JFFLfr/bmartel/youtubetv/model/VideoInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2;

.field final synthetic val$state:Lfr/bmartel/youtubetv/model/VideoState;

.field final synthetic val$videoInfo:Lfr/bmartel/youtubetv/model/VideoInfo;


# direct methods
.method constructor <init>(Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2;Lfr/bmartel/youtubetv/model/VideoInfo;Lfr/bmartel/youtubetv/model/VideoState;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2$1;->this$1:Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2;

    iput-object p2, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2$1;->val$videoInfo:Lfr/bmartel/youtubetv/model/VideoInfo;

    iput-object p3, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2$1;->val$state:Lfr/bmartel/youtubetv/model/VideoState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 381
    new-instance v0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;

    invoke-direct {v0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;-><init>()V

    .line 382
    iget-object v1, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2$1;->val$videoInfo:Lfr/bmartel/youtubetv/model/VideoInfo;

    invoke-virtual {v1}, Lfr/bmartel/youtubetv/model/VideoInfo;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;->setArtist(Ljava/lang/String;)V

    .line 383
    iget-object v1, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2$1;->val$videoInfo:Lfr/bmartel/youtubetv/model/VideoInfo;

    invoke-virtual {v1}, Lfr/bmartel/youtubetv/model/VideoInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;->setTitle(Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2$1;->this$1:Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2;

    iget-object v1, v1, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2;->this$0:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    invoke-virtual {v1, v0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->setMetaData(Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;)V

    .line 385
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2$1;->val$state:Lfr/bmartel/youtubetv/model/VideoState;

    sget-object v1, Lfr/bmartel/youtubetv/model/VideoState;->BUFFERING:Lfr/bmartel/youtubetv/model/VideoState;

    if-eq v0, v1, :cond_0

    .line 386
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2$1;->this$1:Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2;

    iget-object v0, v0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2;->this$0:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    invoke-static {v0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->access$900(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;)V

    .line 388
    :cond_0
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2$1;->this$1:Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2;

    iget-object v0, v0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2;->this$0:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    invoke-virtual {v0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->updateProgress()V

    return-void
.end method
