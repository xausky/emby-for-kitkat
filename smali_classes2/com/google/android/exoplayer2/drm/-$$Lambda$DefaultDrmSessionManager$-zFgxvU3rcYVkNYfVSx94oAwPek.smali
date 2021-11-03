.class public final synthetic Lcom/google/android/exoplayer2/drm/-$$Lambda$DefaultDrmSessionManager$-zFgxvU3rcYVkNYfVSx94oAwPek;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ReleaseCallback;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$DefaultDrmSessionManager$-zFgxvU3rcYVkNYfVSx94oAwPek;->f$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    return-void
.end method


# virtual methods
.method public final onSessionReleased(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$DefaultDrmSessionManager$-zFgxvU3rcYVkNYfVSx94oAwPek;->f$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->lambda$-zFgxvU3rcYVkNYfVSx94oAwPek(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    return-void
.end method
