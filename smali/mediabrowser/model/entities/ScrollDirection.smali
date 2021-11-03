.class public final enum Lmediabrowser/model/entities/ScrollDirection;
.super Ljava/lang/Enum;
.source "ScrollDirection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/entities/ScrollDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/entities/ScrollDirection;

.field public static final enum Horizontal:Lmediabrowser/model/entities/ScrollDirection;

.field public static final enum Vertical:Lmediabrowser/model/entities/ScrollDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 11
    new-instance v0, Lmediabrowser/model/entities/ScrollDirection;

    const-string v1, "Horizontal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmediabrowser/model/entities/ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/ScrollDirection;->Horizontal:Lmediabrowser/model/entities/ScrollDirection;

    .line 15
    new-instance v0, Lmediabrowser/model/entities/ScrollDirection;

    const-string v1, "Vertical"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmediabrowser/model/entities/ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/ScrollDirection;->Vertical:Lmediabrowser/model/entities/ScrollDirection;

    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [Lmediabrowser/model/entities/ScrollDirection;

    sget-object v1, Lmediabrowser/model/entities/ScrollDirection;->Horizontal:Lmediabrowser/model/entities/ScrollDirection;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/entities/ScrollDirection;->Vertical:Lmediabrowser/model/entities/ScrollDirection;

    aput-object v1, v0, v3

    sput-object v0, Lmediabrowser/model/entities/ScrollDirection;->$VALUES:[Lmediabrowser/model/entities/ScrollDirection;

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

.method public static forValue(I)Lmediabrowser/model/entities/ScrollDirection;
    .locals 1

    .line 24
    invoke-static {}, Lmediabrowser/model/entities/ScrollDirection;->values()[Lmediabrowser/model/entities/ScrollDirection;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/entities/ScrollDirection;
    .locals 1

    .line 6
    const-class v0, Lmediabrowser/model/entities/ScrollDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/entities/ScrollDirection;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/entities/ScrollDirection;
    .locals 1

    .line 6
    sget-object v0, Lmediabrowser/model/entities/ScrollDirection;->$VALUES:[Lmediabrowser/model/entities/ScrollDirection;

    invoke-virtual {v0}, [Lmediabrowser/model/entities/ScrollDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/entities/ScrollDirection;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 19
    invoke-virtual {p0}, Lmediabrowser/model/entities/ScrollDirection;->ordinal()I

    move-result v0

    return v0
.end method
