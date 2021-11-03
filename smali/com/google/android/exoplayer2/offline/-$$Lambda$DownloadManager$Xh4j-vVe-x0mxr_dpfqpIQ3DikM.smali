.class public final synthetic Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadManager$Xh4j-vVe-x0mxr_dpfqpIQ3DikM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/offline/DownloadManager;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadManager$Xh4j-vVe-x0mxr_dpfqpIQ3DikM;->f$0:Lcom/google/android/exoplayer2/offline/DownloadManager;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadManager$Xh4j-vVe-x0mxr_dpfqpIQ3DikM;->f$0:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->lambda$Xh4j-vVe-x0mxr_dpfqpIQ3DikM(Lcom/google/android/exoplayer2/offline/DownloadManager;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
