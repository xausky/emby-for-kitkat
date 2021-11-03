.class public final enum Lmediabrowser/model/session/PlayMethod;
.super Ljava/lang/Enum;
.source "PlayMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/session/PlayMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/session/PlayMethod;

.field public static final enum DirectPlay:Lmediabrowser/model/session/PlayMethod;

.field public static final enum DirectStream:Lmediabrowser/model/session/PlayMethod;

.field public static final enum Transcode:Lmediabrowser/model/session/PlayMethod;

.field private static mappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/session/PlayMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 5
    new-instance v0, Lmediabrowser/model/session/PlayMethod;

    const-string v1, "Transcode"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lmediabrowser/model/session/PlayMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/PlayMethod;->Transcode:Lmediabrowser/model/session/PlayMethod;

    .line 6
    new-instance v0, Lmediabrowser/model/session/PlayMethod;

    const-string v1, "DirectStream"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lmediabrowser/model/session/PlayMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/PlayMethod;->DirectStream:Lmediabrowser/model/session/PlayMethod;

    .line 7
    new-instance v0, Lmediabrowser/model/session/PlayMethod;

    const-string v1, "DirectPlay"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lmediabrowser/model/session/PlayMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/PlayMethod;->DirectPlay:Lmediabrowser/model/session/PlayMethod;

    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [Lmediabrowser/model/session/PlayMethod;

    sget-object v1, Lmediabrowser/model/session/PlayMethod;->Transcode:Lmediabrowser/model/session/PlayMethod;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/session/PlayMethod;->DirectStream:Lmediabrowser/model/session/PlayMethod;

    aput-object v1, v0, v3

    sget-object v1, Lmediabrowser/model/session/PlayMethod;->DirectPlay:Lmediabrowser/model/session/PlayMethod;

    aput-object v1, v0, v4

    sput-object v0, Lmediabrowser/model/session/PlayMethod;->$VALUES:[Lmediabrowser/model/session/PlayMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lmediabrowser/model/session/PlayMethod;->intValue:I

    .line 29
    invoke-static {}, Lmediabrowser/model/session/PlayMethod;->getMappings()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static forValue(I)Lmediabrowser/model/session/PlayMethod;
    .locals 1

    .line 39
    invoke-static {}, Lmediabrowser/model/session/PlayMethod;->getMappings()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/session/PlayMethod;

    return-object p0
.end method

.method private static getMappings()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/session/PlayMethod;",
            ">;"
        }
    .end annotation

    .line 13
    sget-object v0, Lmediabrowser/model/session/PlayMethod;->mappings:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 15
    const-class v0, Lmediabrowser/model/session/PlayMethod;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lmediabrowser/model/session/PlayMethod;->mappings:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmediabrowser/model/session/PlayMethod;->mappings:Ljava/util/HashMap;

    .line 21
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 23
    :cond_1
    :goto_0
    sget-object v0, Lmediabrowser/model/session/PlayMethod;->mappings:Ljava/util/HashMap;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/session/PlayMethod;
    .locals 1

    .line 3
    const-class v0, Lmediabrowser/model/session/PlayMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/session/PlayMethod;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/session/PlayMethod;
    .locals 1

    .line 3
    sget-object v0, Lmediabrowser/model/session/PlayMethod;->$VALUES:[Lmediabrowser/model/session/PlayMethod;

    invoke-virtual {v0}, [Lmediabrowser/model/session/PlayMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/session/PlayMethod;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 34
    iget v0, p0, Lmediabrowser/model/session/PlayMethod;->intValue:I

    return v0
.end method
