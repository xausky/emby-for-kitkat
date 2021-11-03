.class public final enum Lmediabrowser/model/channels/ChannelMediaContentType;
.super Ljava/lang/Enum;
.source "ChannelMediaContentType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/channels/ChannelMediaContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/channels/ChannelMediaContentType;

.field public static final enum Clip:Lmediabrowser/model/channels/ChannelMediaContentType;

.field public static final enum Episode:Lmediabrowser/model/channels/ChannelMediaContentType;

.field public static final enum GameExtra:Lmediabrowser/model/channels/ChannelMediaContentType;

.field public static final enum Movie:Lmediabrowser/model/channels/ChannelMediaContentType;

.field public static final enum MovieExtra:Lmediabrowser/model/channels/ChannelMediaContentType;

.field public static final enum Podcast:Lmediabrowser/model/channels/ChannelMediaContentType;

.field public static final enum Song:Lmediabrowser/model/channels/ChannelMediaContentType;

.field public static final enum Trailer:Lmediabrowser/model/channels/ChannelMediaContentType;

.field public static final enum TvExtra:Lmediabrowser/model/channels/ChannelMediaContentType;

.field private static mappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/channels/ChannelMediaContentType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 5
    new-instance v0, Lmediabrowser/model/channels/ChannelMediaContentType;

    const-string v1, "Clip"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lmediabrowser/model/channels/ChannelMediaContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/channels/ChannelMediaContentType;->Clip:Lmediabrowser/model/channels/ChannelMediaContentType;

    .line 7
    new-instance v0, Lmediabrowser/model/channels/ChannelMediaContentType;

    const-string v1, "Podcast"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lmediabrowser/model/channels/ChannelMediaContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/channels/ChannelMediaContentType;->Podcast:Lmediabrowser/model/channels/ChannelMediaContentType;

    .line 9
    new-instance v0, Lmediabrowser/model/channels/ChannelMediaContentType;

    const-string v1, "Trailer"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lmediabrowser/model/channels/ChannelMediaContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/channels/ChannelMediaContentType;->Trailer:Lmediabrowser/model/channels/ChannelMediaContentType;

    .line 11
    new-instance v0, Lmediabrowser/model/channels/ChannelMediaContentType;

    const-string v1, "Movie"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lmediabrowser/model/channels/ChannelMediaContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/channels/ChannelMediaContentType;->Movie:Lmediabrowser/model/channels/ChannelMediaContentType;

    .line 13
    new-instance v0, Lmediabrowser/model/channels/ChannelMediaContentType;

    const-string v1, "Episode"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lmediabrowser/model/channels/ChannelMediaContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/channels/ChannelMediaContentType;->Episode:Lmediabrowser/model/channels/ChannelMediaContentType;

    .line 15
    new-instance v0, Lmediabrowser/model/channels/ChannelMediaContentType;

    const-string v1, "Song"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lmediabrowser/model/channels/ChannelMediaContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/channels/ChannelMediaContentType;->Song:Lmediabrowser/model/channels/ChannelMediaContentType;

    .line 17
    new-instance v0, Lmediabrowser/model/channels/ChannelMediaContentType;

    const-string v1, "MovieExtra"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lmediabrowser/model/channels/ChannelMediaContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/channels/ChannelMediaContentType;->MovieExtra:Lmediabrowser/model/channels/ChannelMediaContentType;

    .line 19
    new-instance v0, Lmediabrowser/model/channels/ChannelMediaContentType;

    const-string v1, "TvExtra"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lmediabrowser/model/channels/ChannelMediaContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/channels/ChannelMediaContentType;->TvExtra:Lmediabrowser/model/channels/ChannelMediaContentType;

    .line 21
    new-instance v0, Lmediabrowser/model/channels/ChannelMediaContentType;

    const-string v1, "GameExtra"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lmediabrowser/model/channels/ChannelMediaContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/channels/ChannelMediaContentType;->GameExtra:Lmediabrowser/model/channels/ChannelMediaContentType;

    const/16 v0, 0x9

    .line 3
    new-array v0, v0, [Lmediabrowser/model/channels/ChannelMediaContentType;

    sget-object v1, Lmediabrowser/model/channels/ChannelMediaContentType;->Clip:Lmediabrowser/model/channels/ChannelMediaContentType;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/channels/ChannelMediaContentType;->Podcast:Lmediabrowser/model/channels/ChannelMediaContentType;

    aput-object v1, v0, v3

    sget-object v1, Lmediabrowser/model/channels/ChannelMediaContentType;->Trailer:Lmediabrowser/model/channels/ChannelMediaContentType;

    aput-object v1, v0, v4

    sget-object v1, Lmediabrowser/model/channels/ChannelMediaContentType;->Movie:Lmediabrowser/model/channels/ChannelMediaContentType;

    aput-object v1, v0, v5

    sget-object v1, Lmediabrowser/model/channels/ChannelMediaContentType;->Episode:Lmediabrowser/model/channels/ChannelMediaContentType;

    aput-object v1, v0, v6

    sget-object v1, Lmediabrowser/model/channels/ChannelMediaContentType;->Song:Lmediabrowser/model/channels/ChannelMediaContentType;

    aput-object v1, v0, v7

    sget-object v1, Lmediabrowser/model/channels/ChannelMediaContentType;->MovieExtra:Lmediabrowser/model/channels/ChannelMediaContentType;

    aput-object v1, v0, v8

    sget-object v1, Lmediabrowser/model/channels/ChannelMediaContentType;->TvExtra:Lmediabrowser/model/channels/ChannelMediaContentType;

    aput-object v1, v0, v9

    sget-object v1, Lmediabrowser/model/channels/ChannelMediaContentType;->GameExtra:Lmediabrowser/model/channels/ChannelMediaContentType;

    aput-object v1, v0, v10

    sput-object v0, Lmediabrowser/model/channels/ChannelMediaContentType;->$VALUES:[Lmediabrowser/model/channels/ChannelMediaContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lmediabrowser/model/channels/ChannelMediaContentType;->intValue:I

    .line 43
    invoke-static {}, Lmediabrowser/model/channels/ChannelMediaContentType;->getMappings()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static forValue(I)Lmediabrowser/model/channels/ChannelMediaContentType;
    .locals 1

    .line 53
    invoke-static {}, Lmediabrowser/model/channels/ChannelMediaContentType;->getMappings()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/channels/ChannelMediaContentType;

    return-object p0
.end method

.method private static getMappings()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/channels/ChannelMediaContentType;",
            ">;"
        }
    .end annotation

    .line 27
    sget-object v0, Lmediabrowser/model/channels/ChannelMediaContentType;->mappings:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 29
    const-class v0, Lmediabrowser/model/channels/ChannelMediaContentType;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lmediabrowser/model/channels/ChannelMediaContentType;->mappings:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmediabrowser/model/channels/ChannelMediaContentType;->mappings:Ljava/util/HashMap;

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lmediabrowser/model/channels/ChannelMediaContentType;->mappings:Ljava/util/HashMap;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/channels/ChannelMediaContentType;
    .locals 1

    .line 3
    const-class v0, Lmediabrowser/model/channels/ChannelMediaContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/channels/ChannelMediaContentType;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/channels/ChannelMediaContentType;
    .locals 1

    .line 3
    sget-object v0, Lmediabrowser/model/channels/ChannelMediaContentType;->$VALUES:[Lmediabrowser/model/channels/ChannelMediaContentType;

    invoke-virtual {v0}, [Lmediabrowser/model/channels/ChannelMediaContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/channels/ChannelMediaContentType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 48
    iget v0, p0, Lmediabrowser/model/channels/ChannelMediaContentType;->intValue:I

    return v0
.end method
