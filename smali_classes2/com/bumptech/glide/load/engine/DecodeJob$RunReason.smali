.class final enum Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;
.super Ljava/lang/Enum;
.source "DecodeJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RunReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

.field public static final enum DECODE_DATA:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

.field public static final enum INITIALIZE:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

.field public static final enum SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 699
    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    const-string v1, "INITIALIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->INITIALIZE:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 703
    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    const-string v1, "SWITCH_TO_SOURCE_SERVICE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 708
    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    const-string v1, "DECODE_DATA"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->DECODE_DATA:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    const/4 v0, 0x3

    .line 697
    new-array v0, v0, [Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->INITIALIZE:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->DECODE_DATA:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->$VALUES:[Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 697
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;
    .locals 1

    .line 697
    const-class v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    return-object p0
.end method

.method public static values()[Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;
    .locals 1

    .line 697
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->$VALUES:[Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    return-object v0
.end method
