.class public final enum Lmediabrowser/model/livetv/DayPattern;
.super Ljava/lang/Enum;
.source "DayPattern.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/livetv/DayPattern;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/livetv/DayPattern;

.field public static final enum Daily:Lmediabrowser/model/livetv/DayPattern;

.field public static final enum Weekdays:Lmediabrowser/model/livetv/DayPattern;

.field public static final enum Weekends:Lmediabrowser/model/livetv/DayPattern;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 5
    new-instance v0, Lmediabrowser/model/livetv/DayPattern;

    const-string v1, "Daily"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmediabrowser/model/livetv/DayPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/livetv/DayPattern;->Daily:Lmediabrowser/model/livetv/DayPattern;

    .line 6
    new-instance v0, Lmediabrowser/model/livetv/DayPattern;

    const-string v1, "Weekdays"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmediabrowser/model/livetv/DayPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/livetv/DayPattern;->Weekdays:Lmediabrowser/model/livetv/DayPattern;

    .line 7
    new-instance v0, Lmediabrowser/model/livetv/DayPattern;

    const-string v1, "Weekends"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmediabrowser/model/livetv/DayPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/livetv/DayPattern;->Weekends:Lmediabrowser/model/livetv/DayPattern;

    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [Lmediabrowser/model/livetv/DayPattern;

    sget-object v1, Lmediabrowser/model/livetv/DayPattern;->Daily:Lmediabrowser/model/livetv/DayPattern;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/livetv/DayPattern;->Weekdays:Lmediabrowser/model/livetv/DayPattern;

    aput-object v1, v0, v3

    sget-object v1, Lmediabrowser/model/livetv/DayPattern;->Weekends:Lmediabrowser/model/livetv/DayPattern;

    aput-object v1, v0, v4

    sput-object v0, Lmediabrowser/model/livetv/DayPattern;->$VALUES:[Lmediabrowser/model/livetv/DayPattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forValue(I)Lmediabrowser/model/livetv/DayPattern;
    .locals 1

    .line 16
    invoke-static {}, Lmediabrowser/model/livetv/DayPattern;->values()[Lmediabrowser/model/livetv/DayPattern;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/livetv/DayPattern;
    .locals 1

    .line 3
    const-class v0, Lmediabrowser/model/livetv/DayPattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/livetv/DayPattern;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/livetv/DayPattern;
    .locals 1

    .line 3
    sget-object v0, Lmediabrowser/model/livetv/DayPattern;->$VALUES:[Lmediabrowser/model/livetv/DayPattern;

    invoke-virtual {v0}, [Lmediabrowser/model/livetv/DayPattern;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/livetv/DayPattern;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 11
    invoke-virtual {p0}, Lmediabrowser/model/livetv/DayPattern;->ordinal()I

    move-result v0

    return v0
.end method
