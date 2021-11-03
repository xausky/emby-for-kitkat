.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$lirHmLD8j0V_C1qNTaZo6m1qcRs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/BasePlayer$ListenerInvocation;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$lirHmLD8j0V_C1qNTaZo6m1qcRs;->f$0:I

    return-void
.end method


# virtual methods
.method public final invokeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$lirHmLD8j0V_C1qNTaZo6m1qcRs;->f$0:I

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$setRepeatMode$1(ILcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method
