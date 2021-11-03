.class final Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaPreparer"
.end annotation


# static fields
.field private static final DOWNLOAD_HELPER_CALLBACK_MESSAGE_FAILED:I = 0x1

.field private static final DOWNLOAD_HELPER_CALLBACK_MESSAGE_PREPARED:I = 0x0

.field private static final MESSAGE_CHECK_FOR_FAILURE:I = 0x1

.field private static final MESSAGE_CONTINUE_LOADING:I = 0x2

.field private static final MESSAGE_PREPARE_SOURCE:I = 0x0

.field private static final MESSAGE_RELEASE:I = 0x3


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private final downloadHelper:Lcom/google/android/exoplayer2/offline/DownloadHelper;

.field private final downloadHelperHandler:Landroid/os/Handler;

.field public mediaPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

.field private final mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private final mediaSourceHandler:Landroid/os/Handler;

.field private final mediaSourceThread:Landroid/os/HandlerThread;

.field private final pendingMediaPeriods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/MediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private released:Z

.field public timeline:Lcom/google/android/exoplayer2/Timeline;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/offline/DownloadHelper;)V
    .locals 1

    .line 964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 965
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 966
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->downloadHelper:Lcom/google/android/exoplayer2/offline/DownloadHelper;

    .line 967
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    const/4 p2, 0x1

    const/high16 v0, 0x10000

    invoke-direct {p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;-><init>(ZI)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 968
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    .line 970
    new-instance p1, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadHelper$MediaPreparer$gRg5OjhQDuN-d7U0rx8tYCna7cs;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadHelper$MediaPreparer$gRg5OjhQDuN-d7U0rx8tYCna7cs;-><init>(Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;)V

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->createHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    .line 971
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->downloadHelperHandler:Landroid/os/Handler;

    .line 972
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "DownloadHelper"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSourceThread:Landroid/os/HandlerThread;

    .line 973
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSourceThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 974
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSourceThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSourceHandler:Landroid/os/Handler;

    .line 975
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSourceHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private handleDownloadHelperCallbackMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1084
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->released:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1088
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    .line 1093
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->release()V

    .line 1094
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->downloadHelper:Lcom/google/android/exoplayer2/offline/DownloadHelper;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->access$300(Lcom/google/android/exoplayer2/offline/DownloadHelper;Ljava/io/IOException;)V

    return v2

    .line 1090
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->downloadHelper:Lcom/google/android/exoplayer2/offline/DownloadHelper;

    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->access$200(Lcom/google/android/exoplayer2/offline/DownloadHelper;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$gRg5OjhQDuN-d7U0rx8tYCna7cs(Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->handleDownloadHelperCallbackMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 990
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    return v2

    .line 1019
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz p1, :cond_0

    .line 1020
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v0, p1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p1, v2

    .line 1021
    iget-object v5, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v5, v4}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1024
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 1025
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSourceHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1026
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSourceThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return v3

    .line 1013
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 1014
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    .line 1015
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    :cond_1
    return v3

    .line 997
    :pswitch_2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-nez p1, :cond_2

    .line 998
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    goto :goto_2

    .line 1000
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_3

    .line 1001
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1004
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSourceHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1007
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->downloadHelperHandler:Landroid/os/Handler;

    .line 1008
    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1009
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_3
    return v3

    .line 992
    :pswitch_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {p1, p0, v1}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 993
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSourceHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2

    .line 1078
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSourceHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .line 940
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1

    .line 1069
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1070
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1071
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSourceHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1072
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->downloadHelperHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 6

    .line 1037
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-eqz p1, :cond_0

    return-void

    .line 1041
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/Timeline$Window;->isLive:Z

    if-eqz p1, :cond_1

    .line 1042
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->downloadHelperHandler:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/exoplayer2/offline/DownloadHelper$LiveContentUnsupportedException;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/offline/DownloadHelper$LiveContentUnsupportedException;-><init>()V

    const/4 v0, 0x1

    .line 1043
    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1046
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 1049
    :cond_1
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1050
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result p1

    new-array p1, p1, [Lcom/google/android/exoplayer2/source/MediaPeriod;

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    const/4 p1, 0x0

    .line 1051
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v1, v1

    const-wide/16 v2, 0x0

    if-ge p1, v1, :cond_2

    .line 1052
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    new-instance v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1054
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 1053
    invoke-interface {v1, v4, v5, v2, v3}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v1

    .line 1057
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    aput-object v1, v2, p1

    .line 1058
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1060
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length p2, p1

    :goto_1
    if-ge v0, p2, :cond_3

    aget-object v1, p1, v0

    .line 1061
    invoke-interface {v1, p0, v2, v3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public release()V
    .locals 2

    .line 979
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->released:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 982
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->released:Z

    .line 983
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaSourceHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
