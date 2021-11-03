.class public final enum Lmediabrowser/model/drawing/ImageOrientation;
.super Ljava/lang/Enum;
.source "ImageOrientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/drawing/ImageOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/drawing/ImageOrientation;

.field public static final enum BottomLeft:Lmediabrowser/model/drawing/ImageOrientation;

.field public static final enum BottomRight:Lmediabrowser/model/drawing/ImageOrientation;

.field public static final enum LeftBottom:Lmediabrowser/model/drawing/ImageOrientation;

.field public static final enum LeftTop:Lmediabrowser/model/drawing/ImageOrientation;

.field public static final enum RightBottom:Lmediabrowser/model/drawing/ImageOrientation;

.field public static final enum RightTop:Lmediabrowser/model/drawing/ImageOrientation;

.field public static final enum TopLeft:Lmediabrowser/model/drawing/ImageOrientation;

.field public static final enum TopRight:Lmediabrowser/model/drawing/ImageOrientation;

.field private static mappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/drawing/ImageOrientation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 5
    new-instance v0, Lmediabrowser/model/drawing/ImageOrientation;

    const-string v1, "TopLeft"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lmediabrowser/model/drawing/ImageOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/drawing/ImageOrientation;->TopLeft:Lmediabrowser/model/drawing/ImageOrientation;

    .line 6
    new-instance v0, Lmediabrowser/model/drawing/ImageOrientation;

    const-string v1, "TopRight"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lmediabrowser/model/drawing/ImageOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/drawing/ImageOrientation;->TopRight:Lmediabrowser/model/drawing/ImageOrientation;

    .line 7
    new-instance v0, Lmediabrowser/model/drawing/ImageOrientation;

    const-string v1, "BottomRight"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lmediabrowser/model/drawing/ImageOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/drawing/ImageOrientation;->BottomRight:Lmediabrowser/model/drawing/ImageOrientation;

    .line 8
    new-instance v0, Lmediabrowser/model/drawing/ImageOrientation;

    const-string v1, "BottomLeft"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lmediabrowser/model/drawing/ImageOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/drawing/ImageOrientation;->BottomLeft:Lmediabrowser/model/drawing/ImageOrientation;

    .line 9
    new-instance v0, Lmediabrowser/model/drawing/ImageOrientation;

    const-string v1, "LeftTop"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lmediabrowser/model/drawing/ImageOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/drawing/ImageOrientation;->LeftTop:Lmediabrowser/model/drawing/ImageOrientation;

    .line 10
    new-instance v0, Lmediabrowser/model/drawing/ImageOrientation;

    const-string v1, "RightTop"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lmediabrowser/model/drawing/ImageOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/drawing/ImageOrientation;->RightTop:Lmediabrowser/model/drawing/ImageOrientation;

    .line 11
    new-instance v0, Lmediabrowser/model/drawing/ImageOrientation;

    const-string v1, "RightBottom"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v8, v9}, Lmediabrowser/model/drawing/ImageOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/drawing/ImageOrientation;->RightBottom:Lmediabrowser/model/drawing/ImageOrientation;

    .line 12
    new-instance v0, Lmediabrowser/model/drawing/ImageOrientation;

    const-string v1, "LeftBottom"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v9, v10}, Lmediabrowser/model/drawing/ImageOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/drawing/ImageOrientation;->LeftBottom:Lmediabrowser/model/drawing/ImageOrientation;

    .line 3
    new-array v0, v10, [Lmediabrowser/model/drawing/ImageOrientation;

    sget-object v1, Lmediabrowser/model/drawing/ImageOrientation;->TopLeft:Lmediabrowser/model/drawing/ImageOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/drawing/ImageOrientation;->TopRight:Lmediabrowser/model/drawing/ImageOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lmediabrowser/model/drawing/ImageOrientation;->BottomRight:Lmediabrowser/model/drawing/ImageOrientation;

    aput-object v1, v0, v4

    sget-object v1, Lmediabrowser/model/drawing/ImageOrientation;->BottomLeft:Lmediabrowser/model/drawing/ImageOrientation;

    aput-object v1, v0, v5

    sget-object v1, Lmediabrowser/model/drawing/ImageOrientation;->LeftTop:Lmediabrowser/model/drawing/ImageOrientation;

    aput-object v1, v0, v6

    sget-object v1, Lmediabrowser/model/drawing/ImageOrientation;->RightTop:Lmediabrowser/model/drawing/ImageOrientation;

    aput-object v1, v0, v7

    sget-object v1, Lmediabrowser/model/drawing/ImageOrientation;->RightBottom:Lmediabrowser/model/drawing/ImageOrientation;

    aput-object v1, v0, v8

    sget-object v1, Lmediabrowser/model/drawing/ImageOrientation;->LeftBottom:Lmediabrowser/model/drawing/ImageOrientation;

    aput-object v1, v0, v9

    sput-object v0, Lmediabrowser/model/drawing/ImageOrientation;->$VALUES:[Lmediabrowser/model/drawing/ImageOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lmediabrowser/model/drawing/ImageOrientation;->intValue:I

    .line 34
    invoke-static {}, Lmediabrowser/model/drawing/ImageOrientation;->getMappings()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static forValue(I)Lmediabrowser/model/drawing/ImageOrientation;
    .locals 1

    .line 44
    invoke-static {}, Lmediabrowser/model/drawing/ImageOrientation;->getMappings()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/drawing/ImageOrientation;

    return-object p0
.end method

.method private static getMappings()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/drawing/ImageOrientation;",
            ">;"
        }
    .end annotation

    .line 18
    sget-object v0, Lmediabrowser/model/drawing/ImageOrientation;->mappings:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 20
    const-class v0, Lmediabrowser/model/drawing/ImageOrientation;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lmediabrowser/model/drawing/ImageOrientation;->mappings:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmediabrowser/model/drawing/ImageOrientation;->mappings:Ljava/util/HashMap;

    .line 26
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 28
    :cond_1
    :goto_0
    sget-object v0, Lmediabrowser/model/drawing/ImageOrientation;->mappings:Ljava/util/HashMap;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/drawing/ImageOrientation;
    .locals 1

    .line 3
    const-class v0, Lmediabrowser/model/drawing/ImageOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/drawing/ImageOrientation;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/drawing/ImageOrientation;
    .locals 1

    .line 3
    sget-object v0, Lmediabrowser/model/drawing/ImageOrientation;->$VALUES:[Lmediabrowser/model/drawing/ImageOrientation;

    invoke-virtual {v0}, [Lmediabrowser/model/drawing/ImageOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/drawing/ImageOrientation;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 39
    iget v0, p0, Lmediabrowser/model/drawing/ImageOrientation;->intValue:I

    return v0
.end method
