.class Ltv/emby/embyatv/playback/VideoManager$1;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/VideoManager;->startProgressLoop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/VideoManager;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/VideoManager;)V
    .locals 0

    .line 992
    iput-object p1, p0, Ltv/emby/embyatv/playback/VideoManager$1;->this$0:Ltv/emby/embyatv/playback/VideoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 995
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager$1;->this$0:Ltv/emby/embyatv/playback/VideoManager;

    invoke-static {v0}, Ltv/emby/embyatv/playback/VideoManager;->access$700(Ltv/emby/embyatv/playback/VideoManager;)Ltv/emby/embyatv/playback/PlaybackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager$1;->this$0:Ltv/emby/embyatv/playback/VideoManager;

    invoke-static {v0}, Ltv/emby/embyatv/playback/VideoManager;->access$700(Ltv/emby/embyatv/playback/VideoManager;)Ltv/emby/embyatv/playback/PlaybackListener;

    move-result-object v0

    invoke-interface {v0}, Ltv/emby/embyatv/playback/PlaybackListener;->onEvent()V

    .line 996
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/VideoManager$1;->this$0:Ltv/emby/embyatv/playback/VideoManager;

    invoke-static {v0}, Ltv/emby/embyatv/playback/VideoManager;->access$800(Ltv/emby/embyatv/playback/VideoManager;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
