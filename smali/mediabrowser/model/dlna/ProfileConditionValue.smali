.class public final enum Lmediabrowser/model/dlna/ProfileConditionValue;
.super Ljava/lang/Enum;
.source "ProfileConditionValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/dlna/ProfileConditionValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/dlna/ProfileConditionValue;

.field public static final enum AudioBitDepth:Lmediabrowser/model/dlna/ProfileConditionValue;

.field public static final enum AudioBitrate:Lmediabrowser/model/dlna/ProfileConditionValue;

.field public static final enum AudioChannels:Lmediabrowser/model/dlna/ProfileConditionValue;

.field public static final enum AudioProfile:Lmediabrowser/model/dlna/ProfileConditionValue;

.field public static final enum Has64BitOffsets:Lmediabrowser/model/dlna/ProfileConditionValue;

.field public static final enum Height:Lmediabrowser/model/dlna/ProfileConditionValue;

.field public static final enum IsAnamorphic:Lmediabrowser/model/dlna/ProfileConditionValue;

.field public static final enum IsAvc:Lmediabrowser/model/dlna/ProfileConditionValue;

.field public static final enum IsInterlaced:Lmediabrowser/model/dlna/ProfileConditionValue;

.field public static final enum IsSecondaryAudio:Lmediabrowser/model/dlna/ProfileConditionValue;

.field public static final enum NumAudioStreams:Lmediabrowser/model/dlna/ProfileConditionValue;

.field public static final enum NumVideoStreams:Lmediabrowser/model/dlna/ProfileConditionValue;

.field public static final enum PacketLength:Lmediabrowser/model/dlna/ProfileConditionValue;

.field public static final enum RefFrames:Lmediabrowser/model/dlna/ProfileConditionValue;

.field public static final enum VideoBitDepth:Lmediabrowser/model/dlna/ProfileConditionValue;

.field public static final enum VideoBitrate:Lmediabrowser/model/dlna/ProfileConditionValue;

.field public static final enum VideoCodecTag:Lmediabrowser/model/dlna/ProfileConditionValue;

.field public static final enum VideoFramerate:Lmediabrowser/model/dlna/ProfileConditionValue;

.field public static final enum VideoLevel:Lmediabrowser/model/dlna/ProfileConditionValue;

.field public static final enum VideoProfile:Lmediabrowser/model/dlna/ProfileConditionValue;

.field public static final enum VideoTimestamp:Lmediabrowser/model/dlna/ProfileConditionValue;

.field public static final enum Width:Lmediabrowser/model/dlna/ProfileConditionValue;

