.class Lfr/bmartel/youtubetv/media/MediaPlayerGlue$1$1;
.super Ljava/lang/Object;
.source "MediaPlayerGlue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/bmartel/youtubetv/media/MediaPlayerGlue$1;->onProgressUpdate(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfr/bmartel/youtubetv/media/MediaPlayerGlue$1;


# direct methods
.method constructor <init>(Lfr/bmartel/youtubetv/media/MediaPlayerGlue$1;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$1$1;->this$1:Lfr/bmartel/youtubetv/media/MediaPlayerGlue$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 128
    iget-object v0, p0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$1$1;->this$1:Lfr/bmartel/youtubetv/media/MediaPlayerGlue$1;

    iget-object v0, v0, Lfr/bmartel/youtubetv/media/MediaPlayerGlue$1;->this$0:Lfr/bmartel/youtubetv/media/MediaPlayerGlue;

    invoke-virtual {v0}, Lfr/bmartel/youtubetv/media/MediaPlayerGlue;->updateProgress()V

    return-void
.end method
