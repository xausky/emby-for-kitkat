.class public Lmediabrowser/model/session/PlaybackStopInfo;
.super Ljava/lang/Object;
.source "PlaybackStopInfo.java"


# instance fields
.field private Failed:Z

.field private ItemId:Ljava/lang/String;

.field private LiveStreamId:Ljava/lang/String;

.field private MediaSourceId:Ljava/lang/String;

.field private NextMediaType:Ljava/lang/String;

.field private PlaySessionId:Ljava/lang/String;

.field private PositionTicks:Ljava/lang/Long;

.field private SessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFailed()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lmediabrowser/model/session/PlaybackStopInfo;->Failed:Z

    return v0
.end method

.method public final getItemId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lmediabrowser/model/session/PlaybackStopInfo;->ItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLiveStreamId()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lmediabrowser/model/session/PlaybackStopInfo;->LiveStreamId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediaSourceId()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lmediabrowser/model/session/PlaybackStopInfo;->MediaSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getNextMediaType()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lmediabrowser/model/session/PlaybackStopInfo;->NextMediaType:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlaySessionId()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lmediabrowser/model/session/PlaybackStopInfo;->PlaySessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPositionTicks()Ljava/lang/Long;
    .locals 1

    .line 60
    iget-object v0, p0, Lmediabrowser/model/session/PlaybackStopInfo;->PositionTicks:Ljava/lang/Long;

    return-object v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lmediabrowser/model/session/PlaybackStopInfo;->SessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final setFailed(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lmediabrowser/model/session/PlaybackStopInfo;->Failed:Z

    return-void
.end method

.method public final setItemId(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lmediabrowser/model/session/PlaybackStopInfo;->ItemId:Ljava/lang/String;

    return-void
.end method

.method public final setLiveStreamId(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lmediabrowser/model/session/PlaybackStopInfo;->LiveStreamId:Ljava/lang/String;

    return-void
.end method

.method public final setMediaSourceId(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lmediabrowser/model/session/PlaybackStopInfo;->MediaSourceId:Ljava/lang/String;

    return-void
.end method

.method public final setNextMediaType(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lmediabrowser/model/session/PlaybackStopInfo;->NextMediaType:Ljava/lang/String;

    return-void
.end method

.method public final setPlaySessionId(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lmediabrowser/model/session/PlaybackStopInfo;->PlaySessionId:Ljava/lang/String;

    return-void
.end method

.method public final setPositionTicks(Ljava/lang/Long;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lmediabrowser/model/session/PlaybackStopInfo;->PositionTicks:Ljava/lang/Long;

    return-void
.end method

.method public final setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lmediabrowser/model/session/PlaybackStopInfo;->SessionId:Ljava/lang/String;

    return-void
.end method
