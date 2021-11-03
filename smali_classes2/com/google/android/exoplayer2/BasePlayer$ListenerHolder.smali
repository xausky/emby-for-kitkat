.class public final Lcom/google/android/exoplayer2/BasePlayer$ListenerHolder;
.super Ljava/lang/Object;
.source "BasePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/BasePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ListenerHolder"
.end annotation


# instance fields
.field public final listener:Lcom/google/android/exoplayer2/Player$EventListener;

.field private released:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Player$EventListener;)V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/google/android/exoplayer2/BasePlayer$ListenerHolder;->listener:Lcom/google/android/exoplayer2/Player$EventListener;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/BasePlayer$ListenerHolder;->listener:Lcom/google/android/exoplayer2/Player$EventListener;

    check-cast p1, Lcom/google/android/exoplayer2/BasePlayer$ListenerHolder;

    iget-object p1, p1, Lcom/google/android/exoplayer2/BasePlayer$ListenerHolder;->listener:Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer2/BasePlayer$ListenerHolder;->listener:Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public invoke(Lcom/google/android/exoplayer2/BasePlayer$ListenerInvocation;)V
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/BasePlayer$ListenerHolder;->released:Z

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/BasePlayer$ListenerHolder;->listener:Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/BasePlayer$ListenerInvocation;->invokeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/BasePlayer$ListenerHolder;->released:Z

    return-void
.end method
