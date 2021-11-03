.class public Lmediabrowser/model/dlna/TranscodingProfile;
.super Ljava/lang/Object;
.source "TranscodingProfile.java"


# instance fields
.field private AudioCodec:Ljava/lang/String;

.field private BreakOnNonKeyFrames:Z

.field private Container:Ljava/lang/String;

.field private Context:Lmediabrowser/model/dlna/EncodingContext;

.field private CopyTimestamps:Z

.field private EnableMpegtsM2TsMode:Z

.field private EnableSubtitlesInManifest:Z

.field private EstimateContentLength:Z

.field private ManifestSubtitles:Ljava/lang/String;

.field private MaxAudioChannels:Ljava/lang/String;

.field private MinSegments:I

.field private Protocol:Ljava/lang/String;

.field private SegmentLength:I

.field private TranscodeSeekInfo:Lmediabrowser/model/dlna/TranscodeSeekInfo;

.field private Type:Lmediabrowser/model/dlna/DlnaProfileType;

.field private VideoCodec:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lmediabrowser/model/dlna/DlnaProfileType;->values()[Lmediabrowser/model/dlna/DlnaProfileType;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/dlna/TranscodingProfile;->Type:Lmediabrowser/model/dlna/DlnaProfileType;

    .line 103
    invoke-virtual {p0}, Lmediabrowser/model/dlna/TranscodingProfile;->getTranscodeSeekInfo()Lmediabrowser/model/dlna/TranscodeSeekInfo;

    invoke-static {}, Lmediabrowser/model/dlna/TranscodeSeekInfo;->values()[Lmediabrowser/model/dlna/TranscodeSeekInfo;

    move-result-object v0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/dlna/TranscodingProfile;->TranscodeSeekInfo:Lmediabrowser/model/dlna/TranscodeSeekInfo;

    .line 127
    invoke-static {}, Lmediabrowser/model/dlna/EncodingContext;->values()[Lmediabrowser/model/dlna/EncodingContext;

    move-result-object v0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/dlna/TranscodingProfile;->Context:Lmediabrowser/model/dlna/EncodingContext;

    return-void
.end method


# virtual methods
.method public final BreakOnNonKeyFrames()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lmediabrowser/model/dlna/TranscodingProfile;->BreakOnNonKeyFrames:Z

    return v0
.end method

.method public final GetAudioCodecs()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    invoke-virtual {p0}, Lmediabrowser/model/dlna/TranscodingProfile;->getAudioCodec()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dlna/TranscodingProfile;->getAudioCodec()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const-string v2, "[,]"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 200
    invoke-static {v4}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 202
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public final getAudioCodec()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lmediabrowser/model/dlna/TranscodingProfile;->AudioCodec:Ljava/lang/String;

    return-object v0
.end method

.method public final getContainer()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lmediabrowser/model/dlna/TranscodingProfile;->Container:Ljava/lang/String;

    return-object v0
.end method

.method public final getContext()Lmediabrowser/model/dlna/EncodingContext;
    .locals 1

    .line 130
    iget-object v0, p0, Lmediabrowser/model/dlna/TranscodingProfile;->Context:Lmediabrowser/model/dlna/EncodingContext;

    return-object v0
.end method

.method public final getCopyTimestamps()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lmediabrowser/model/dlna/TranscodingProfile;->CopyTimestamps:Z

    return v0
.end method

.method public final getEnableMpegtsM2TsMode()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lmediabrowser/model/dlna/TranscodingProfile;->EnableMpegtsM2TsMode:Z

    return v0
.end method

.method public final getEnableSubtitlesInManifest()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lmediabrowser/model/dlna/TranscodingProfile;->EnableSubtitlesInManifest:Z

    return v0
.end method

.method public final getEstimateContentLength()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lmediabrowser/model/dlna/TranscodingProfile;->EstimateContentLength:Z

    return v0
.end method

.method public final getManifestSubtitles()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lmediabrowser/model/dlna/TranscodingProfile;->ManifestSubtitles:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxAudioChannels()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lmediabrowser/model/dlna/TranscodingProfile;->MaxAudioChannels:Ljava/lang/String;

    return-object v0
.end method

.method public final getMinSegments()I
    .locals 1

    .line 166
    iget v0, p0, Lmediabrowser/model/dlna/TranscodingProfile;->MinSegments:I

    return v0
.end method

.method public final getProtocol()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lmediabrowser/model/dlna/TranscodingProfile;->Protocol:Ljava/lang/String;

    return-object v0
.end method

.method public final getSegmentLength()I
    .locals 1

    .line 178
    iget v0, p0, Lmediabrowser/model/dlna/TranscodingProfile;->SegmentLength:I

    return v0
.end method

.method public final getTranscodeSeekInfo()Lmediabrowser/model/dlna/TranscodeSeekInfo;
    .locals 1

    .line 106
    iget-object v0, p0, Lmediabrowser/model/dlna/TranscodingProfile;->TranscodeSeekInfo:Lmediabrowser/model/dlna/TranscodeSeekInfo;

    return-object v0
.end method

.method public final getType()Lmediabrowser/model/dlna/DlnaProfileType;
    .locals 1

    .line 24
    iget-object v0, p0, Lmediabrowser/model/dlna/TranscodingProfile;->Type:Lmediabrowser/model/dlna/DlnaProfileType;

    return-object v0
.end method

.method public final getVideoCodec()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lmediabrowser/model/dlna/TranscodingProfile;->VideoCodec:Ljava/lang/String;

    return-object v0
.end method

.method public final setAudioCodec(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lmediabrowser/model/dlna/TranscodingProfile;->AudioCodec:Ljava/lang/String;

    return-void
.end method

.method public final setBreakOnNonKeyFrames(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lmediabrowser/model/dlna/TranscodingProfile;->BreakOnNonKeyFrames:Z

    return-void
.end method

.method public final setContainer(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lmediabrowser/model/dlna/TranscodingProfile;->Container:Ljava/lang/String;

    return-void
.end method

.method public final setContext(Lmediabrowser/model/dlna/EncodingContext;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lmediabrowser/model/dlna/TranscodingProfile;->Context:Lmediabrowser/model/dlna/EncodingContext;

    return-void
.end method

.method public final setCopyTimestamps(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lmediabrowser/model/dlna/TranscodingProfile;->CopyTimestamps:Z

    return-void
.end method

.method public final setEnableMpegtsM2TsMode(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lmediabrowser/model/dlna/TranscodingProfile;->EnableMpegtsM2TsMode:Z

    return-void
.end method

.method public final setEnableSubtitlesInManifest(Z)V
    .locals 0

    .line 146
    iput-boolean p1, p0, Lmediabrowser/model/dlna/TranscodingProfile;->EnableSubtitlesInManifest:Z

    return-void
.end method

.method public final setEstimateContentLength(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lmediabrowser/model/dlna/TranscodingProfile;->EstimateContentLength:Z

    return-void
.end method

.method public final setManifestSubtitles(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lmediabrowser/model/dlna/TranscodingProfile;->ManifestSubtitles:Ljava/lang/String;

    return-void
.end method

.method public final setMaxAudioChannels(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lmediabrowser/model/dlna/TranscodingProfile;->MaxAudioChannels:Ljava/lang/String;

    return-void
.end method

.method public final setMinSegments(I)V
    .locals 0

    .line 170
    iput p1, p0, Lmediabrowser/model/dlna/TranscodingProfile;->MinSegments:I

    return-void
.end method

.method public final setProtocol(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lmediabrowser/model/dlna/TranscodingProfile;->Protocol:Ljava/lang/String;

    return-void
.end method

.method public final setSegmentLength(I)V
    .locals 0

    .line 182
    iput p1, p0, Lmediabrowser/model/dlna/TranscodingProfile;->SegmentLength:I

    return-void
.end method

.method public final setTranscodeSeekInfo(Lmediabrowser/model/dlna/TranscodeSeekInfo;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lmediabrowser/model/dlna/TranscodingProfile;->TranscodeSeekInfo:Lmediabrowser/model/dlna/TranscodeSeekInfo;

    return-void
.end method

.method public final setType(Lmediabrowser/model/dlna/DlnaProfileType;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lmediabrowser/model/dlna/TranscodingProfile;->Type:Lmediabrowser/model/dlna/DlnaProfileType;

    return-void
.end method

.method public final setVideoCodec(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lmediabrowser/model/dlna/TranscodingProfile;->VideoCodec:Ljava/lang/String;

    return-void
.end method
