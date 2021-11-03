.class public final Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;
.super Ljava/lang/Object;
.source "FrameworkMediaCrypto.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;


# static fields
.field public static final WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC:Z


# instance fields
.field public final forceAllowInsecureDecoderComponents:Z

.field public final sessionId:[B

.field public final uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Amazon"

    .line 32
    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AFTM"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AFTB"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;->WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;[BZ)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;->uuid:Ljava/util/UUID;

    .line 56
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;->sessionId:[B

    .line 57
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;->forceAllowInsecureDecoderComponents:Z

    return-void
.end method
