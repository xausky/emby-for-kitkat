.class Lfr/bmartel/youtubetv/media/MediaPlayerGlue$3;
.super Ljava/lang/Object;
.source "MediaPlayerGlue.java"

# interfaces
.implements Lfr/bmartel/youtubetv/listener/IBufferStateListener;


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

    .line 395
    iput-object p1, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$3;->this$0:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferUpdate(FF)V
    .locals 3

    const-string v0, "MediaPlayerGlue"

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBufferUpdate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$3;->this$0:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    invoke-static {v0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->access$1000(Lfr/bmartel/youtubetv/media/MediaPlayerGlue;)Landroidx/leanback/widget/PlaybackControlsRow;

    move-result-object v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float p1, p1, v1

    mul-float p1, p1, p2

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/PlaybackControlsRow;->setBufferedProgress(I)V

    return-void
.end method
