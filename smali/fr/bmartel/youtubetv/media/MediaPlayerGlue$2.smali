.class Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2;
.super Ljava/lang/Object;
.source "MediaPlayerGlue.java"

# interfaces
.implements Lfr/bmartel/youtubetv/listener/IPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->prepareMediaForPlaying()V
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

    .line 352
    iput-object p1, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2;->this$0:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayerReady(Lfr/bmartel/youtubetv/model/VideoInfo;)V
    .locals 2

    .line 355
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2;->this$0:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->access$202(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;Z)Z

    .line 357
    new-instance v0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;

    invoke-direct {v0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;-><init>()V

    .line 358
    invoke-virtual {p1}, Lfr/bmartel/youtubetv/model/VideoInfo;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;->setArtist(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p1}, Lfr/bmartel/youtubetv/model/VideoInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;->setTitle(Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2;->this$0:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    invoke-virtual {v1, v0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->setMetaData(Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;)V

    .line 361
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2;->this$0:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    invoke-static {v0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->access$300(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;)V

    .line 362
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2;->this$0:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    invoke-virtual {v0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->updateProgress()V

    .line 363
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2;->this$0:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    invoke-static {v0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->access$400(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;)Lfr/bmartel/youtubetv/listener/IVideoInfoListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lfr/bmartel/youtubetv/listener/IVideoInfoListener;->onVideoInfoReceived(Lfr/bmartel/youtubetv/model/VideoInfo;)V

    return-void
.end method

.method public onPlayerStateChange(Lfr/bmartel/youtubetv/model/VideoState;JFFLfr/bmartel/youtubetv/model/VideoInfo;)V
    .locals 0

    const-string p2, "MediaPlayerGlue"

    .line 368
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "state : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    sget-object p2, Lfr/bmartel/youtubetv/model/VideoState;->ENDED:Lfr/bmartel/youtubetv/model/VideoState;

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2;->this$0:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    invoke-static {p2}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->access$200(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2;->this$0:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    invoke-static {p2}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->access$500(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;)Lfr/bmartel/youtubetv/media/MediaPlayerGlue$OnMediaFileFinishedPlayingListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 370
    iget-object p2, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2;->this$0:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    invoke-static {p2}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->access$500(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;)Lfr/bmartel/youtubetv/media/MediaPlayerGlue$OnMediaFileFinishedPlayingListener;

    move-result-object p2

    iget-object p3, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2;->this$0:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    invoke-static {p3}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->access$600(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;)Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;

    move-result-object p3

    invoke-interface {p2, p3}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$OnMediaFileFinishedPlayingListener;->onMediaFileFinishedPlaying(Lfr/bmartel/youtubetv/media/MediaPlayerGlue$MetaData;)V

    .line 372
    :cond_0
    sget-object p2, Lfr/bmartel/youtubetv/model/VideoState;->PLAYING:Lfr/bmartel/youtubetv/model/VideoState;

    if-ne p1, p2, :cond_1

    .line 373
    iget-object p2, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2;->this$0:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->access$702(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;Z)Z

    goto :goto_0

    .line 375
    :cond_1
    iget-object p2, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2;->this$0:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->access$702(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;Z)Z

    .line 377
    :goto_0
    iget-object p2, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2;->this$0:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    const/high16 p3, 0x447a0000    # 1000.0f

    mul-float p5, p5, p3

    float-to-int p3, p5

    invoke-static {p2, p3}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->access$802(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;I)I

    .line 378
    iget-object p2, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2;->this$0:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    invoke-static {p2}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->access$100(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;)Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2$1;

    invoke-direct {p3, p0, p6, p1}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2$1;-><init>(Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2;Lfr/bmartel/youtubetv/model/VideoInfo;Lfr/bmartel/youtubetv/model/VideoState;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 391
    iget-object p1, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$2;->this$0:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    invoke-static {p1}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->access$400(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;)Lfr/bmartel/youtubetv/listener/IVideoInfoListener;

    move-result-object p1

    invoke-interface {p1, p6}, Lfr/bmartel/youtubetv/listener/IVideoInfoListener;->onVideoInfoReceived(Lfr/bmartel/youtubetv/model/VideoInfo;)V

    return-void
.end method
