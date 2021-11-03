.class Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;
.super Landroid/os/Handler;
.source "DefaultDrmSession.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 531
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private maybeRetryRequest(Landroid/os/Message;Ljava/lang/Exception;)Z
    .locals 11

    .line 568
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;

    .line 569
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;->allowRetry:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 572
    :cond_0
    iget v1, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;->errorCount:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;->errorCount:I

    .line 573
    iget v1, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;->errorCount:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 574
    invoke-static {v4}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->access$200(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v4

    if-le v1, v4, :cond_1

    return v2

    .line 577
    :cond_1
    instance-of v1, p2, Ljava/io/IOException;

    if-eqz v1, :cond_2

    check-cast p2, Ljava/io/IOException;

    move-object v8, p2

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$UnexpectedDrmSessionException;

    invoke-direct {v1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$UnexpectedDrmSessionException;-><init>(Ljava/lang/Throwable;)V

    move-object v8, v1

    .line 579
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 580
    invoke-static {p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->access$200(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    move-result-object v4

    const/4 v5, 0x3

    .line 582
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v9, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;->startTimeMs:J

    sub-long/2addr v6, v9

    iget v9, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;->errorCount:I

    .line 580
    invoke-interface/range {v4 .. v9}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(IJLjava/io/IOException;I)J

    move-result-wide v0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v4

    if-nez p2, :cond_3

    return v2

    .line 589
    :cond_3
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 542
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;

    .line 545
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 554
    new-instance v1, Ljava/lang/RuntimeException;

    goto :goto_0

    .line 551
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->callback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v2, v2, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    iget-object v3, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;->request:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/drm/MediaDrmCallback;->executeKeyRequest(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;)[B

    move-result-object v1

    goto :goto_1

    .line 547
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->callback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v2, v2, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    iget-object v3, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;->request:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    .line 548
    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/drm/MediaDrmCallback;->executeProvisionRequest(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;)[B

    move-result-object v1

    goto :goto_1

    .line 554
    :goto_0
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 557
    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->maybeRetryRequest(Landroid/os/Message;Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 562
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v2, v2, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->responseHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;

    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;->request:Ljava/lang/Object;

    .line 563
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 564
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method post(ILjava/lang/Object;Z)V
    .locals 3

    .line 535
    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;

    .line 536
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, p3, v1, v2, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;-><init>(ZJLjava/lang/Object;)V

    .line 537
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