.field private static mappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/dlna/ProfileConditionValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 5
    new-instance v0, Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v1, "AudioChannels"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lmediabrowser/model/dlna/ProfileConditionValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/dlna/ProfileConditionValue;->AudioChannels:Lmediabrowser/model/dlna/ProfileConditionValue;

    .line 6
    new-instance v0, Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v1, "AudioBitrate"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lmediabrowser/model/dlna/ProfileConditionValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/dlna/ProfileConditionValue;->AudioBitrate:Lmediabrowser/model/dlna/ProfileConditionValue;

    .line 7
    new-instance v0, Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v1, "AudioProfile"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lmediabrowser/model/dlna/ProfileConditionValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/dlna/ProfileConditionValue;->AudioProfile:Lmediabrowser/model/dlna/ProfileConditionValue;

    .line 8
    new-instance v0, Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v1, "Width"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lmediabrowser/model/dlna/ProfileConditionValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/dlna/ProfileConditionValue;->Width:Lmediabrowser/model/dlna/ProfileConditionValue;

    .line 9
    new-instance v0, Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v1, "Height"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lmediabrowser/model/dlna/ProfileConditionValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/dlna/ProfileConditionValue;->Height:Lmediabrowser/model/dlna/ProfileConditionValue;

    .line 10
    new-instance v0, Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v1, "Has64BitOffsets"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lmediabrowser/model/dlna/ProfileConditionValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/dlna/ProfileConditionValue;->Has64BitOffsets:Lmediabrowser/model/dlna/ProfileConditionValue;

    .line 11
    new-instance v0, Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v1, "PacketLength"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lmediabrowser/model/dlna/ProfileConditionValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/dlna/ProfileConditionValue;->PacketLength:Lmediabrowser/model/dlna/ProfileConditionValue;

    .line 12
    new-instance v0, Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v1, "VideoBitDepth"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lmediabrowser/model/dlna/ProfileConditionValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/dlna/ProfileConditionValue;->VideoBitDepth:Lmediabrowser/model/dlna/ProfileConditionValue;

    .line 13
    new-instance v0, Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v1, "VideoBitrate"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lmediabrowser/model/dlna/ProfileConditionValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/dlna/ProfileConditionValue;->VideoBitrate:Lmediabrowser/model/dlna/ProfileConditionValue;

    .line 14
    new-instance v0, Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v1, "VideoFramerate"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lmediabrowser/model/dlna/ProfileConditionValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/dlna/ProfileConditionValue;->VideoFramerate:Lmediabrowser/model/dlna/ProfileConditionValue;

    .line 15
    new-instance v0, Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v1, "VideoLevel"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lmediabrowser/model/dlna/ProfileConditionValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/dlna/ProfileConditionValue;->VideoLevel:Lmediabrowser/model/dlna/ProfileConditionValue;

    .line 16
    new-instance v0, Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v1, "VideoProfile"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lmediabrowser/model/dlna/ProfileConditionValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/dlna/ProfileConditionValue;->VideoProfile:Lmediabrowser/model/dlna/ProfileConditionValue;

    .line 17
    new-instance v0, Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v1, "VideoTimestamp"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Lmediabrowser/model/dlna/ProfileConditionValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/dlna/ProfileConditionValue;->VideoTimestamp:Lmediabrowser/model/dlna/ProfileConditionValue;

    .line 18
    new-instance v0, Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v1, "IsAnamorphic"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v15}, Lmediabrowser/model/dlna/ProfileConditionValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/dlna/ProfileConditionValue;->IsAnamorphic:Lmediabrowser/model/dlna/ProfileConditionValue;

    .line 19
    new-instance v0, Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v1, "RefFrames"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v15}, Lmediabrowser/model/dlna/ProfileConditionValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/dlna/ProfileConditionValue;->RefFrames:Lmediabrowser/model/dlna/ProfileConditionValue;

    .line 20
    new-instance v0, Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v1, "NumAudioStreams"

    const/16 v15, 0xf

    const/16 v14, 0x10

    invoke-direct {v0, v1, v15, v14}, Lmediabrowser/model/dlna/ProfileConditionValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/dlna/ProfileConditionValue;->NumAudioStreams:Lmediabrowser/model/dlna/ProfileConditionValue;

    .line 21
    new-instance v0, Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v1, "NumVideoStreams"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v14, v15}, Lmediabrowser/model/dlna/ProfileConditionValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/dlna/ProfileConditionValue;->NumVideoStreams:Lmediabrowser/model/dlna/ProfileConditionValue;

    .line 22
    new-instance v0, Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v1, "IsSecondaryAudio"

    const/16 v14, 0x11

    const/16 v15, 0x12

    invoke-direct {v0, v1, v14, v15}, Lmediabrowser/model/dlna/ProfileConditionValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/dlna/ProfileConditionValue;->IsSecondaryAudio:Lmediabrowser/model/dlna/ProfileConditionValue;

    .line 23
    new-instance v0, Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v1, "VideoCodecTag"

    const/16 v14, 0x12

    const/16 v15, 0x13

    invoke-direct {v0, v1, v14, v15}, Lmediabrowser/model/dlna/ProfileConditionValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/dlna/ProfileConditionValue;->VideoCodecTag:Lmediabrowser/model/dlna/ProfileConditionValue;

    .line 24
    new-instance v0, Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v1, "IsAvc"

    const/16 v14, 0x13

    const/16 v15, 0x14

    invoke-direct {v0, v1, v14, v15}, Lmediabrowser/model/dlna/ProfileConditionValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/dlna/ProfileConditionValue;->IsAvc:Lmediabrowser/model/dlna/ProfileConditionValue;

    .line 25
    new-instance v0, Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v1, "IsInterlaced"

    const/16 v14, 0x14

    const/16 v15, 0x15

    invoke-direct {v0, v1, v14, v15}, Lmediabrowser/model/dlna/ProfileConditionValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/dlna/ProfileConditionValue;->IsInterlaced:Lmediabrowser/model/dlna/ProfileConditionValue;

    .line 26
    new-instance v0, Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v1, "AudioBitDepth"

    const/16 v14, 0x15

    const/16 v15, 0x16

    invoke-direct {v0, v1, v14, v15}, Lmediabrowser/model/dlna/ProfileConditionValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/dlna/ProfileConditionValue;->AudioBitDepth:Lmediabrowser/model/dlna/ProfileConditionValue;

    const/16 v0, 0x16

    .line 3
    new-array v0, v0, [Lmediabrowser/model/dlna/ProfileConditionValue;

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->AudioChannels:Lmediabrowser/model/dlna/ProfileConditionValue;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->AudioBitrate:Lmediabrowser/model/dlna/ProfileConditionValue;

    aput-object v1, v0, v3

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->AudioProfile:Lmediabrowser/model/dlna/ProfileConditionValue;

    aput-object v1, v0, v4

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->Width:Lmediabrowser/model/dlna/ProfileConditionValue;

    aput-object v1, v0, v5

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->Height:Lmediabrowser/model/dlna/ProfileConditionValue;

    aput-object v1, v0, v6

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->Has64BitOffsets:Lmediabrowser/model/dlna/ProfileConditionValue;

    aput-object v1, v0, v7

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->PacketLength:Lmediabrowser/model/dlna/ProfileConditionValue;

    aput-object v1, v0, v8

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->VideoBitDepth:Lmediabrowser/model/dlna/ProfileConditionValue;

    aput-object v1, v0, v9

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->VideoBitrate:Lmediabrowser/model/dlna/ProfileConditionValue;

    aput-object v1, v0, v10

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->VideoFramerate:Lmediabrowser/model/dlna/ProfileConditionValue;

    aput-object v1, v0, v11

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->VideoLevel:Lmediabrowser/model/dlna/ProfileConditionValue;

    aput-object v1, v0, v12

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->VideoProfile:Lmediabrowser/model/dlna/ProfileConditionValue;

    aput-object v1, v0, v13

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->VideoTimestamp:Lmediabrowser/model/dlna/ProfileConditionValue;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->IsAnamorphic:Lmediabrowser/model/dlna/ProfileConditionValue;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->RefFrames:Lmediabrowser/model/dlna/ProfileConditionValue;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->NumAudioStreams:Lmediabrowser/model/dlna/ProfileConditionValue;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->NumVideoStreams:Lmediabrowser/model/dlna/ProfileConditionValue;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->IsSecondaryAudio:Lmediabrowser/model/dlna/ProfileConditionValue;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->VideoCodecTag:Lmediabrowser/model/dlna/ProfileConditionValue;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->IsAvc:Lmediabrowser/model/dlna/ProfileConditionValue;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->IsInterlaced:Lmediabrowser/model/dlna/ProfileConditionValue;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->AudioBitDepth:Lmediabrowser/model/dlna/ProfileConditionValue;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Lmediabrowser/model/dlna/ProfileConditionValue;->$VALUES:[Lmediabrowser/model/dlna/ProfileConditionValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lmediabrowser/model/dlna/ProfileConditionValue;->intValue:I

    .line 48
    invoke-static {}, Lmediabrowser/model/dlna/ProfileConditionValue;->getMappings()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static forValue(I)Lmediabrowser/model/dlna/ProfileConditionValue;
    .locals 1

    .line 58
    invoke-static {}, Lmediabrowser/model/dlna/ProfileConditionValue;->getMappings()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/dlna/ProfileConditionValue;

    return-object p0
.end method

.method private static getMappings()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/dlna/ProfileConditionValue;",
            ">;"
        }
    .end annotation

    .line 32
    sget-object v0, Lmediabrowser/model/dlna/ProfileConditionValue;->mappings:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lmediabrowser/model/dlna/ProfileConditionValue;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->mappings:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->mappings:Ljava/util/HashMap;

    .line 40
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 42
    :cond_1
    :goto_0
    sget-object v0, Lmediabrowser/model/dlna/ProfileConditionValue;->mappings:Ljava/util/HashMap;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/dlna/ProfileConditionValue;
    .locals 1

    .line 3
    const-class v0, Lmediabrowser/model/dlna/ProfileConditionValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/dlna/ProfileConditionValue;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/dlna/ProfileConditionValue;
    .locals 1

    .line 3
    sget-object v0, Lmediabrowser/model/dlna/ProfileConditionValue;->$VALUES:[Lmediabrowser/model/dlna/ProfileConditionValue;

    invoke-virtual {v0}, [Lmediabrowser/model/dlna/ProfileConditionValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/dlna/ProfileConditionValue;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 53
    iget v0, p0, Lmediabrowser/model/dlna/ProfileConditionValue;->intValue:I

    return v0
.end method
