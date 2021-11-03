.class public Lmediabrowser/model/session/PlayRequest;
.super Ljava/lang/Object;
.source "PlayRequest.java"


# instance fields
.field private AudioStreamIndex:Ljava/lang/Integer;

.field private ControllingUserId:Ljava/lang/String;

.field private ItemIds:[Ljava/lang/String;

.field private MediaSourceId:Ljava/lang/String;

.field private PlayCommand:Lmediabrowser/model/session/PlayCommand;

.field private StartIndex:Ljava/lang/Integer;

.field private StartPositionTicks:Ljava/lang/Long;

.field private SubtitleStreamIndex:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-virtual {p0}, Lmediabrowser/model/session/PlayRequest;->getPlayCommand()Lmediabrowser/model/session/PlayCommand;

    invoke-static {}, Lmediabrowser/model/session/PlayCommand;->values()[Lmediabrowser/model/session/PlayCommand;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/session/PlayRequest;->PlayCommand:Lmediabrowser/model/session/PlayCommand;

    return-void
.end method


# virtual methods
.method public final getAudioStreamIndex()Ljava/lang/Integer;
    .locals 1

    .line 48
    iget-object v0, p0, Lmediabrowser/model/session/PlayRequest;->AudioStreamIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getControllingUserId()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lmediabrowser/model/session/PlayRequest;->ControllingUserId:Ljava/lang/String;

    return-object v0
.end method

.method public final getItemIds()[Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lmediabrowser/model/session/PlayRequest;->ItemIds:[Ljava/lang/String;

    return-object v0
.end method

.method public final getMediaSourceId()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lmediabrowser/model/session/PlayRequest;->MediaSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayCommand()Lmediabrowser/model/session/PlayCommand;
    .locals 1

    .line 108
    iget-object v0, p0, Lmediabrowser/model/session/PlayRequest;->PlayCommand:Lmediabrowser/model/session/PlayCommand;

    return-object v0
.end method

.method public final getStartIndex()Ljava/lang/Integer;
    .locals 1

    .line 78
    iget-object v0, p0, Lmediabrowser/model/session/PlayRequest;->StartIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getStartPositionTicks()Ljava/lang/Long;
    .locals 1

    .line 33
    iget-object v0, p0, Lmediabrowser/model/session/PlayRequest;->StartPositionTicks:Ljava/lang/Long;

    return-object v0
.end method

.method public final getSubtitleStreamIndex()Ljava/lang/Integer;
    .locals 1

    .line 63
    iget-object v0, p0, Lmediabrowser/model/session/PlayRequest;->SubtitleStreamIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setAudioStreamIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lmediabrowser/model/session/PlayRequest;->AudioStreamIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setControllingUserId(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lmediabrowser/model/session/PlayRequest;->ControllingUserId:Ljava/lang/String;

    return-void
.end method

.method public final setItemIds([Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lmediabrowser/model/session/PlayRequest;->ItemIds:[Ljava/lang/String;

    return-void
.end method

.method public final setMediaSourceId(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lmediabrowser/model/session/PlayRequest;->MediaSourceId:Ljava/lang/String;

    return-void
.end method

.method public final setPlayCommand(Lmediabrowser/model/session/PlayCommand;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lmediabrowser/model/session/PlayRequest;->PlayCommand:Lmediabrowser/model/session/PlayCommand;

    return-void
.end method

.method public final setStartIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lmediabrowser/model/session/PlayRequest;->StartIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setStartPositionTicks(Ljava/lang/Long;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lmediabrowser/model/session/PlayRequest;->StartPositionTicks:Ljava/lang/Long;

    return-void
.end method

.method public final setSubtitleStreamIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lmediabrowser/model/session/PlayRequest;->SubtitleStreamIndex:Ljava/lang/Integer;

    return-void
.end method
