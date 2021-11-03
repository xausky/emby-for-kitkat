.class public Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;
.super Landroidx/leanback/media/PlaybackGlueHost;
.source "PlaybackSupportFragmentGlueHost.java"

# interfaces
.implements Landroidx/leanback/widget/PlaybackSeekUi;


# instance fields
.field final mFragment:Landroidx/leanback/app/PlaybackSupportFragment;

.field final mPlayerCallback:Landroidx/leanback/media/PlaybackGlueHost$PlayerCallback;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/PlaybackSupportFragment;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/leanback/media/PlaybackGlueHost;-><init>()V

    .line 116
    new-instance v0, Landroidx/leanback/app/PlaybackSupportFragmentGlueHost$2;

    invoke-direct {v0, p0}, Landroidx/leanback/app/PlaybackSupportFragmentGlueHost$2;-><init>(Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;)V

    iput-object v0, p0, Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;->mPlayerCallback:Landroidx/leanback/media/PlaybackGlueHost$PlayerCallback;

    .line 36
    iput-object p1, p0, Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroidx/leanback/app/PlaybackSupportFragment;

    return-void
.end method


# virtual methods
.method public fadeOut()V
    .locals 1

    .line 93
    iget-object v0, p0, Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroidx/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/PlaybackSupportFragment;->fadeOut()V

    return-void
.end method

.method public getPlayerCallback()Landroidx/leanback/media/PlaybackGlueHost$PlayerCallback;
    .locals 1

    .line 136
    iget-object v0, p0, Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;->mPlayerCallback:Landroidx/leanback/media/PlaybackGlueHost$PlayerCallback;

    return-object v0
.end method

.method public hideControlsOverlay(Z)V
    .locals 1

    .line 103
    iget-object v0, p0, Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroidx/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0, p1}, Landroidx/leanback/app/PlaybackSupportFragment;->hideControlsOverlay(Z)V

    return-void
.end method

.method public isControlsOverlayAutoHideEnabled()Z
    .locals 1

    .line 46
    iget-object v0, p0, Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroidx/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/PlaybackSupportFragment;->isControlsOverlayAutoHideEnabled()Z

    move-result v0

    return v0
.end method

.method public isControlsOverlayVisible()Z
    .locals 1

    .line 98
    iget-object v0, p0, Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroidx/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/PlaybackSupportFragment;->isControlsOverlayVisible()Z

    move-result v0

    return v0
.end method

.method public notifyPlaybackRowChanged()V
    .locals 1

    .line 78
    iget-object v0, p0, Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroidx/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/PlaybackSupportFragment;->notifyPlaybackRowChanged()V

    return-void
.end method

.method public setControlsOverlayAutoHideEnabled(Z)V
    .locals 1

    .line 41
    iget-object v0, p0, Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroidx/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0, p1}, Landroidx/leanback/app/PlaybackSupportFragment;->setControlsOverlayAutoHideEnabled(Z)V

    return-void
.end method

.method public setHostCallback(Landroidx/leanback/media/PlaybackGlueHost$HostCallback;)V
    .locals 1

    .line 73
    iget-object v0, p0, Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroidx/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0, p1}, Landroidx/leanback/app/PlaybackSupportFragment;->setHostCallback(Landroidx/leanback/media/PlaybackGlueHost$HostCallback;)V

    return-void
.end method

.method public setOnActionClickedListener(Landroidx/leanback/widget/OnActionClickedListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 57
    iget-object p1, p0, Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroidx/leanback/app/PlaybackSupportFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/leanback/app/PlaybackSupportFragment;->setOnPlaybackItemViewClickedListener(Landroidx/leanback/widget/BaseOnItemViewClickedListener;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroidx/leanback/app/PlaybackSupportFragment;

    new-instance v1, Landroidx/leanback/app/PlaybackSupportFragmentGlueHost$1;

    invoke-direct {v1, p0, p1}, Landroidx/leanback/app/PlaybackSupportFragmentGlueHost$1;-><init>(Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;Landroidx/leanback/widget/OnActionClickedListener;)V

    invoke-virtual {v0, v1}, Landroidx/leanback/app/PlaybackSupportFragment;->setOnPlaybackItemViewClickedListener(Landroidx/leanback/widget/BaseOnItemViewClickedListener;)V

    :goto_0
    return-void
.end method

.method public setOnKeyInterceptListener(Landroid/view/View$OnKeyListener;)V
    .locals 1

    .line 51
    iget-object v0, p0, Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroidx/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0, p1}, Landroidx/leanback/app/PlaybackSupportFragment;->setOnKeyInterceptListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public setPlaybackRow(Landroidx/leanback/widget/Row;)V
    .locals 1

    .line 88
    iget-object v0, p0, Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroidx/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0, p1}, Landroidx/leanback/app/PlaybackSupportFragment;->setPlaybackRow(Landroidx/leanback/widget/Row;)V

    return-void
.end method

.method public setPlaybackRowPresenter(Landroidx/leanback/widget/PlaybackRowPresenter;)V
    .locals 1

    .line 83
    iget-object v0, p0, Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroidx/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0, p1}, Landroidx/leanback/app/PlaybackSupportFragment;->setPlaybackRowPresenter(Landroidx/leanback/widget/PlaybackRowPresenter;)V

    return-void
.end method

.method public setPlaybackSeekUiClient(Landroidx/leanback/widget/PlaybackSeekUi$Client;)V
    .locals 1

    .line 113
    iget-object v0, p0, Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroidx/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0, p1}, Landroidx/leanback/app/PlaybackSupportFragment;->setPlaybackSeekUiClient(Landroidx/leanback/widget/PlaybackSeekUi$Client;)V

    return-void
.end method

.method public showControlsOverlay(Z)V
    .locals 1

    .line 108
    iget-object v0, p0, Landroidx/leanback/app/PlaybackSupportFragmentGlueHost;->mFragment:Landroidx/leanback/app/PlaybackSupportFragment;

    invoke-virtual {v0, p1}, Landroidx/leanback/app/PlaybackSupportFragment;->showControlsOverlay(Z)V

    return-void
.end method
