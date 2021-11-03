.class Ltv/emby/embyatv/playback/PlaybackController$18;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "PlaybackController.java"


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

    .line 1318
    iput-object p1, p0, Ltv/emby/embyatv/playback/PlaybackController$18;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 2

    .line 1321
    iget-object v0, p0, Ltv/emby/embyatv/playback/PlaybackController$18;->this$0:Ltv/emby/embyatv/playback/PlaybackController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltv/emby/embyatv/playback/PlaybackController;->access$2702(Ltv/emby/embyatv/playback/PlaybackController;Z)Z

    return-void
.end method
