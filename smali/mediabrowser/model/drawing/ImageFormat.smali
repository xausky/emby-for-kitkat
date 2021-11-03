.class public final enum Lmediabrowser/model/drawing/ImageFormat;
.super Ljava/lang/Enum;
.source "ImageFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/drawing/ImageFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/drawing/ImageFormat;

.field public static final enum Bmp:Lmediabrowser/model/drawing/ImageFormat;

.field public static final enum Gif:Lmediabrowser/model/drawing/ImageFormat;

.field public static final enum Jpg:Lmediabrowser/model/drawing/ImageFormat;

.field public static final enum Png:Lmediabrowser/model/drawing/ImageFormat;

.field public static final enum Webp:Lmediabrowser/model/drawing/ImageFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 11
    new-instance v0, Lmediabrowser/model/drawing/ImageFormat;

    const-string v1, "Bmp"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmediabrowser/model/drawing/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/drawing/ImageFormat;->Bmp:Lmediabrowser/model/drawing/ImageFormat;

    .line 15
    new-instance v0, Lmediabrowser/model/drawing/ImageFormat;

    const-string v1, "Gif"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmediabrowser/model/drawing/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/drawing/ImageFormat;->Gif:Lmediabrowser/model/drawing/ImageFormat;

    .line 19
    new-instance v0, Lmediabrowser/model/drawing/ImageFormat;

    const-string v1, "Jpg"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmediabrowser/model/drawing/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/drawing/ImageFormat;->Jpg:Lmediabrowser/model/drawing/ImageFormat;

    .line 23
    new-instance v0, Lmediabrowser/model/drawing/ImageFormat;

    const-string v1, "Png"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmediabrowser/model/drawing/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/drawing/ImageFormat;->Png:Lmediabrowser/model/drawing/ImageFormat;

    .line 27
    new-instance v0, Lmediabrowser/model/drawing/ImageFormat;

    const-string v1, "Webp"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lmediabrowser/model/drawing/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/drawing/ImageFormat;->Webp:Lmediabrowser/model/drawing/ImageFormat;

    const/4 v0, 0x5

    .line 6
    new-array v0, v0, [Lmediabrowser/model/drawing/ImageFormat;

    sget-object v1, Lmediabrowser/model/drawing/ImageFormat;->Bmp:Lmediabrowser/model/drawing/ImageFormat;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/drawing/ImageFormat;->Gif:Lmediabrowser/model/drawing/ImageFormat;

    aput-object v1, v0, v3

    sget-object v1, Lmediabrowser/model/drawing/ImageFormat;->Jpg:Lmediabrowser/model/drawing/ImageFormat;

    aput-object v1, v0, v4

    sget-object v1, Lmediabrowser/model/drawing/ImageFormat;->Png:Lmediabrowser/model/drawing/ImageFormat;

    aput-object v1, v0, v5

    sget-object v1, Lmediabrowser/model/drawing/ImageFormat;->Webp:Lmediabrowser/model/drawing/ImageFormat;

    aput-object v1, v0, v6

    sput-object v0, Lmediabrowser/model/drawing/ImageFormat;->$VALUES:[Lmediabrowser/model/drawing/ImageFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forValue(I)Lmediabrowser/model/drawing/ImageFormat;
    .locals 1

    .line 36
    invoke-static {}, Lmediabrowser/model/drawing/ImageFormat;->values()[Lmediabrowser/model/drawing/ImageFormat;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/drawing/ImageFormat;
    .locals 1

    .line 6
    const-class v0, Lmediabrowser/model/drawing/ImageFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/drawing/ImageFormat;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/drawing/ImageFormat;
    .locals 1

    .line 6
    sget-object v0, Lmediabrowser/model/drawing/ImageFormat;->$VALUES:[Lmediabrowser/model/drawing/ImageFormat;

    invoke-virtual {v0}, [Lmediabrowser/model/drawing/ImageFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/drawing/ImageFormat;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 31
    invoke-virtual {p0}, Lmediabrowser/model/drawing/ImageFormat;->ordinal()I

    move-result v0

    return v0
.end method
