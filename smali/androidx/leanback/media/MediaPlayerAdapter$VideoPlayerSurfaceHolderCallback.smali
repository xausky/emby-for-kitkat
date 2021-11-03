.class Landroidx/leanback/media/MediaPlayerAdapter$VideoPlayerSurfaceHolderCallback;
.super Ljava/lang/Object;
.source "MediaPlayerAdapter.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/media/MediaPlayerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoPlayerSurfaceHolderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/media/MediaPlayerAdapter;


# direct methods
.method constructor <init>(Landroidx/leanback/media/MediaPlayerAdapter;)V
    .locals 0

    .line 404
    iput-object p1, p0, Landroidx/leanback/media/MediaPlayerAdapter$VideoPlayerSurfaceHolderCallback;->this$0:Landroidx/leanback/media/MediaPlayerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 407
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter$VideoPlayerSurfaceHolderCallback;->this$0:Landroidx/leanback/media/MediaPlayerAdapter;

    invoke-virtual {v0, p1}, Landroidx/leanback/media/MediaPlayerAdapter;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 416
    iget-object p1, p0, Landroidx/leanback/media/MediaPlayerAdapter$VideoPlayerSurfaceHolderCallback;->this$0:Landroidx/leanback/media/MediaPlayerAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/leanback/media/MediaPlayerAdapter;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method
