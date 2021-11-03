.class public final enum Lmediabrowser/model/livetv/RecordingStatus;
.super Ljava/lang/Enum;
.source "RecordingStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/livetv/RecordingStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/livetv/RecordingStatus;

.field public static final enum Cancelled:Lmediabrowser/model/livetv/RecordingStatus;

.field public static final enum Completed:Lmediabrowser/model/livetv/RecordingStatus;

.field public static final enum ConflictedNotOk:Lmediabrowser/model/livetv/RecordingStatus;

.field public static final enum ConflictedOk:Lmediabrowser/model/livetv/RecordingStatus;

.field public static final enum Error:Lmediabrowser/model/livetv/RecordingStatus;

.field public static final enum InProgress:Lmediabrowser/model/livetv/RecordingStatus;

.field public static final enum New:Lmediabrowser/model/livetv/RecordingStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 5
    new-instance v0, Lmediabrowser/model/livetv/RecordingStatus;

    const-string v1, "New"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmediabrowser/model/livetv/RecordingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/livetv/RecordingStatus;->New:Lmediabrowser/model/livetv/RecordingStatus;

    .line 6
    new-instance v0, Lmediabrowser/model/livetv/RecordingStatus;

    const-string v1, "InProgress"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmediabrowser/model/livetv/RecordingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/livetv/RecordingStatus;->InProgress:Lmediabrowser/model/livetv/RecordingStatus;

    .line 7
    new-instance v0, Lmediabrowser/model/livetv/RecordingStatus;

    const-string v1, "Completed"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmediabrowser/model/livetv/RecordingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/livetv/RecordingStatus;->Completed:Lmediabrowser/model/livetv/RecordingStatus;

    .line 8
    new-instance v0, Lmediabrowser/model/livetv/RecordingStatus;

    const-string v1, "Cancelled"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmediabrowser/model/livetv/RecordingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/livetv/RecordingStatus;->Cancelled:Lmediabrowser/model/livetv/RecordingStatus;

    .line 9
    new-instance v0, Lmediabrowser/model/livetv/RecordingStatus;

    const-string v1, "ConflictedOk"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lmediabrowser/model/livetv/RecordingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/livetv/RecordingStatus;->ConflictedOk:Lmediabrowser/model/livetv/RecordingStatus;

    .line 10
    new-instance v0, Lmediabrowser/model/livetv/RecordingStatus;

    const-string v1, "ConflictedNotOk"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lmediabrowser/model/livetv/RecordingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/livetv/RecordingStatus;->ConflictedNotOk:Lmediabrowser/model/livetv/RecordingStatus;

    .line 11
    new-instance v0, Lmediabrowser/model/livetv/RecordingStatus;

    const-string v1, "Error"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lmediabrowser/model/livetv/RecordingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/livetv/RecordingStatus;->Error:Lmediabrowser/model/livetv/RecordingStatus;

    const/4 v0, 0x7

    .line 3
    new-array v0, v0, [Lmediabrowser/model/livetv/RecordingStatus;

    sget-object v1, Lmediabrowser/model/livetv/RecordingStatus;->New:Lmediabrowser/model/livetv/RecordingStatus;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/livetv/RecordingStatus;->InProgress:Lmediabrowser/model/livetv/RecordingStatus;

    aput-object v1, v0, v3

    sget-object v1, Lmediabrowser/model/livetv/RecordingStatus;->Completed:Lmediabrowser/model/livetv/RecordingStatus;

    aput-object v1, v0, v4

    sget-object v1, Lmediabrowser/model/livetv/RecordingStatus;->Cancelled:Lmediabrowser/model/livetv/RecordingStatus;

    aput-object v1, v0, v5

    sget-object v1, Lmediabrowser/model/livetv/RecordingStatus;->ConflictedOk:Lmediabrowser/model/livetv/RecordingStatus;

    aput-object v1, v0, v6

    sget-object v1, Lmediabrowser/model/livetv/RecordingStatus;->ConflictedNotOk:Lmediabrowser/model/livetv/RecordingStatus;

    aput-object v1, v0, v7

    sget-object v1, Lmediabrowser/model/livetv/RecordingStatus;->Error:Lmediabrowser/model/livetv/RecordingStatus;

    aput-object v1, v0, v8

    sput-object v0, Lmediabrowser/model/livetv/RecordingStatus;->$VALUES:[Lmediabrowser/model/livetv/RecordingStatus;

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

.method public static forValue(I)Lmediabrowser/model/livetv/RecordingStatus;
    .locals 1

    .line 20
    invoke-static {}, Lmediabrowser/model/livetv/RecordingStatus;->values()[Lmediabrowser/model/livetv/RecordingStatus;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/livetv/RecordingStatus;
    .locals 1

    .line 3
    const-class v0, Lmediabrowser/model/livetv/RecordingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/livetv/RecordingStatus;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/livetv/RecordingStatus;
    .locals 1

    .line 3
    sget-object v0, Lmediabrowser/model/livetv/RecordingStatus;->$VALUES:[Lmediabrowser/model/livetv/RecordingStatus;

    invoke-virtual {v0}, [Lmediabrowser/model/livetv/RecordingStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/livetv/RecordingStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 15
    invoke-virtual {p0}, Lmediabrowser/model/livetv/RecordingStatus;->ordinal()I

    move-result v0

    return v0
.end method
