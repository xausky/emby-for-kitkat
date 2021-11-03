.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$3;
.super Ljava/lang/Object;
.source "CustomPlaybackOverlayFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)V
    .locals 0

    .line 286
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$3;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 289
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$3;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/PlaybackController;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$3;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hide()V

    .line 290
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$3;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/PlaybackController;->playPause()V

    return-void
.end method
