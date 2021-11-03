.class synthetic Ltv/emby/embyatv/playback/PlaybackController$28;
.super Ljava/lang/Object;
.source "PlaybackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/playback/PlaybackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$mediabrowser$model$dlna$PlaybackErrorCode:[I

.field static final synthetic $SwitchMap$mediabrowser$model$dlna$SubtitleDeliveryMethod:[I

.field static final synthetic $SwitchMap$mediabrowser$model$session$RepeatMode:[I

.field static final synthetic $SwitchMap$tv$emby$embyatv$playback$PlaybackController$PlaybackState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 912
    invoke-static {}, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->values()[Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ltv/emby/embyatv/playback/PlaybackController$28;->$SwitchMap$mediabrowser$model$dlna$SubtitleDeliveryMethod:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Ltv/emby/embyatv/playback/PlaybackController$28;->$SwitchMap$mediabrowser$model$dlna$SubtitleDeliveryMethod:[I

    sget-object v2, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Encode:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    invoke-virtual {v2}, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Ltv/emby/embyatv/playback/PlaybackController$28;->$SwitchMap$mediabrowser$model$dlna$SubtitleDeliveryMethod:[I

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    invoke-virtual {v3}, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Ltv/emby/embyatv/playback/PlaybackController$28;->$SwitchMap$mediabrowser$model$dlna$SubtitleDeliveryMethod:[I

    sget-object v4, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    invoke-virtual {v4}, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Ltv/emby/embyatv/playback/PlaybackController$28;->$SwitchMap$mediabrowser$model$dlna$SubtitleDeliveryMethod:[I

    sget-object v5, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Hls:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    invoke-virtual {v5}, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 635
    :catch_3
    invoke-static {}, Lmediabrowser/model/dlna/PlaybackErrorCode;->values()[Lmediabrowser/model/dlna/PlaybackErrorCode;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Ltv/emby/embyatv/playback/PlaybackController$28;->$SwitchMap$mediabrowser$model$dlna$PlaybackErrorCode:[I

    :try_start_4
    sget-object v4, Ltv/emby/embyatv/playback/PlaybackController$28;->$SwitchMap$mediabrowser$model$dlna$PlaybackErrorCode:[I

    sget-object v5, Lmediabrowser/model/dlna/PlaybackErrorCode;->NotAllowed:Lmediabrowser/model/dlna/PlaybackErrorCode;

    invoke-virtual {v5}, Lmediabrowser/model/dlna/PlaybackErrorCode;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Ltv/emby/embyatv/playback/PlaybackController$28;->$SwitchMap$mediabrowser$model$dlna$PlaybackErrorCode:[I

    sget-object v5, Lmediabrowser/model/dlna/PlaybackErrorCode;->NoCompatibleStream:Lmediabrowser/model/dlna/PlaybackErrorCode;

    invoke-virtual {v5}, Lmediabrowser/model/dlna/PlaybackErrorCode;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Ltv/emby/embyatv/playback/PlaybackController$28;->$SwitchMap$mediabrowser$model$dlna$PlaybackErrorCode:[I

    sget-object v5, Lmediabrowser/model/dlna/PlaybackErrorCode;->RateLimitExceeded:Lmediabrowser/model/dlna/PlaybackErrorCode;

    invoke-virtual {v5}, Lmediabrowser/model/dlna/PlaybackErrorCode;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 424
    :catch_6
    invoke-static {}, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->values()[Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Ltv/emby/embyatv/playback/PlaybackController$28;->$SwitchMap$tv$emby$embyatv$playback$PlaybackController$PlaybackState:[I

    :try_start_7
    sget-object v4, Ltv/emby/embyatv/playback/PlaybackController$28;->$SwitchMap$tv$emby$embyatv$playback$PlaybackController$PlaybackState:[I

    sget-object v5, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->PLAYING:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    invoke-virtual {v5}, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v4, Ltv/emby/embyatv/playback/PlaybackController$28;->$SwitchMap$tv$emby$embyatv$playback$PlaybackController$PlaybackState:[I

    sget-object v5, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->PAUSED:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    invoke-virtual {v5}, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v4, Ltv/emby/embyatv/playback/PlaybackController$28;->$SwitchMap$tv$emby$embyatv$playback$PlaybackController$PlaybackState:[I

    sget-object v5, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->BUFFERING:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    invoke-virtual {v5}, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v4, Ltv/emby/embyatv/playback/PlaybackController$28;->$SwitchMap$tv$emby$embyatv$playback$PlaybackController$PlaybackState:[I

    sget-object v5, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->IDLE:Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;

    invoke-virtual {v5}, Ltv/emby/embyatv/playback/PlaybackController$PlaybackState;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 250
    :catch_a
    invoke-static {}, Lmediabrowser/model/session/RepeatMode;->values()[Lmediabrowser/model/session/RepeatMode;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Ltv/emby/embyatv/playback/PlaybackController$28;->$SwitchMap$mediabrowser$model$session$RepeatMode:[I

    :try_start_b
    sget-object v3, Ltv/emby/embyatv/playback/PlaybackController$28;->$SwitchMap$mediabrowser$model$session$RepeatMode:[I

    sget-object v4, Lmediabrowser/model/session/RepeatMode;->RepeatOne:Lmediabrowser/model/session/RepeatMode;

    invoke-virtual {v4}, Lmediabrowser/model/session/RepeatMode;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Ltv/emby/embyatv/playback/PlaybackController$28;->$SwitchMap$mediabrowser$model$session$RepeatMode:[I

    sget-object v3, Lmediabrowser/model/session/RepeatMode;->RepeatAll:Lmediabrowser/model/session/RepeatMode;

    invoke-virtual {v3}, Lmediabrowser/model/session/RepeatMode;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Ltv/emby/embyatv/playback/PlaybackController$28;->$SwitchMap$mediabrowser$model$session$RepeatMode:[I

    sget-object v1, Lmediabrowser/model/session/RepeatMode;->RepeatNone:Lmediabrowser/model/session/RepeatMode;

    invoke-virtual {v1}, Lmediabrowser/model/session/RepeatMode;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method
