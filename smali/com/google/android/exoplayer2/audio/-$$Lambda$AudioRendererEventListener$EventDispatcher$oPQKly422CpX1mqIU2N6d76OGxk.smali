.class public final synthetic Lcom/google/android/exoplayer2/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$oPQKly422CpX1mqIU2N6d76OGxk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

.field private final synthetic f$1:I

.field private final synthetic f$2:J

.field private final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$oPQKly422CpX1mqIU2N6d76OGxk;->f$0:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iput p2, p0, Lcom/google/android/exoplayer2/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$oPQKly422CpX1mqIU2N6d76OGxk;->f$1:I

    iput-wide p3, p0, Lcom/google/android/exoplayer2/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$oPQKly422CpX1mqIU2N6d76OGxk;->f$2:J

    iput-wide p5, p0, Lcom/google/android/exoplayer2/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$oPQKly422CpX1mqIU2N6d76OGxk;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$oPQKly422CpX1mqIU2N6d76OGxk;->f$0:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$oPQKly422CpX1mqIU2N6d76OGxk;->f$1:I

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$oPQKly422CpX1mqIU2N6d76OGxk;->f$2:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$oPQKly422CpX1mqIU2N6d76OGxk;->f$3:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->lambda$audioTrackUnderrun$3(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;IJJ)V

    return-void
.end method
