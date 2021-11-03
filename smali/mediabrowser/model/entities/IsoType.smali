.class public final enum Lmediabrowser/model/entities/IsoType;
.super Ljava/lang/Enum;
.source "IsoType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/entities/IsoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/entities/IsoType;

.field public static final enum BluRay:Lmediabrowser/model/entities/IsoType;

.field public static final enum Dvd:Lmediabrowser/model/entities/IsoType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 11
    new-instance v0, Lmediabrowser/model/entities/IsoType;

    const-string v1, "Dvd"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmediabrowser/model/entities/IsoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/IsoType;->Dvd:Lmediabrowser/model/entities/IsoType;

    .line 15
    new-instance v0, Lmediabrowser/model/entities/IsoType;

    const-string v1, "BluRay"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmediabrowser/model/entities/IsoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/IsoType;->BluRay:Lmediabrowser/model/entities/IsoType;

    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [Lmediabrowser/model/entities/IsoType;

    sget-object v1, Lmediabrowser/model/entities/IsoType;->Dvd:Lmediabrowser/model/entities/IsoType;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/entities/IsoType;->BluRay:Lmediabrowser/model/entities/IsoType;

    aput-object v1, v0, v3

    sput-object v0, Lmediabrowser/model/entities/IsoType;->$VALUES:[Lmediabrowser/model/entities/IsoType;

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

.method public static forValue(I)Lmediabrowser/model/entities/IsoType;
    .locals 1

    .line 24
    invoke-static {}, Lmediabrowser/model/entities/IsoType;->values()[Lmediabrowser/model/entities/IsoType;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/entities/IsoType;
    .locals 1

    .line 6
    const-class v0, Lmediabrowser/model/entities/IsoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/entities/IsoType;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/entities/IsoType;
    .locals 1

    .line 6
    sget-object v0, Lmediabrowser/model/entities/IsoType;->$VALUES:[Lmediabrowser/model/entities/IsoType;

    invoke-virtual {v0}, [Lmediabrowser/model/entities/IsoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/entities/IsoType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 19
    invoke-virtual {p0}, Lmediabrowser/model/entities/IsoType;->ordinal()I

    move-result v0

    return v0
.end method
