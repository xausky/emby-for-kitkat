.class public final enum Lmediabrowser/apiinteraction/android/images/ImageCacheManager$CacheType;
.super Ljava/lang/Enum;
.source "ImageCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmediabrowser/apiinteraction/android/images/ImageCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CacheType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/apiinteraction/android/images/ImageCacheManager$CacheType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/apiinteraction/android/images/ImageCacheManager$CacheType;

.field public static final enum DISK:Lmediabrowser/apiinteraction/android/images/ImageCacheManager$CacheType;

.field public static final enum MEMORY:Lmediabrowser/apiinteraction/android/images/ImageCacheManager$CacheType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    new-instance v0, Lmediabrowser/apiinteraction/android/images/ImageCacheManager$CacheType;

    const-string v1, "DISK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmediabrowser/apiinteraction/android/images/ImageCacheManager$CacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/apiinteraction/android/images/ImageCacheManager$CacheType;->DISK:Lmediabrowser/apiinteraction/android/images/ImageCacheManager$CacheType;

    .line 34
    new-instance v0, Lmediabrowser/apiinteraction/android/images/ImageCacheManager$CacheType;

    const-string v1, "MEMORY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmediabrowser/apiinteraction/android/images/ImageCacheManager$CacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/apiinteraction/android/images/ImageCacheManager$CacheType;->MEMORY:Lmediabrowser/apiinteraction/android/images/ImageCacheManager$CacheType;

    const/4 v0, 0x2

    .line 32
    new-array v0, v0, [Lmediabrowser/apiinteraction/android/images/ImageCacheManager$CacheType;

    sget-object v1, Lmediabrowser/apiinteraction/android/images/ImageCacheManager$CacheType;->DISK:Lmediabrowser/apiinteraction/android/images/ImageCacheManager$CacheType;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/apiinteraction/android/images/ImageCacheManager$CacheType;->MEMORY:Lmediabrowser/apiinteraction/android/images/ImageCacheManager$CacheType;

    aput-object v1, v0, v3

    sput-object v0, Lmediabrowser/apiinteraction/android/images/ImageCacheManager$CacheType;->$VALUES:[Lmediabrowser/apiinteraction/android/images/ImageCacheManager$CacheType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/apiinteraction/android/images/ImageCacheManager$CacheType;
    .locals 1

    .line 32
    const-class v0, Lmediabrowser/apiinteraction/android/images/ImageCacheManager$CacheType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/apiinteraction/android/images/ImageCacheManager$CacheType;

    return-object p0
.end method

.method public static values()[Lmediabrowser/apiinteraction/android/images/ImageCacheManager$CacheType;
    .locals 1

    .line 32
    sget-object v0, Lmediabrowser/apiinteraction/android/images/ImageCacheManager$CacheType;->$VALUES:[Lmediabrowser/apiinteraction/android/images/ImageCacheManager$CacheType;

    invoke-virtual {v0}, [Lmediabrowser/apiinteraction/android/images/ImageCacheManager$CacheType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/apiinteraction/android/images/ImageCacheManager$CacheType;

    return-object v0
.end method
