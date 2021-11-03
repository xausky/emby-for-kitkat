.class public Lmediabrowser/model/session/PlayerStateInfo;
.super Ljava/lang/Object;
.source "PlayerStateInfo.java"


# instance fields
.field private AudioStreamIndex:Ljava/lang/Integer;

.field private CanSeek:Z

.field private IsMuted:Z

.field private IsPaused:Z

.field private MediaSourceId:Ljava/lang/String;

.field private PlayMethod:Lmediabrowser/model/session/PlayMethod;

.field private PositionTicks:Ljava/lang/Long;

.field private RepeatMode:Lmediabrowser/model/session/RepeatMode;

.field private SubtitleStreamIndex:Ljava/lang/Integer;

.field private VolumeLevel:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    invoke-virtual {p0}, Lmediabrowser/model/session/PlayerStateInfo;->getRepeatMode()Lmediabrowser/model/session/RepeatMode;

    invoke-static {}, Lmediabrowser/model/session/RepeatMode;->values()[Lmediabrowser/model/session/RepeatMode;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/session/PlayerStateInfo;->RepeatMode:Lmediabrowser/model/session/RepeatMode;

    return-void
.end method


# virtual methods
.method public final getAudioStreamIndex()Ljava/lang/Integer;
    .locals 1

    .line 88
    iget-object v0, p0, Lmediabrowser/model/session/PlayerStateInfo;->AudioStreamIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getCanSeek()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lmediabrowser/model/session/PlayerStateInfo;->CanSeek:Z

    return v0
.end method

.method public final getIsMuted()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lmediabrowser/model/session/PlayerStateInfo;->IsMuted:Z

    return v0
.end method

.method public final getIsPaused()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lmediabrowser/model/session/PlayerStateInfo;->IsPaused:Z

    return v0
.end method

.method public final getMediaSourceId()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lmediabrowser/model/session/PlayerStateInfo;->MediaSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayMethod()Lmediabrowser/model/session/PlayMethod;
    .locals 1

    .line 133
    iget-object v0, p0, Lmediabrowser/model/session/PlayerStateInfo;->PlayMethod:Lmediabrowser/model/session/PlayMethod;

    return-object v0
.end method

.method public final getPositionTicks()Ljava/lang/Long;
    .locals 1

    .line 13
    iget-object v0, p0, Lmediabrowser/model/session/PlayerStateInfo;->PositionTicks:Ljava/lang/Long;

    return-object v0
.end method

.method public final getRepeatMode()Lmediabrowser/model/session/RepeatMode;
    .locals 1

    .line 148
    iget-object v0, p0, Lmediabrowser/model/session/PlayerStateInfo;->RepeatMode:Lmediabrowser/model/session/RepeatMode;

    return-object v0
.end method

.method public final getSubtitleStreamIndex()Ljava/lang/Integer;
    .locals 1

    .line 103
    iget-object v0, p0, Lmediabrowser/model/session/PlayerStateInfo;->SubtitleStreamIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getVolumeLevel()Ljava/lang/Integer;
    .locals 1

    .line 73
    iget-object v0, p0, Lmediabrowser/model/session/PlayerStateInfo;->VolumeLevel:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setAudioStreamIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lmediabrowser/model/session/PlayerStateInfo;->AudioStreamIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setCanSeek(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lmediabrowser/model/session/PlayerStateInfo;->CanSeek:Z

    return-void
.end method

.method public final setIsMuted(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lmediabrowser/model/session/PlayerStateInfo;->IsMuted:Z

    return-void
.end method

.method public final setIsPaused(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lmediabrowser/model/session/PlayerStateInfo;->IsPaused:Z

    return-void
.end method

.method public final setMediaSourceId(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lmediabrowser/model/session/PlayerStateInfo;->MediaSourceId:Ljava/lang/String;

    return-void
.end method

.method public final setPlayMethod(Lmediabrowser/model/session/PlayMethod;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lmediabrowser/model/session/PlayerStateInfo;->PlayMethod:Lmediabrowser/model/session/PlayMethod;

    return-void
.end method

.method public final setPositionTicks(Ljava/lang/Long;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lmediabrowser/model/session/PlayerStateInfo;->PositionTicks:Ljava/lang/Long;

    return-void
.end method

.method public final setRepeatMode(Lmediabrowser/model/session/RepeatMode;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lmediabrowser/model/session/PlayerStateInfo;->RepeatMode:Lmediabrowser/model/session/RepeatMode;

    return-void
.end method

.method public final setSubtitleStreamIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lmediabrowser/model/session/PlayerStateInfo;->SubtitleStreamIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setVolumeLevel(Ljava/lang/Integer;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lmediabrowser/model/session/PlayerStateInfo;->VolumeLevel:Ljava/lang/Integer;

    return-void
.end method
