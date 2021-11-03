.class public final enum Lmediabrowser/model/entities/ExtraType;
.super Ljava/lang/Enum;
.source "ExtraType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/entities/ExtraType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/entities/ExtraType;

.field public static final enum BehindTheScenes:Lmediabrowser/model/entities/ExtraType;

.field public static final enum Clip:Lmediabrowser/model/entities/ExtraType;

.field public static final enum DeletedScene:Lmediabrowser/model/entities/ExtraType;

.field public static final enum Interview:Lmediabrowser/model/entities/ExtraType;

.field public static final enum Sample:Lmediabrowser/model/entities/ExtraType;

.field public static final enum Scene:Lmediabrowser/model/entities/ExtraType;

.field public static final enum ThemeSong:Lmediabrowser/model/entities/ExtraType;

.field public static final enum ThemeVideo:Lmediabrowser/model/entities/ExtraType;

.field public static final enum Trailer:Lmediabrowser/model/entities/ExtraType;

.field private static mappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/entities/ExtraType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 5
    new-instance v0, Lmediabrowser/model/entities/ExtraType;

    const-string v1, "Clip"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lmediabrowser/model/entities/ExtraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/entities/ExtraType;->Clip:Lmediabrowser/model/entities/ExtraType;

    .line 6
    new-instance v0, Lmediabrowser/model/entities/ExtraType;

    const-string v1, "Trailer"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lmediabrowser/model/entities/ExtraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/entities/ExtraType;->Trailer:Lmediabrowser/model/entities/ExtraType;

    .line 7
    new-instance v0, Lmediabrowser/model/entities/ExtraType;

    const-string v1, "BehindTheScenes"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lmediabrowser/model/entities/ExtraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/entities/ExtraType;->BehindTheScenes:Lmediabrowser/model/entities/ExtraType;

    .line 8
    new-instance v0, Lmediabrowser/model/entities/ExtraType;

    const-string v1, "DeletedScene"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lmediabrowser/model/entities/ExtraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/entities/ExtraType;->DeletedScene:Lmediabrowser/model/entities/ExtraType;

    .line 9
    new-instance v0, Lmediabrowser/model/entities/ExtraType;

    const-string v1, "Interview"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lmediabrowser/model/entities/ExtraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/entities/ExtraType;->Interview:Lmediabrowser/model/entities/ExtraType;

    .line 10
    new-instance v0, Lmediabrowser/model/entities/ExtraType;

    const-string v1, "Scene"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lmediabrowser/model/entities/ExtraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/entities/ExtraType;->Scene:Lmediabrowser/model/entities/ExtraType;

    .line 11
    new-instance v0, Lmediabrowser/model/entities/ExtraType;

    const-string v1, "Sample"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v8, v9}, Lmediabrowser/model/entities/ExtraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/entities/ExtraType;->Sample:Lmediabrowser/model/entities/ExtraType;

    .line 12
    new-instance v0, Lmediabrowser/model/entities/ExtraType;

    const-string v1, "ThemeSong"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v9, v10}, Lmediabrowser/model/entities/ExtraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/entities/ExtraType;->ThemeSong:Lmediabrowser/model/entities/ExtraType;

    .line 13
    new-instance v0, Lmediabrowser/model/entities/ExtraType;

    const-string v1, "ThemeVideo"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v10, v11}, Lmediabrowser/model/entities/ExtraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/entities/ExtraType;->ThemeVideo:Lmediabrowser/model/entities/ExtraType;

    .line 3
    new-array v0, v11, [Lmediabrowser/model/entities/ExtraType;

    sget-object v1, Lmediabrowser/model/entities/ExtraType;->Clip:Lmediabrowser/model/entities/ExtraType;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/entities/ExtraType;->Trailer:Lmediabrowser/model/entities/ExtraType;

    aput-object v1, v0, v3

    sget-object v1, Lmediabrowser/model/entities/ExtraType;->BehindTheScenes:Lmediabrowser/model/entities/ExtraType;

    aput-object v1, v0, v4

    sget-object v1, Lmediabrowser/model/entities/ExtraType;->DeletedScene:Lmediabrowser/model/entities/ExtraType;

    aput-object v1, v0, v5

    sget-object v1, Lmediabrowser/model/entities/ExtraType;->Interview:Lmediabrowser/model/entities/ExtraType;

    aput-object v1, v0, v6

    sget-object v1, Lmediabrowser/model/entities/ExtraType;->Scene:Lmediabrowser/model/entities/ExtraType;

    aput-object v1, v0, v7

    sget-object v1, Lmediabrowser/model/entities/ExtraType;->Sample:Lmediabrowser/model/entities/ExtraType;

    aput-object v1, v0, v8

    sget-object v1, Lmediabrowser/model/entities/ExtraType;->ThemeSong:Lmediabrowser/model/entities/ExtraType;

    aput-object v1, v0, v9

    sget-object v1, Lmediabrowser/model/entities/ExtraType;->ThemeVideo:Lmediabrowser/model/entities/ExtraType;

    aput-object v1, v0, v10

    sput-object v0, Lmediabrowser/model/entities/ExtraType;->$VALUES:[Lmediabrowser/model/entities/ExtraType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lmediabrowser/model/entities/ExtraType;->intValue:I

    .line 35
    invoke-static {}, Lmediabrowser/model/entities/ExtraType;->getMappings()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static forValue(I)Lmediabrowser/model/entities/ExtraType;
    .locals 1

    .line 45
    invoke-static {}, Lmediabrowser/model/entities/ExtraType;->getMappings()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/entities/ExtraType;

    return-object p0
.end method

.method private static getMappings()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/entities/ExtraType;",
            ">;"
        }
    .end annotation

    .line 19
    sget-object v0, Lmediabrowser/model/entities/ExtraType;->mappings:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 21
    const-class v0, Lmediabrowser/model/entities/ExtraType;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lmediabrowser/model/entities/ExtraType;->mappings:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmediabrowser/model/entities/ExtraType;->mappings:Ljava/util/HashMap;

    .line 27
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 29
    :cond_1
    :goto_0
    sget-object v0, Lmediabrowser/model/entities/ExtraType;->mappings:Ljava/util/HashMap;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/entities/ExtraType;
    .locals 1

    .line 3
    const-class v0, Lmediabrowser/model/entities/ExtraType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/entities/ExtraType;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/entities/ExtraType;
    .locals 1

    .line 3
    sget-object v0, Lmediabrowser/model/entities/ExtraType;->$VALUES:[Lmediabrowser/model/entities/ExtraType;

    invoke-virtual {v0}, [Lmediabrowser/model/entities/ExtraType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/entities/ExtraType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 40
    iget v0, p0, Lmediabrowser/model/entities/ExtraType;->intValue:I

    return v0
.end method
