.class public final enum Lmediabrowser/model/mediainfo/MediaProtocol;
.super Ljava/lang/Enum;
.source "MediaProtocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/mediainfo/MediaProtocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/mediainfo/MediaProtocol;

.field public static final enum File:Lmediabrowser/model/mediainfo/MediaProtocol;

.field public static final enum Http:Lmediabrowser/model/mediainfo/MediaProtocol;

.field public static final enum Rtmp:Lmediabrowser/model/mediainfo/MediaProtocol;

.field public static final enum Rtp:Lmediabrowser/model/mediainfo/MediaProtocol;

.field public static final enum Rtsp:Lmediabrowser/model/mediainfo/MediaProtocol;

.field public static final enum Udp:Lmediabrowser/model/mediainfo/MediaProtocol;

.field private static mappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/mediainfo/MediaProtocol;",
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
    new-instance v0, Lmediabrowser/model/mediainfo/MediaProtocol;

    const-string v1, "File"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lmediabrowser/model/mediainfo/MediaProtocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/mediainfo/MediaProtocol;->File:Lmediabrowser/model/mediainfo/MediaProtocol;

    .line 6
    new-instance v0, Lmediabrowser/model/mediainfo/MediaProtocol;

    const-string v1, "Http"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lmediabrowser/model/mediainfo/MediaProtocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/mediainfo/MediaProtocol;->Http:Lmediabrowser/model/mediainfo/MediaProtocol;

    .line 7
    new-instance v0, Lmediabrowser/model/mediainfo/MediaProtocol;

    const-string v1, "Rtmp"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lmediabrowser/model/mediainfo/MediaProtocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/mediainfo/MediaProtocol;->Rtmp:Lmediabrowser/model/mediainfo/MediaProtocol;

    .line 8
    new-instance v0, Lmediabrowser/model/mediainfo/MediaProtocol;

    const-string v1, "Rtsp"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lmediabrowser/model/mediainfo/MediaProtocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/mediainfo/MediaProtocol;->Rtsp:Lmediabrowser/model/mediainfo/MediaProtocol;

    .line 9
    new-instance v0, Lmediabrowser/model/mediainfo/MediaProtocol;

    const-string v1, "Udp"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lmediabrowser/model/mediainfo/MediaProtocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/mediainfo/MediaProtocol;->Udp:Lmediabrowser/model/mediainfo/MediaProtocol;

    .line 10
    new-instance v0, Lmediabrowser/model/mediainfo/MediaProtocol;

    const-string v1, "Rtp"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lmediabrowser/model/mediainfo/MediaProtocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/mediainfo/MediaProtocol;->Rtp:Lmediabrowser/model/mediainfo/MediaProtocol;

    const/4 v0, 0x6

    .line 3
    new-array v0, v0, [Lmediabrowser/model/mediainfo/MediaProtocol;

    sget-object v1, Lmediabrowser/model/mediainfo/MediaProtocol;->File:Lmediabrowser/model/mediainfo/MediaProtocol;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/mediainfo/MediaProtocol;->Http:Lmediabrowser/model/mediainfo/MediaProtocol;

    aput-object v1, v0, v3

    sget-object v1, Lmediabrowser/model/mediainfo/MediaProtocol;->Rtmp:Lmediabrowser/model/mediainfo/MediaProtocol;

    aput-object v1, v0, v4

    sget-object v1, Lmediabrowser/model/mediainfo/MediaProtocol;->Rtsp:Lmediabrowser/model/mediainfo/MediaProtocol;

    aput-object v1, v0, v5

    sget-object v1, Lmediabrowser/model/mediainfo/MediaProtocol;->Udp:Lmediabrowser/model/mediainfo/MediaProtocol;

    aput-object v1, v0, v6

    sget-object v1, Lmediabrowser/model/mediainfo/MediaProtocol;->Rtp:Lmediabrowser/model/mediainfo/MediaProtocol;

    aput-object v1, v0, v7

    sput-object v0, Lmediabrowser/model/mediainfo/MediaProtocol;->$VALUES:[Lmediabrowser/model/mediainfo/MediaProtocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lmediabrowser/model/mediainfo/MediaProtocol;->intValue:I

    .line 32
    invoke-static {}, Lmediabrowser/model/mediainfo/MediaProtocol;->getMappings()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static forValue(I)Lmediabrowser/model/mediainfo/MediaProtocol;
    .locals 1

    .line 42
    invoke-static {}, Lmediabrowser/model/mediainfo/MediaProtocol;->getMappings()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/mediainfo/MediaProtocol;

    return-object p0
.end method

.method private static getMappings()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/mediainfo/MediaProtocol;",
            ">;"
        }
    .end annotation

    .line 16
    sget-object v0, Lmediabrowser/model/mediainfo/MediaProtocol;->mappings:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 18
    const-class v0, Lmediabrowser/model/mediainfo/MediaProtocol;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lmediabrowser/model/mediainfo/MediaProtocol;->mappings:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmediabrowser/model/mediainfo/MediaProtocol;->mappings:Ljava/util/HashMap;

    .line 24
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 26
    :cond_1
    :goto_0
    sget-object v0, Lmediabrowser/model/mediainfo/MediaProtocol;->mappings:Ljava/util/HashMap;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/mediainfo/MediaProtocol;
    .locals 1

    .line 3
    const-class v0, Lmediabrowser/model/mediainfo/MediaProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/mediainfo/MediaProtocol;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/mediainfo/MediaProtocol;
    .locals 1

    .line 3
    sget-object v0, Lmediabrowser/model/mediainfo/MediaProtocol;->$VALUES:[Lmediabrowser/model/mediainfo/MediaProtocol;

    invoke-virtual {v0}, [Lmediabrowser/model/mediainfo/MediaProtocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/mediainfo/MediaProtocol;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 37
    iget v0, p0, Lmediabrowser/model/mediainfo/MediaProtocol;->intValue:I

    return v0
.end method
