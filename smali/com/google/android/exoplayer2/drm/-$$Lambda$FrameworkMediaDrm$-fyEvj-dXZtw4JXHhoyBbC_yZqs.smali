.class public final synthetic Lcom/google/android/exoplayer2/drm/-$$Lambda$FrameworkMediaDrm$-fyEvj-dXZtw4JXHhoyBbC_yZqs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/drm/-$$Lambda$FrameworkMediaDrm$-fyEvj-dXZtw4JXHhoyBbC_yZqs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/drm/-$$Lambda$FrameworkMediaDrm$-fyEvj-dXZtw4JXHhoyBbC_yZqs;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/-$$Lambda$FrameworkMediaDrm$-fyEvj-dXZtw4JXHhoyBbC_yZqs;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/drm/-$$Lambda$FrameworkMediaDrm$-fyEvj-dXZtw4JXHhoyBbC_yZqs;->INSTANCE:Lcom/google/android/exoplayer2/drm/-$$Lambda$FrameworkMediaDrm$-fyEvj-dXZtw4JXHhoyBbC_yZqs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acquireExoMediaDrm(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/ExoMediaDrm;
    .locals 0

    invoke-static {p1}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->lambda$static$0(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    move-result-object p1

    return-object p1
.end method
