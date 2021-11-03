.class Ltv/emby/embyatv/playback/PlaybackController$9;
.super Ljava/lang/Object;
.source "PlaybackController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/PlaybackController;->stopSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/PlaybackController;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/PlaybackController;)V
    .locals 0

    .line 797
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$9;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 800
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$9;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$1002(Ltv/emby/embyatv/playback/PlaybackController;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 801
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$9;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$900(Ltv/emby/embyatv/playback/PlaybackController;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$9;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$900(Ltv/emby/embyatv/playback/PlaybackController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
