.class public Lfr/bmartel/youtubetv/YoutubeTvFragment;
.super Landroid/app/Fragment;
.source "YoutubeTvFragment.java"


# instance fields
.field private mArgs:Landroid/os/Bundle;

.field private mVideoFragment:Lfr/bmartel/youtubetv/media/VideoPlayerFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lfr/bmartel/youtubetv/YoutubeTvFragment;
    .locals 1

    .line 47
    new-instance v0, Lfr/bmartel/youtubetv/YoutubeTvFragment;

    invoke-direct {v0}, Lfr/bmartel/youtubetv/YoutubeTvFragment;-><init>()V

    .line 48
    invoke-virtual {v0, p0}, Lfr/bmartel/youtubetv/YoutubeTvFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public closePlayer()V
    .locals 1

    .line 90
    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvFragment;->mVideoFragment:Lfr/bmartel/youtubetv/media/VideoPlayerFragment;

    invoke-virtual {v0}, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->closePlayer()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 81
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lfr/bmartel/youtubetv/YoutubeTvFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lfr/bmartel/youtubetv/YoutubeTvFragment;->mArgs:Landroid/os/Bundle;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 62
    sget p3, Lfr/bmartel/youtubetv/R$layout;->youtube_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 0

    .line 86
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 68
    invoke-virtual {p0}, Lfr/bmartel/youtubetv/YoutubeTvFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 69
    sget p2, Lfr/bmartel/youtubetv/R$id;->videoFragment:I

    new-instance v0, Lfr/bmartel/youtubetv/media/VideoSurfaceFragment;

    invoke-direct {v0}, Lfr/bmartel/youtubetv/media/VideoSurfaceFragment;-><init>()V

    sget-object v1, Lfr/bmartel/youtubetv/media/VideoSurfaceFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 70
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 72
    invoke-virtual {p0}, Lfr/bmartel/youtubetv/YoutubeTvFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 73
    iget-object p2, p0, Lfr/bmartel/youtubetv/YoutubeTvFragment;->mArgs:Landroid/os/Bundle;

    invoke-static {p2}, Lfr/bmartel/youtubetv/media/VideoPlayerFragment;->newInstance(Landroid/os/Bundle;)Lfr/bmartel/youtubetv/media/VideoPlayerFragment;

    move-result-object p2

    iput-object p2, p0, Lfr/bmartel/youtubetv/YoutubeTvFragment;->mVideoFragment:Lfr/bmartel/youtubetv/media/VideoPlayerFragment;

    .line 74
    sget p2, Lfr/bmartel/youtubetv/R$id;->videoFragment:I

    iget-object v0, p0, Lfr/bmartel/youtubetv/YoutubeTvFragment;->mVideoFragment:Lfr/bmartel/youtubetv/media/VideoPlayerFragment;

    const-string v1, "VideoPlayerFragment"

    invoke-virtual {p1, p2, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 75
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method
