.class public final enum Lmediabrowser/model/dlna/DeviceProfileType;
.super Ljava/lang/Enum;
.source "DeviceProfileType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/dlna/DeviceProfileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/dlna/DeviceProfileType;

.field public static final enum System:Lmediabrowser/model/dlna/DeviceProfileType;

.field public static final enum User:Lmediabrowser/model/dlna/DeviceProfileType;

.field private static mappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/dlna/DeviceProfileType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 5
    new-instance v0, Lmediabrowser/model/dlna/DeviceProfileType;

    const-string v1, "System"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lmediabrowser/model/dlna/DeviceProfileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/dlna/DeviceProfileType;->System:Lmediabrowser/model/dlna/DeviceProfileType;

    .line 6
    new-instance v0, Lmediabrowser/model/dlna/DeviceProfileType;

    const-string v1, "User"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lmediabrowser/model/dlna/DeviceProfileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/dlna/DeviceProfileType;->User:Lmediabrowser/model/dlna/DeviceProfileType;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lmediabrowser/model/dlna/DeviceProfileType;

    sget-object v1, Lmediabrowser/model/dlna/DeviceProfileType;->System:Lmediabrowser/model/dlna/DeviceProfileType;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/dlna/DeviceProfileType;->User:Lmediabrowser/model/dlna/DeviceProfileType;

    aput-object v1, v0, v3

    sput-object v0, Lmediabrowser/model/dlna/DeviceProfileType;->$VALUES:[Lmediabrowser/model/dlna/DeviceProfileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lmediabrowser/model/dlna/DeviceProfileType;->intValue:I

    .line 28
    invoke-static {}, Lmediabrowser/model/dlna/DeviceProfileType;->getMappings()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static forValue(I)Lmediabrowser/model/dlna/DeviceProfileType;
    .locals 1

    .line 38
    invoke-static {}, Lmediabrowser/model/dlna/DeviceProfileType;->getMappings()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/dlna/DeviceProfileType;

    return-object p0
.end method

.method private static getMappings()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/dlna/DeviceProfileType;",
            ">;"
        }
    .end annotation

    .line 12
    sget-object v0, Lmediabrowser/model/dlna/DeviceProfileType;->mappings:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 14
    const-class v0, Lmediabrowser/model/dlna/DeviceProfileType;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lmediabrowser/model/dlna/DeviceProfileType;->mappings:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 18
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmediabrowser/model/dlna/DeviceProfileType;->mappings:Ljava/util/HashMap;

    .line 20
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 22
    :cond_1
    :goto_0
    sget-object v0, Lmediabrowser/model/dlna/DeviceProfileType;->mappings:Ljava/util/HashMap;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/dlna/DeviceProfileType;
    .locals 1

    .line 3
    const-class v0, Lmediabrowser/model/dlna/DeviceProfileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/dlna/DeviceProfileType;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/dlna/DeviceProfileType;
    .locals 1

    .line 3
    sget-object v0, Lmediabrowser/model/dlna/DeviceProfileType;->$VALUES:[Lmediabrowser/model/dlna/DeviceProfileType;

    invoke-virtual {v0}, [Lmediabrowser/model/dlna/DeviceProfileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/dlna/DeviceProfileType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 33
    iget v0, p0, Lmediabrowser/model/dlna/DeviceProfileType;->intValue:I

    return v0
.end method
