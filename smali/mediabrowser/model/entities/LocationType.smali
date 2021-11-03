.class public final enum Lmediabrowser/model/entities/LocationType;
.super Ljava/lang/Enum;
.source "LocationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/entities/LocationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/entities/LocationType;

.field public static final enum FileSystem:Lmediabrowser/model/entities/LocationType;

.field public static final enum Offline:Lmediabrowser/model/entities/LocationType;

.field public static final enum Remote:Lmediabrowser/model/entities/LocationType;

.field public static final enum Virtual:Lmediabrowser/model/entities/LocationType;

.field private static mappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/entities/LocationType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 11
    new-instance v0, Lmediabrowser/model/entities/LocationType;

    const-string v1, "FileSystem"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lmediabrowser/model/entities/LocationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/entities/LocationType;->FileSystem:Lmediabrowser/model/entities/LocationType;

    .line 15
    new-instance v0, Lmediabrowser/model/entities/LocationType;

    const-string v1, "Remote"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lmediabrowser/model/entities/LocationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/entities/LocationType;->Remote:Lmediabrowser/model/entities/LocationType;

    .line 19
    new-instance v0, Lmediabrowser/model/entities/LocationType;

    const-string v1, "Virtual"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lmediabrowser/model/entities/LocationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/entities/LocationType;->Virtual:Lmediabrowser/model/entities/LocationType;

    .line 23
    new-instance v0, Lmediabrowser/model/entities/LocationType;

    const-string v1, "Offline"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lmediabrowser/model/entities/LocationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/entities/LocationType;->Offline:Lmediabrowser/model/entities/LocationType;

    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [Lmediabrowser/model/entities/LocationType;

    sget-object v1, Lmediabrowser/model/entities/LocationType;->FileSystem:Lmediabrowser/model/entities/LocationType;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/entities/LocationType;->Remote:Lmediabrowser/model/entities/LocationType;

    aput-object v1, v0, v3

    sget-object v1, Lmediabrowser/model/entities/LocationType;->Virtual:Lmediabrowser/model/entities/LocationType;

    aput-object v1, v0, v4

    sget-object v1, Lmediabrowser/model/entities/LocationType;->Offline:Lmediabrowser/model/entities/LocationType;

    aput-object v1, v0, v5

    sput-object v0, Lmediabrowser/model/entities/LocationType;->$VALUES:[Lmediabrowser/model/entities/LocationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lmediabrowser/model/entities/LocationType;->intValue:I

    .line 45
    invoke-static {}, Lmediabrowser/model/entities/LocationType;->getMappings()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static forValue(I)Lmediabrowser/model/entities/LocationType;
    .locals 1

    .line 55
    invoke-static {}, Lmediabrowser/model/entities/LocationType;->getMappings()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/entities/LocationType;

    return-object p0
.end method

.method private static getMappings()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/entities/LocationType;",
            ">;"
        }
    .end annotation

    .line 29
    sget-object v0, Lmediabrowser/model/entities/LocationType;->mappings:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lmediabrowser/model/entities/LocationType;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lmediabrowser/model/entities/LocationType;->mappings:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmediabrowser/model/entities/LocationType;->mappings:Ljava/util/HashMap;

    .line 37
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 39
    :cond_1
    :goto_0
    sget-object v0, Lmediabrowser/model/entities/LocationType;->mappings:Ljava/util/HashMap;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/entities/LocationType;
    .locals 1

    .line 6
    const-class v0, Lmediabrowser/model/entities/LocationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/entities/LocationType;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/entities/LocationType;
    .locals 1

    .line 6
    sget-object v0, Lmediabrowser/model/entities/LocationType;->$VALUES:[Lmediabrowser/model/entities/LocationType;

    invoke-virtual {v0}, [Lmediabrowser/model/entities/LocationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/entities/LocationType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 50
    iget v0, p0, Lmediabrowser/model/entities/LocationType;->intValue:I

    return v0
.end method
