.class Ltv/emby/embyatv/playback/PlaybackController$23$1$1;
.super Ljava/lang/Object;
.source "PlaybackController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/PlaybackController$23$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Ltv/emby/embyatv/playback/PlaybackController$23$1;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/PlaybackController$23$1;)V
    .locals 0

    .line 1547
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1$1;->this$2:Ltv/emby/embyatv/playback/PlaybackController$23$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1550
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$23$1$1;->this$2:Ltv/emby/embyatv/playback/PlaybackController$23$1;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController$23$1;->this$1:Ltv/emby/embyatv/playback/PlaybackController$23;

    iget-object v0, v0, Ltv/emby/embyatv/playback/PlaybackController$23;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    new-instance v1, Ltv/emby/embyatv/playback/PlaybackController$23$1$1$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/playback/PlaybackController$23$1$1$1;-><init>(Ltv/emby/embyatv/playback/PlaybackController$23$1$1;)V

    invoke-static {v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$3300(Ltv/emby/embyatv/playback/PlaybackController;Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method
