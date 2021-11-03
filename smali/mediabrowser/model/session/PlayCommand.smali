.class public final enum Lmediabrowser/model/session/PlayCommand;
.super Ljava/lang/Enum;
.source "PlayCommand.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/session/PlayCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/session/PlayCommand;

.field public static final enum PlayInstantMix:Lmediabrowser/model/session/PlayCommand;

.field public static final enum PlayLast:Lmediabrowser/model/session/PlayCommand;

.field public static final enum PlayNext:Lmediabrowser/model/session/PlayCommand;

.field public static final enum PlayNow:Lmediabrowser/model/session/PlayCommand;

.field public static final enum PlayShuffle:Lmediabrowser/model/session/PlayCommand;

.field private static mappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/session/PlayCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 11
    new-instance v0, Lmediabrowser/model/session/PlayCommand;

    const-string v1, "PlayNow"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lmediabrowser/model/session/PlayCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/PlayCommand;->PlayNow:Lmediabrowser/model/session/PlayCommand;

    .line 15
    new-instance v0, Lmediabrowser/model/session/PlayCommand;

    const-string v1, "PlayNext"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lmediabrowser/model/session/PlayCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/PlayCommand;->PlayNext:Lmediabrowser/model/session/PlayCommand;

    .line 19
    new-instance v0, Lmediabrowser/model/session/PlayCommand;

    const-string v1, "PlayLast"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lmediabrowser/model/session/PlayCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/PlayCommand;->PlayLast:Lmediabrowser/model/session/PlayCommand;

    .line 23
    new-instance v0, Lmediabrowser/model/session/PlayCommand;

    const-string v1, "PlayInstantMix"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lmediabrowser/model/session/PlayCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/PlayCommand;->PlayInstantMix:Lmediabrowser/model/session/PlayCommand;

    .line 27
    new-instance v0, Lmediabrowser/model/session/PlayCommand;

    const-string v1, "PlayShuffle"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lmediabrowser/model/session/PlayCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/session/PlayCommand;->PlayShuffle:Lmediabrowser/model/session/PlayCommand;

    const/4 v0, 0x5

    .line 6
    new-array v0, v0, [Lmediabrowser/model/session/PlayCommand;

    sget-object v1, Lmediabrowser/model/session/PlayCommand;->PlayNow:Lmediabrowser/model/session/PlayCommand;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/session/PlayCommand;->PlayNext:Lmediabrowser/model/session/PlayCommand;

    aput-object v1, v0, v3

    sget-object v1, Lmediabrowser/model/session/PlayCommand;->PlayLast:Lmediabrowser/model/session/PlayCommand;

    aput-object v1, v0, v4

    sget-object v1, Lmediabrowser/model/session/PlayCommand;->PlayInstantMix:Lmediabrowser/model/session/PlayCommand;

    aput-object v1, v0, v5

    sget-object v1, Lmediabrowser/model/session/PlayCommand;->PlayShuffle:Lmediabrowser/model/session/PlayCommand;

    aput-object v1, v0, v6

    sput-object v0, Lmediabrowser/model/session/PlayCommand;->$VALUES:[Lmediabrowser/model/session/PlayCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lmediabrowser/model/session/PlayCommand;->intValue:I

    .line 49
    invoke-static {}, Lmediabrowser/model/session/PlayCommand;->getMappings()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static forValue(I)Lmediabrowser/model/session/PlayCommand;
    .locals 1

    .line 59
    invoke-static {}, Lmediabrowser/model/session/PlayCommand;->getMappings()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/session/PlayCommand;

    return-object p0
.end method

.method private static getMappings()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/session/PlayCommand;",
            ">;"
        }
    .end annotation

    .line 33
    sget-object v0, Lmediabrowser/model/session/PlayCommand;->mappings:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 35
    const-class v0, Lmediabrowser/model/session/PlayCommand;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lmediabrowser/model/session/PlayCommand;->mappings:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmediabrowser/model/session/PlayCommand;->mappings:Ljava/util/HashMap;

    .line 41
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 43
    :cond_1
    :goto_0
    sget-object v0, Lmediabrowser/model/session/PlayCommand;->mappings:Ljava/util/HashMap;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/session/PlayCommand;
    .locals 1

    .line 6
    const-class v0, Lmediabrowser/model/session/PlayCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/session/PlayCommand;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/session/PlayCommand;
    .locals 1

    .line 6
    sget-object v0, Lmediabrowser/model/session/PlayCommand;->$VALUES:[Lmediabrowser/model/session/PlayCommand;

    invoke-virtual {v0}, [Lmediabrowser/model/session/PlayCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/session/PlayCommand;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 54
    iget v0, p0, Lmediabrowser/model/session/PlayCommand;->intValue:I

    return v0
.end method
