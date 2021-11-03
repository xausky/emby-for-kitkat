.class public final Lcom/google/android/exoplayer2/drm/ExoMediaDrm$AppManagedProvider;
.super Ljava/lang/Object;
.source "ExoMediaDrm.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/ExoMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppManagedProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/drm/ExoMediaDrm$Provider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final exoMediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/ExoMediaDrm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm<",
            "TT;>;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$AppManagedProvider;->exoMediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    return-void
.end method


# virtual methods
.method public acquireExoMediaDrm(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/ExoMediaDrm;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm<",
            "TT;>;"
        }
    .end annotation

    .line 76
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$AppManagedProvider;->exoMediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->acquire()V

    .line 77
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$AppManagedProvider;->exoMediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    return-object p1
.end method
