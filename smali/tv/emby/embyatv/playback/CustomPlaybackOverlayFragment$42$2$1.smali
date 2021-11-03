.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42$2$1;
.super Ljava/lang/Object;
.source "CustomPlaybackOverlayFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42$2;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42$2;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42$2;)V
    .locals 0

    .line 1835
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42$2$1;->this$2:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1838
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42$2$1;->this$2:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42$2;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42$2;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/PlaybackController;->stop()V

    .line 1839
    iget-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42$2$1;->this$2:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42$2;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42$2;->this$1:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$42;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-object p1, p1, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mPlaybackController:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {p1}, Ltv/emby/embyatv/playback/PlaybackController;->playerErrorEncountered()V

    return-void
.end method
