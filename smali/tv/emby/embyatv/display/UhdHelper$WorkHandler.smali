.class Ltv/emby/embyatv/display/UhdHelper$WorkHandler;
.super Landroid/os/Handler;
.source "UhdHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/display/UhdHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkHandler"
.end annotation


# instance fields
.field private mCallbackListener:Ltv/emby/embyatv/display/UhdHelperListener;

.field private mRequestedModeId:I

.field final synthetic this$0:Ltv/emby/embyatv/display/UhdHelper;


# direct methods
.method public constructor <init>(Ltv/emby/embyatv/display/UhdHelper;Landroid/os/Looper;)V
    .locals 0

    .line 97
    iput-object p1, p0, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->this$0:Ltv/emby/embyatv/display/UhdHelper;

    .line 98
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$900(Ltv/emby/embyatv/display/UhdHelper$WorkHandler;Ltv/emby/embyatv/display/UhdHelperListener;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->setCallbackListener(Ltv/emby/embyatv/display/UhdHelperListener;)V

    return-void
.end method

.method private doPostModeSetCleanup()V
    .locals 4

    .line 165
    iget-object v0, p0, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->this$0:Ltv/emby/embyatv/display/UhdHelper;

    invoke-static {v0}, Ltv/emby/embyatv/display/UhdHelper;->access$400(Ltv/emby/embyatv/display/UhdHelper;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 166
    invoke-static {}, Ltv/emby/embyatv/display/UhdHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Tearing down the overlay Post mode switch attempt."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->this$0:Ltv/emby/embyatv/display/UhdHelper;

    invoke-static {v0, v1}, Ltv/emby/embyatv/display/UhdHelper;->access$402(Ltv/emby/embyatv/display/UhdHelper;I)I

    .line 168
    iget-object v0, p0, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->this$0:Ltv/emby/embyatv/display/UhdHelper;

    invoke-static {v0}, Ltv/emby/embyatv/display/UhdHelper;->access$500(Ltv/emby/embyatv/display/UhdHelper;)V

    .line 170
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->this$0:Ltv/emby/embyatv/display/UhdHelper;

    invoke-static {v0}, Ltv/emby/embyatv/display/UhdHelper;->access$600(Ltv/emby/embyatv/display/UhdHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    monitor-enter v0

    const/4 v2, 0x2

    .line 173
    :try_start_0
    invoke-virtual {p0, v2}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->removeMessages(I)V

    .line 174
    iget-object v2, p0, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->this$0:Ltv/emby/embyatv/display/UhdHelper;

    iget-boolean v2, v2, Ltv/emby/embyatv/display/UhdHelper;->isReceiversRegistered:Z

    if-eqz v2, :cond_1

    .line 175
    iget-object v2, p0, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->this$0:Ltv/emby/embyatv/display/UhdHelper;

    iget-object v2, v2, Ltv/emby/embyatv/display/UhdHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->this$0:Ltv/emby/embyatv/display/UhdHelper;

    iget-object v3, v3, Ltv/emby/embyatv/display/UhdHelper;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 176
    iget-object v2, p0, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->this$0:Ltv/emby/embyatv/display/UhdHelper;

    iget-object v2, v2, Ltv/emby/embyatv/display/UhdHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->this$0:Ltv/emby/embyatv/display/UhdHelper;

    invoke-static {v3}, Ltv/emby/embyatv/display/UhdHelper;->access$700(Ltv/emby/embyatv/display/UhdHelper;)Ltv/emby/embyatv/display/UhdHelper$OverlayStateChangeReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 177
    iget-object v2, p0, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->this$0:Ltv/emby/embyatv/display/UhdHelper;

    iput-boolean v1, v2, Ltv/emby/embyatv/display/UhdHelper;->isReceiversRegistered:Z

    :cond_1
    const/4 v2, 0x1

    .line 179
    invoke-virtual {p0, v2}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->removeMessages(I)V

    const/4 v2, 0x0

    .line 180
    iput-object v2, p0, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->mCallbackListener:Ltv/emby/embyatv/display/UhdHelperListener;

    .line 181
    iget-object v2, p0, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->this$0:Ltv/emby/embyatv/display/UhdHelper;

    invoke-static {v2}, Ltv/emby/embyatv/display/UhdHelper;->access$600(Ltv/emby/embyatv/display/UhdHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 182
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private maybeDoACallback(Ltv/emby/embyatv/display/Display$Mode;)V
    .locals 2

    .line 154
    iget-object v0, p0, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->mCallbackListener:Ltv/emby/embyatv/display/UhdHelperListener;

    if-eqz v0, :cond_0

    .line 155
    invoke-static {}, Ltv/emby/embyatv/display/UhdHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sending callback to listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->mCallbackListener:Ltv/emby/embyatv/display/UhdHelperListener;

    invoke-interface {v0, p1}, Ltv/emby/embyatv/display/UhdHelperListener;->onModeChanged(Ltv/emby/embyatv/display/Display$Mode;)V

    goto :goto_0

    .line 158
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/display/UhdHelper;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Can\'t issue callback as no listener registered"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setCallbackListener(Ltv/emby/embyatv/display/UhdHelperListener;)V
    .locals 0

    .line 104
    iput-object p1, p0, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->mCallbackListener:Ltv/emby/embyatv/display/UhdHelperListener;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 143
    :pswitch_0
    iget-object p1, p0, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->this$0:Ltv/emby/embyatv/display/UhdHelper;

    invoke-static {p1}, Ltv/emby/embyatv/display/UhdHelper;->access$200(Ltv/emby/embyatv/display/UhdHelper;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 144
    invoke-static {}, Ltv/emby/embyatv/display/UhdHelper;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Didn\'t received any broadcast for interstitial text fade till time out, starting the mode change."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object p1, p0, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->this$0:Ltv/emby/embyatv/display/UhdHelper;

    invoke-static {p1, v1}, Ltv/emby/embyatv/display/UhdHelper;->access$202(Ltv/emby/embyatv/display/UhdHelper;Z)Z

    .line 146
    iget-object p1, p0, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->this$0:Ltv/emby/embyatv/display/UhdHelper;

    iget v0, p0, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->mRequestedModeId:I

    invoke-static {p1, v0, v2}, Ltv/emby/embyatv/display/UhdHelper;->access$300(Ltv/emby/embyatv/display/UhdHelper;ILjava/lang/reflect/Field;)V

    goto/16 :goto_0

    .line 136
    :pswitch_1
    iget-object p1, p0, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->this$0:Ltv/emby/embyatv/display/UhdHelper;

    invoke-static {p1}, Ltv/emby/embyatv/display/UhdHelper;->access$200(Ltv/emby/embyatv/display/UhdHelper;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 137
    invoke-static {}, Ltv/emby/embyatv/display/UhdHelper;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Broadcast for text fade received, Initializing the mode change."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object p1, p0, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->this$0:Ltv/emby/embyatv/display/UhdHelper;

    invoke-static {p1, v1}, Ltv/emby/embyatv/display/UhdHelper;->access$202(Ltv/emby/embyatv/display/UhdHelper;Z)Z

    .line 139
    iget-object p1, p0, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->this$0:Ltv/emby/embyatv/display/UhdHelper;

    iget v0, p0, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->mRequestedModeId:I

    invoke-static {p1, v0, v2}, Ltv/emby/embyatv/display/UhdHelper;->access$300(Ltv/emby/embyatv/display/UhdHelper;ILjava/lang/reflect/Field;)V

    goto/16 :goto_0

    .line 130
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ltv/emby/embyatv/display/Display$Mode;

    invoke-direct {p0, v0}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->maybeDoACallback(Ltv/emby/embyatv/display/Display$Mode;)V

    .line 131
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_2

    .line 132
    invoke-direct {p0}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->doPostModeSetCleanup()V

    goto :goto_0

    .line 125
    :pswitch_3
    invoke-static {}, Ltv/emby/embyatv/display/UhdHelper;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Time out without mode change"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-direct {p0, v2}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->maybeDoACallback(Ltv/emby/embyatv/display/Display$Mode;)V

    .line 127
    invoke-direct {p0}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->doPostModeSetCleanup()V

    goto :goto_0

    .line 110
    :pswitch_4
    iget-object p1, p0, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->this$0:Ltv/emby/embyatv/display/UhdHelper;

    invoke-virtual {p1}, Ltv/emby/embyatv/display/UhdHelper;->getMode()Ltv/emby/embyatv/display/Display$Mode;

    move-result-object p1

    if-nez p1, :cond_0

    .line 112
    invoke-static {}, Ltv/emby/embyatv/display/UhdHelper;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mode query returned null after onDisplayChanged callback"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 115
    :cond_0
    invoke-virtual {p1}, Ltv/emby/embyatv/display/Display$Mode;->getModeId()I

    move-result v0

    iget v1, p0, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->mRequestedModeId:I

    if-ne v0, v1, :cond_1

    .line 116
    invoke-static {}, Ltv/emby/embyatv/display/UhdHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Callback for expected change Id= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->mRequestedModeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-direct {p0, p1}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->maybeDoACallback(Ltv/emby/embyatv/display/Display$Mode;)V

    .line 118
    invoke-direct {p0}, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->doPostModeSetCleanup()V

    goto :goto_0

    .line 120
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/display/UhdHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Callback received but not expected mode. Mode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " expected= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->mRequestedModeId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setExpectedMode(I)V
    .locals 0

    .line 101
    iput p1, p0, Ltv/emby/embyatv/display/UhdHelper$WorkHandler;->mRequestedModeId:I

    return-void
.end method
