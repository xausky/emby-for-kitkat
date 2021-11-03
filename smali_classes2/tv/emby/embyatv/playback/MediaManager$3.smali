.class Ltv/emby/embyatv/playback/MediaManager$3;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/playback/MediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/MediaManager;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/MediaManager;)V
    .locals 0

    .line 287
    iput-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$3;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 290
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager$3;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {v0}, Ltv/emby/embyatv/playback/MediaManager;->access$300(Ltv/emby/embyatv/playback/MediaManager;)V

    .line 291
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager$3;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {v0}, Ltv/emby/embyatv/playback/MediaManager;->access$400(Ltv/emby/embyatv/playback/MediaManager;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x384

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
