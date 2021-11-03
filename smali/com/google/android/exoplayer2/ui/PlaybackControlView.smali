.class public Lcom/google/android/exoplayer2/ui/PlaybackControlView;
.super Lcom/google/android/exoplayer2/ui/PlayerControlView;
.source "PlaybackControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/PlaybackControlView$DefaultControlDispatcher;,
        Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_CONTROL_DISPATCHER:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$DefaultControlDispatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$DefaultControlDispatcher;-><init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView$1;)V

    sput-object v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->DEFAULT_CONTROL_DISPATCHER:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    return-void
.end method
