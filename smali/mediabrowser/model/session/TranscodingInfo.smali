.class public Lmediabrowser/model/session/TranscodingInfo;
.super Ljava/lang/Object;
.source "TranscodingInfo.java"


# instance fields
.field private AudioChannels:Ljava/lang/Integer;

.field private AudioCodec:Ljava/lang/String;

.field private Bitrate:Ljava/lang/Integer;

.field private CompletionPercentage:Ljava/lang/Double;

.field private Container:Ljava/lang/String;

.field private Framerate:Ljava/lang/Float;

.field private Height:Ljava/lang/Integer;

.field private IsAudioDirect:Z

.field private IsVideoDirect:Z

.field private VideoCodec:Ljava/lang/String;

.field private Width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAudioChannels()Ljava/lang/Integer;
    .locals 1

    .line 100
    iget-object v0, p0, Lmediabrowser/model/session/TranscodingInfo;->AudioChannels:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getAudioCodec()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lmediabrowser/model/session/TranscodingInfo;->AudioCodec:Ljava/lang/String;

    return-object v0
.end method

.method public final getBitrate()Ljava/lang/Integer;
    .locals 1

    .line 53
    iget-object v0, p0, Lmediabrowser/model/session/TranscodingInfo;->Bitrate:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getCompletionPercentage()Ljava/lang/Double;
    .locals 1

    .line 72
    iget-object v0, p0, Lmediabrowser/model/session/TranscodingInfo;->CompletionPercentage:Ljava/lang/Double;

    return-object v0
.end method

.method public final getContainer()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lmediabrowser/model/session/TranscodingInfo;->Container:Ljava/lang/String;

    return-object v0
.end method

.method public final getFramerate()Ljava/lang/Float;
    .locals 1

    .line 63
    iget-object v0, p0, Lmediabrowser/model/session/TranscodingInfo;->Framerate:Ljava/lang/Float;

    return-object v0
.end method

.method public final getHeight()Ljava/lang/Integer;
    .locals 1

    .line 91
    iget-object v0, p0, Lmediabrowser/model/session/TranscodingInfo;->Height:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getIsAudioDirect()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lmediabrowser/model/session/TranscodingInfo;->IsAudioDirect:Z

    return v0
.end method

.method public final getIsVideoDirect()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lmediabrowser/model/session/TranscodingInfo;->IsVideoDirect:Z

    return v0
.end method

.method public final getVideoCodec()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lmediabrowser/model/session/TranscodingInfo;->VideoCodec:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidth()Ljava/lang/Integer;
    .locals 1

    .line 82
    iget-object v0, p0, Lmediabrowser/model/session/TranscodingInfo;->Width:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setAudioChannels(Ljava/lang/Integer;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lmediabrowser/model/session/TranscodingInfo;->AudioChannels:Ljava/lang/Integer;

    return-void
.end method

.method public final setAudioCodec(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lmediabrowser/model/session/TranscodingInfo;->AudioCodec:Ljava/lang/String;

    return-void
.end method

.method public final setBitrate(Ljava/lang/Integer;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lmediabrowser/model/session/TranscodingInfo;->Bitrate:Ljava/lang/Integer;

    return-void
.end method

.method public final setCompletionPercentage(Ljava/lang/Double;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lmediabrowser/model/session/TranscodingInfo;->CompletionPercentage:Ljava/lang/Double;

    return-void
.end method

.method public final setContainer(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lmediabrowser/model/session/TranscodingInfo;->Container:Ljava/lang/String;

    return-void
.end method

.method public final setFramerate(Ljava/lang/Float;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lmediabrowser/model/session/TranscodingInfo;->Framerate:Ljava/lang/Float;

    return-void
.end method

.method public final setHeight(Ljava/lang/Integer;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lmediabrowser/model/session/TranscodingInfo;->Height:Ljava/lang/Integer;

    return-void
.end method

.method public final setIsAudioDirect(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lmediabrowser/model/session/TranscodingInfo;->IsAudioDirect:Z

    return-void
.end method

.method public final setIsVideoDirect(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lmediabrowser/model/session/TranscodingInfo;->IsVideoDirect:Z

    return-void
.end method

.method public final setVideoCodec(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lmediabrowser/model/session/TranscodingInfo;->VideoCodec:Ljava/lang/String;

    return-void
.end method

.method public final setWidth(Ljava/lang/Integer;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lmediabrowser/model/session/TranscodingInfo;->Width:Ljava/lang/Integer;

    return-void
.end method
