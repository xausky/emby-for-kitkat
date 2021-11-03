.class Ltv/emby/embyatv/playback/PlaybackController$1$1;
.super Ljava/lang/Object;
.source "PlaybackController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/PlaybackController$1;->onError(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/playback/PlaybackController$1;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/PlaybackController$1;)V
    .locals 0

    .line 388
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$1$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 391
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$1$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$1;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController$1;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$1$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$1;

    iget-object v1, v1, Ltv/emby/embyatv/playback/PlaybackController$1;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v1

    const-class v2, Ltv/emby/embyatv/validation/UnlockActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 393
    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$1$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$1;

    iget-object v1, v1, Ltv/emby/embyatv/playback/PlaybackController$1;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$100(Ltv/emby/embyatv/playback/PlaybackController;)Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltv/emby/embyatv/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
