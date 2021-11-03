.class public final synthetic Lcom/google/android/exoplayer2/drm/-$$Lambda$DefaultDrmSession$-nKOJC1w2998gRg4Cg4l2mjlp30;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/util/EventDispatcher$Event;


# instance fields
.field private final synthetic f$0:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$DefaultDrmSession$-nKOJC1w2998gRg4Cg4l2mjlp30;->f$0:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final sendTo(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$DefaultDrmSession$-nKOJC1w2998gRg4Cg4l2mjlp30;->f$0:Ljava/lang/Exception;

    check-cast p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->lambda$onError$0(Ljava/lang/Exception;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;)V

    return-void
.end method
