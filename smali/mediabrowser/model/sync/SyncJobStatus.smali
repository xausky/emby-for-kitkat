.class public final enum Lmediabrowser/model/sync/SyncJobStatus;
.super Ljava/lang/Enum;
.source "SyncJobStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/sync/SyncJobStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/sync/SyncJobStatus;

.field public static final enum Cancelled:Lmediabrowser/model/sync/SyncJobStatus;

.field public static final enum Completed:Lmediabrowser/model/sync/SyncJobStatus;

.field public static final enum CompletedWithError:Lmediabrowser/model/sync/SyncJobStatus;

.field public static final enum Converting:Lmediabrowser/model/sync/SyncJobStatus;

.field public static final enum Failed:Lmediabrowser/model/sync/SyncJobStatus;

.field public static final enum Queued:Lmediabrowser/model/sync/SyncJobStatus;

.field public static final enum ReadyToTransfer:Lmediabrowser/model/sync/SyncJobStatus;

.field public static final enum Transferring:Lmediabrowser/model/sync/SyncJobStatus;

.field private static mappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/sync/SyncJobStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 5
    new-instance v0, Lmediabrowser/model/sync/SyncJobStatus;

    const-string v1, "Queued"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lmediabrowser/model/sync/SyncJobStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/sync/SyncJobStatus;->Queued:Lmediabrowser/model/sync/SyncJobStatus;

    .line 6
    new-instance v0, Lmediabrowser/model/sync/SyncJobStatus;

    const-string v1, "Converting"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lmediabrowser/model/sync/SyncJobStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/sync/SyncJobStatus;->Converting:Lmediabrowser/model/sync/SyncJobStatus;

    .line 7
    new-instance v0, Lmediabrowser/model/sync/SyncJobStatus;

    const-string v1, "ReadyToTransfer"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lmediabrowser/model/sync/SyncJobStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/sync/SyncJobStatus;->ReadyToTransfer:Lmediabrowser/model/sync/SyncJobStatus;

    .line 8
    new-instance v0, Lmediabrowser/model/sync/SyncJobStatus;

    const-string v1, "Transferring"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lmediabrowser/model/sync/SyncJobStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/sync/SyncJobStatus;->Transferring:Lmediabrowser/model/sync/SyncJobStatus;

    .line 9
    new-instance v0, Lmediabrowser/model/sync/SyncJobStatus;

    const-string v1, "Completed"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lmediabrowser/model/sync/SyncJobStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/sync/SyncJobStatus;->Completed:Lmediabrowser/model/sync/SyncJobStatus;

    .line 10
    new-instance v0, Lmediabrowser/model/sync/SyncJobStatus;

    const-string v1, "CompletedWithError"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lmediabrowser/model/sync/SyncJobStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/sync/SyncJobStatus;->CompletedWithError:Lmediabrowser/model/sync/SyncJobStatus;

    .line 11
    new-instance v0, Lmediabrowser/model/sync/SyncJobStatus;

    const-string v1, "Failed"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lmediabrowser/model/sync/SyncJobStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/sync/SyncJobStatus;->Failed:Lmediabrowser/model/sync/SyncJobStatus;

    .line 12
    new-instance v0, Lmediabrowser/model/sync/SyncJobStatus;

    const-string v1, "Cancelled"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lmediabrowser/model/sync/SyncJobStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/sync/SyncJobStatus;->Cancelled:Lmediabrowser/model/sync/SyncJobStatus;

    const/16 v0, 0x8

    .line 3
    new-array v0, v0, [Lmediabrowser/model/sync/SyncJobStatus;

    sget-object v1, Lmediabrowser/model/sync/SyncJobStatus;->Queued:Lmediabrowser/model/sync/SyncJobStatus;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/sync/SyncJobStatus;->Converting:Lmediabrowser/model/sync/SyncJobStatus;

    aput-object v1, v0, v3

    sget-object v1, Lmediabrowser/model/sync/SyncJobStatus;->ReadyToTransfer:Lmediabrowser/model/sync/SyncJobStatus;

    aput-object v1, v0, v4

    sget-object v1, Lmediabrowser/model/sync/SyncJobStatus;->Transferring:Lmediabrowser/model/sync/SyncJobStatus;

    aput-object v1, v0, v5

    sget-object v1, Lmediabrowser/model/sync/SyncJobStatus;->Completed:Lmediabrowser/model/sync/SyncJobStatus;

    aput-object v1, v0, v6

    sget-object v1, Lmediabrowser/model/sync/SyncJobStatus;->CompletedWithError:Lmediabrowser/model/sync/SyncJobStatus;

    aput-object v1, v0, v7

    sget-object v1, Lmediabrowser/model/sync/SyncJobStatus;->Failed:Lmediabrowser/model/sync/SyncJobStatus;

    aput-object v1, v0, v8

    sget-object v1, Lmediabrowser/model/sync/SyncJobStatus;->Cancelled:Lmediabrowser/model/sync/SyncJobStatus;

    aput-object v1, v0, v9

    sput-object v0, Lmediabrowser/model/sync/SyncJobStatus;->$VALUES:[Lmediabrowser/model/sync/SyncJobStatus;

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
    iput p3, p0, Lmediabrowser/model/sync/SyncJobStatus;->intValue:I

    .line 34
    invoke-static {}, Lmediabrowser/model/sync/SyncJobStatus;->getMappings()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static forValue(I)Lmediabrowser/model/sync/SyncJobStatus;
    .locals 1

    .line 44
    invoke-static {}, Lmediabrowser/model/sync/SyncJobStatus;->getMappings()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/sync/SyncJobStatus;

    return-object p0
.end method

.method private static getMappings()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/sync/SyncJobStatus;",
            ">;"
        }
    .end annotation

    .line 18
    sget-object v0, Lmediabrowser/model/sync/SyncJobStatus;->mappings:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 20
    const-class v0, Lmediabrowser/model/sync/SyncJobStatus;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lmediabrowser/model/sync/SyncJobStatus;->mappings:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmediabrowser/model/sync/SyncJobStatus;->mappings:Ljava/util/HashMap;

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
    sget-object v0, Lmediabrowser/model/sync/SyncJobStatus;->mappings:Ljava/util/HashMap;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/sync/SyncJobStatus;
    .locals 1

    .line 3
    const-class v0, Lmediabrowser/model/sync/SyncJobStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/sync/SyncJobStatus;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/sync/SyncJobStatus;
    .locals 1

    .line 3
    sget-object v0, Lmediabrowser/model/sync/SyncJobStatus;->$VALUES:[Lmediabrowser/model/sync/SyncJobStatus;

    invoke-virtual {v0}, [Lmediabrowser/model/sync/SyncJobStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/sync/SyncJobStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 39
    iget v0, p0, Lmediabrowser/model/sync/SyncJobStatus;->intValue:I

    return v0
.end method
