.class public Ltv/emby/embyatv/util/ProfileHelper;
.super Ljava/lang/Object;
.source "ProfileHelper.java"


# static fields
.field private static MediaTest:Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;

    invoke-direct {v0}, Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;-><init>()V

    sput-object v0, Ltv/emby/embyatv/util/ProfileHelper;->MediaTest:Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExtendedStreamingAudio(Lmediabrowser/model/dlna/DeviceProfile;Ljava/lang/String;Z)V
    .locals 6

    const-string v0, "mkv"

    .line 434
    invoke-static {p0, v0}, Ltv/emby/embyatv/util/ProfileHelper;->getTranscodingProfile(Lmediabrowser/model/dlna/DeviceProfile;Ljava/lang/String;)Lmediabrowser/model/dlna/TranscodingProfile;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string v3, ""

    .line 435
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 437
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v3

    const-string v4, "*** Adding %s as supported transcoded audio"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-interface {v3, v4, v5}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lmediabrowser/model/dlna/TranscodingProfile;->getAudioCodec()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lmediabrowser/model/dlna/TranscodingProfile;->getAudioCodec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Lmediabrowser/model/dlna/TranscodingProfile;->setAudioCodec(Ljava/lang/String;)V

    :cond_1
    const-string v0, "ts"

    .line 440
    invoke-static {p0, v0}, Ltv/emby/embyatv/util/ProfileHelper;->getTranscodingProfile(Lmediabrowser/model/dlna/DeviceProfile;Ljava/lang/String;)Lmediabrowser/model/dlna/TranscodingProfile;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    const-string v3, ""

    .line 441
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 443
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v3

    const-string v4, "*** Adding %s as supported transcoded audio"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-interface {v3, v4, v5}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_2

    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lmediabrowser/model/dlna/TranscodingProfile;->getAudioCodec()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lmediabrowser/model/dlna/TranscodingProfile;->getAudioCodec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Lmediabrowser/model/dlna/TranscodingProfile;->setAudioCodec(Ljava/lang/String;)V

    :cond_3
    const-string v0, "avi"

    .line 446
    invoke-static {p0, v0}, Ltv/emby/embyatv/util/ProfileHelper;->getTranscodingProfile(Lmediabrowser/model/dlna/DeviceProfile;Ljava/lang/String;)Lmediabrowser/model/dlna/TranscodingProfile;

    move-result-object p0

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    const-string v0, ""

    .line 447
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 449
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v3, "*** Adding %s as supported transcoded audio"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-interface {v0, v3, v4}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_4

    .line 450
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lmediabrowser/model/dlna/TranscodingProfile;->getAudioCodec()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lmediabrowser/model/dlna/TranscodingProfile;->getAudioCodec()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p0, p1}, Lmediabrowser/model/dlna/TranscodingProfile;->setAudioCodec(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static getBaseProfile(Z)Lmediabrowser/model/dlna/DeviceProfile;
    .locals 6

    .line 31
    new-instance v0, Lmediabrowser/model/dlna/DeviceProfile;

    invoke-direct {v0}, Lmediabrowser/model/dlna/DeviceProfile;-><init>()V

    const-string v1, "Android"

    .line 33
    invoke-virtual {v0, v1}, Lmediabrowser/model/dlna/DeviceProfile;->setName(Ljava/lang/String;)V

    const v1, 0x68e7780

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmediabrowser/model/dlna/DeviceProfile;->setMaxStreamingBitrate(Ljava/lang/Integer;)V

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dlna/DeviceProfile;->setMaxStaticBitrate(Ljava/lang/Integer;)V

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    new-instance v2, Lmediabrowser/model/dlna/TranscodingProfile;

    invoke-direct {v2}, Lmediabrowser/model/dlna/TranscodingProfile;-><init>()V

    const-string v3, "ts"

    .line 40
    invoke-virtual {v2, v3}, Lmediabrowser/model/dlna/TranscodingProfile;->setContainer(Ljava/lang/String;)V

    const-string v3, "h264"

    .line 42
    sget-object v4, Ltv/emby/embyatv/util/ProfileHelper;->MediaTest:Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;

    invoke-virtual {v4}, Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;->supportsMpeg2()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",mpeg2video"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 43
    :cond_0
    sget-object v4, Ltv/emby/embyatv/util/ProfileHelper;->MediaTest:Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;

    invoke-virtual {v4}, Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;->supportsHevc()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",hevc,h265"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 44
    :cond_1
    invoke-virtual {v2, v3}, Lmediabrowser/model/dlna/TranscodingProfile;->setVideoCodec(Ljava/lang/String;)V

    const-string v3, "aac,mp3"

    .line 45
    invoke-virtual {v2, v3}, Lmediabrowser/model/dlna/TranscodingProfile;->setAudioCodec(Ljava/lang/String;)V

    .line 46
    sget-object v3, Lmediabrowser/model/dlna/DlnaProfileType;->Video:Lmediabrowser/model/dlna/DlnaProfileType;

    invoke-virtual {v2, v3}, Lmediabrowser/model/dlna/TranscodingProfile;->setType(Lmediabrowser/model/dlna/DlnaProfileType;)V

    .line 47
    sget-object v3, Lmediabrowser/model/dlna/EncodingContext;->Streaming:Lmediabrowser/model/dlna/EncodingContext;

    invoke-virtual {v2, v3}, Lmediabrowser/model/dlna/TranscodingProfile;->setContext(Lmediabrowser/model/dlna/EncodingContext;)V

    const/4 v3, 0x1

    .line 48
    invoke-virtual {v2, v3}, Lmediabrowser/model/dlna/TranscodingProfile;->setCopyTimestamps(Z)V

    const-string v4, "vtt"

    .line 49
    invoke-virtual {v2, v4}, Lmediabrowser/model/dlna/TranscodingProfile;->setManifestSubtitles(Ljava/lang/String;)V

    const/4 v4, 0x2

    if-eqz p0, :cond_2

    const-string p0, "hls"

    .line 52
    invoke-virtual {v2, p0}, Lmediabrowser/model/dlna/TranscodingProfile;->setProtocol(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v2, v4}, Lmediabrowser/model/dlna/TranscodingProfile;->setMinSegments(I)V

    .line 54
    invoke-virtual {v2, v3}, Lmediabrowser/model/dlna/TranscodingProfile;->setBreakOnNonKeyFrames(Z)V

    .line 57
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance p0, Lmediabrowser/model/dlna/TranscodingProfile;

    invoke-direct {p0}, Lmediabrowser/model/dlna/TranscodingProfile;-><init>()V

    const-string v2, "ts"

    .line 60
    invoke-virtual {p0, v2}, Lmediabrowser/model/dlna/TranscodingProfile;->setContainer(Ljava/lang/String;)V

    const-string v2, "aac"

    .line 61
    invoke-virtual {p0, v2}, Lmediabrowser/model/dlna/TranscodingProfile;->setAudioCodec(Ljava/lang/String;)V

    const-string v2, "hls"

    .line 62
    invoke-virtual {p0, v2}, Lmediabrowser/model/dlna/TranscodingProfile;->setProtocol(Ljava/lang/String;)V

    .line 63
    sget-object v2, Lmediabrowser/model/dlna/DlnaProfileType;->Audio:Lmediabrowser/model/dlna/DlnaProfileType;

    invoke-virtual {p0, v2}, Lmediabrowser/model/dlna/TranscodingProfile;->setType(Lmediabrowser/model/dlna/DlnaProfileType;)V

    .line 64
    sget-object v2, Lmediabrowser/model/dlna/EncodingContext;->Streaming:Lmediabrowser/model/dlna/EncodingContext;

    invoke-virtual {p0, v2}, Lmediabrowser/model/dlna/TranscodingProfile;->setContext(Lmediabrowser/model/dlna/EncodingContext;)V

    .line 65
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lmediabrowser/model/dlna/TranscodingProfile;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lmediabrowser/model/dlna/TranscodingProfile;

    invoke-virtual {v0, p0}, Lmediabrowser/model/dlna/DeviceProfile;->setTranscodingProfiles([Lmediabrowser/model/dlna/TranscodingProfile;)V

    const/16 p0, 0x19

    .line 68
    new-array p0, p0, [Lmediabrowser/model/dlna/SubtitleProfile;

    const/4 v1, 0x0

    const-string v2, "srt"

    sget-object v5, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 69
    invoke-static {v2, v5}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    aput-object v2, p0, v1

    const-string v1, "srt"

    sget-object v2, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 70
    invoke-static {v1, v2}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v1

    aput-object v1, p0, v3

    const-string v1, "subrip"

    sget-object v2, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 71
    invoke-static {v1, v2}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v1

    aput-object v1, p0, v4

    const/4 v1, 0x3

    const-string v2, "subrip"

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 72
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    aput-object v2, p0, v1

    const/4 v1, 0x4

    const-string v2, "ass"

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 73
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    aput-object v2, p0, v1

    const/4 v1, 0x5

    const-string v2, "ssa"

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 74
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    aput-object v2, p0, v1

    const/4 v1, 0x6

    const-string v2, "pgs"

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 75
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    aput-object v2, p0, v1

    const/4 v1, 0x7

    const-string v2, "pgssub"

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 76
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    aput-object v2, p0, v1

    const/16 v1, 0x8

    const-string v2, "dvdsub"

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 77
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    aput-object v2, p0, v1

    const/16 v1, 0x9

    const-string v2, "dvdsub"

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 78
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    aput-object v2, p0, v1

    const/16 v1, 0xa

    const-string v2, "dvbsub"

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 79
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    aput-object v2, p0, v1

    const/16 v1, 0xb

    const-string v2, "dvb_teletext"

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 80
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    aput-object v2, p0, v1

    const/16 v1, 0xc

    const-string v2, "dvb_teletext"

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 81
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    aput-object v2, p0, v1

    const/16 v1, 0xd

    const-string v2, "dvb_subtitle"

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 82
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    aput-object v2, p0, v1

    const/16 v1, 0xe

    const-string v2, "dvb_subtitle"

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 83
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    aput-object v2, p0, v1

    const/16 v1, 0xf

    const-string v2, "vtt"

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 84
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    aput-object v2, p0, v1

    const/16 v1, 0x10

    const-string v2, "vtt"

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 85
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    aput-object v2, p0, v1

    const/16 v1, 0x11

    const-string v2, "ttml"

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 86
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    aput-object v2, p0, v1

    const/16 v1, 0x12

    const-string v2, "ttml"

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 87
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    aput-object v2, p0, v1

    const/16 v1, 0x13

    const-string v2, "tx3g"

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 88
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    aput-object v2, p0, v1

    const/16 v1, 0x14

    const-string v2, "tx3g"

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 89
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    aput-object v2, p0, v1

    const/16 v1, 0x15

    const-string v2, "sub"

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 90
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    aput-object v2, p0, v1

    const/16 v1, 0x16

    const-string v2, "sub"

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 91
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    aput-object v2, p0, v1

    const/16 v1, 0x17

    const-string v2, "idx"

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 92
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    aput-object v2, p0, v1

    const/16 v1, 0x18

    const-string v2, "idx"

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 93
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    aput-object v2, p0, v1

    .line 68
    invoke-virtual {v0, p0}, Lmediabrowser/model/dlna/DeviceProfile;->setSubtitleProfiles([Lmediabrowser/model/dlna/SubtitleProfile;)V

    return-object v0
.end method

.method public static getExternalProfile()Lmediabrowser/model/dlna/DeviceProfile;
    .locals 6

    .line 101
    new-instance v0, Lmediabrowser/model/dlna/DeviceProfile;

    invoke-direct {v0}, Lmediabrowser/model/dlna/DeviceProfile;-><init>()V

    const-string v1, "Android-External"

    .line 103
    invoke-virtual {v0, v1}, Lmediabrowser/model/dlna/DeviceProfile;->setName(Ljava/lang/String;)V

    const v1, 0x68e7780

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dlna/DeviceProfile;->setMaxStaticBitrate(Ljava/lang/Integer;)V

    .line 106
    new-instance v1, Lmediabrowser/model/dlna/DirectPlayProfile;

    invoke-direct {v1}, Lmediabrowser/model/dlna/DirectPlayProfile;-><init>()V

    const-string v2, "m4v,3gp,ts,mpegts,mov,xvid,vob,mkv,wmv,asf,ogm,ogv,m2v,avi,mpg,mpeg,mp4,webm,dvr-ms,wtv"

    .line 107
    invoke-virtual {v1, v2}, Lmediabrowser/model/dlna/DirectPlayProfile;->setContainer(Ljava/lang/String;)V

    .line 108
    sget-object v2, Lmediabrowser/model/dlna/DlnaProfileType;->Video:Lmediabrowser/model/dlna/DlnaProfileType;

    invoke-virtual {v1, v2}, Lmediabrowser/model/dlna/DirectPlayProfile;->setType(Lmediabrowser/model/dlna/DlnaProfileType;)V

    const/4 v2, 0x1

    .line 110
    new-array v3, v2, [Lmediabrowser/model/dlna/DirectPlayProfile;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v3}, Lmediabrowser/model/dlna/DeviceProfile;->setDirectPlayProfiles([Lmediabrowser/model/dlna/DirectPlayProfile;)V

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    new-instance v3, Lmediabrowser/model/dlna/TranscodingProfile;

    invoke-direct {v3}, Lmediabrowser/model/dlna/TranscodingProfile;-><init>()V

    const-string v5, "mkv"

    .line 115
    invoke-virtual {v3, v5}, Lmediabrowser/model/dlna/TranscodingProfile;->setContainer(Ljava/lang/String;)V

    const-string v5, "h264"

    .line 116
    invoke-virtual {v3, v5}, Lmediabrowser/model/dlna/TranscodingProfile;->setVideoCodec(Ljava/lang/String;)V

    const-string v5, "aac,mp3,ac3"

    .line 117
    invoke-virtual {v3, v5}, Lmediabrowser/model/dlna/TranscodingProfile;->setAudioCodec(Ljava/lang/String;)V

    .line 118
    sget-object v5, Lmediabrowser/model/dlna/DlnaProfileType;->Video:Lmediabrowser/model/dlna/DlnaProfileType;

    invoke-virtual {v3, v5}, Lmediabrowser/model/dlna/TranscodingProfile;->setType(Lmediabrowser/model/dlna/DlnaProfileType;)V

    .line 119
    sget-object v5, Lmediabrowser/model/dlna/EncodingContext;->Streaming:Lmediabrowser/model/dlna/EncodingContext;

    invoke-virtual {v3, v5}, Lmediabrowser/model/dlna/TranscodingProfile;->setContext(Lmediabrowser/model/dlna/EncodingContext;)V

    .line 120
    invoke-virtual {v3, v2}, Lmediabrowser/model/dlna/TranscodingProfile;->setCopyTimestamps(Z)V

    .line 121
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v3, Lmediabrowser/model/dlna/TranscodingProfile;

    invoke-direct {v3}, Lmediabrowser/model/dlna/TranscodingProfile;-><init>()V

    const-string v5, "mp3"

    .line 124
    invoke-virtual {v3, v5}, Lmediabrowser/model/dlna/TranscodingProfile;->setContainer(Ljava/lang/String;)V

    const-string v5, "mp3"

    .line 125
    invoke-virtual {v3, v5}, Lmediabrowser/model/dlna/TranscodingProfile;->setAudioCodec(Ljava/lang/String;)V

    .line 126
    sget-object v5, Lmediabrowser/model/dlna/DlnaProfileType;->Audio:Lmediabrowser/model/dlna/DlnaProfileType;

    invoke-virtual {v3, v5}, Lmediabrowser/model/dlna/TranscodingProfile;->setType(Lmediabrowser/model/dlna/DlnaProfileType;)V

    .line 127
    sget-object v5, Lmediabrowser/model/dlna/EncodingContext;->Streaming:Lmediabrowser/model/dlna/EncodingContext;

    invoke-virtual {v3, v5}, Lmediabrowser/model/dlna/TranscodingProfile;->setContext(Lmediabrowser/model/dlna/EncodingContext;)V

    .line 128
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lmediabrowser/model/dlna/TranscodingProfile;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lmediabrowser/model/dlna/TranscodingProfile;

    invoke-virtual {v0, v1}, Lmediabrowser/model/dlna/DeviceProfile;->setTranscodingProfiles([Lmediabrowser/model/dlna/TranscodingProfile;)V

    const/16 v1, 0xb

    .line 131
    new-array v1, v1, [Lmediabrowser/model/dlna/SubtitleProfile;

    const-string v3, "srt"

    sget-object v5, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 132
    invoke-static {v3, v5}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "subrip"

    sget-object v4, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 133
    invoke-static {v3, v4}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "ass"

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 134
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "ssa"

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 135
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "pgs"

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 136
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "pgssub"

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 137
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "dvdsub"

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 138
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string v2, "vtt"

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 139
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string v2, "sub"

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 140
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string v2, "idx"

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 141
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string v2, "smi"

    sget-object v3, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 142
    invoke-static {v2, v3}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 131
    invoke-virtual {v0, v1}, Lmediabrowser/model/dlna/DeviceProfile;->setSubtitleProfiles([Lmediabrowser/model/dlna/SubtitleProfile;)V

    return-object v0
.end method

.method private static getHevcProfile()Lmediabrowser/model/dlna/CodecProfile;
    .locals 7

    .line 408
    new-instance v0, Lmediabrowser/model/dlna/CodecProfile;

    invoke-direct {v0}, Lmediabrowser/model/dlna/CodecProfile;-><init>()V

    .line 409
    sget-object v1, Lmediabrowser/model/dlna/CodecType;->Video:Lmediabrowser/model/dlna/CodecType;

    invoke-virtual {v0, v1}, Lmediabrowser/model/dlna/CodecProfile;->setType(Lmediabrowser/model/dlna/CodecType;)V

    const-string v1, "hevc"

    .line 410
    invoke-virtual {v0, v1}, Lmediabrowser/model/dlna/CodecProfile;->setCodec(Ljava/lang/String;)V

    .line 411
    sget-object v1, Ltv/emby/embyatv/util/ProfileHelper;->MediaTest:Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;

    invoke-virtual {v1}, Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;->supportsHevc()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 414
    :cond_0
    sget-object v1, Ltv/emby/embyatv/util/ProfileHelper;->MediaTest:Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;

    invoke-virtual {v1}, Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;->supportsHevcMain10()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 415
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v1

    const-string v4, "*** Does NOT support HEVC 10 bit"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v1, v4, v5}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    new-array v1, v2, [Lmediabrowser/model/dlna/ProfileCondition;

    new-instance v2, Lmediabrowser/model/dlna/ProfileCondition;

    sget-object v4, Lmediabrowser/model/dlna/ProfileConditionType;->Equals:Lmediabrowser/model/dlna/ProfileConditionType;

    sget-object v5, Lmediabrowser/model/dlna/ProfileConditionValue;->VideoProfile:Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v6, "Main"

    invoke-direct {v2, v4, v5, v6}, Lmediabrowser/model/dlna/ProfileCondition;-><init>(Lmediabrowser/model/dlna/ProfileConditionType;Lmediabrowser/model/dlna/ProfileConditionValue;Ljava/lang/String;)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lmediabrowser/model/dlna/CodecProfile;->setConditions([Lmediabrowser/model/dlna/ProfileCondition;)V

    goto :goto_0

    .line 423
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v1

    const-string v4, "*** Supports HEVC 10 bit"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v1, v4, v5}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    new-array v1, v2, [Lmediabrowser/model/dlna/ProfileCondition;

    new-instance v2, Lmediabrowser/model/dlna/ProfileCondition;

    sget-object v4, Lmediabrowser/model/dlna/ProfileConditionType;->EqualsAny:Lmediabrowser/model/dlna/ProfileConditionType;

    sget-object v5, Lmediabrowser/model/dlna/ProfileConditionValue;->VideoProfile:Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v6, "Main|Main 10"

    invoke-direct {v2, v4, v5, v6}, Lmediabrowser/model/dlna/ProfileCondition;-><init>(Lmediabrowser/model/dlna/ProfileConditionType;Lmediabrowser/model/dlna/ProfileConditionValue;Ljava/lang/String;)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lmediabrowser/model/dlna/CodecProfile;->setConditions([Lmediabrowser/model/dlna/ProfileCondition;)V

    :goto_0
    return-object v0
.end method

.method private static getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;
    .locals 1

    .line 463
    new-instance v0, Lmediabrowser/model/dlna/SubtitleProfile;

    invoke-direct {v0}, Lmediabrowser/model/dlna/SubtitleProfile;-><init>()V

    .line 464
    invoke-virtual {v0, p0}, Lmediabrowser/model/dlna/SubtitleProfile;->setFormat(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v0, p1}, Lmediabrowser/model/dlna/SubtitleProfile;->setMethod(Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)V

    return-object v0
.end method

.method private static getTranscodingProfile(Lmediabrowser/model/dlna/DeviceProfile;Ljava/lang/String;)Lmediabrowser/model/dlna/TranscodingProfile;
    .locals 4

    .line 455
    invoke-virtual {p0}, Lmediabrowser/model/dlna/DeviceProfile;->getTranscodingProfiles()[Lmediabrowser/model/dlna/TranscodingProfile;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 456
    invoke-virtual {v2}, Lmediabrowser/model/dlna/TranscodingProfile;->getContainer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setAudioOptions(Lmediabrowser/model/dlna/DeviceProfile;)V
    .locals 8

    const-string v0, "Android-Audio"

    .line 151
    invoke-virtual {p0, v0}, Lmediabrowser/model/dlna/DeviceProfile;->setName(Ljava/lang/String;)V

    .line 152
    new-instance v0, Lmediabrowser/model/dlna/DirectPlayProfile;

    invoke-direct {v0}, Lmediabrowser/model/dlna/DirectPlayProfile;-><init>()V

    const-string v1, "flac,ogg,oga,aac,mp3,mpa,wav,wma,mp2,webma,m4a"

    .line 153
    invoke-virtual {v0, v1}, Lmediabrowser/model/dlna/DirectPlayProfile;->setContainer(Ljava/lang/String;)V

    .line 154
    sget-object v1, Lmediabrowser/model/dlna/DlnaProfileType;->Audio:Lmediabrowser/model/dlna/DlnaProfileType;

    invoke-virtual {v0, v1}, Lmediabrowser/model/dlna/DirectPlayProfile;->setType(Lmediabrowser/model/dlna/DlnaProfileType;)V

    const/4 v1, 0x1

    .line 156
    new-array v2, v1, [Lmediabrowser/model/dlna/DirectPlayProfile;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v2}, Lmediabrowser/model/dlna/DeviceProfile;->setDirectPlayProfiles([Lmediabrowser/model/dlna/DirectPlayProfile;)V

    .line 157
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isFireTv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Lmediabrowser/model/dlna/CodecProfile;

    invoke-direct {v0}, Lmediabrowser/model/dlna/CodecProfile;-><init>()V

    const-string v2, "flac"

    .line 159
    invoke-virtual {v0, v2}, Lmediabrowser/model/dlna/CodecProfile;->setCodec(Ljava/lang/String;)V

    .line 160
    sget-object v2, Lmediabrowser/model/dlna/CodecType;->Audio:Lmediabrowser/model/dlna/CodecType;

    invoke-virtual {v0, v2}, Lmediabrowser/model/dlna/CodecProfile;->setType(Lmediabrowser/model/dlna/CodecType;)V

    .line 161
    new-array v2, v1, [Lmediabrowser/model/dlna/ProfileCondition;

    new-instance v4, Lmediabrowser/model/dlna/ProfileCondition;

    sget-object v5, Lmediabrowser/model/dlna/ProfileConditionType;->LessThanEqual:Lmediabrowser/model/dlna/ProfileConditionType;

    sget-object v6, Lmediabrowser/model/dlna/ProfileConditionValue;->AudioBitDepth:Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v7, "16"

    invoke-direct {v4, v5, v6, v7}, Lmediabrowser/model/dlna/ProfileCondition;-><init>(Lmediabrowser/model/dlna/ProfileConditionType;Lmediabrowser/model/dlna/ProfileConditionValue;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lmediabrowser/model/dlna/CodecProfile;->setConditions([Lmediabrowser/model/dlna/ProfileCondition;)V

    .line 164
    new-array v1, v1, [Lmediabrowser/model/dlna/CodecProfile;

    aput-object v0, v1, v3

    invoke-virtual {p0, v1}, Lmediabrowser/model/dlna/DeviceProfile;->setCodecProfiles([Lmediabrowser/model/dlna/CodecProfile;)V

    :cond_0
    return-void
.end method

.method public static setExoOptions(Lmediabrowser/model/dlna/DeviceProfile;ZZLjava/lang/String;I)V
    .locals 11

    const-string v0, "Android-Exo"

    .line 263
    invoke-virtual {p0, v0}, Lmediabrowser/model/dlna/DeviceProfile;->setName(Ljava/lang/String;)V

    .line 264
    sget-object v0, Ltv/emby/embyatv/util/ProfileHelper;->MediaTest:Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;

    invoke-virtual {v0}, Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;->supportsHevc()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isFireTv()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isFireElement()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ltv/emby/embyatv/util/Utils;->is60()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "2160"

    goto :goto_0

    :cond_1
    const-string v0, "1080"

    .line 265
    :goto_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v1

    const-string v2, "*** Max display height: %s"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-interface {v1, v2, v4}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 268
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->directStreamLiveTv()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 269
    :cond_2
    new-instance v2, Lmediabrowser/model/dlna/DirectPlayProfile;

    invoke-direct {v2}, Lmediabrowser/model/dlna/DirectPlayProfile;-><init>()V

    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p2, :cond_4

    if-nez p1, :cond_3

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "pref_allow_direct_ts"

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const-string p1, "ts,mpegts,"

    goto :goto_1

    :cond_4
    const-string p1, ""

    :goto_1
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "m4v,mov,xvid,vob,mkv,wmv,asf,ogm,ogv,mp4,webm,m4a,fmp4,ogg,flv,flac"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lmediabrowser/model/dlna/DirectPlayProfile;->setContainer(Ljava/lang/String;)V

    .line 271
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isGreaterThan51()Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "h264,"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ltv/emby/embyatv/util/ProfileHelper;->MediaTest:Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;

    invoke-virtual {p2}, Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;->supportsHevc()Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "hevc,"

    goto :goto_2

    :cond_5
    const-string p2, ""

    :goto_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "vp8,vp9,mpeg,mpeg2video"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ltv/emby/embyatv/util/ProfileHelper;->MediaTest:Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;

    invoke-virtual {p2}, Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;->supportsVc1()Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, ",vc1"

    goto :goto_3

    :cond_6
    const-string p2, ""

    :goto_3
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_7
    const-string p1, "h264,vp8,vp9,mpeg,mpeg2video"

    :goto_4
    invoke-virtual {v2, p1}, Lmediabrowser/model/dlna/DirectPlayProfile;->setVideoCodec(Ljava/lang/String;)V

    .line 272
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "aac,mp3,mp2,pcm_s16le,pcm_s24le,pcm_s32le,opus"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lmediabrowser/model/dlna/DirectPlayProfile;->setAudioCodec(Ljava/lang/String;)V

    .line 273
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "*** Supported audio is: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lmediabrowser/model/dlna/DirectPlayProfile;->getAudioCodec()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    sget-object p1, Lmediabrowser/model/dlna/DlnaProfileType;->Video:Lmediabrowser/model/dlna/DlnaProfileType;

    invoke-virtual {v2, p1}, Lmediabrowser/model/dlna/DirectPlayProfile;->setType(Lmediabrowser/model/dlna/DlnaProfileType;)V

    .line 275
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_8
    new-instance p1, Lmediabrowser/model/dlna/DirectPlayProfile;

    invoke-direct {p1}, Lmediabrowser/model/dlna/DirectPlayProfile;-><init>()V

    const-string p2, "aac,mp3,mpa,wav,wma,mp2,ogg,oga,webma,ape,opus,flac"

    .line 279
    invoke-virtual {p1, p2}, Lmediabrowser/model/dlna/DirectPlayProfile;->setContainer(Ljava/lang/String;)V

    .line 280
    sget-object p2, Lmediabrowser/model/dlna/DlnaProfileType;->Audio:Lmediabrowser/model/dlna/DlnaProfileType;

    invoke-virtual {p1, p2}, Lmediabrowser/model/dlna/DirectPlayProfile;->setType(Lmediabrowser/model/dlna/DlnaProfileType;)V

    .line 281
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    new-instance p1, Lmediabrowser/model/dlna/DirectPlayProfile;

    invoke-direct {p1}, Lmediabrowser/model/dlna/DirectPlayProfile;-><init>()V

    const-string p2, "jpg,jpeg,png,gif"

    .line 284
    invoke-virtual {p1, p2}, Lmediabrowser/model/dlna/DirectPlayProfile;->setContainer(Ljava/lang/String;)V

    .line 285
    sget-object p2, Lmediabrowser/model/dlna/DlnaProfileType;->Photo:Lmediabrowser/model/dlna/DlnaProfileType;

    invoke-virtual {p1, p2}, Lmediabrowser/model/dlna/DirectPlayProfile;->setType(Lmediabrowser/model/dlna/DlnaProfileType;)V

    .line 286
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lmediabrowser/model/dlna/DirectPlayProfile;

    .line 289
    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmediabrowser/model/dlna/DirectPlayProfile;

    invoke-virtual {p0, p1}, Lmediabrowser/model/dlna/DeviceProfile;->setDirectPlayProfiles([Lmediabrowser/model/dlna/DirectPlayProfile;)V

    .line 291
    new-instance p1, Lmediabrowser/model/dlna/CodecProfile;

    invoke-direct {p1}, Lmediabrowser/model/dlna/CodecProfile;-><init>()V

    .line 292
    sget-object p2, Lmediabrowser/model/dlna/CodecType;->Video:Lmediabrowser/model/dlna/CodecType;

    invoke-virtual {p1, p2}, Lmediabrowser/model/dlna/CodecProfile;->setType(Lmediabrowser/model/dlna/CodecType;)V

    const-string p2, "h264"

    .line 293
    invoke-virtual {p1, p2}, Lmediabrowser/model/dlna/CodecProfile;->setCodec(Ljava/lang/String;)V

    .line 294
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x3

    .line 295
    new-array v1, p3, [Lmediabrowser/model/dlna/ProfileCondition;

    new-instance v2, Lmediabrowser/model/dlna/ProfileCondition;

    sget-object v4, Lmediabrowser/model/dlna/ProfileConditionType;->EqualsAny:Lmediabrowser/model/dlna/ProfileConditionType;

    sget-object v6, Lmediabrowser/model/dlna/ProfileConditionValue;->VideoProfile:Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v7, "high|main|baseline|constrained baseline"

    invoke-direct {v2, v4, v6, v7}, Lmediabrowser/model/dlna/ProfileCondition;-><init>(Lmediabrowser/model/dlna/ProfileConditionType;Lmediabrowser/model/dlna/ProfileConditionValue;Ljava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Lmediabrowser/model/dlna/ProfileCondition;

    sget-object v4, Lmediabrowser/model/dlna/ProfileConditionType;->LessThanEqual:Lmediabrowser/model/dlna/ProfileConditionType;

    sget-object v6, Lmediabrowser/model/dlna/ProfileConditionValue;->VideoLevel:Lmediabrowser/model/dlna/ProfileConditionValue;

    .line 297
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isFireTvStick()Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "41"

    goto :goto_5

    :cond_9
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isShield()Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "52"

    goto :goto_5

    :cond_a
    const-string v7, "51"

    :goto_5
    invoke-direct {v2, v4, v6, v7}, Lmediabrowser/model/dlna/ProfileCondition;-><init>(Lmediabrowser/model/dlna/ProfileConditionType;Lmediabrowser/model/dlna/ProfileConditionValue;Ljava/lang/String;)V

    aput-object v2, v1, v3

    new-instance v2, Lmediabrowser/model/dlna/ProfileCondition;

    sget-object v4, Lmediabrowser/model/dlna/ProfileConditionType;->LessThanEqual:Lmediabrowser/model/dlna/ProfileConditionType;

    sget-object v6, Lmediabrowser/model/dlna/ProfileConditionValue;->Height:Lmediabrowser/model/dlna/ProfileConditionValue;

    invoke-direct {v2, v4, v6, v0}, Lmediabrowser/model/dlna/ProfileCondition;-><init>(Lmediabrowser/model/dlna/ProfileConditionType;Lmediabrowser/model/dlna/ProfileConditionValue;Ljava/lang/String;)V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 295
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 301
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_convert_interlaced_sd"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 302
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v6, "pref_convert_interlaced_hd"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 305
    new-instance v6, Lmediabrowser/model/dlna/ProfileCondition;

    sget-object v7, Lmediabrowser/model/dlna/ProfileConditionType;->Equals:Lmediabrowser/model/dlna/ProfileConditionType;

    sget-object v8, Lmediabrowser/model/dlna/ProfileConditionValue;->IsInterlaced:Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v9, "false"

    invoke-direct {v6, v7, v8, v9, v5}, Lmediabrowser/model/dlna/ProfileCondition;-><init>(Lmediabrowser/model/dlna/ProfileConditionType;Lmediabrowser/model/dlna/ProfileConditionValue;Ljava/lang/String;Z)V

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lmediabrowser/model/dlna/ProfileCondition;

    .line 308
    invoke-interface {p2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lmediabrowser/model/dlna/ProfileCondition;

    invoke-virtual {p1, p2}, Lmediabrowser/model/dlna/CodecProfile;->setConditions([Lmediabrowser/model/dlna/ProfileCondition;)V

    .line 310
    new-instance p2, Lmediabrowser/model/dlna/CodecProfile;

    invoke-direct {p2}, Lmediabrowser/model/dlna/CodecProfile;-><init>()V

    .line 311
    sget-object v6, Lmediabrowser/model/dlna/CodecType;->VideoAudio:Lmediabrowser/model/dlna/CodecType;

    invoke-virtual {p2, v6}, Lmediabrowser/model/dlna/CodecProfile;->setType(Lmediabrowser/model/dlna/CodecType;)V

    .line 312
    new-array v6, v3, [Lmediabrowser/model/dlna/ProfileCondition;

    new-instance v7, Lmediabrowser/model/dlna/ProfileCondition;

    sget-object v8, Lmediabrowser/model/dlna/ProfileConditionType;->LessThanEqual:Lmediabrowser/model/dlna/ProfileConditionType;

    sget-object v9, Lmediabrowser/model/dlna/ProfileConditionValue;->AudioChannels:Lmediabrowser/model/dlna/ProfileConditionValue;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {v7, v8, v9, p4}, Lmediabrowser/model/dlna/ProfileCondition;-><init>(Lmediabrowser/model/dlna/ProfileConditionType;Lmediabrowser/model/dlna/ProfileConditionValue;Ljava/lang/String;)V

    aput-object v7, v6, v5

    invoke-virtual {p2, v6}, Lmediabrowser/model/dlna/CodecProfile;->setConditions([Lmediabrowser/model/dlna/ProfileCondition;)V

    const/4 p4, 0x0

    if-nez v2, :cond_c

    if-eqz v1, :cond_f

    .line 316
    :cond_c
    new-instance p4, Lmediabrowser/model/dlna/CodecProfile;

    invoke-direct {p4}, Lmediabrowser/model/dlna/CodecProfile;-><init>()V

    .line 317
    sget-object v6, Lmediabrowser/model/dlna/CodecType;->Video:Lmediabrowser/model/dlna/CodecType;

    invoke-virtual {p4, v6}, Lmediabrowser/model/dlna/CodecProfile;->setType(Lmediabrowser/model/dlna/CodecType;)V

    const-string v6, "mpeg2video"

    .line 318
    invoke-virtual {p4, v6}, Lmediabrowser/model/dlna/CodecProfile;->setCodec(Ljava/lang/String;)V

    .line 319
    new-array v6, v4, [Lmediabrowser/model/dlna/ProfileCondition;

    new-instance v7, Lmediabrowser/model/dlna/ProfileCondition;

    sget-object v8, Lmediabrowser/model/dlna/ProfileConditionType;->Equals:Lmediabrowser/model/dlna/ProfileConditionType;

    sget-object v9, Lmediabrowser/model/dlna/ProfileConditionValue;->IsInterlaced:Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v10, "false"

    invoke-direct {v7, v8, v9, v10, v5}, Lmediabrowser/model/dlna/ProfileCondition;-><init>(Lmediabrowser/model/dlna/ProfileConditionType;Lmediabrowser/model/dlna/ProfileConditionValue;Ljava/lang/String;Z)V

    aput-object v7, v6, v5

    new-instance v7, Lmediabrowser/model/dlna/ProfileCondition;

    sget-object v8, Lmediabrowser/model/dlna/ProfileConditionType;->LessThanEqual:Lmediabrowser/model/dlna/ProfileConditionType;

    sget-object v9, Lmediabrowser/model/dlna/ProfileConditionValue;->Height:Lmediabrowser/model/dlna/ProfileConditionValue;

    invoke-direct {v7, v8, v9, v0}, Lmediabrowser/model/dlna/ProfileCondition;-><init>(Lmediabrowser/model/dlna/ProfileConditionType;Lmediabrowser/model/dlna/ProfileConditionValue;Ljava/lang/String;)V

    aput-object v7, v6, v3

    invoke-virtual {p4, v6}, Lmediabrowser/model/dlna/CodecProfile;->setConditions([Lmediabrowser/model/dlna/ProfileCondition;)V

    if-eqz v2, :cond_d

    if-eqz v1, :cond_d

    goto :goto_6

    :cond_d
    if-eqz v2, :cond_e

    .line 328
    new-array v1, v3, [Lmediabrowser/model/dlna/ProfileCondition;

    new-instance v2, Lmediabrowser/model/dlna/ProfileCondition;

    sget-object v6, Lmediabrowser/model/dlna/ProfileConditionType;->GreaterThanEqual:Lmediabrowser/model/dlna/ProfileConditionType;

    sget-object v7, Lmediabrowser/model/dlna/ProfileConditionValue;->Width:Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v8, "1000"

    invoke-direct {v2, v6, v7, v8}, Lmediabrowser/model/dlna/ProfileCondition;-><init>(Lmediabrowser/model/dlna/ProfileConditionType;Lmediabrowser/model/dlna/ProfileConditionValue;Ljava/lang/String;)V

    aput-object v2, v1, v5

    invoke-virtual {p4, v1}, Lmediabrowser/model/dlna/CodecProfile;->setApplyConditions([Lmediabrowser/model/dlna/ProfileCondition;)V

    goto :goto_6

    .line 332
    :cond_e
    new-array v1, v3, [Lmediabrowser/model/dlna/ProfileCondition;

    new-instance v2, Lmediabrowser/model/dlna/ProfileCondition;

    sget-object v6, Lmediabrowser/model/dlna/ProfileConditionType;->LessThanEqual:Lmediabrowser/model/dlna/ProfileConditionType;

    sget-object v7, Lmediabrowser/model/dlna/ProfileConditionValue;->Width:Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v8, "1200"

    invoke-direct {v2, v6, v7, v8}, Lmediabrowser/model/dlna/ProfileCondition;-><init>(Lmediabrowser/model/dlna/ProfileConditionType;Lmediabrowser/model/dlna/ProfileConditionValue;Ljava/lang/String;)V

    aput-object v2, v1, v5

    invoke-virtual {p4, v1}, Lmediabrowser/model/dlna/CodecProfile;->setApplyConditions([Lmediabrowser/model/dlna/ProfileCondition;)V

    .line 339
    :cond_f
    :goto_6
    invoke-static {}, Ltv/emby/embyatv/util/ProfileHelper;->getHevcProfile()Lmediabrowser/model/dlna/CodecProfile;

    move-result-object v1

    .line 348
    new-instance v2, Lmediabrowser/model/dlna/CodecProfile;

    invoke-direct {v2}, Lmediabrowser/model/dlna/CodecProfile;-><init>()V

    .line 349
    new-array v6, v3, [Lmediabrowser/model/dlna/ProfileCondition;

    new-instance v7, Lmediabrowser/model/dlna/ProfileCondition;

    sget-object v8, Lmediabrowser/model/dlna/ProfileConditionType;->LessThanEqual:Lmediabrowser/model/dlna/ProfileConditionType;

    sget-object v9, Lmediabrowser/model/dlna/ProfileConditionValue;->Height:Lmediabrowser/model/dlna/ProfileConditionValue;

    invoke-direct {v7, v8, v9, v0}, Lmediabrowser/model/dlna/ProfileCondition;-><init>(Lmediabrowser/model/dlna/ProfileConditionType;Lmediabrowser/model/dlna/ProfileConditionValue;Ljava/lang/String;)V

    aput-object v7, v6, v5

    invoke-virtual {v2, v6}, Lmediabrowser/model/dlna/CodecProfile;->setConditions([Lmediabrowser/model/dlna/ProfileCondition;)V

    const/4 v0, 0x5

    const/4 v6, 0x4

    if-nez p4, :cond_11

    if-eqz v1, :cond_10

    .line 372
    new-array p4, v6, [Lmediabrowser/model/dlna/CodecProfile;

    aput-object p1, p4, v5

    aput-object v1, p4, v3

    aput-object p2, p4, v4

    aput-object v2, p4, p3

    goto :goto_7

    :cond_10
    new-array p4, p3, [Lmediabrowser/model/dlna/CodecProfile;

    aput-object p1, p4, v5

    aput-object p2, p4, v3

    aput-object v2, p4, v4

    :goto_7
    invoke-virtual {p0, p4}, Lmediabrowser/model/dlna/DeviceProfile;->setCodecProfiles([Lmediabrowser/model/dlna/CodecProfile;)V

    goto :goto_9

    :cond_11
    if-eqz v1, :cond_12

    .line 374
    new-array v7, v0, [Lmediabrowser/model/dlna/CodecProfile;

    aput-object p1, v7, v5

    aput-object p4, v7, v3

    aput-object v1, v7, v4

    aput-object p2, v7, p3

    aput-object v2, v7, v6

    goto :goto_8

    :cond_12
    new-array v7, v6, [Lmediabrowser/model/dlna/CodecProfile;

    aput-object p1, v7, v5

    aput-object p4, v7, v3

    aput-object p2, v7, v4

    aput-object v2, v7, p3

    :goto_8
    invoke-virtual {p0, v7}, Lmediabrowser/model/dlna/DeviceProfile;->setCodecProfiles([Lmediabrowser/model/dlna/CodecProfile;)V

    .line 377
    :goto_9
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "pref_burn_ssa"

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/16 p2, 0x18

    .line 379
    new-array p2, p2, [Lmediabrowser/model/dlna/SubtitleProfile;

    const-string p4, "srt"

    sget-object v1, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 380
    invoke-static {p4, v1}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object p4

    aput-object p4, p2, v5

    const-string p4, "srt"

    sget-object v1, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 381
    invoke-static {p4, v1}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object p4

    aput-object p4, p2, v3

    const-string p4, "subrip"

    sget-object v1, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 382
    invoke-static {p4, v1}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object p4

    aput-object p4, p2, v4

    const-string p4, "subrip"

    sget-object v1, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 383
    invoke-static {p4, v1}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object p4

    aput-object p4, p2, p3

    const-string p3, "ass"

    if-eqz p1, :cond_13

    sget-object p4, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Encode:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    goto :goto_a

    :cond_13
    sget-object p4, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 384
    :goto_a
    invoke-static {p3, p4}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object p3

    aput-object p3, p2, v6

    const-string p3, "ssa"

    if-eqz p1, :cond_14

    sget-object p4, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Encode:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    goto :goto_b

    :cond_14
    sget-object p4, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 385
    :goto_b
    invoke-static {p3, p4}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object p3

    aput-object p3, p2, v0

    const/4 p3, 0x6

    const-string p4, "ass"

    if-eqz p1, :cond_15

    sget-object v0, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Encode:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    goto :goto_c

    :cond_15
    sget-object v0, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 386
    :goto_c
    invoke-static {p4, v0}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object p4

    aput-object p4, p2, p3

    const/4 p3, 0x7

    const-string p4, "ssa"

    if-eqz p1, :cond_16

    sget-object p1, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Encode:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    goto :goto_d

    :cond_16
    sget-object p1, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 387
    :goto_d
    invoke-static {p4, p1}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object p1

    aput-object p1, p2, p3

    const/16 p1, 0x8

    const-string p3, "pgs"

    sget-object p4, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 388
    invoke-static {p3, p4}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object p3

    aput-object p3, p2, p1

    const/16 p1, 0x9

    const-string p3, "pgssub"

    sget-object p4, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 389
    invoke-static {p3, p4}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object p3

    aput-object p3, p2, p1

    const/16 p1, 0xa

    const-string p3, "dvdsub"

    sget-object p4, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Encode:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 390
    invoke-static {p3, p4}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object p3

    aput-object p3, p2, p1

    const/16 p1, 0xb

    const-string p3, "dvbsub"

    sget-object p4, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 391
    invoke-static {p3, p4}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object p3

    aput-object p3, p2, p1

    const/16 p1, 0xc

    const-string p3, "vobsub"

    sget-object p4, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Encode:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 392
    invoke-static {p3, p4}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object p3

    aput-object p3, p2, p1

    const/16 p1, 0xd

    const-string p3, "dvb_teletext"

    sget-object p4, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 393
    invoke-static {p3, p4}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object p3

    aput-object p3, p2, p1

    const/16 p1, 0xe

    const-string p3, "dvb_teletext"

    sget-object p4, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 394
    invoke-static {p3, p4}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object p3

    aput-object p3, p2, p1

    const/16 p1, 0xf

    const-string p3, "dvb_subtitle"

    sget-object p4, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 395
    invoke-static {p3, p4}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object p3

    aput-object p3, p2, p1

    const/16 p1, 0x10

    const-string p3, "vtt"

    sget-object p4, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Hls:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 396
    invoke-static {p3, p4}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object p3

    aput-object p3, p2, p1

    const/16 p1, 0x11

    const-string p3, "vtt"

    sget-object p4, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 397
    invoke-static {p3, p4}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object p3

    aput-object p3, p2, p1

    const/16 p1, 0x12

    const-string p3, "ttml"

    sget-object p4, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 398
    invoke-static {p3, p4}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object p3

    aput-object p3, p2, p1

    const/16 p1, 0x13

    const-string p3, "ttml"

    sget-object p4, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 399
    invoke-static {p3, p4}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object p3

    aput-object p3, p2, p1

    const/16 p1, 0x14

    const-string p3, "tx3g"

    sget-object p4, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 400
    invoke-static {p3, p4}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object p3

    aput-object p3, p2, p1

    const/16 p1, 0x15

    const-string p3, "tx3g"

    sget-object p4, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 401
    invoke-static {p3, p4}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object p3

    aput-object p3, p2, p1

    const/16 p1, 0x16

    const-string p3, "sub"

    sget-object p4, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Encode:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 402
    invoke-static {p3, p4}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object p3

    aput-object p3, p2, p1

    const/16 p1, 0x17

    const-string p3, "idx"

    sget-object p4, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Encode:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 403
    invoke-static {p3, p4}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object p3

    aput-object p3, p2, p1

    .line 379
    invoke-virtual {p0, p2}, Lmediabrowser/model/dlna/DeviceProfile;->setSubtitleProfiles([Lmediabrowser/model/dlna/SubtitleProfile;)V

    return-void
.end method

.method public static setMpvOptions(Lmediabrowser/model/dlna/DeviceProfile;Z)V
    .locals 12

    const-string p1, "Android-MPV"

    .line 170
    invoke-virtual {p0, p1}, Lmediabrowser/model/dlna/DeviceProfile;->setName(Ljava/lang/String;)V

    .line 171
    new-instance p1, Lmediabrowser/model/dlna/DirectPlayProfile;

    invoke-direct {p1}, Lmediabrowser/model/dlna/DirectPlayProfile;-><init>()V

    const-string v0, "ts,mpegts,m4v,3gp,mov,xvid,vob,mkv,wmv,asf,ogm,ogv,m2v,avi,mpg,mpeg,mp4,webm,wtv"

    .line 172
    invoke-virtual {p1, v0}, Lmediabrowser/model/dlna/DirectPlayProfile;->setContainer(Ljava/lang/String;)V

    .line 173
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isShield()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "h264,vp8,vp9,mpeg,mpeg2video,vc1"

    .line 175
    invoke-virtual {p1, v0}, Lmediabrowser/model/dlna/DirectPlayProfile;->setVideoCodec(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lmediabrowser/model/dlna/DeviceProfile;->getTranscodingProfiles()[Lmediabrowser/model/dlna/TranscodingProfile;

    move-result-object v0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    const-string v2, "h264,mpeg2video"

    .line 177
    invoke-virtual {v0, v2}, Lmediabrowser/model/dlna/TranscodingProfile;->setVideoCodec(Ljava/lang/String;)V

    .line 179
    :cond_0
    sget-object v0, Lmediabrowser/model/dlna/DlnaProfileType;->Video:Lmediabrowser/model/dlna/DlnaProfileType;

    invoke-virtual {p1, v0}, Lmediabrowser/model/dlna/DirectPlayProfile;->setType(Lmediabrowser/model/dlna/DlnaProfileType;)V

    .line 181
    new-instance v0, Lmediabrowser/model/dlna/DirectPlayProfile;

    invoke-direct {v0}, Lmediabrowser/model/dlna/DirectPlayProfile;-><init>()V

    const-string v2, "flac,aac,mp3,mpa,wav,wma,mp2,ogg,oga,webma,ape"

    .line 182
    invoke-virtual {v0, v2}, Lmediabrowser/model/dlna/DirectPlayProfile;->setContainer(Ljava/lang/String;)V

    .line 183
    sget-object v2, Lmediabrowser/model/dlna/DlnaProfileType;->Audio:Lmediabrowser/model/dlna/DlnaProfileType;

    invoke-virtual {v0, v2}, Lmediabrowser/model/dlna/DirectPlayProfile;->setType(Lmediabrowser/model/dlna/DlnaProfileType;)V

    .line 185
    new-instance v2, Lmediabrowser/model/dlna/DirectPlayProfile;

    invoke-direct {v2}, Lmediabrowser/model/dlna/DirectPlayProfile;-><init>()V

    const-string v3, "jpg,jpeg,png,gif"

    .line 186
    invoke-virtual {v2, v3}, Lmediabrowser/model/dlna/DirectPlayProfile;->setContainer(Ljava/lang/String;)V

    .line 187
    sget-object v3, Lmediabrowser/model/dlna/DlnaProfileType;->Photo:Lmediabrowser/model/dlna/DlnaProfileType;

    invoke-virtual {v2, v3}, Lmediabrowser/model/dlna/DirectPlayProfile;->setType(Lmediabrowser/model/dlna/DlnaProfileType;)V

    const/4 v3, 0x3

    .line 189
    new-array v4, v3, [Lmediabrowser/model/dlna/DirectPlayProfile;

    aput-object p1, v4, v1

    const/4 p1, 0x1

    aput-object v0, v4, p1

    const/4 v0, 0x2

    aput-object v2, v4, v0

    invoke-virtual {p0, v4}, Lmediabrowser/model/dlna/DeviceProfile;->setDirectPlayProfiles([Lmediabrowser/model/dlna/DirectPlayProfile;)V

    .line 192
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "pref_convert_interlaced_sd"

    invoke-interface {v2, v4, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 193
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v4

    invoke-virtual {v4}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "pref_convert_interlaced_hd"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v2, :cond_4

    .line 196
    :cond_1
    new-instance v5, Lmediabrowser/model/dlna/CodecProfile;

    invoke-direct {v5}, Lmediabrowser/model/dlna/CodecProfile;-><init>()V

    .line 197
    sget-object v6, Lmediabrowser/model/dlna/CodecType;->Video:Lmediabrowser/model/dlna/CodecType;

    invoke-virtual {v5, v6}, Lmediabrowser/model/dlna/CodecProfile;->setType(Lmediabrowser/model/dlna/CodecType;)V

    const-string v6, "mpeg2video"

    .line 198
    invoke-virtual {v5, v6}, Lmediabrowser/model/dlna/CodecProfile;->setCodec(Ljava/lang/String;)V

    .line 199
    new-array v6, p1, [Lmediabrowser/model/dlna/ProfileCondition;

    new-instance v7, Lmediabrowser/model/dlna/ProfileCondition;

    sget-object v8, Lmediabrowser/model/dlna/ProfileConditionType;->Equals:Lmediabrowser/model/dlna/ProfileConditionType;

    sget-object v9, Lmediabrowser/model/dlna/ProfileConditionValue;->IsInterlaced:Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v10, "false"

    invoke-direct {v7, v8, v9, v10, v1}, Lmediabrowser/model/dlna/ProfileCondition;-><init>(Lmediabrowser/model/dlna/ProfileConditionType;Lmediabrowser/model/dlna/ProfileConditionValue;Ljava/lang/String;Z)V

    aput-object v7, v6, v1

    invoke-virtual {v5, v6}, Lmediabrowser/model/dlna/CodecProfile;->setConditions([Lmediabrowser/model/dlna/ProfileCondition;)V

    .line 203
    new-instance v6, Lmediabrowser/model/dlna/CodecProfile;

    invoke-direct {v6}, Lmediabrowser/model/dlna/CodecProfile;-><init>()V

    .line 204
    sget-object v7, Lmediabrowser/model/dlna/CodecType;->Video:Lmediabrowser/model/dlna/CodecType;

    invoke-virtual {v6, v7}, Lmediabrowser/model/dlna/CodecProfile;->setType(Lmediabrowser/model/dlna/CodecType;)V

    const-string v7, "h264"

    .line 205
    invoke-virtual {v6, v7}, Lmediabrowser/model/dlna/CodecProfile;->setCodec(Ljava/lang/String;)V

    .line 206
    new-array v7, p1, [Lmediabrowser/model/dlna/ProfileCondition;

    new-instance v8, Lmediabrowser/model/dlna/ProfileCondition;

    sget-object v9, Lmediabrowser/model/dlna/ProfileConditionType;->Equals:Lmediabrowser/model/dlna/ProfileConditionType;

    sget-object v10, Lmediabrowser/model/dlna/ProfileConditionValue;->IsInterlaced:Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v11, "false"

    invoke-direct {v8, v9, v10, v11, v1}, Lmediabrowser/model/dlna/ProfileCondition;-><init>(Lmediabrowser/model/dlna/ProfileConditionType;Lmediabrowser/model/dlna/ProfileConditionValue;Ljava/lang/String;Z)V

    aput-object v8, v7, v1

    invoke-virtual {v6, v7}, Lmediabrowser/model/dlna/CodecProfile;->setConditions([Lmediabrowser/model/dlna/ProfileCondition;)V

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    .line 214
    new-array v2, p1, [Lmediabrowser/model/dlna/ProfileCondition;

    new-instance v4, Lmediabrowser/model/dlna/ProfileCondition;

    sget-object v7, Lmediabrowser/model/dlna/ProfileConditionType;->GreaterThanEqual:Lmediabrowser/model/dlna/ProfileConditionType;

    sget-object v8, Lmediabrowser/model/dlna/ProfileConditionValue;->Width:Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v9, "1000"

    invoke-direct {v4, v7, v8, v9}, Lmediabrowser/model/dlna/ProfileCondition;-><init>(Lmediabrowser/model/dlna/ProfileConditionType;Lmediabrowser/model/dlna/ProfileConditionValue;Ljava/lang/String;)V

    aput-object v4, v2, v1

    invoke-virtual {v5, v2}, Lmediabrowser/model/dlna/CodecProfile;->setApplyConditions([Lmediabrowser/model/dlna/ProfileCondition;)V

    .line 217
    new-array v2, p1, [Lmediabrowser/model/dlna/ProfileCondition;

    new-instance v4, Lmediabrowser/model/dlna/ProfileCondition;

    sget-object v7, Lmediabrowser/model/dlna/ProfileConditionType;->GreaterThanEqual:Lmediabrowser/model/dlna/ProfileConditionType;

    sget-object v8, Lmediabrowser/model/dlna/ProfileConditionValue;->Width:Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v9, "1000"

    invoke-direct {v4, v7, v8, v9}, Lmediabrowser/model/dlna/ProfileCondition;-><init>(Lmediabrowser/model/dlna/ProfileConditionType;Lmediabrowser/model/dlna/ProfileConditionValue;Ljava/lang/String;)V

    aput-object v4, v2, v1

    invoke-virtual {v6, v2}, Lmediabrowser/model/dlna/CodecProfile;->setApplyConditions([Lmediabrowser/model/dlna/ProfileCondition;)V

    goto :goto_0

    .line 221
    :cond_3
    new-array v2, p1, [Lmediabrowser/model/dlna/ProfileCondition;

    new-instance v4, Lmediabrowser/model/dlna/ProfileCondition;

    sget-object v7, Lmediabrowser/model/dlna/ProfileConditionType;->LessThanEqual:Lmediabrowser/model/dlna/ProfileConditionType;

    sget-object v8, Lmediabrowser/model/dlna/ProfileConditionValue;->Width:Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v9, "1200"

    invoke-direct {v4, v7, v8, v9}, Lmediabrowser/model/dlna/ProfileCondition;-><init>(Lmediabrowser/model/dlna/ProfileConditionType;Lmediabrowser/model/dlna/ProfileConditionValue;Ljava/lang/String;)V

    aput-object v4, v2, v1

    invoke-virtual {v5, v2}, Lmediabrowser/model/dlna/CodecProfile;->setApplyConditions([Lmediabrowser/model/dlna/ProfileCondition;)V

    .line 224
    new-array v2, p1, [Lmediabrowser/model/dlna/ProfileCondition;

    new-instance v4, Lmediabrowser/model/dlna/ProfileCondition;

    sget-object v7, Lmediabrowser/model/dlna/ProfileConditionType;->LessThanEqual:Lmediabrowser/model/dlna/ProfileConditionType;

    sget-object v8, Lmediabrowser/model/dlna/ProfileConditionValue;->Width:Lmediabrowser/model/dlna/ProfileConditionValue;

    const-string v9, "1200"

    invoke-direct {v4, v7, v8, v9}, Lmediabrowser/model/dlna/ProfileCondition;-><init>(Lmediabrowser/model/dlna/ProfileConditionType;Lmediabrowser/model/dlna/ProfileConditionValue;Ljava/lang/String;)V

    aput-object v4, v2, v1

    invoke-virtual {v6, v2}, Lmediabrowser/model/dlna/CodecProfile;->setApplyConditions([Lmediabrowser/model/dlna/ProfileCondition;)V

    .line 230
    :goto_0
    new-array v2, v0, [Lmediabrowser/model/dlna/CodecProfile;

    aput-object v5, v2, v1

    aput-object v6, v2, p1

    invoke-virtual {p0, v2}, Lmediabrowser/model/dlna/DeviceProfile;->setCodecProfiles([Lmediabrowser/model/dlna/CodecProfile;)V

    :cond_4
    const/16 v2, 0x19

    .line 233
    new-array v2, v2, [Lmediabrowser/model/dlna/SubtitleProfile;

    const-string v4, "srt"

    sget-object v5, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 234
    invoke-static {v4, v5}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v4

    aput-object v4, v2, v1

    const-string v1, "srt"

    sget-object v4, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 235
    invoke-static {v1, v4}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v1

    aput-object v1, v2, p1

    const-string p1, "subrip"

    sget-object v1, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 236
    invoke-static {p1, v1}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "subrip"

    sget-object v0, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 237
    invoke-static {p1, v0}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x4

    const-string v0, "ass"

    sget-object v1, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 238
    invoke-static {v0, v1}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v0

    aput-object v0, v2, p1

    const/4 p1, 0x5

    const-string v0, "ass"

    sget-object v1, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 239
    invoke-static {v0, v1}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v0

    aput-object v0, v2, p1

    const/4 p1, 0x6

    const-string v0, "ssa"

    sget-object v1, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 240
    invoke-static {v0, v1}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v0

    aput-object v0, v2, p1

    const/4 p1, 0x7

    const-string v0, "ssa"

    sget-object v1, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 241
    invoke-static {v0, v1}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v0

    aput-object v0, v2, p1

    const/16 p1, 0x8

    const-string v0, "pgs"

    sget-object v1, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 242
    invoke-static {v0, v1}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v0

    aput-object v0, v2, p1

    const/16 p1, 0x9

    const-string v0, "pgssub"

    sget-object v1, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 243
    invoke-static {v0, v1}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v0

    aput-object v0, v2, p1

    const/16 p1, 0xa

    const-string v0, "dvdsub"

    sget-object v1, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 244
    invoke-static {v0, v1}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v0

    aput-object v0, v2, p1

    const/16 p1, 0xb

    const-string v0, "dvbsub"

    sget-object v1, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 245
    invoke-static {v0, v1}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v0

    aput-object v0, v2, p1

    const/16 p1, 0xc

    const-string v0, "dvb_teletext"

    sget-object v1, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 246
    invoke-static {v0, v1}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v0

    aput-object v0, v2, p1

    const/16 p1, 0xd

    const-string v0, "dvb_teletext"

    sget-object v1, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 247
    invoke-static {v0, v1}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v0

    aput-object v0, v2, p1

    const/16 p1, 0xe

    const-string v0, "dvb_subtitle"

    sget-object v1, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 248
    invoke-static {v0, v1}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v0

    aput-object v0, v2, p1

    const/16 p1, 0xf

    const-string v0, "vtt"

    sget-object v1, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 249
    invoke-static {v0, v1}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v0

    aput-object v0, v2, p1

    const/16 p1, 0x10

    const-string v0, "vtt"

    sget-object v1, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 250
    invoke-static {v0, v1}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v0

    aput-object v0, v2, p1

    const/16 p1, 0x11

    const-string v0, "ttml"

    sget-object v1, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 251
    invoke-static {v0, v1}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v0

    aput-object v0, v2, p1

    const/16 p1, 0x12

    const-string v0, "ttml"

    sget-object v1, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 252
    invoke-static {v0, v1}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v0

    aput-object v0, v2, p1

    const/16 p1, 0x13

    const-string v0, "tx3g"

    sget-object v1, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 253
    invoke-static {v0, v1}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v0

    aput-object v0, v2, p1

    const/16 p1, 0x14

    const-string v0, "tx3g"

    sget-object v1, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 254
    invoke-static {v0, v1}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v0

    aput-object v0, v2, p1

    const/16 p1, 0x15

    const-string v0, "sub"

    sget-object v1, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 255
    invoke-static {v0, v1}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v0

    aput-object v0, v2, p1

    const/16 p1, 0x16

    const-string v0, "sub"

    sget-object v1, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 256
    invoke-static {v0, v1}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v0

    aput-object v0, v2, p1

    const/16 p1, 0x17

    const-string v0, "idx"

    sget-object v1, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->Embed:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 257
    invoke-static {v0, v1}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v0

    aput-object v0, v2, p1

    const/16 p1, 0x18

    const-string v0, "idx"

    sget-object v1, Lmediabrowser/model/dlna/SubtitleDeliveryMethod;->External:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 258
    invoke-static {v0, v1}, Ltv/emby/embyatv/util/ProfileHelper;->getSubtitleProfile(Ljava/lang/String;Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)Lmediabrowser/model/dlna/SubtitleProfile;

    move-result-object v0

    aput-object v0, v2, p1

    .line 233
    invoke-virtual {p0, v2}, Lmediabrowser/model/dlna/DeviceProfile;->setSubtitleProfiles([Lmediabrowser/model/dlna/SubtitleProfile;)V

    return-void
.end method
