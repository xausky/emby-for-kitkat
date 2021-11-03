.class public final enum Lcom/bumptech/glide/load/DecodeFormat;
.super Ljava/lang/Enum;
.source "DecodeFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/load/DecodeFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bumptech/glide/load/DecodeFormat;

.field public static final DEFAULT:Lcom/bumptech/glide/load/DecodeFormat;

.field public static final enum PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

.field public static final enum PREFER_ARGB_8888_DISALLOW_HARDWARE:Lcom/bumptech/glide/load/DecodeFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum PREFER_RGB_565:Lcom/bumptech/glide/load/DecodeFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 28
    new-instance v0, Lcom/bumptech/glide/load/DecodeFormat;

    const-string v1, "PREFER_ARGB_8888"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/DecodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    .line 38
    new-instance v0, Lcom/bumptech/glide/load/DecodeFormat;

    const-string v1, "PREFER_ARGB_8888_DISALLOW_HARDWARE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/bumptech/glide/load/DecodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888_DISALLOW_HARDWARE:Lcom/bumptech/glide/load/DecodeFormat;

    .line 51
    new-instance v0, Lcom/bumptech/glide/load/DecodeFormat;

    const-string v1, "PREFER_RGB_565"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/bumptech/glide/load/DecodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_RGB_565:Lcom/bumptech/glide/load/DecodeFormat;

    const/4 v0, 0x3

    .line 12
    new-array v0, v0, [Lcom/bumptech/glide/load/DecodeFormat;

    sget-object v1, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888_DISALLOW_HARDWARE:Lcom/bumptech/glide/load/DecodeFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_RGB_565:Lcom/bumptech/glide/load/DecodeFormat;

    aput-object v1, v0, v4

    sput-object v0, Lcom/bumptech/glide/load/DecodeFormat;->$VALUES:[Lcom/bumptech/glide/load/DecodeFormat;

    .line 56
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888_DISALLOW_HARDWARE:Lcom/bumptech/glide/load/DecodeFormat;

    sput-object v0, Lcom/bumptech/glide/load/DecodeFormat;->DEFAULT:Lcom/bumptech/glide/load/DecodeFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/DecodeFormat;
    .locals 1

    .line 12
    const-class v0, Lcom/bumptech/glide/load/DecodeFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/DecodeFormat;

    return-object p0
.end method

.method public static values()[Lcom/bumptech/glide/load/DecodeFormat;
    .locals 1

    .line 12
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->$VALUES:[Lcom/bumptech/glide/load/DecodeFormat;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/DecodeFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/DecodeFormat;

    return-object v0
.end method
