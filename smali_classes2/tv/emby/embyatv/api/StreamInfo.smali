.class public Ltv/emby/embyatv/api/StreamInfo;
.super Ljava/lang/Object;
.source "StreamInfo.java"


# instance fields
.field private AllMediaSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/MediaSourceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private AudioBitrate:Ljava/lang/Integer;

.field private AudioCodecs:[Ljava/lang/String;

.field private AudioStreamIndex:Ljava/lang/Integer;

.field private Container:Ljava/lang/String;

.field private Context:Lmediabrowser/model/dlna/EncodingContext;

.field private CopyTimestamps:Z

.field private DeviceId:Ljava/lang/String;

.field private DeviceProfile:Lmediabrowser/model/dlna/DeviceProfile;

.field private DeviceProfileId:Ljava/lang/String;

.field private EnableSubtitlesInManifest:Z

.field private EstimateContentLength:Z

.field private ForceLiveStream:Z

.field private ItemId:Ljava/lang/String;

.field private MaxAudioChannels:Ljava/lang/Integer;

.field private MaxFramerate:Ljava/lang/Float;

.field private MaxHeight:Ljava/lang/Integer;

.field private MaxRefFrames:Ljava/lang/Integer;

.field private MaxVideoBitDepth:Ljava/lang/Integer;

.field private MaxWidth:Ljava/lang/Integer;

.field private MediaSource:Lmediabrowser/model/dto/MediaSourceInfo;

.field private MediaType:Lmediabrowser/model/dlna/DlnaProfileType;

.field private MediaUrl:Ljava/lang/String;

.field private PlayMethod:Lmediabrowser/model/session/PlayMethod;

.field private PlaySessionId:Ljava/lang/String;

.field private RunTimeTicks:Ljava/lang/Long;

.field private StartPositionTicks:J

.field private SubProtocol:Ljava/lang/String;

.field private SubtitleDeliveryMethod:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

.field private SubtitleFormat:Ljava/lang/String;

.field private SubtitleStreamIndex:Ljava/lang/Integer;

.field private TranscodeSeekInfo:Lmediabrowser/model/dlna/TranscodeSeekInfo;

.field private TranscodingMaxAudioChannels:Ljava/lang/Integer;

.field private VideoBitrate:Ljava/lang/Integer;

.field private VideoCodec:Ljava/lang/String;

.field private VideoLevel:Ljava/lang/Integer;

.field private VideoProfile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getPlayMethod()Lmediabrowser/model/session/PlayMethod;

    invoke-static {}, Lmediabrowser/model/session/PlayMethod;->values()[Lmediabrowser/model/session/PlayMethod;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->PlayMethod:Lmediabrowser/model/session/PlayMethod;

    .line 57
    invoke-static {}, Lmediabrowser/model/dlna/EncodingContext;->values()[Lmediabrowser/model/dlna/EncodingContext;

    move-result-object v0

    aget-object v0, v0, v1

    iput-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->Context:Lmediabrowser/model/dlna/EncodingContext;

    .line 67
    invoke-static {}, Lmediabrowser/model/dlna/DlnaProfileType;->values()[Lmediabrowser/model/dlna/DlnaProfileType;

    move-result-object v0

    aget-object v0, v0, v1

    iput-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->MediaType:Lmediabrowser/model/dlna/DlnaProfileType;

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->AudioStreamIndex:Ljava/lang/Integer;

    .line 173
    iput-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->SubtitleStreamIndex:Ljava/lang/Integer;

    .line 183
    iput-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->TranscodingMaxAudioChannels:Ljava/lang/Integer;

    .line 192
    iput-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->MaxAudioChannels:Ljava/lang/Integer;

    .line 202
    iput-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->AudioBitrate:Ljava/lang/Integer;

    .line 212
    iput-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->VideoBitrate:Ljava/lang/Integer;

    .line 222
    iput-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->VideoLevel:Ljava/lang/Integer;

    .line 232
    iput-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->MaxWidth:Ljava/lang/Integer;

    .line 241
    iput-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->MaxHeight:Ljava/lang/Integer;

    .line 251
    iput-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->MaxVideoBitDepth:Ljava/lang/Integer;

    .line 260
    iput-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->MaxRefFrames:Ljava/lang/Integer;

    .line 270
    iput-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->MaxFramerate:Ljava/lang/Float;

    .line 308
    iput-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->RunTimeTicks:Ljava/lang/Long;

    .line 318
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getTranscodeSeekInfo()Lmediabrowser/model/dlna/TranscodeSeekInfo;

    invoke-static {}, Lmediabrowser/model/dlna/TranscodeSeekInfo;->values()[Lmediabrowser/model/dlna/TranscodeSeekInfo;

    move-result-object v0

    aget-object v0, v0, v1

    iput-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->TranscodeSeekInfo:Lmediabrowser/model/dlna/TranscodeSeekInfo;

    .line 348
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getSubtitleDeliveryMethod()Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    invoke-static {}, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->values()[Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    move-result-object v0

    aget-object v0, v0, v1

    iput-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->SubtitleDeliveryMethod:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 25
    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/api/StreamInfo;->setAudioCodecs([Ljava/lang/String;)V

    return-void
.end method

.method private AddSubtitleProfiles(Ljava/util/ArrayList;Lmediabrowser/model/entities/MediaStream;ZLjava/lang/String;Ljava/lang/String;J)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ltv/emby/embyatv/api/SubtitleStreamInfo;",
            ">;",
            "Lmediabrowser/model/entities/MediaStream;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    move-object v0, p1

    if-eqz p3, :cond_0

    .line 628
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getDeviceProfile()Lmediabrowser/model/dlna/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dlna/DeviceProfile;->getSubtitleProfiles()[Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    const/4 v6, 0x1

    .line 630
    new-array v13, v6, [Lmediabrowser/model/dlna/SubtitleProfile;

    aput-object v5, v13, v3

    move-object v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-wide/from16 v11, p6

    invoke-direct/range {v7 .. v13}, Ltv/emby/embyatv/api/StreamInfo;->GetSubtitleStreamInfo(Lmediabrowser/model/entities/MediaStream;Ljava/lang/String;Ljava/lang/String;J[Lmediabrowser/model/dlna/SubtitleProfile;)Ltv/emby/embyatv/api/SubtitleStreamInfo;

    move-result-object v5

    .line 632
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 637
    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getDeviceProfile()Lmediabrowser/model/dlna/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dlna/DeviceProfile;->getSubtitleProfiles()[Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v8

    move-object v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v8}, Ltv/emby/embyatv/api/StreamInfo;->GetSubtitleStreamInfo(Lmediabrowser/model/entities/MediaStream;Ljava/lang/String;Ljava/lang/String;J[Lmediabrowser/model/dlna/SubtitleProfile;)Ltv/emby/embyatv/api/SubtitleStreamInfo;

    move-result-object v1

    .line 639
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private static BuildDlnaParam(Ltv/emby/embyatv/api/StreamInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    .line 487
    invoke-static {p0, p1, v1}, Ltv/emby/embyatv/api/StreamInfo;->BuildParams(Ltv/emby/embyatv/api/StreamInfo;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmediabrowser/model/dto/NameValuePair;

    .line 489
    invoke-virtual {p1}, Lmediabrowser/model/dto/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "Params=%1$s"

    .line 492
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, ";"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v1, v0}, Ltangible/DotNetToJavaStringHelper;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static BuildParams(Ltv/emby/embyatv/api/StreamInfo;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/emby/embyatv/api/StreamInfo;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 499
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getAudioCodecs()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, ","

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getAudioCodecs()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltangible/DotNetToJavaStringHelper;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 501
    :goto_0
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getDeviceProfileId()Ljava/lang/String;

    move-result-object v2

    .line 502
    new-instance v3, Lmediabrowser/model/dto/NameValuePair;

    const-string v4, "DeviceProfileId"

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-direct {v3, v4, v2}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 504
    new-instance v3, Lmediabrowser/model/dto/NameValuePair;

    const-string v4, "DeviceId"

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const-string v2, ""

    :goto_2
    invoke-direct {v3, v4, v2}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSourceId()Ljava/lang/String;

    move-result-object v2

    .line 506
    new-instance v3, Lmediabrowser/model/dto/NameValuePair;

    const-string v4, "MediaSourceId"

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const-string v2, ""

    :goto_3
    invoke-direct {v3, v4, v2}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    new-instance v2, Lmediabrowser/model/dto/NameValuePair;

    const-string v3, "Static"

    new-instance v4, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getIsDirectStream()Z

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getVideoCodec()Ljava/lang/String;

    move-result-object v2

    .line 509
    new-instance v3, Lmediabrowser/model/dto/NameValuePair;

    const-string v4, "VideoCodec"

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    const-string v2, ""

    :goto_4
    invoke-direct {v3, v4, v2}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    new-instance v2, Lmediabrowser/model/dto/NameValuePair;

    const-string v3, "AudioCodec"

    invoke-direct {v2, v3, v1}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    new-instance v1, Lmediabrowser/model/dto/NameValuePair;

    const-string v2, "AudioStreamIndex"

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lmediabrowser/model/extensions/StringHelper;->ToStringCultureInvariant(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_5
    const-string v3, ""

    :goto_5
    invoke-direct {v1, v2, v3}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    new-instance v1, Lmediabrowser/model/dto/NameValuePair;

    const-string v2, "SubtitleStreamIndex"

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getSubtitleStreamIndex()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getSubtitleDeliveryMethod()Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    move-result-object v3

    sget-object v4, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    if-eq v3, v4, :cond_6

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getSubtitleStreamIndex()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lmediabrowser/model/extensions/StringHelper;->ToStringCultureInvariant(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_6
    const-string v3, ""

    :goto_6
    invoke-direct {v1, v2, v3}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    new-instance v1, Lmediabrowser/model/dto/NameValuePair;

    const-string v2, "VideoBitrate"

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getVideoBitrate()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getVideoBitrate()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lmediabrowser/model/extensions/StringHelper;->ToStringCultureInvariant(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_7
    const-string v3, ""

    :goto_7
    invoke-direct {v1, v2, v3}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    new-instance v1, Lmediabrowser/model/dto/NameValuePair;

    const-string v2, "AudioBitrate"

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getAudioBitrate()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getAudioBitrate()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lmediabrowser/model/extensions/StringHelper;->ToStringCultureInvariant(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_8
    const-string v3, ""

    :goto_8
    invoke-direct {v1, v2, v3}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    new-instance v1, Lmediabrowser/model/dto/NameValuePair;

    const-string v2, "MaxAudioChannels"

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMaxAudioChannels()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMaxAudioChannels()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lmediabrowser/model/extensions/StringHelper;->ToStringCultureInvariant(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_9
    const-string v3, ""

    :goto_9
    invoke-direct {v1, v2, v3}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    new-instance v1, Lmediabrowser/model/dto/NameValuePair;

    const-string v2, "MaxFramerate"

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMaxFramerate()Ljava/lang/Float;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMaxFramerate()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_a
    const-string v3, ""

    :goto_a
    invoke-direct {v1, v2, v3}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    new-instance v1, Lmediabrowser/model/dto/NameValuePair;

    const-string v2, "MaxWidth"

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMaxWidth()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMaxWidth()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lmediabrowser/model/extensions/StringHelper;->ToStringCultureInvariant(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_b
    const-string v3, ""

    :goto_b
    invoke-direct {v1, v2, v3}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    new-instance v1, Lmediabrowser/model/dto/NameValuePair;

    const-string v2, "MaxHeight"

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMaxHeight()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMaxHeight()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lmediabrowser/model/extensions/StringHelper;->ToStringCultureInvariant(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    :cond_c
    const-string v3, ""

    :goto_c
    invoke-direct {v1, v2, v3}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getSubProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hls"

    invoke-static {v1, v2}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getForceLiveStream()Z

    move-result v1

    if-nez v1, :cond_d

    .line 522
    new-instance v1, Lmediabrowser/model/dto/NameValuePair;

    const-string v2, "StartTimeTicks"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 526
    :cond_d
    new-instance v1, Lmediabrowser/model/dto/NameValuePair;

    const-string v2, "StartTimeTicks"

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getStartPositionTicks()J

    move-result-wide v3

    invoke-static {v3, v4}, Lmediabrowser/model/extensions/StringHelper;->ToStringCultureInvariant(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    :goto_d
    new-instance v1, Lmediabrowser/model/dto/NameValuePair;

    const-string v2, "Level"

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getVideoLevel()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getVideoLevel()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lmediabrowser/model/extensions/StringHelper;->ToStringCultureInvariant(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    :cond_e
    const-string v3, ""

    :goto_e
    invoke-direct {v1, v2, v3}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    new-instance v1, Lmediabrowser/model/dto/NameValuePair;

    const-string v2, "MaxRefFrames"

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMaxRefFrames()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMaxRefFrames()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lmediabrowser/model/extensions/StringHelper;->ToStringCultureInvariant(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_f

    :cond_f
    const-string v3, ""

    :goto_f
    invoke-direct {v1, v2, v3}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    new-instance v1, Lmediabrowser/model/dto/NameValuePair;

    const-string v2, "MaxVideoBitDepth"

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMaxVideoBitDepth()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMaxVideoBitDepth()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lmediabrowser/model/extensions/StringHelper;->ToStringCultureInvariant(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_10

    :cond_10
    const-string v3, ""

    :goto_10
    invoke-direct {v1, v2, v3}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getVideoProfile()Ljava/lang/String;

    move-result-object v1

    .line 534
    new-instance v2, Lmediabrowser/model/dto/NameValuePair;

    const-string v3, "Profile"

    if-eqz v1, :cond_11

    goto :goto_11

    :cond_11
    const-string v1, ""

    :goto_11
    invoke-direct {v2, v3, v1}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    new-instance v1, Lmediabrowser/model/dto/NameValuePair;

    const-string v2, "Cabac"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getPlaySessionId()Ljava/lang/String;

    move-result-object v1

    .line 540
    new-instance v2, Lmediabrowser/model/dto/NameValuePair;

    const-string v3, "PlaySessionId"

    if-eqz v1, :cond_12

    goto :goto_12

    :cond_12
    const-string v1, ""

    :goto_12
    invoke-direct {v2, v3, v1}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    new-instance v1, Lmediabrowser/model/dto/NameValuePair;

    const-string v2, "api_key"

    if-eqz p1, :cond_13

    goto :goto_13

    :cond_13
    const-string p1, ""

    :goto_13
    invoke-direct {v1, v2, p1}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object p1

    if-nez p1, :cond_14

    const/4 p1, 0x0

    goto :goto_14

    :cond_14
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getLiveStreamId()Ljava/lang/String;

    move-result-object p1

    .line 544
    :goto_14
    new-instance v1, Lmediabrowser/model/dto/NameValuePair;

    const-string v2, "LiveStreamId"

    if-eqz p1, :cond_15

    goto :goto_15

    :cond_15
    const-string p1, ""

    :goto_15
    invoke-direct {v1, v2, p1}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_16

    .line 548
    new-instance p1, Lmediabrowser/model/dto/NameValuePair;

    const-string p2, "ItemId"

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    :cond_16
    new-instance p1, Lmediabrowser/model/dto/NameValuePair;

    const-string p2, "CopyTimestamps"

    new-instance v1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getCopyTimestamps()Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    new-instance p1, Lmediabrowser/model/dto/NameValuePair;

    const-string p2, "ForceLiveStream"

    new-instance v1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getForceLiveStream()Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    new-instance p1, Lmediabrowser/model/dto/NameValuePair;

    const-string p2, "SubtitleMethod"

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getSubtitleStreamIndex()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getSubtitleDeliveryMethod()Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    move-result-object v1

    sget-object v2, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    if-eq v1, v2, :cond_17

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getSubtitleDeliveryMethod()Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    :cond_17
    const-string v1, ""

    :goto_16
    invoke-direct {p1, p2, v1}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    new-instance p1, Lmediabrowser/model/dto/NameValuePair;

    const-string p2, "TranscodingMaxAudioChannels"

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getTranscodingMaxAudioChannels()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getTranscodingMaxAudioChannels()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lmediabrowser/model/extensions/StringHelper;->ToStringCultureInvariant(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    :cond_18
    const-string v1, ""

    :goto_17
    invoke-direct {p1, p2, v1}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    new-instance p1, Lmediabrowser/model/dto/NameValuePair;

    const-string p2, "EnableSubtitlesInManifest"

    new-instance v1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getEnableSubtitlesInManifest()Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object p0

    invoke-virtual {p0}, Lmediabrowser/model/dto/MediaSourceInfo;->getETag()Ljava/lang/String;

    move-result-object p0

    .line 559
    new-instance p1, Lmediabrowser/model/dto/NameValuePair;

    const-string p2, "Tag"

    if-eqz p0, :cond_19

    goto :goto_18

    :cond_19
    const-string p0, ""

    :goto_18
    invoke-direct {p1, p2, p0}, Lmediabrowser/model/dto/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private GetExternalSubtitleProfile(Lmediabrowser/model/entities/MediaStream;[Lmediabrowser/model/dlna/SubtitleProfile;Lmediabrowser/model/session/PlayMethod;Z)Lmediabrowser/model/dlna/SubtitleProfile;
    .locals 5

    .line 678
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_8

    aget-object v2, p2, v1

    .line 680
    invoke-virtual {v2}, Lmediabrowser/model/dlna/SubtitleProfile;->getMethod()Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    move-result-object v3

    iget-object v4, p0, Ltv/emby/embyatv/api/StreamInfo;->SubtitleDeliveryMethod:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    sget-object v4, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Lmediabrowser/model/dlna/SubtitleProfile;->getMethod()Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    move-result-object v3

    iget-object v4, p0, Ltv/emby/embyatv/api/StreamInfo;->SubtitleDeliveryMethod:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    sget-object v4, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Hls:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    if-eq v3, v4, :cond_0

    goto/16 :goto_1

    .line 685
    :cond_0
    invoke-virtual {v2}, Lmediabrowser/model/dlna/SubtitleProfile;->getMethod()Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    move-result-object v3

    iget-object v4, p0, Ltv/emby/embyatv/api/StreamInfo;->SubtitleDeliveryMethod:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    sget-object v4, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Hls:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Ltv/emby/embyatv/api/StreamInfo;->PlayMethod:Lmediabrowser/model/session/PlayMethod;

    sget-object v3, Lmediabrowser/model/session/PlayMethod;->Transcode:Lmediabrowser/model/session/PlayMethod;

    if-eq p3, v3, :cond_1

    goto :goto_1

    .line 690
    :cond_1
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmediabrowser/model/dlna/SubtitleProfile;->SupportsLanguage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 695
    :cond_2
    invoke-virtual {v2}, Lmediabrowser/model/dlna/SubtitleProfile;->getMethod()Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    move-result-object v3

    iget-object v4, p0, Ltv/emby/embyatv/api/StreamInfo;->SubtitleDeliveryMethod:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    sget-object v4, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    if-ne v3, v4, :cond_3

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getIsTextSubtitleStream()Z

    move-result v3

    invoke-virtual {v2}, Lmediabrowser/model/dlna/SubtitleProfile;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmediabrowser/model/entities/MediaStream;->IsTextFormat(Ljava/lang/String;)Z

    move-result v4

    if-eq v3, v4, :cond_4

    :cond_3
    invoke-virtual {v2}, Lmediabrowser/model/dlna/SubtitleProfile;->getMethod()Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    move-result-object v3

    iget-object v4, p0, Ltv/emby/embyatv/api/StreamInfo;->SubtitleDeliveryMethod:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    sget-object v4, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Hls:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    if-ne v3, v4, :cond_7

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getIsTextSubtitleStream()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 697
    :cond_4
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lmediabrowser/model/dlna/SubtitleProfile;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_5

    return-object v2

    :cond_5
    if-nez p4, :cond_6

    goto :goto_1

    .line 709
    :cond_6
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getIsTextSubtitleStream()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getSupportsExternalStream()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Lmediabrowser/model/dlna/SubtitleProfile;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lmediabrowser/model/entities/MediaStream;->SupportsSubtitleConversionTo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    return-object v2

    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 p1, 0x0

    return-object p1
.end method

.method private GetSubtitleStreamInfo(Lmediabrowser/model/entities/MediaStream;Ljava/lang/String;Ljava/lang/String;J[Lmediabrowser/model/dlna/SubtitleProfile;)Ltv/emby/embyatv/api/SubtitleStreamInfo;
    .locals 5

    .line 721
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getPlayMethod()Lmediabrowser/model/session/PlayMethod;

    move-result-object v0

    invoke-virtual {p0, p1, p6, v0}, Ltv/emby/embyatv/api/StreamInfo;->GetSubtitleProfile(Lmediabrowser/model/entities/MediaStream;[Lmediabrowser/model/dlna/SubtitleProfile;Lmediabrowser/model/session/PlayMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object p6

    .line 722
    new-instance v0, Ltv/emby/embyatv/api/SubtitleStreamInfo;

    invoke-direct {v0}, Ltv/emby/embyatv/api/SubtitleStreamInfo;-><init>()V

    .line 723
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getIsForced()Z

    move-result v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->setIsForced(Z)V

    .line 724
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->setLanguage(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Unknown"

    .line 726
    :goto_0
    invoke-virtual {v0, v1}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->setName(Ljava/lang/String;)V

    .line 727
    invoke-virtual {p6}, Lmediabrowser/model/dlna/SubtitleProfile;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->setFormat(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->setIndex(I)V

    .line 729
    invoke-virtual {p6}, Lmediabrowser/model/dlna/SubtitleProfile;->getMethod()Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->setDeliveryMethod(Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)V

    .line 730
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getDisplayTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->setDisplayTitle(Ljava/lang/String;)V

    .line 733
    invoke-virtual {v0}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getDeliveryMethod()Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/api/StreamInfo;->SubtitleDeliveryMethod:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    sget-object v2, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    if-ne v1, v2, :cond_4

    .line 735
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/MediaSourceInfo;->getProtocol()Lmediabrowser/model/mediainfo/MediaProtocol;

    move-result-object v1

    sget-object v2, Lmediabrowser/model/mediainfo/MediaProtocol;->File:Lmediabrowser/model/mediainfo/MediaProtocol;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p6}, Lmediabrowser/model/dlna/SubtitleProfile;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 748
    :cond_1
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->setUrl(Ljava/lang/String;)V

    .line 749
    invoke-virtual {v0, v3}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->setIsExternalUrl(Z)V

    goto :goto_2

    :cond_2
    :goto_1
    const-string v1, "%1$s/Videos/%2$s/%3$s/Subtitles/%4$s/%5$s/Stream.%6$s"

    const/4 v2, 0x6

    .line 737
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v2, v4

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getItemId()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x2

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSourceId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p2

    const/4 p2, 0x3

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getIndex()I

    move-result p1

    invoke-static {p1}, Lmediabrowser/model/extensions/StringHelper;->ToStringCultureInvariant(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p2

    const/4 p1, 0x4

    invoke-static {p4, p5}, Lmediabrowser/model/extensions/StringHelper;->ToStringCultureInvariant(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x5

    invoke-virtual {p6}, Lmediabrowser/model/dlna/SubtitleProfile;->getFormat()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->setUrl(Ljava/lang/String;)V

    .line 739
    invoke-static {p3}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 741
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "?api_key="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->setUrl(Ljava/lang/String;)V

    .line 744
    :cond_3
    invoke-virtual {v0, v4}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->setIsExternalUrl(Z)V

    :cond_4
    :goto_2
    return-object v0
.end method

.method private GetUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 456
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 461
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getContainer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getContainer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "/"

    .line 463
    invoke-static {p1, v1}, Ltv/emby/embyatv/util/Utils;->trimEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 465
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaType()Lmediabrowser/model/dlna/DlnaProfileType;

    move-result-object v1

    sget-object v2, Lmediabrowser/model/dlna/DlnaProfileType;->Audio:Lmediabrowser/model/dlna/DlnaProfileType;

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-ne v1, v2, :cond_2

    .line 467
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getSubProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hls"

    invoke-static {v1, v2}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "%1$s/audio/%2$s/master.m3u8?%3$s"

    .line 469
    new-array v1, v7, [Ljava/lang/Object;

    aput-object p1, v1, v6

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getItemId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v1, "%1$s/audio/%2$s/stream%3$s?%4$s"

    .line 472
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getItemId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    aput-object v0, v2, v4

    aput-object p2, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 475
    :cond_2
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getSubProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hls"

    invoke-static {v1, v2}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "%1$s/videos/%2$s/master.m3u8?%3$s"

    .line 477
    new-array v1, v7, [Ljava/lang/Object;

    aput-object p1, v1, v6

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getItemId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v1, "%1$s/videos/%2$s/stream%3$s?%4$s"

    .line 480
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getItemId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    aput-object v0, v2, v4

    aput-object p2, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 458
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final GetExternalSubtitles(ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ltv/emby/embyatv/api/SubtitleStreamInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 566
    invoke-virtual {p0, p1, v0, p2, p3}, Ltv/emby/embyatv/api/StreamInfo;->GetExternalSubtitles(ZZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final GetExternalSubtitles(ZZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ltv/emby/embyatv/api/SubtitleStreamInfo;",
            ">;"
        }
    .end annotation

    .line 571
    invoke-virtual {p0, p1, p2, p3, p4}, Ltv/emby/embyatv/api/StreamInfo;->GetSubtitleProfiles(ZZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 572
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 575
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ltv/emby/embyatv/api/SubtitleStreamInfo;

    .line 577
    invoke-virtual {p3}, Ltv/emby/embyatv/api/SubtitleStreamInfo;->getDeliveryMethod()Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    move-result-object p4

    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->SubtitleDeliveryMethod:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    sget-object v0, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    if-ne p4, v0, :cond_0

    .line 579
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public final GetSelectableAudioStreams()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/entities/MediaStream;",
            ">;"
        }
    .end annotation

    .line 965
    sget-object v0, Lmediabrowser/model/entities/MediaStreamType;->Audio:Lmediabrowser/model/entities/MediaStreamType;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/api/StreamInfo;->GetSelectableStreams(Lmediabrowser/model/entities/MediaStreamType;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final GetSelectableStreams(Lmediabrowser/model/entities/MediaStreamType;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/entities/MediaStreamType;",
            ")",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/entities/MediaStream;",
            ">;"
        }
    .end annotation

    .line 975
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 977
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmediabrowser/model/entities/MediaStream;

    .line 979
    invoke-virtual {v2}, Lmediabrowser/model/entities/MediaStream;->getType()Lmediabrowser/model/entities/MediaStreamType;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 981
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final GetSelectableSubtitleStreams()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/entities/MediaStream;",
            ">;"
        }
    .end annotation

    .line 970
    sget-object v0, Lmediabrowser/model/entities/MediaStreamType;->Subtitle:Lmediabrowser/model/entities/MediaStreamType;

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/api/StreamInfo;->GetSelectableStreams(Lmediabrowser/model/entities/MediaStreamType;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public GetSubtitleProfile(Lmediabrowser/model/entities/MediaStream;[Lmediabrowser/model/dlna/SubtitleProfile;Lmediabrowser/model/session/PlayMethod;)Lmediabrowser/model/dlna/SubtitleProfile;
    .locals 6

    .line 645
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->PlayMethod:Lmediabrowser/model/session/PlayMethod;

    sget-object v0, Lmediabrowser/model/session/PlayMethod;->Transcode:Lmediabrowser/model/session/PlayMethod;

    const/4 v1, 0x0

    if-eq p3, v0, :cond_3

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getIsExternal()Z

    move-result v0

    if-nez v0, :cond_3

    .line 648
    array-length v0, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p2, v2

    .line 650
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmediabrowser/model/dlna/SubtitleProfile;->SupportsLanguage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 655
    :cond_0
    invoke-virtual {v3}, Lmediabrowser/model/dlna/SubtitleProfile;->getMethod()Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    move-result-object v4

    iget-object v5, p0, Ltv/emby/embyatv/api/StreamInfo;->SubtitleDeliveryMethod:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    sget-object v5, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 660
    :cond_1
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getIsTextSubtitleStream()Z

    move-result v4

    invoke-virtual {v3}, Lmediabrowser/model/dlna/SubtitleProfile;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmediabrowser/model/entities/MediaStream;->IsTextFormat(Ljava/lang/String;)Z

    move-result v5

    if-ne v4, v5, :cond_2

    invoke-virtual {v3}, Lmediabrowser/model/dlna/SubtitleProfile;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 668
    :cond_3
    new-instance v0, Lmediabrowser/model/dlna/SubtitleProfile;

    invoke-direct {v0}, Lmediabrowser/model/dlna/SubtitleProfile;-><init>()V

    .line 669
    iget-object v2, p0, Ltv/emby/embyatv/api/StreamInfo;->SubtitleDeliveryMethod:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    sget-object v2, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Encode:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    invoke-virtual {v0, v2}, Lmediabrowser/model/dlna/SubtitleProfile;->setMethod(Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)V

    .line 670
    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/dlna/SubtitleProfile;->setFormat(Ljava/lang/String;)V

    .line 671
    invoke-direct {p0, p1, p2, p3, v1}, Ltv/emby/embyatv/api/StreamInfo;->GetExternalSubtitleProfile(Lmediabrowser/model/entities/MediaStream;[Lmediabrowser/model/dlna/SubtitleProfile;Lmediabrowser/model/session/PlayMethod;Z)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v1

    const/4 v2, 0x1

    .line 672
    invoke-direct {p0, p1, p2, p3, v2}, Ltv/emby/embyatv/api/StreamInfo;->GetExternalSubtitleProfile(Lmediabrowser/model/entities/MediaStream;[Lmediabrowser/model/dlna/SubtitleProfile;Lmediabrowser/model/session/PlayMethod;Z)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object p1

    if-eqz v1, :cond_4

    move-object p1, v1

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move-object p1, v0

    :goto_2
    return-object p1
.end method

.method public final GetSubtitleProfiles(ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ltv/emby/embyatv/api/SubtitleStreamInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 588
    invoke-virtual {p0, p1, v0, p2, p3}, Ltv/emby/embyatv/api/StreamInfo;->GetSubtitleProfiles(ZZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final GetSubtitleProfiles(ZZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ltv/emby/embyatv/api/SubtitleStreamInfo;",
            ">;"
        }
    .end annotation

    .line 593
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 596
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getSubProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hls"

    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    move-object v9, p0

    :cond_0
    move-wide v10, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getPlayMethod()Lmediabrowser/model/session/PlayMethod;

    move-result-object v0

    move-object v9, p0

    iget-object v3, v9, Ltv/emby/embyatv/api/StreamInfo;->PlayMethod:Lmediabrowser/model/session/PlayMethod;

    sget-object v3, Lmediabrowser/model/session/PlayMethod;->Transcode:Lmediabrowser/model/session/PlayMethod;

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getCopyTimestamps()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getStartPositionTicks()J

    move-result-wide v0

    move-wide v10, v0

    .line 599
    :goto_0
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getSubtitleStreamIndex()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 601
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lmediabrowser/model/entities/MediaStream;

    .line 603
    invoke-virtual {v2}, Lmediabrowser/model/entities/MediaStream;->getType()Lmediabrowser/model/entities/MediaStreamType;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/entities/MediaStreamType;->Subtitle:Lmediabrowser/model/entities/MediaStreamType;

    if-ne v0, v1, :cond_2

    invoke-virtual {v2}, Lmediabrowser/model/entities/MediaStream;->getIndex()I

    move-result v0

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getSubtitleStreamIndex()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    move-object v0, p0

    move-object v1, v8

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide v6, v10

    .line 605
    invoke-direct/range {v0 .. v7}, Ltv/emby/embyatv/api/StreamInfo;->AddSubtitleProfiles(Ljava/util/ArrayList;Lmediabrowser/model/entities/MediaStream;ZLjava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    :cond_3
    if-nez p1, :cond_6

    .line 612
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lmediabrowser/model/entities/MediaStream;

    .line 614
    invoke-virtual {v2}, Lmediabrowser/model/entities/MediaStream;->getType()Lmediabrowser/model/entities/MediaStreamType;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/entities/MediaStreamType;->Subtitle:Lmediabrowser/model/entities/MediaStreamType;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getSubtitleStreamIndex()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Lmediabrowser/model/entities/MediaStream;->getIndex()I

    move-result v0

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getSubtitleStreamIndex()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_4

    :cond_5
    move-object v0, p0

    move-object v1, v8

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide v6, v10

    .line 616
    invoke-direct/range {v0 .. v7}, Ltv/emby/embyatv/api/StreamInfo;->AddSubtitleProfiles(Ljava/util/ArrayList;Lmediabrowser/model/entities/MediaStream;ZLjava/lang/String;Ljava/lang/String;J)V

    goto :goto_2

    :cond_6
    return-object v8
.end method

.method public final ToDlnaUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 445
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getPlayMethod()Lmediabrowser/model/session/PlayMethod;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/api/StreamInfo;->PlayMethod:Lmediabrowser/model/session/PlayMethod;

    sget-object v1, Lmediabrowser/model/session/PlayMethod;->DirectPlay:Lmediabrowser/model/session/PlayMethod;

    if-ne v0, v1, :cond_0

    .line 447
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 450
    :cond_0
    invoke-static {p0, p2}, Ltv/emby/embyatv/api/StreamInfo;->BuildDlnaParam(Ltv/emby/embyatv/api/StreamInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 451
    invoke-direct {p0, p1, p2}, Ltv/emby/embyatv/api/StreamInfo;->GetUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final ToUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 398
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 403
    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getPlayMethod()Lmediabrowser/model/session/PlayMethod;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/api/StreamInfo;->PlayMethod:Lmediabrowser/model/session/PlayMethod;

    sget-object v1, Lmediabrowser/model/session/PlayMethod;->DirectPlay:Lmediabrowser/model/session/PlayMethod;

    if-ne v0, v1, :cond_1

    .line 405
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/MediaSourceInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 408
    :cond_1
    invoke-static {p1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 414
    invoke-static {p0, p2, v1}, Ltv/emby/embyatv/api/StreamInfo;->BuildParams(Ltv/emby/embyatv/api/StreamInfo;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmediabrowser/model/dto/NameValuePair;

    .line 416
    invoke-virtual {v2}, Lmediabrowser/model/dto/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 422
    :cond_2
    invoke-virtual {v2}, Lmediabrowser/model/dto/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StartTimeTicks"

    invoke-static {v3, v4}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lmediabrowser/model/dto/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v3, v4}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 426
    :cond_3
    invoke-virtual {v2}, Lmediabrowser/model/dto/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SubtitleStreamIndex"

    invoke-static {v3, v4}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lmediabrowser/model/dto/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-1"

    invoke-static {v3, v4}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 430
    :cond_4
    invoke-virtual {v2}, Lmediabrowser/model/dto/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Static"

    invoke-static {v3, v4}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lmediabrowser/model/dto/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "false"

    invoke-static {v3, v4}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    const-string v3, "%1$s=%2$s"

    const/4 v4, 0x2

    .line 435
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Lmediabrowser/model/dto/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    invoke-virtual {v2}, Lmediabrowser/model/dto/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const-string p2, "&"

    .line 438
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p2, v0}, Ltangible/DotNetToJavaStringHelper;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 440
    invoke-direct {p0, p1, p2}, Ltv/emby/embyatv/api/StreamInfo;->GetUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 410
    :cond_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final getAllMediaSources()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/MediaSourceInfo;",
            ">;"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->AllMediaSources:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getAudioBitrate()Ljava/lang/Integer;
    .locals 1

    .line 205
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->AudioBitrate:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getAudioCodecs()[Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->AudioCodecs:[Ljava/lang/String;

    return-object v0
.end method

.method public final getAudioStreamIndex()Ljava/lang/Integer;
    .locals 1

    .line 166
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->AudioStreamIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getContainer()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->Container:Ljava/lang/String;

    return-object v0
.end method

.method public final getContext()Lmediabrowser/model/dlna/EncodingContext;
    .locals 1

    .line 60
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->Context:Lmediabrowser/model/dlna/EncodingContext;

    return-object v0
.end method

.method public final getCopyTimestamps()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Ltv/emby/embyatv/api/StreamInfo;->CopyTimestamps:Z

    return v0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->DeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceProfile()Lmediabrowser/model/dlna/DeviceProfile;
    .locals 1

    .line 283
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->DeviceProfile:Lmediabrowser/model/dlna/DeviceProfile;

    return-object v0
.end method

.method public final getDeviceProfileId()Ljava/lang/String;
    .locals 1

    .line 292
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->DeviceProfileId:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnableSubtitlesInManifest()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Ltv/emby/embyatv/api/StreamInfo;->EnableSubtitlesInManifest:Z

    return v0
.end method

.method public final getEstimateContentLength()Z
    .locals 1

    .line 331
    iget-boolean v0, p0, Ltv/emby/embyatv/api/StreamInfo;->EstimateContentLength:Z

    return v0
.end method

.method public final getForceLiveStream()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Ltv/emby/embyatv/api/StreamInfo;->ForceLiveStream:Z

    return v0
.end method

.method public final getIsDirectStream()Z
    .locals 2

    .line 393
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getPlayMethod()Lmediabrowser/model/session/PlayMethod;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/api/StreamInfo;->PlayMethod:Lmediabrowser/model/session/PlayMethod;

    sget-object v1, Lmediabrowser/model/session/PlayMethod;->DirectStream:Lmediabrowser/model/session/PlayMethod;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getPlayMethod()Lmediabrowser/model/session/PlayMethod;

    move-result-object v0

    iget-object v1, p0, Ltv/emby/embyatv/api/StreamInfo;->PlayMethod:Lmediabrowser/model/session/PlayMethod;

    sget-object v1, Lmediabrowser/model/session/PlayMethod;->DirectPlay:Lmediabrowser/model/session/PlayMethod;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final getItemId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->ItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxAudioChannels()Ljava/lang/Integer;
    .locals 1

    .line 195
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->MaxAudioChannels:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMaxFramerate()Ljava/lang/Float;
    .locals 1

    .line 273
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->MaxFramerate:Ljava/lang/Float;

    return-object v0
.end method

.method public final getMaxHeight()Ljava/lang/Integer;
    .locals 1

    .line 244
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->MaxHeight:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMaxRefFrames()Ljava/lang/Integer;
    .locals 1

    .line 263
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->MaxRefFrames:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMaxVideoBitDepth()Ljava/lang/Integer;
    .locals 1

    .line 254
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->MaxVideoBitDepth:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMaxWidth()Ljava/lang/Integer;
    .locals 1

    .line 235
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->MaxWidth:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;
    .locals 1

    .line 341
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->MediaSource:Lmediabrowser/model/dto/MediaSourceInfo;

    return-object v0
.end method

.method public final getMediaSourceId()Ljava/lang/String;
    .locals 1

    .line 388
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/MediaSourceInfo;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getMediaType()Lmediabrowser/model/dlna/DlnaProfileType;
    .locals 1

    .line 70
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->MediaType:Lmediabrowser/model/dlna/DlnaProfileType;

    return-object v0
.end method

.method public final getMediaUrl()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->MediaUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayMethod()Lmediabrowser/model/session/PlayMethod;
    .locals 1

    .line 51
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->PlayMethod:Lmediabrowser/model/session/PlayMethod;

    return-object v0
.end method

.method public final getPlaySessionId()Ljava/lang/String;
    .locals 1

    .line 370
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->PlaySessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRunTimeTicks()Ljava/lang/Long;
    .locals 1

    .line 311
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->RunTimeTicks:Ljava/lang/Long;

    return-object v0
.end method

.method public final getStartPositionTicks()J
    .locals 2

    .line 100
    iget-wide v0, p0, Ltv/emby/embyatv/api/StreamInfo;->StartPositionTicks:J

    return-wide v0
.end method

.method public final getSubProtocol()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->SubProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubtitleDeliveryMethod()Lmediabrowser/model/dlna/SubtitleDeliveryMethod;
    .locals 1

    .line 351
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->SubtitleDeliveryMethod:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    return-object v0
.end method

.method public final getSubtitleFormat()Ljava/lang/String;
    .locals 1

    .line 360
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->SubtitleFormat:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubtitleStreamIndex()Ljava/lang/Integer;
    .locals 1

    .line 176
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->SubtitleStreamIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getTargetAudioBitrate()Ljava/lang/Integer;
    .locals 2

    .line 864
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getTargetAudioStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v0

    .line 865
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getAudioBitrate()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getIsDirectStream()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getAudioBitrate()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lmediabrowser/model/entities/MediaStream;->getBitRate()Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getTargetAudioChannels()Ljava/lang/Integer;
    .locals 2

    .line 873
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getTargetAudioStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 874
    :cond_0
    invoke-virtual {v0}, Lmediabrowser/model/entities/MediaStream;->getChannels()Ljava/lang/Integer;

    move-result-object v0

    .line 876
    :goto_0
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMaxAudioChannels()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getIsDirectStream()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    .line 880
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMaxAudioChannels()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 883
    :cond_1
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMaxAudioChannels()Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v0
.end method

.method public final getTargetAudioCodec()Ljava/lang/String;
    .locals 8

    .line 894
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getTargetAudioStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 896
    :cond_0
    invoke-virtual {v0}, Lmediabrowser/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v0

    .line 898
    :goto_0
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getIsDirectStream()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .line 903
    :cond_1
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getAudioCodecs()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    .line 905
    invoke-static {v6, v0}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    return-object v6

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 911
    :cond_3
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getAudioCodecs()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getAudioCodecs()[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v4

    :goto_2
    return-object v1
.end method

.method public final getTargetAudioSampleRate()Ljava/lang/Integer;
    .locals 1

    .line 787
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getTargetAudioStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 788
    :cond_0
    invoke-virtual {v0}, Lmediabrowser/model/entities/MediaStream;->getSampleRate()Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getTargetAudioStream()Lmediabrowser/model/entities/MediaStream;
    .locals 2

    .line 761
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 763
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/MediaSourceInfo;->GetDefaultAudioStream(Ljava/lang/Integer;)Lmediabrowser/model/entities/MediaStream;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTargetFramerate()Ljava/lang/Float;
    .locals 3

    .line 816
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getTargetVideoStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v0

    .line 817
    invoke-virtual {v0}, Lmediabrowser/model/entities/MediaStream;->getAverageFrameRate()Ljava/lang/Float;

    move-result-object v1

    .line 818
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMaxFramerate()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getIsDirectStream()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMaxFramerate()Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lmediabrowser/model/entities/MediaStream;->getRealFrameRate()Ljava/lang/Float;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public final getTargetPacketLength()Ljava/lang/Integer;
    .locals 3

    .line 835
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getTargetVideoStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v0

    .line 836
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getIsDirectStream()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lmediabrowser/model/entities/MediaStream;->getPacketLength()Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method public final getTargetRefFrames()Ljava/lang/Integer;
    .locals 2

    .line 807
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getTargetVideoStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 808
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getIsDirectStream()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lmediabrowser/model/entities/MediaStream;->getRefFrames()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public final getTargetSize()Ljava/lang/Long;
    .locals 6

    .line 919
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getIsDirectStream()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/MediaSourceInfo;->getSize()Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 924
    :cond_0
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 926
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getTargetTotalBitrate()Ljava/lang/Integer;

    move-result-object v0

    .line 928
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x40c3880000000000L    # 10000.0

    div-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    if-eqz v0, :cond_1

    .line 934
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public final getTargetTimestamp()Lmediabrowser/model/mediainfo/TransportStreamTimestamp;
    .locals 3

    .line 949
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getContainer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "m2ts"

    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmediabrowser/model/mediainfo/TransportStreamTimestamp;->Valid:Lmediabrowser/model/mediainfo/TransportStreamTimestamp;

    goto :goto_0

    :cond_0
    sget-object v0, Lmediabrowser/model/mediainfo/TransportStreamTimestamp;->None:Lmediabrowser/model/mediainfo/TransportStreamTimestamp;

    .line 951
    :goto_0
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/MediaSourceInfo;->getTimestamp()Lmediabrowser/model/mediainfo/TransportStreamTimestamp;

    move-result-object v1

    .line 952
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getIsDirectStream()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    move-object v0, v1

    goto :goto_1

    :cond_3
    sget-object v0, Lmediabrowser/model/mediainfo/TransportStreamTimestamp;->None:Lmediabrowser/model/mediainfo/TransportStreamTimestamp;

    :goto_1
    return-object v0
.end method

.method public final getTargetTotalBitrate()Ljava/lang/Integer;
    .locals 3

    .line 957
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getTargetAudioBitrate()Ljava/lang/Integer;

    move-result-object v0

    .line 958
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getTargetVideoBitrate()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 959
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getTargetVideoBitDepth()Ljava/lang/Integer;
    .locals 2

    .line 796
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getTargetVideoStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 797
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getIsDirectStream()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lmediabrowser/model/entities/MediaStream;->getBitDepth()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public final getTargetVideoBitrate()Ljava/lang/Integer;
    .locals 2

    .line 942
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getTargetVideoStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v0

    .line 944
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getVideoBitrate()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getIsDirectStream()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getVideoBitrate()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lmediabrowser/model/entities/MediaStream;->getBitRate()Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getTargetVideoCodecTag()Ljava/lang/String;
    .locals 3

    .line 855
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getTargetVideoStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v0

    .line 856
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getIsDirectStream()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lmediabrowser/model/entities/MediaStream;->getCodecTag()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method public final getTargetVideoLevel()Ljava/lang/Double;
    .locals 2

    .line 826
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getTargetVideoStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v0

    .line 827
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getVideoLevel()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getIsDirectStream()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getVideoLevel()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lmediabrowser/model/entities/MediaStream;->getLevel()Ljava/lang/Double;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final getTargetVideoProfile()Ljava/lang/String;
    .locals 2

    .line 844
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getTargetVideoStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v0

    .line 845
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getVideoProfile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getIsDirectStream()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getVideoProfile()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lmediabrowser/model/entities/MediaStream;->getProfile()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getTargetVideoStream()Lmediabrowser/model/entities/MediaStream;
    .locals 1

    .line 774
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 776
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/MediaSourceInfo;->getVideoStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTranscodeSeekInfo()Lmediabrowser/model/dlna/TranscodeSeekInfo;
    .locals 1

    .line 321
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->TranscodeSeekInfo:Lmediabrowser/model/dlna/TranscodeSeekInfo;

    return-object v0
.end method

.method public final getTranscodingMaxAudioChannels()Ljava/lang/Integer;
    .locals 1

    .line 186
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->TranscodingMaxAudioChannels:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getVideoBitrate()Ljava/lang/Integer;
    .locals 1

    .line 215
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->VideoBitrate:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getVideoCodec()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->VideoCodec:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoLevel()Ljava/lang/Integer;
    .locals 1

    .line 225
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->VideoLevel:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getVideoProfile()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Ltv/emby/embyatv/api/StreamInfo;->VideoProfile:Ljava/lang/String;

    return-object v0
.end method

.method public final setAllMediaSources(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/MediaSourceInfo;",
            ">;)V"
        }
    .end annotation

    .line 383
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->AllMediaSources:Ljava/util/ArrayList;

    return-void
.end method

.method public final setAudioBitrate(Ljava/lang/Integer;)V
    .locals 0

    .line 209
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->AudioBitrate:Ljava/lang/Integer;

    return-void
.end method

.method public final setAudioCodecs([Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->AudioCodecs:[Ljava/lang/String;

    return-void
.end method

.method public final setAudioStreamIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 170
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->AudioStreamIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setContainer(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->Container:Ljava/lang/String;

    return-void
.end method

.method public final setContext(Lmediabrowser/model/dlna/EncodingContext;)V
    .locals 0

    .line 64
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->Context:Lmediabrowser/model/dlna/EncodingContext;

    return-void
.end method

.method public final setCopyTimestamps(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Ltv/emby/embyatv/api/StreamInfo;->CopyTimestamps:Z

    return-void
.end method

.method public final setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 305
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->DeviceId:Ljava/lang/String;

    return-void
.end method

.method public final setDeviceProfile(Lmediabrowser/model/dlna/DeviceProfile;)V
    .locals 0

    .line 287
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->DeviceProfile:Lmediabrowser/model/dlna/DeviceProfile;

    return-void
.end method

.method public final setDeviceProfileId(Ljava/lang/String;)V
    .locals 0

    .line 296
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->DeviceProfileId:Ljava/lang/String;

    return-void
.end method

.method public final setEnableSubtitlesInManifest(Z)V
    .locals 0

    .line 151
    iput-boolean p1, p0, Ltv/emby/embyatv/api/StreamInfo;->EnableSubtitlesInManifest:Z

    return-void
.end method

.method public final setEstimateContentLength(Z)V
    .locals 0

    .line 335
    iput-boolean p1, p0, Ltv/emby/embyatv/api/StreamInfo;->EstimateContentLength:Z

    return-void
.end method

.method public final setForceLiveStream(Z)V
    .locals 0

    .line 142
    iput-boolean p1, p0, Ltv/emby/embyatv/api/StreamInfo;->ForceLiveStream:Z

    return-void
.end method

.method public final setItemId(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->ItemId:Ljava/lang/String;

    return-void
.end method

.method public final setMaxAudioChannels(Ljava/lang/Integer;)V
    .locals 0

    .line 199
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->MaxAudioChannels:Ljava/lang/Integer;

    return-void
.end method

.method public final setMaxFramerate(Ljava/lang/Float;)V
    .locals 0

    .line 277
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->MaxFramerate:Ljava/lang/Float;

    return-void
.end method

.method public final setMaxHeight(Ljava/lang/Integer;)V
    .locals 0

    .line 248
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->MaxHeight:Ljava/lang/Integer;

    return-void
.end method

.method public final setMaxRefFrames(Ljava/lang/Integer;)V
    .locals 0

    .line 267
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->MaxRefFrames:Ljava/lang/Integer;

    return-void
.end method

.method public final setMaxVideoBitDepth(Ljava/lang/Integer;)V
    .locals 0

    .line 258
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->MaxVideoBitDepth:Ljava/lang/Integer;

    return-void
.end method

.method public final setMaxWidth(Ljava/lang/Integer;)V
    .locals 0

    .line 239
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->MaxWidth:Ljava/lang/Integer;

    return-void
.end method

.method public final setMediaSource(Lmediabrowser/model/dto/MediaSourceInfo;)V
    .locals 0

    .line 345
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->MediaSource:Lmediabrowser/model/dto/MediaSourceInfo;

    return-void
.end method

.method public final setMediaType(Lmediabrowser/model/dlna/DlnaProfileType;)V
    .locals 0

    .line 74
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->MediaType:Lmediabrowser/model/dlna/DlnaProfileType;

    return-void
.end method

.method public final setMediaUrl(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->MediaUrl:Ljava/lang/String;

    return-void
.end method

.method public final setPlayMethod(Lmediabrowser/model/session/PlayMethod;)V
    .locals 0

    .line 55
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->PlayMethod:Lmediabrowser/model/session/PlayMethod;

    return-void
.end method

.method public final setPlaySessionId(Ljava/lang/String;)V
    .locals 0

    .line 374
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->PlaySessionId:Ljava/lang/String;

    return-void
.end method

.method public final setRunTimeTicks(Ljava/lang/Long;)V
    .locals 0

    .line 315
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->RunTimeTicks:Ljava/lang/Long;

    return-void
.end method

.method public final setStartPositionTicks(J)V
    .locals 0

    .line 104
    iput-wide p1, p0, Ltv/emby/embyatv/api/StreamInfo;->StartPositionTicks:J

    return-void
.end method

.method public final setSubProtocol(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->SubProtocol:Ljava/lang/String;

    return-void
.end method

.method public final setSubtitleDeliveryMethod(Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)V
    .locals 0

    .line 355
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->SubtitleDeliveryMethod:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    return-void
.end method

.method public final setSubtitleFormat(Ljava/lang/String;)V
    .locals 0

    .line 364
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->SubtitleFormat:Ljava/lang/String;

    return-void
.end method

.method public final setSubtitleStreamIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 180
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->SubtitleStreamIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setTranscodeSeekInfo(Lmediabrowser/model/dlna/TranscodeSeekInfo;)V
    .locals 0

    .line 325
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->TranscodeSeekInfo:Lmediabrowser/model/dlna/TranscodeSeekInfo;

    return-void
.end method

.method public final setTranscodingMaxAudioChannels(Ljava/lang/Integer;)V
    .locals 0

    .line 190
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->TranscodingMaxAudioChannels:Ljava/lang/Integer;

    return-void
.end method

.method public final setVideoBitrate(Ljava/lang/Integer;)V
    .locals 0

    .line 219
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->VideoBitrate:Ljava/lang/Integer;

    return-void
.end method

.method public final setVideoCodec(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->VideoCodec:Ljava/lang/String;

    return-void
.end method

.method public final setVideoLevel(Ljava/lang/Integer;)V
    .locals 0

    .line 229
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->VideoLevel:Ljava/lang/Integer;

    return-void
.end method

.method public final setVideoProfile(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Ltv/emby/embyatv/api/StreamInfo;->VideoProfile:Ljava/lang/String;

    return-void
.end method
