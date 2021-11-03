.class public Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;
.super Ljava/lang/Object;
.source "MediaCodecCapabilitiesTest.java"


# static fields
.field private static final IFRAME_INTERVAL:I = 0xa

.field private static final PLAY_TIME_MS:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "MediaCodecCapabilitiesTest"

.field private static final TIMEOUT_US:I = 0xf4240


# instance fields
.field private final mAllCodecs:Landroid/media/MediaCodecList;

.field private final mAllInfos:[Landroid/media/MediaCodecInfo;

.field private final mRegularCodecs:Landroid/media/MediaCodecList;

.field private final mRegularInfos:[Landroid/media/MediaCodecInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    iput-object v0, p0, Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;->mRegularCodecs:Landroid/media/MediaCodecList;

    .line 20
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    iput-object v0, p0, Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;->mAllCodecs:Landroid/media/MediaCodecList;

    .line 22
    iget-object v0, p0, Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;->mRegularCodecs:Landroid/media/MediaCodecList;

    .line 23
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;->mRegularInfos:[Landroid/media/MediaCodecInfo;

    .line 24
    iget-object v0, p0, Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;->mAllCodecs:Landroid/media/MediaCodecList;

    .line 25
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;->mAllInfos:[Landroid/media/MediaCodecInfo;

    return-void
.end method

.method private checkDecoder(Ljava/lang/String;II)Z
    .locals 3

    .line 44
    invoke-direct {p0, p1, p2, p3}, Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;->hasDecoder(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " decoder for profile "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and level "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/Object;

    invoke-interface {v0, p1, p3}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return p2

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private hasDecoder(Ljava/lang/String;II)Z
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0, p2, p3}, Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;->supports(Ljava/lang/String;ZII)Z

    move-result p1

    return p1
.end method

.method private supports(Ljava/lang/String;ZII)Z
    .locals 11

    .line 56
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 57
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    .line 58
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-eq p2, v5, :cond_0

    goto :goto_3

    .line 62
    :cond_0
    :try_start_0
    invoke-virtual {v4, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v4

    .line 63
    iget-object v4, v4, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 64
    iget v8, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-eq v8, p3, :cond_1

    goto :goto_2

    :cond_1
    const-string v8, "video/3gpp"

    .line 69
    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    .line 70
    iget v8, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-eq v8, p4, :cond_2

    iget v8, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/16 v10, 0x10

    if-ne v8, v10, :cond_2

    if-le p4, v9, :cond_2

    goto :goto_2

    .line 74
    :cond_2
    iget v7, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v7, p4, :cond_3

    return v9

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method


# virtual methods
.method public supportsHevc()Z
    .locals 1

    const-string v0, "video/hevc"

    .line 28
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/MediaUtils;->checkDecoder([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public supportsHevcMain10()Z
    .locals 3

    const-string v0, "video/hevc"

    const/4 v1, 0x2

    const/16 v2, 0x4000

    .line 36
    invoke-direct {p0, v0, v1, v2}, Ltv/emby/embyatv/util/MediaCodecCapabilitiesTest;->hasDecoder(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public supportsMpeg2()Z
    .locals 1

    const-string v0, "video/mpeg2"

    .line 40
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/MediaUtils;->checkDecoder([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public supportsVc1()Z
    .locals 1

    .line 32
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isShield()Z

    move-result v0

    return v0
.end method
