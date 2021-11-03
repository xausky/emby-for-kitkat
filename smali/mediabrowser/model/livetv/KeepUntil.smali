.class public final enum Lmediabrowser/model/livetv/KeepUntil;
.super Ljava/lang/Enum;
.source "KeepUntil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/livetv/KeepUntil;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/livetv/KeepUntil;

.field public static final enum UntilDate:Lmediabrowser/model/livetv/KeepUntil;

.field public static final enum UntilDeleted:Lmediabrowser/model/livetv/KeepUntil;

.field public static final enum UntilSpaceNeeded:Lmediabrowser/model/livetv/KeepUntil;

.field public static final enum UntilWatched:Lmediabrowser/model/livetv/KeepUntil;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 7
    new-instance v0, Lmediabrowser/model/livetv/KeepUntil;

    const-string v1, "UntilDeleted"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmediabrowser/model/livetv/KeepUntil;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/livetv/KeepUntil;->UntilDeleted:Lmediabrowser/model/livetv/KeepUntil;

    .line 8
    new-instance v0, Lmediabrowser/model/livetv/KeepUntil;

    const-string v1, "UntilSpaceNeeded"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmediabrowser/model/livetv/KeepUntil;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/livetv/KeepUntil;->UntilSpaceNeeded:Lmediabrowser/model/livetv/KeepUntil;

    .line 9
    new-instance v0, Lmediabrowser/model/livetv/KeepUntil;

    const-string v1, "UntilWatched"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmediabrowser/model/livetv/KeepUntil;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/livetv/KeepUntil;->UntilWatched:Lmediabrowser/model/livetv/KeepUntil;

    .line 10
    new-instance v0, Lmediabrowser/model/livetv/KeepUntil;

    const-string v1, "UntilDate"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmediabrowser/model/livetv/KeepUntil;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/livetv/KeepUntil;->UntilDate:Lmediabrowser/model/livetv/KeepUntil;

    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [Lmediabrowser/model/livetv/KeepUntil;

    sget-object v1, Lmediabrowser/model/livetv/KeepUntil;->UntilDeleted:Lmediabrowser/model/livetv/KeepUntil;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/livetv/KeepUntil;->UntilSpaceNeeded:Lmediabrowser/model/livetv/KeepUntil;

    aput-object v1, v0, v3

    sget-object v1, Lmediabrowser/model/livetv/KeepUntil;->UntilWatched:Lmediabrowser/model/livetv/KeepUntil;

    aput-object v1, v0, v4

    sget-object v1, Lmediabrowser/model/livetv/KeepUntil;->UntilDate:Lmediabrowser/model/livetv/KeepUntil;

    aput-object v1, v0, v5

    sput-object v0, Lmediabrowser/model/livetv/KeepUntil;->$VALUES:[Lmediabrowser/model/livetv/KeepUntil;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forValue(I)Lmediabrowser/model/livetv/KeepUntil;
    .locals 1

    .line 19
    invoke-static {}, Lmediabrowser/model/livetv/KeepUntil;->values()[Lmediabrowser/model/livetv/KeepUntil;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/livetv/KeepUntil;
    .locals 1

    .line 5
    const-class v0, Lmediabrowser/model/livetv/KeepUntil;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/livetv/KeepUntil;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/livetv/KeepUntil;
    .locals 1

    .line 5
    sget-object v0, Lmediabrowser/model/livetv/KeepUntil;->$VALUES:[Lmediabrowser/model/livetv/KeepUntil;

    invoke-virtual {v0}, [Lmediabrowser/model/livetv/KeepUntil;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/livetv/KeepUntil;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 14
    invoke-virtual {p0}, Lmediabrowser/model/livetv/KeepUntil;->ordinal()I

    move-result v0

    return v0
.end method
