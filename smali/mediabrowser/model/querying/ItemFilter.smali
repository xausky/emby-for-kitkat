.class public final enum Lmediabrowser/model/querying/ItemFilter;
.super Ljava/lang/Enum;
.source "ItemFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/querying/ItemFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/querying/ItemFilter;

.field public static final enum Dislikes:Lmediabrowser/model/querying/ItemFilter;

.field public static final enum IsFavorite:Lmediabrowser/model/querying/ItemFilter;

.field public static final enum IsFavoriteOrLikes:Lmediabrowser/model/querying/ItemFilter;

.field public static final enum IsFolder:Lmediabrowser/model/querying/ItemFilter;

.field public static final enum IsNotFolder:Lmediabrowser/model/querying/ItemFilter;

.field public static final enum IsPlayed:Lmediabrowser/model/querying/ItemFilter;

.field public static final enum IsResumable:Lmediabrowser/model/querying/ItemFilter;

.field public static final enum IsUnplayed:Lmediabrowser/model/querying/ItemFilter;

.field public static final enum Likes:Lmediabrowser/model/querying/ItemFilter;

.field private static mappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/querying/ItemFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 11
    new-instance v0, Lmediabrowser/model/querying/ItemFilter;

    const-string v1, "IsFolder"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lmediabrowser/model/querying/ItemFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/querying/ItemFilter;->IsFolder:Lmediabrowser/model/querying/ItemFilter;

    .line 15
    new-instance v0, Lmediabrowser/model/querying/ItemFilter;

    const-string v1, "IsNotFolder"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lmediabrowser/model/querying/ItemFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/querying/ItemFilter;->IsNotFolder:Lmediabrowser/model/querying/ItemFilter;

    .line 19
    new-instance v0, Lmediabrowser/model/querying/ItemFilter;

    const-string v1, "IsUnplayed"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lmediabrowser/model/querying/ItemFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/querying/ItemFilter;->IsUnplayed:Lmediabrowser/model/querying/ItemFilter;

    .line 23
    new-instance v0, Lmediabrowser/model/querying/ItemFilter;

    const-string v1, "IsPlayed"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lmediabrowser/model/querying/ItemFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/querying/ItemFilter;->IsPlayed:Lmediabrowser/model/querying/ItemFilter;

    .line 27
    new-instance v0, Lmediabrowser/model/querying/ItemFilter;

    const-string v1, "IsFavorite"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lmediabrowser/model/querying/ItemFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/querying/ItemFilter;->IsFavorite:Lmediabrowser/model/querying/ItemFilter;

    .line 31
    new-instance v0, Lmediabrowser/model/querying/ItemFilter;

    const-string v1, "IsResumable"

    const/4 v8, 0x7

    invoke-direct {v0, v1, v7, v8}, Lmediabrowser/model/querying/ItemFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/querying/ItemFilter;->IsResumable:Lmediabrowser/model/querying/ItemFilter;

    .line 35
    new-instance v0, Lmediabrowser/model/querying/ItemFilter;

    const-string v1, "Likes"

    const/4 v9, 0x6

    const/16 v10, 0x8

    invoke-direct {v0, v1, v9, v10}, Lmediabrowser/model/querying/ItemFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/querying/ItemFilter;->Likes:Lmediabrowser/model/querying/ItemFilter;

    .line 39
    new-instance v0, Lmediabrowser/model/querying/ItemFilter;

    const-string v1, "Dislikes"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v8, v11}, Lmediabrowser/model/querying/ItemFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/querying/ItemFilter;->Dislikes:Lmediabrowser/model/querying/ItemFilter;

    .line 43
    new-instance v0, Lmediabrowser/model/querying/ItemFilter;

    const-string v1, "IsFavoriteOrLikes"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v10, v12}, Lmediabrowser/model/querying/ItemFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/querying/ItemFilter;->IsFavoriteOrLikes:Lmediabrowser/model/querying/ItemFilter;

    .line 6
    new-array v0, v11, [Lmediabrowser/model/querying/ItemFilter;

    sget-object v1, Lmediabrowser/model/querying/ItemFilter;->IsFolder:Lmediabrowser/model/querying/ItemFilter;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/querying/ItemFilter;->IsNotFolder:Lmediabrowser/model/querying/ItemFilter;

    aput-object v1, v0, v3

    sget-object v1, Lmediabrowser/model/querying/ItemFilter;->IsUnplayed:Lmediabrowser/model/querying/ItemFilter;

    aput-object v1, v0, v4

    sget-object v1, Lmediabrowser/model/querying/ItemFilter;->IsPlayed:Lmediabrowser/model/querying/ItemFilter;

    aput-object v1, v0, v5

    sget-object v1, Lmediabrowser/model/querying/ItemFilter;->IsFavorite:Lmediabrowser/model/querying/ItemFilter;

    aput-object v1, v0, v6

    sget-object v1, Lmediabrowser/model/querying/ItemFilter;->IsResumable:Lmediabrowser/model/querying/ItemFilter;

    aput-object v1, v0, v7

    sget-object v1, Lmediabrowser/model/querying/ItemFilter;->Likes:Lmediabrowser/model/querying/ItemFilter;

    aput-object v1, v0, v9

    sget-object v1, Lmediabrowser/model/querying/ItemFilter;->Dislikes:Lmediabrowser/model/querying/ItemFilter;

    aput-object v1, v0, v8

    sget-object v1, Lmediabrowser/model/querying/ItemFilter;->IsFavoriteOrLikes:Lmediabrowser/model/querying/ItemFilter;

    aput-object v1, v0, v10

    sput-object v0, Lmediabrowser/model/querying/ItemFilter;->$VALUES:[Lmediabrowser/model/querying/ItemFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lmediabrowser/model/querying/ItemFilter;->intValue:I

    .line 65
    invoke-static {}, Lmediabrowser/model/querying/ItemFilter;->getMappings()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static forValue(I)Lmediabrowser/model/querying/ItemFilter;
    .locals 1

    .line 75
    invoke-static {}, Lmediabrowser/model/querying/ItemFilter;->getMappings()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/querying/ItemFilter;

    return-object p0
.end method

.method private static getMappings()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/querying/ItemFilter;",
            ">;"
        }
    .end annotation

    .line 49
    sget-object v0, Lmediabrowser/model/querying/ItemFilter;->mappings:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 51
    const-class v0, Lmediabrowser/model/querying/ItemFilter;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lmediabrowser/model/querying/ItemFilter;->mappings:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmediabrowser/model/querying/ItemFilter;->mappings:Ljava/util/HashMap;

    .line 57
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 59
    :cond_1
    :goto_0
    sget-object v0, Lmediabrowser/model/querying/ItemFilter;->mappings:Ljava/util/HashMap;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/querying/ItemFilter;
    .locals 1

    .line 6
    const-class v0, Lmediabrowser/model/querying/ItemFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/querying/ItemFilter;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/querying/ItemFilter;
    .locals 1

    .line 6
    sget-object v0, Lmediabrowser/model/querying/ItemFilter;->$VALUES:[Lmediabrowser/model/querying/ItemFilter;

    invoke-virtual {v0}, [Lmediabrowser/model/querying/ItemFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/querying/ItemFilter;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 70
    iget v0, p0, Lmediabrowser/model/querying/ItemFilter;->intValue:I

    return v0
.end method
