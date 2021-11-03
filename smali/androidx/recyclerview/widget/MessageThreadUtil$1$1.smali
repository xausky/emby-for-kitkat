.class Landroidx/recyclerview/widget/MessageThreadUtil$1$1;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/MessageThreadUtil$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/recyclerview/widget/MessageThreadUtil$1;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/MessageThreadUtil$1;)V
    .locals 0

    .line 59
    iput-object p1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$1$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 62
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$1$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$1;

    iget-object v0, v0, Landroidx/recyclerview/widget/MessageThreadUtil$1;->mQueue:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->next()Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 64
    iget v1, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->what:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "ThreadUtil"

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported message, what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->what:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 74
    :pswitch_0
    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$1$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$1;

    iget-object v1, v1, Landroidx/recyclerview/widget/MessageThreadUtil$1;->val$callback:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    iget v2, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg1:I

    iget v0, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg2:I

    invoke-interface {v1, v2, v0}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->removeTile(II)V

    goto :goto_1

    .line 70
    :pswitch_1
    iget-object v1, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->data:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/TileList$Tile;

    .line 71
    iget-object v2, p0, Landroidx/recyclerview/widget/MessageThreadUtil$1$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$1;

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$1;->val$callback:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    iget v0, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg1:I

    invoke-interface {v2, v0, v1}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->addTile(ILandroidx/recyclerview/widget/TileList$Tile;)V

    goto :goto_1

    .line 66
    :pswitch_2
    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$1$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$1;

    iget-object v1, v1, Landroidx/recyclerview/widget/MessageThreadUtil$1;->val$callback:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    iget v2, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg1:I

    iget v0, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg2:I

    invoke-interface {v1, v2, v0}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->updateItemCount(II)V

    .line 79
    :goto_1
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$1$1;->this$1:Landroidx/recyclerview/widget/MessageThreadUtil$1;

    iget-object v0, v0, Landroidx/recyclerview/widget/MessageThreadUtil$1;->mQueue:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->next()Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
