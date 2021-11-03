.class final Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RequestTask"
.end annotation


# instance fields
.field public final allowRetry:Z

.field public errorCount:I

.field public final request:Ljava/lang/Object;

.field public final startTimeMs:J


# direct methods
.method public constructor <init>(ZJLjava/lang/Object;)V
    .locals 0

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;->allowRetry:Z

    .line 603
    iput-wide p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;->startTimeMs:J

    .line 604
    iput-object p4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;->request:Ljava/lang/Object;

    return-void
.end method
