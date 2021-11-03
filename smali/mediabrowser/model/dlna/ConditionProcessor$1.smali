.class synthetic Lmediabrowser/model/dlna/ConditionProcessor$1;
.super Ljava/lang/Object;
.source "ConditionProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmediabrowser/model/dlna/ConditionProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$mediabrowser$model$dlna$ProfileConditionType:[I

.field static final synthetic $SwitchMap$mediabrowser$model$dlna$ProfileConditionValue:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 104
    invoke-static {}, Lmediabrowser/model/dlna/ProfileConditionType;->values()[Lmediabrowser/model/dlna/ProfileConditionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionType:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionType:[I

    sget-object v2, Lmediabrowser/model/dlna/ProfileConditionType;->Equals:Lmediabrowser/model/dlna/ProfileConditionType;

    invoke-virtual {v2}, Lmediabrowser/model/dlna/ProfileConditionType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionType:[I

    sget-object v3, Lmediabrowser/model/dlna/ProfileConditionType;->GreaterThanEqual:Lmediabrowser/model/dlna/ProfileConditionType;

    invoke-virtual {v3}, Lmediabrowser/model/dlna/ProfileConditionType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionType:[I

    sget-object v4, Lmediabrowser/model/dlna/ProfileConditionType;->LessThanEqual:Lmediabrowser/model/dlna/ProfileConditionType;

    invoke-virtual {v4}, Lmediabrowser/model/dlna/ProfileConditionType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionType:[I

    sget-object v5, Lmediabrowser/model/dlna/ProfileConditionType;->NotEquals:Lmediabrowser/model/dlna/ProfileConditionType;

    invoke-virtual {v5}, Lmediabrowser/model/dlna/ProfileConditionType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionType:[I

    sget-object v6, Lmediabrowser/model/dlna/ProfileConditionType;->EqualsAny:Lmediabrowser/model/dlna/ProfileConditionType;

    invoke-virtual {v6}, Lmediabrowser/model/dlna/ProfileConditionType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 10
    :catch_4
    invoke-static {}, Lmediabrowser/model/dlna/ProfileConditionValue;->values()[Lmediabrowser/model/dlna/ProfileConditionValue;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionValue:[I

    :try_start_5
    sget-object v5, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionValue:[I

    sget-object v6, Lmediabrowser/model/dlna/ProfileConditionValue;->IsAnamorphic:Lmediabrowser/model/dlna/ProfileConditionValue;

    invoke-virtual {v6}, Lmediabrowser/model/dlna/ProfileConditionValue;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionValue:[I

    sget-object v5, Lmediabrowser/model/dlna/ProfileConditionValue;->IsAvc:Lmediabrowser/model/dlna/ProfileConditionValue;

    invoke-virtual {v5}, Lmediabrowser/model/dlna/ProfileConditionValue;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionValue:[I

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->VideoFramerate:Lmediabrowser/model/dlna/ProfileConditionValue;

    invoke-virtual {v1}, Lmediabrowser/model/dlna/ProfileConditionValue;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionValue:[I

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->VideoLevel:Lmediabrowser/model/dlna/ProfileConditionValue;

    invoke-virtual {v1}, Lmediabrowser/model/dlna/ProfileConditionValue;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionValue:[I

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->VideoProfile:Lmediabrowser/model/dlna/ProfileConditionValue;

    invoke-virtual {v1}, Lmediabrowser/model/dlna/ProfileConditionValue;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionValue:[I

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->VideoCodecTag:Lmediabrowser/model/dlna/ProfileConditionValue;

    invoke-virtual {v1}, Lmediabrowser/model/dlna/ProfileConditionValue;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionValue:[I

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->PacketLength:Lmediabrowser/model/dlna/ProfileConditionValue;

    invoke-virtual {v1}, Lmediabrowser/model/dlna/ProfileConditionValue;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionValue:[I

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->VideoBitDepth:Lmediabrowser/model/dlna/ProfileConditionValue;

    invoke-virtual {v1}, Lmediabrowser/model/dlna/ProfileConditionValue;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionValue:[I

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->VideoBitrate:Lmediabrowser/model/dlna/ProfileConditionValue;

    invoke-virtual {v1}, Lmediabrowser/model/dlna/ProfileConditionValue;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionValue:[I

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->Height:Lmediabrowser/model/dlna/ProfileConditionValue;

    invoke-virtual {v1}, Lmediabrowser/model/dlna/ProfileConditionValue;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionValue:[I

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->Width:Lmediabrowser/model/dlna/ProfileConditionValue;

    invoke-virtual {v1}, Lmediabrowser/model/dlna/ProfileConditionValue;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionValue:[I

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->RefFrames:Lmediabrowser/model/dlna/ProfileConditionValue;

    invoke-virtual {v1}, Lmediabrowser/model/dlna/ProfileConditionValue;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionValue:[I

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->NumAudioStreams:Lmediabrowser/model/dlna/ProfileConditionValue;

    invoke-virtual {v1}, Lmediabrowser/model/dlna/ProfileConditionValue;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionValue:[I

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->NumVideoStreams:Lmediabrowser/model/dlna/ProfileConditionValue;

    invoke-virtual {v1}, Lmediabrowser/model/dlna/ProfileConditionValue;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v0, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionValue:[I

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->VideoTimestamp:Lmediabrowser/model/dlna/ProfileConditionValue;

    invoke-virtual {v1}, Lmediabrowser/model/dlna/ProfileConditionValue;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v0, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionValue:[I

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->AudioBitrate:Lmediabrowser/model/dlna/ProfileConditionValue;

    invoke-virtual {v1}, Lmediabrowser/model/dlna/ProfileConditionValue;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v0, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionValue:[I

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->AudioChannels:Lmediabrowser/model/dlna/ProfileConditionValue;

    invoke-virtual {v1}, Lmediabrowser/model/dlna/ProfileConditionValue;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v0, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionValue:[I

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->AudioProfile:Lmediabrowser/model/dlna/ProfileConditionValue;

    invoke-virtual {v1}, Lmediabrowser/model/dlna/ProfileConditionValue;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v0, Lmediabrowser/model/dlna/ConditionProcessor$1;->$SwitchMap$mediabrowser$model$dlna$ProfileConditionValue:[I

    sget-object v1, Lmediabrowser/model/dlna/ProfileConditionValue;->IsSecondaryAudio:Lmediabrowser/model/dlna/ProfileConditionValue;

    invoke-virtual {v1}, Lmediabrowser/model/dlna/ProfileConditionValue;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    return-void
.end method
