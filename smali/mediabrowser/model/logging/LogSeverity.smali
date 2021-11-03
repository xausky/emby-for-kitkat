.class public final enum Lmediabrowser/model/logging/LogSeverity;
.super Ljava/lang/Enum;
.source "LogSeverity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/logging/LogSeverity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/logging/LogSeverity;

.field public static final enum Debug:Lmediabrowser/model/logging/LogSeverity;

.field public static final enum Error:Lmediabrowser/model/logging/LogSeverity;

.field public static final enum Fatal:Lmediabrowser/model/logging/LogSeverity;

.field public static final enum Info:Lmediabrowser/model/logging/LogSeverity;

.field public static final enum Warn:Lmediabrowser/model/logging/LogSeverity;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 11
    new-instance v0, Lmediabrowser/model/logging/LogSeverity;

    const-string v1, "Info"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmediabrowser/model/logging/LogSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/logging/LogSeverity;->Info:Lmediabrowser/model/logging/LogSeverity;

    .line 15
    new-instance v0, Lmediabrowser/model/logging/LogSeverity;

    const-string v1, "Debug"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmediabrowser/model/logging/LogSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/logging/LogSeverity;->Debug:Lmediabrowser/model/logging/LogSeverity;

    .line 19
    new-instance v0, Lmediabrowser/model/logging/LogSeverity;

    const-string v1, "Warn"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmediabrowser/model/logging/LogSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/logging/LogSeverity;->Warn:Lmediabrowser/model/logging/LogSeverity;

    .line 23
    new-instance v0, Lmediabrowser/model/logging/LogSeverity;

    const-string v1, "Error"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmediabrowser/model/logging/LogSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/logging/LogSeverity;->Error:Lmediabrowser/model/logging/LogSeverity;

    .line 27
    new-instance v0, Lmediabrowser/model/logging/LogSeverity;

    const-string v1, "Fatal"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lmediabrowser/model/logging/LogSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/logging/LogSeverity;->Fatal:Lmediabrowser/model/logging/LogSeverity;

    const/4 v0, 0x5

    .line 6
    new-array v0, v0, [Lmediabrowser/model/logging/LogSeverity;

    sget-object v1, Lmediabrowser/model/logging/LogSeverity;->Info:Lmediabrowser/model/logging/LogSeverity;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/logging/LogSeverity;->Debug:Lmediabrowser/model/logging/LogSeverity;

    aput-object v1, v0, v3

    sget-object v1, Lmediabrowser/model/logging/LogSeverity;->Warn:Lmediabrowser/model/logging/LogSeverity;

    aput-object v1, v0, v4

    sget-object v1, Lmediabrowser/model/logging/LogSeverity;->Error:Lmediabrowser/model/logging/LogSeverity;

    aput-object v1, v0, v5

    sget-object v1, Lmediabrowser/model/logging/LogSeverity;->Fatal:Lmediabrowser/model/logging/LogSeverity;

    aput-object v1, v0, v6

    sput-object v0, Lmediabrowser/model/logging/LogSeverity;->$VALUES:[Lmediabrowser/model/logging/LogSeverity;

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

.method public static forValue(I)Lmediabrowser/model/logging/LogSeverity;
    .locals 1

    .line 36
    invoke-static {}, Lmediabrowser/model/logging/LogSeverity;->values()[Lmediabrowser/model/logging/LogSeverity;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/logging/LogSeverity;
    .locals 1

    .line 6
    const-class v0, Lmediabrowser/model/logging/LogSeverity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/logging/LogSeverity;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/logging/LogSeverity;
    .locals 1

    .line 6
    sget-object v0, Lmediabrowser/model/logging/LogSeverity;->$VALUES:[Lmediabrowser/model/logging/LogSeverity;

    invoke-virtual {v0}, [Lmediabrowser/model/logging/LogSeverity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/logging/LogSeverity;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 31
    invoke-virtual {p0}, Lmediabrowser/model/logging/LogSeverity;->ordinal()I

    move-result v0

    return v0
.end method
