.class public Ltv/emby/embyatv/playback/PlaybackOverlayActivity;
.super Ltv/emby/embyatv/base/BaseActivity;
.source "PlaybackOverlayActivity.java"


# static fields
.field private static final MEDIA_BOTTOM_MARGIN:D = 0.025

.field private static final MEDIA_HEIGHT:D = 0.95

.field private static final MEDIA_LEFT_MARGIN:D = 0.025

.field private static final MEDIA_RIGHT_MARGIN:D = 0.025

.field private static final MEDIA_TOP_MARGIN:D = 0.025

.field private static final MEDIA_WIDTH:D = 0.95

.field private static final TAG:Ljava/lang/String; = "PlaybackOverlayActivity"


# instance fields
.field private allowLongPress:Z

.field private longPressEvent:Lmediabrowser/apiinteraction/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mApplication:Ltv/emby/embyatv/TvApp;

.field private mVideoManager:Ltv/emby/embyatv/playback/VideoManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ltv/emby/embyatv/base/BaseActivity;-><init>()V

    return-void
.end method

.method private loadViews()V
    .locals 3

    .line 72
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPlaybackController()Ltv/emby/embyatv/playback/PlaybackController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Ltv/emby/embyatv/playback/VideoManager;

    const v1, 0x1020002

    invoke-virtual {p0, v1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ltv/emby/embyatv/playback/VideoManager;-><init>(Ltv/emby/embyatv/playback/PlaybackOverlayActivity;Landroid/view/View;)V

    iput-object v0, p0, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    .line 74
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPlaybackController()Ltv/emby/embyatv/playback/PlaybackController;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    const v2, 0x7f0a007c

    invoke-virtual {p0, v2}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ltv/emby/embyatv/playback/PlaybackController;->init(Ltv/emby/embyatv/playback/VideoManager;Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Ltv/emby/embyatv/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0025

    .line 49
    invoke-virtual {p0, p1}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->setContentView(I)V

    .line 50
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->mApplication:Ltv/emby/embyatv/TvApp;

    .line 52
    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    invoke-direct {p0}, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->loadViews()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 65
    invoke-super {p0}, Ltv/emby/embyatv/base/BaseActivity;->onDestroy()V

    .line 66
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->mVideoManager:Ltv/emby/embyatv/playback/VideoManager;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/VideoManager;->destroy()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->allowLongPress:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_2

    const/16 v0, 0x60

    if-eq p1, v0, :cond_2

    const/16 v0, 0x16

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    if-eq p1, v0, :cond_2

    :cond_0
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x59

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 98
    :cond_1
    invoke-super {p0, p1, p2}, Ltv/emby/embyatv/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 95
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const/4 p1, 0x1

    return p1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->allowLongPress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->longPressEvent:Lmediabrowser/apiinteraction/Response;

    if-eqz v0, :cond_0

    .line 85
    iget-object p2, p0, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->longPressEvent:Lmediabrowser/apiinteraction/Response;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    .line 89
    :cond_0
    invoke-super {p0, p1, p2}, Ltv/emby/embyatv/base/BaseActivity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 58
    invoke-super {p0}, Ltv/emby/embyatv/base/BaseActivity;->onPause()V

    return-void
.end method

.method public setAllowLongPress(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->allowLongPress:Z

    return-void
.end method

.method public setLongPressEvent(Lmediabrowser/apiinteraction/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;->longPressEvent:Lmediabrowser/apiinteraction/Response;

    return-void
.end method
