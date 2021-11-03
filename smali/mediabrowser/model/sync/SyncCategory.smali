.class public final enum Lmediabrowser/model/sync/SyncCategory;
.super Ljava/lang/Enum;
.source "SyncCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/sync/SyncCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/sync/SyncCategory;

.field public static final enum Latest:Lmediabrowser/model/sync/SyncCategory;

.field public static final enum NextUp:Lmediabrowser/model/sync/SyncCategory;

.field public static final enum Resume:Lmediabrowser/model/sync/SyncCategory;

.field private static mappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/sync/SyncCategory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lmediabrowser/model/sync/SyncCategory;

    const-string v1, "Latest"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lmediabrowser/model/sync/SyncCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/sync/SyncCategory;->Latest:Lmediabrowser/model/sync/SyncCategory;

    .line 12
    new-instance v0, Lmediabrowser/model/sync/SyncCategory;

    const-string v1, "NextUp"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lmediabrowser/model/sync/SyncCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/sync/SyncCategory;->NextUp:Lmediabrowser/model/sync/SyncCategory;

    .line 16
    new-instance v0, Lmediabrowser/model/sync/SyncCategory;

    const-string v1, "Resume"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lmediabrowser/model/sync/SyncCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/sync/SyncCategory;->Resume:Lmediabrowser/model/sync/SyncCategory;

    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [Lmediabrowser/model/sync/SyncCategory;

    sget-object v1, Lmediabrowser/model/sync/SyncCategory;->Latest:Lmediabrowser/model/sync/SyncCategory;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/sync/SyncCategory;->NextUp:Lmediabrowser/model/sync/SyncCategory;

    aput-object v1, v0, v3

    sget-object v1, Lmediabrowser/model/sync/SyncCategory;->Resume:Lmediabrowser/model/sync/SyncCategory;

    aput-object v1, v0, v4

    sput-object v0, Lmediabrowser/model/sync/SyncCategory;->$VALUES:[Lmediabrowser/model/sync/SyncCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lmediabrowser/model/sync/SyncCategory;->intValue:I

    .line 38
    invoke-static {}, Lmediabrowser/model/sync/SyncCategory;->getMappings()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static forValue(I)Lmediabrowser/model/sync/SyncCategory;
    .locals 1

    .line 48
    invoke-static {}, Lmediabrowser/model/sync/SyncCategory;->getMappings()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/sync/SyncCategory;

    return-object p0
.end method

.method private static getMappings()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/sync/SyncCategory;",
            ">;"
        }
    .end annotation

    .line 22
    sget-object v0, Lmediabrowser/model/sync/SyncCategory;->mappings:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 24
    const-class v0, Lmediabrowser/model/sync/SyncCategory;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lmediabrowser/model/sync/SyncCategory;->mappings:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmediabrowser/model/sync/SyncCategory;->mappings:Ljava/util/HashMap;

    .line 30
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 32
    :cond_1
    :goto_0
    sget-object v0, Lmediabrowser/model/sync/SyncCategory;->mappings:Ljava/util/HashMap;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/sync/SyncCategory;
    .locals 1

    .line 3
    const-class v0, Lmediabrowser/model/sync/SyncCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/sync/SyncCategory;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/sync/SyncCategory;
    .locals 1

    .line 3
    sget-object v0, Lmediabrowser/model/sync/SyncCategory;->$VALUES:[Lmediabrowser/model/sync/SyncCategory;

    invoke-virtual {v0}, [Lmediabrowser/model/sync/SyncCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/sync/SyncCategory;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 43
    iget v0, p0, Lmediabrowser/model/sync/SyncCategory;->intValue:I

    return v0
.end method
