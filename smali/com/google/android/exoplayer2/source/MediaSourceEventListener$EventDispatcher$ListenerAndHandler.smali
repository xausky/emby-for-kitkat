.class final Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListenerAndHandler"
.end annotation


# instance fields
.field public final handler:Landroid/os/Handler;

.field public final listener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
    .locals 0

    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 735
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    .line 736
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    return-void
.end method
