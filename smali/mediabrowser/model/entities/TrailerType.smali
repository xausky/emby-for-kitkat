.class public final enum Lmediabrowser/model/entities/TrailerType;
.super Ljava/lang/Enum;
.source "TrailerType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/entities/TrailerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/entities/TrailerType;

.field public static final enum Archive:Lmediabrowser/model/entities/TrailerType;

.field public static final enum ComingSoonToDvd:Lmediabrowser/model/entities/TrailerType;

.field public static final enum ComingSoonToStreaming:Lmediabrowser/model/entities/TrailerType;

.field public static final enum ComingSoonToTheaters:Lmediabrowser/model/entities/TrailerType;

.field public static final enum LocalTrailer:Lmediabrowser/model/entities/TrailerType;

.field private static mappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/entities/TrailerType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 5
    new-instance v0, Lmediabrowser/model/entities/TrailerType;

    const-string v1, "ComingSoonToTheaters"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lmediabrowser/model/entities/TrailerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/entities/TrailerType;->ComingSoonToTheaters:Lmediabrowser/model/entities/TrailerType;

    .line 6
    new-instance v0, Lmediabrowser/model/entities/TrailerType;

    const-string v1, "ComingSoonToDvd"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lmediabrowser/model/entities/TrailerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/entities/TrailerType;->ComingSoonToDvd:Lmediabrowser/model/entities/TrailerType;

    .line 7
    new-instance v0, Lmediabrowser/model/entities/TrailerType;

    const-string v1, "ComingSoonToStreaming"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lmediabrowser/model/entities/TrailerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/entities/TrailerType;->ComingSoonToStreaming:Lmediabrowser/model/entities/TrailerType;

    .line 8
    new-instance v0, Lmediabrowser/model/entities/TrailerType;

    const-string v1, "Archive"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lmediabrowser/model/entities/TrailerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/entities/TrailerType;->Archive:Lmediabrowser/model/entities/TrailerType;

    .line 9
    new-instance v0, Lmediabrowser/model/entities/TrailerType;

    const-string v1, "LocalTrailer"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lmediabrowser/model/entities/TrailerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/entities/TrailerType;->LocalTrailer:Lmediabrowser/model/entities/TrailerType;

    .line 3
    new-array v0, v7, [Lmediabrowser/model/entities/TrailerType;

    sget-object v1, Lmediabrowser/model/entities/TrailerType;->ComingSoonToTheaters:Lmediabrowser/model/entities/TrailerType;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/entities/TrailerType;->ComingSoonToDvd:Lmediabrowser/model/entities/TrailerType;

    aput-object v1, v0, v3

    sget-object v1, Lmediabrowser/model/entities/TrailerType;->ComingSoonToStreaming:Lmediabrowser/model/entities/TrailerType;

    aput-object v1, v0, v4

    sget-object v1, Lmediabrowser/model/entities/TrailerType;->Archive:Lmediabrowser/model/entities/TrailerType;

    aput-object v1, v0, v5

    sget-object v1, Lmediabrowser/model/entities/TrailerType;->LocalTrailer:Lmediabrowser/model/entities/TrailerType;

    aput-object v1, v0, v6

    sput-object v0, Lmediabrowser/model/entities/TrailerType;->$VALUES:[Lmediabrowser/model/entities/TrailerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lmediabrowser/model/entities/TrailerType;->intValue:I

    .line 31
    invoke-static {}, Lmediabrowser/model/entities/TrailerType;->getMappings()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static forValue(I)Lmediabrowser/model/entities/TrailerType;
    .locals 1

    .line 41
    invoke-static {}, Lmediabrowser/model/entities/TrailerType;->getMappings()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/entities/TrailerType;

    return-object p0
.end method

.method private static getMappings()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/entities/TrailerType;",
            ">;"
        }
    .end annotation

    .line 15
    sget-object v0, Lmediabrowser/model/entities/TrailerType;->mappings:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 17
    const-class v0, Lmediabrowser/model/entities/TrailerType;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lmediabrowser/model/entities/TrailerType;->mappings:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmediabrowser/model/entities/TrailerType;->mappings:Ljava/util/HashMap;

    .line 23
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 25
    :cond_1
    :goto_0
    sget-object v0, Lmediabrowser/model/entities/TrailerType;->mappings:Ljava/util/HashMap;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/entities/TrailerType;
    .locals 1

    .line 3
    const-class v0, Lmediabrowser/model/entities/TrailerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/entities/TrailerType;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/entities/TrailerType;
    .locals 1

    .line 3
    sget-object v0, Lmediabrowser/model/entities/TrailerType;->$VALUES:[Lmediabrowser/model/entities/TrailerType;

    invoke-virtual {v0}, [Lmediabrowser/model/entities/TrailerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/entities/TrailerType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 36
    iget v0, p0, Lmediabrowser/model/entities/TrailerType;->intValue:I

    return v0
.end method
