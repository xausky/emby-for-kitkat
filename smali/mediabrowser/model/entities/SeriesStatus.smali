.class public final enum Lmediabrowser/model/entities/SeriesStatus;
.super Ljava/lang/Enum;
.source "SeriesStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/entities/SeriesStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/entities/SeriesStatus;

.field public static final enum Continuing:Lmediabrowser/model/entities/SeriesStatus;

.field public static final enum Ended:Lmediabrowser/model/entities/SeriesStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 11
    new-instance v0, Lmediabrowser/model/entities/SeriesStatus;

    const-string v1, "Continuing"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmediabrowser/model/entities/SeriesStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/SeriesStatus;->Continuing:Lmediabrowser/model/entities/SeriesStatus;

    .line 15
    new-instance v0, Lmediabrowser/model/entities/SeriesStatus;

    const-string v1, "Ended"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmediabrowser/model/entities/SeriesStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/entities/SeriesStatus;->Ended:Lmediabrowser/model/entities/SeriesStatus;

    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [Lmediabrowser/model/entities/SeriesStatus;

    sget-object v1, Lmediabrowser/model/entities/SeriesStatus;->Continuing:Lmediabrowser/model/entities/SeriesStatus;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/entities/SeriesStatus;->Ended:Lmediabrowser/model/entities/SeriesStatus;

    aput-object v1, v0, v3

    sput-object v0, Lmediabrowser/model/entities/SeriesStatus;->$VALUES:[Lmediabrowser/model/entities/SeriesStatus;

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

.method public static forValue(I)Lmediabrowser/model/entities/SeriesStatus;
    .locals 1

    .line 24
    invoke-static {}, Lmediabrowser/model/entities/SeriesStatus;->values()[Lmediabrowser/model/entities/SeriesStatus;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/entities/SeriesStatus;
    .locals 1

    .line 6
    const-class v0, Lmediabrowser/model/entities/SeriesStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/entities/SeriesStatus;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/entities/SeriesStatus;
    .locals 1

    .line 6
    sget-object v0, Lmediabrowser/model/entities/SeriesStatus;->$VALUES:[Lmediabrowser/model/entities/SeriesStatus;

    invoke-virtual {v0}, [Lmediabrowser/model/entities/SeriesStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/entities/SeriesStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 19
    invoke-virtual {p0}, Lmediabrowser/model/entities/SeriesStatus;->ordinal()I

    move-result v0

    return v0
.end method
