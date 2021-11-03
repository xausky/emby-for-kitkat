.class public Lmediabrowser/model/session/PlaybackProgressInfo;
.super Ljava/lang/Object;
.source "PlaybackProgressInfo.java"


# instance fields
.field private AspectRatio:Ljava/lang/String;

.field private AudioStreamIndex:Ljava/lang/Integer;

.field private Brightness:Ljava/lang/Integer;

.field private CanSeek:Z

.field private EventName:Ljava/lang/String;

.field private IsMuted:Z

.field private IsPaused:Z

.field private Item:Lmediabrowser/model/entities/BaseItemInfo;

.field private ItemId:Ljava/lang/String;

.field private LiveStreamId:Ljava/lang/String;

.field private MediaSourceId:Ljava/lang/String;

.field private PlayMethod:Lmediabrowser/model/session/PlayMethod;

.field private PlaySessionId:Ljava/lang/String;

.field private PlaylistIndex:Ljava/lang/Integer;

.field private PlaylistLength:Ljava/lang/Integer;

.field private PositionTicks:Ljava/lang/Long;

.field private RepeatMode:Lmediabrowser/model/session/RepeatMode;

.field private SessionId:Ljava/lang/String;

.field private SubtitleStreamIndex:Ljava/lang/Integer;

.field private VolumeLevel:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    invoke-virtual {p0}, Lmediabrowser/model/session/PlaybackProgressInfo;->getPlayMethod()Lmediabrowser/model/session/PlayMethod;

    invoke-static {}, Lmediabrowser/model/session/PlayMethod;->values()[Lmediabrowser/model/session/PlayMethod;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->PlayMethod:Lmediabrowser/model/session/PlayMethod;

    .line 287
    invoke-virtual {p0}, Lmediabrowser/model/session/PlaybackProgressInfo;->getRepeatMode()Lmediabrowser/model/session/RepeatMode;

    invoke-static {}, Lmediabrowser/model/session/RepeatMode;->values()[Lmediabrowser/model/session/RepeatMode;

    move-result-object v0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->RepeatMode:Lmediabrowser/model/session/RepeatMode;

    return-void
.end method


# virtual methods
.method public final getAspectRatio()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->AspectRatio:Ljava/lang/String;

    return-object v0
.end method

.method public final getAudioStreamIndex()Ljava/lang/Integer;
    .locals 1

    .line 93
    iget-object v0, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->AudioStreamIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getBrightness()Ljava/lang/Integer;
    .locals 1

    .line 198
    iget-object v0, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->Brightness:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getCanSeek()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->CanSeek:Z

    return v0
.end method

.method public final getEventName()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->EventName:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsMuted()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->IsMuted:Z

    return v0
.end method

.method public final getIsPaused()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->IsPaused:Z

    return v0
.end method

.method public final getItem()Lmediabrowser/model/entities/BaseItemInfo;
    .locals 1

    .line 33
    iget-object v0, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->Item:Lmediabrowser/model/entities/BaseItemInfo;

    return-object v0
.end method

.method public final getItemId()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->ItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLiveStreamId()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->LiveStreamId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediaSourceId()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->MediaSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayMethod()Lmediabrowser/model/session/PlayMethod;
    .locals 1

    .line 223
    iget-object v0, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->PlayMethod:Lmediabrowser/model/session/PlayMethod;

    return-object v0
.end method

.method public final getPlaySessionId()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->PlaySessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlaylistIndex()Ljava/lang/Integer;
    .locals 1

    .line 178
    iget-object v0, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->PlaylistIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPlaylistLength()Ljava/lang/Integer;
    .locals 1

    .line 188
    iget-object v0, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->PlaylistLength:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPositionTicks()Ljava/lang/Long;
    .locals 1

    .line 153
    iget-object v0, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->PositionTicks:Ljava/lang/Long;

    return-object v0
.end method

.method public final getRepeatMode()Lmediabrowser/model/session/RepeatMode;
    .locals 1

    .line 290
    iget-object v0, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->RepeatMode:Lmediabrowser/model/session/RepeatMode;

    return-object v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->SessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubtitleStreamIndex()Ljava/lang/Integer;
    .locals 1

    .line 108
    iget-object v0, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->SubtitleStreamIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getVolumeLevel()Ljava/lang/Integer;
    .locals 1

    .line 168
    iget-object v0, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->VolumeLevel:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setAspectRatio(Ljava/lang/String;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->AspectRatio:Ljava/lang/String;

    return-void
.end method

.method public final setAudioStreamIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->AudioStreamIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setBrightness(Ljava/lang/Integer;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->Brightness:Ljava/lang/Integer;

    return-void
.end method

.method public final setCanSeek(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->CanSeek:Z

    return-void
.end method

.method public final setEventName(Ljava/lang/String;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->EventName:Ljava/lang/String;

    return-void
.end method

.method public final setIsMuted(Z)V
    .locals 0

    .line 142
    iput-boolean p1, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->IsMuted:Z

    return-void
.end method

.method public final setIsPaused(Z)V
    .locals 0

    .line 127
    iput-boolean p1, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->IsPaused:Z

    return-void
.end method

.method public final setItem(Lmediabrowser/model/entities/BaseItemInfo;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->Item:Lmediabrowser/model/entities/BaseItemInfo;

    return-void
.end method

.method public final setItemId(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->ItemId:Ljava/lang/String;

    return-void
.end method

.method public final setLiveStreamId(Ljava/lang/String;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->LiveStreamId:Ljava/lang/String;

    return-void
.end method

.method public final setMediaSourceId(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->MediaSourceId:Ljava/lang/String;

    return-void
.end method

.method public final setPlayMethod(Lmediabrowser/model/session/PlayMethod;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->PlayMethod:Lmediabrowser/model/session/PlayMethod;

    return-void
.end method

.method public final setPlaySessionId(Ljava/lang/String;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->PlaySessionId:Ljava/lang/String;

    return-void
.end method

.method public final setPlaylistIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->PlaylistIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setPlaylistLength(Ljava/lang/Integer;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->PlaylistLength:Ljava/lang/Integer;

    return-void
.end method

.method public final setPositionTicks(Ljava/lang/Long;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->PositionTicks:Ljava/lang/Long;

    return-void
.end method

.method public final setRepeatMode(Lmediabrowser/model/session/RepeatMode;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->RepeatMode:Lmediabrowser/model/session/RepeatMode;

    return-void
.end method

.method public final setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->SessionId:Ljava/lang/String;

    return-void
.end method

.method public final setSubtitleStreamIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->SubtitleStreamIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setVolumeLevel(Ljava/lang/Integer;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lmediabrowser/model/session/PlaybackProgressInfo;->VolumeLevel:Ljava/lang/Integer;

    return-void
.end method
