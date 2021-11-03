.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36$2;
.super Ljava/lang/Object;
.source "CustomPlaybackOverlayFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36;)V
    .locals 0

    .line 1650
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36$2;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1653
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36$2;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1654
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36$2;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/playback/PlaybackController;->switchAudioStream(I)V

    .line 1655
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36$2;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$36;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-static {p1}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->access$2700(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;)Ltv/emby/embyatv/ui/ImageButton;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/ui/ImageButton;->requestFocus()Z

    const/4 p1, 0x1

    return p1
.end method
