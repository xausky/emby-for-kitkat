.class Ltv/emby/embyatv/playback/MediaManager$12;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/playback/MediaManager;->updateCurrentAudioItemPlaying(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/playback/MediaManager;

.field final synthetic val$playing:Z


# direct methods
.method constructor <init>(Ltv/emby/embyatv/playback/MediaManager;Z)V
    .locals 0

    .line 872
    iput-object p1, p0, Ltv/emby/embyatv/playback/MediaManager$12;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    iput-boolean p2, p0, Ltv/emby/embyatv/playback/MediaManager$12;->val$playing:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 876
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager$12;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {v0}, Ltv/emby/embyatv/playback/MediaManager;->access$900(Ltv/emby/embyatv/playback/MediaManager;)Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager$12;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {v1}, Ltv/emby/embyatv/playback/MediaManager;->access$1200(Ltv/emby/embyatv/playback/MediaManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    if-eqz v0, :cond_0

    .line 878
    iget-boolean v1, p0, Ltv/emby/embyatv/playback/MediaManager$12;->val$playing:Z

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->setIsPlaying(Z)V

    .line 879
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager$12;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {v0}, Ltv/emby/embyatv/playback/MediaManager;->access$900(Ltv/emby/embyatv/playback/MediaManager;)Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/playback/MediaManager$12;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {v1}, Ltv/emby/embyatv/playback/MediaManager;->access$1200(Ltv/emby/embyatv/playback/MediaManager;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->notifyArrayItemRangeChanged(II)V

    .line 880
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager$12;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {v0}, Ltv/emby/embyatv/playback/MediaManager;->access$1300(Ltv/emby/embyatv/playback/MediaManager;)Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager$12;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {v0}, Ltv/emby/embyatv/playback/MediaManager;->access$1300(Ltv/emby/embyatv/playback/MediaManager;)Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 881
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager$12;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {v0}, Ltv/emby/embyatv/playback/MediaManager;->access$1300(Ltv/emby/embyatv/playback/MediaManager;)Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    .line 882
    iget-boolean v3, p0, Ltv/emby/embyatv/playback/MediaManager$12;->val$playing:Z

    invoke-virtual {v0, v3}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->setIsPlaying(Z)V

    .line 883
    iget-object v0, p0, Ltv/emby/embyatv/playback/MediaManager$12;->this$0:Ltv/emby/embyatv/playback/MediaManager;

    invoke-static {v0}, Ltv/emby/embyatv/playback/MediaManager;->access$1300(Ltv/emby/embyatv/playback/MediaManager;)Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->notifyArrayItemRangeChanged(II)V

    :cond_0
    return-void
.end method
