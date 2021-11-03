.class Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$1;
.super Ljava/lang/Object;
.source "CustomPlaybackOverlayFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->onCreate(Landroid/os/Bundle;)V
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

    .line 216
    iput-object p1, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$1;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 219
    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$1;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mIsVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$1;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    iget-boolean v0, v0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->mFadeEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment$1;->this$0:Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/CustomPlaybackOverlayFragment;->hide()V

    :cond_0
    return-void
.end method
