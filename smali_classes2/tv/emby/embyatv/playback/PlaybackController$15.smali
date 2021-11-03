.class Ltv/emby/embyatv/playback/PlaybackController$15;
.super Ljava/lang/Object;
.source "PlaybackController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/playback/PlaybackController;
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

    .line 1155
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$15;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1158
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$15;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$15;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1160
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$15;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    iget-object v1, p0, Ltv/emby/embyatv/playback/PlaybackController$15;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$1600(Ltv/emby/embyatv/playback/PlaybackController;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ltv/emby/embyatv/playback/PlaybackController;->seek(J)V

    .line 1161
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$15;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ltv/emby/embyatv/playback/PlaybackController;->access$1602(Ltv/emby/embyatv/playback/PlaybackController;J)J

    .line 1162
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$15;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$1702(Ltv/emby/embyatv/playback/PlaybackController;I)I

    .line 1163
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$15;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-static {v0}, Ltv/emby/embyatv/playback/PlaybackController;->access$1800(Ltv/emby/embyatv/playback/PlaybackController;)V

    .line 1164
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$15;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$1902(Ltv/emby/embyatv/playback/PlaybackController;Z)Z

    return-void
.end method
