.class Ltv/emby/embyatv/playback/MediaManager$6;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/MediaManager;->clearAudioQueue()V
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

    .line 545
    iput-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$6;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 548
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager$6;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {v0}, Ltv/emby/embyatv/playback/MediaManager;->access$900(Ltv/emby/embyatv/playback/MediaManager;)Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 549
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager$6;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Ltv/emby/embyatv/playback/MediaManager;->access$1000(Ltv/emby/embyatv/playback/MediaManager;Ljava/util/List;)V

    goto :goto_0

    .line 551
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager$6;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {v0}, Ltv/emby/embyatv/playback/MediaManager;->access$900(Ltv/emby/embyatv/playback/MediaManager;)Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->clear()V

    .line 552
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager$6;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {v0}, Ltv/emby/embyatv/playback/MediaManager;->access$1100(Ltv/emby/embyatv/playback/MediaManager;)V

    .line 554
    :goto_0
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager$6;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ltv/emby/embyatv/playback/MediaManager;->access$1202(Ltv/emby/embyatv/playback/MediaManager;I)I

    .line 555
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager$6;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {v0}, Ltv/emby/embyatv/playback/MediaManager;->access$1300(Ltv/emby/embyatv/playback/MediaManager;)Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager$6;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {v0}, Ltv/emby/embyatv/playback/MediaManager;->access$1300(Ltv/emby/embyatv/playback/MediaManager;)Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->clear()V

    :cond_1
    return-void
.end method
