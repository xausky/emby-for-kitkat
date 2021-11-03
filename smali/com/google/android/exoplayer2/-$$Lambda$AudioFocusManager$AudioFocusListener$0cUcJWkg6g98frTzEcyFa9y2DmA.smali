.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$AudioFocusManager$AudioFocusListener$0cUcJWkg6g98frTzEcyFa9y2DmA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/-$$Lambda$AudioFocusManager$AudioFocusListener$0cUcJWkg6g98frTzEcyFa9y2DmA;->f$0:Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;

    iput p2, p0, Lcom/google/android/exoplayer2/-$$Lambda$AudioFocusManager$AudioFocusListener$0cUcJWkg6g98frTzEcyFa9y2DmA;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/-$$Lambda$AudioFocusManager$AudioFocusListener$0cUcJWkg6g98frTzEcyFa9y2DmA;->f$0:Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;

    iget v1, p0, Lcom/google/android/exoplayer2/-$$Lambda$AudioFocusManager$AudioFocusListener$0cUcJWkg6g98frTzEcyFa9y2DmA;->f$1:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;->lambda$onAudioFocusChange$0(Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;I)V

    return-void
.end method
