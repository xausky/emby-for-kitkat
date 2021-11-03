.class public Lmediabrowser/model/dlna/DeviceProfile;
.super Ljava/lang/Object;
.source "DeviceProfile.java"


# instance fields
.field private AlbumArtPn:Ljava/lang/String;

.field private CodecProfiles:[Lmediabrowser/model/dlna/CodecProfile;

.field private ContainerProfiles:[Lmediabrowser/model/dlna/ContainerProfile;

.field private DirectPlayProfiles:[Lmediabrowser/model/dlna/DirectPlayProfile;

.field private EnableAlbumArtInDidl:Z

.field private EnableMSMediaReceiverRegistrar:Z

.field private EnableSingleAlbumArtLimit:Z

.field private EnableSingleSubtitleLimit:Z

.field private FriendlyName:Ljava/lang/String;

.field private Id:Ljava/lang/String;

.field private Identification:Lmediabrowser/model/dlna/DeviceIdentification;

.field private IgnoreTranscodeByteRangeRequests:Z

.field private Manufacturer:Ljava/lang/String;

.field private ManufacturerUrl:Ljava/lang/String;

.field private MaxAlbumArtHeight:I

.field private MaxAlbumArtWidth:I

.field private MaxIconHeight:Ljava/lang/Integer;

.field private MaxIconWidth:Ljava/lang/Integer;

.field private MaxStaticBitrate:Ljava/lang/Integer;

.field private MaxStaticMusicBitrate:Ljava/lang/Integer;

.field private MaxStreamingBitrate:Ljava/lang/Integer;

.field private ModelDescription:Ljava/lang/String;

.field private ModelName:Ljava/lang/String;

.field private ModelNumber:Ljava/lang/String;

.field private ModelUrl:Ljava/lang/String;

.field private MusicStreamingTranscodingBitrate:Ljava/lang/Integer;

.field private Name:Ljava/lang/String;

.field private ProfileType:Lmediabrowser/model/dlna/DeviceProfileType;

.field private ProtocolInfo:Ljava/lang/String;

.field private RequiresPlainFolders:Z

.field private RequiresPlainVideoItems:Z

.field private ResponseProfiles:[Lmediabrowser/model/dlna/ResponseProfile;

.field private SerialNumber:Ljava/lang/String;

.field private SonyAggregationFlags:Ljava/lang/String;

.field private SubtitleProfiles:[Lmediabrowser/model/dlna/SubtitleProfile;

.field private SupportedMediaTypes:Ljava/lang/String;

.field private TimelineOffsetSeconds:I

.field private TranscodingProfiles:[Lmediabrowser/model/dlna/TranscodingProfile;

.field private UserId:Ljava/lang/String;

.field private XDlnaCap:Ljava/lang/String;

.field private XDlnaDoc:Ljava/lang/String;

.field private XmlRootAttributes:[Lmediabrowser/model/dlna/XmlAttribute;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lmediabrowser/model/dlna/DeviceProfileType;->values()[Lmediabrowser/model/dlna/DeviceProfileType;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->ProfileType:Lmediabrowser/model/dlna/DeviceProfileType;

    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->MaxIconWidth:Ljava/lang/Integer;

    .line 223
    iput-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->MaxIconHeight:Ljava/lang/Integer;

    .line 233
    iput-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->MaxStreamingBitrate:Ljava/lang/Integer;

    .line 242
    iput-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->MaxStaticBitrate:Ljava/lang/Integer;

    .line 252
    iput-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->MusicStreamingTranscodingBitrate:Ljava/lang/Integer;

    .line 261
    iput-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->MaxStaticMusicBitrate:Ljava/lang/Integer;

    .line 446
    new-array v0, v1, [Lmediabrowser/model/dlna/DirectPlayProfile;

    invoke-virtual {p0, v0}, Lmediabrowser/model/dlna/DeviceProfile;->setDirectPlayProfiles([Lmediabrowser/model/dlna/DirectPlayProfile;)V

    .line 447
    new-array v0, v1, [Lmediabrowser/model/dlna/TranscodingProfile;

    invoke-virtual {p0, v0}, Lmediabrowser/model/dlna/DeviceProfile;->setTranscodingProfiles([Lmediabrowser/model/dlna/TranscodingProfile;)V

    .line 448
    new-array v0, v1, [Lmediabrowser/model/dlna/ResponseProfile;

    invoke-virtual {p0, v0}, Lmediabrowser/model/dlna/DeviceProfile;->setResponseProfiles([Lmediabrowser/model/dlna/ResponseProfile;)V

    .line 449
    new-array v0, v1, [Lmediabrowser/model/dlna/CodecProfile;

    invoke-virtual {p0, v0}, Lmediabrowser/model/dlna/DeviceProfile;->setCodecProfiles([Lmediabrowser/model/dlna/CodecProfile;)V

    .line 450
    new-array v0, v1, [Lmediabrowser/model/dlna/ContainerProfile;

    invoke-virtual {p0, v0}, Lmediabrowser/model/dlna/DeviceProfile;->setContainerProfiles([Lmediabrowser/model/dlna/ContainerProfile;)V

    .line 451
    new-array v0, v1, [Lmediabrowser/model/dlna/SubtitleProfile;

    invoke-virtual {p0, v0}, Lmediabrowser/model/dlna/DeviceProfile;->setSubtitleProfiles([Lmediabrowser/model/dlna/SubtitleProfile;)V

    .line 453
    new-array v0, v1, [Lmediabrowser/model/dlna/XmlAttribute;

    invoke-virtual {p0, v0}, Lmediabrowser/model/dlna/DeviceProfile;->setXmlRootAttributes([Lmediabrowser/model/dlna/XmlAttribute;)V

    const-string v0, "Audio,Photo,Video"

    .line 455
    invoke-virtual {p0, v0}, Lmediabrowser/model/dlna/DeviceProfile;->setSupportedMediaTypes(Ljava/lang/String;)V

    const v0, 0x7a1200

    .line 456
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmediabrowser/model/dlna/DeviceProfile;->setMaxStreamingBitrate(Ljava/lang/Integer;)V

    .line 457
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmediabrowser/model/dlna/DeviceProfile;->setMaxStaticBitrate(Ljava/lang/Integer;)V

    const v0, 0x1f400

    .line 458
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmediabrowser/model/dlna/DeviceProfile;->setMusicStreamingTranscodingBitrate(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final GetAudioMediaProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lmediabrowser/model/dlna/ResponseProfile;
    .locals 10

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const/16 v0, 0x2e

    .line 534
    invoke-static {p1, v0}, Lmediabrowser/model/extensions/StringHelper;->TrimStart(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    .line 536
    invoke-virtual {p0}, Lmediabrowser/model/dlna/DeviceProfile;->getResponseProfiles()[Lmediabrowser/model/dlna/ResponseProfile;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_8

    aget-object v4, v0, v3

    .line 538
    invoke-virtual {v4}, Lmediabrowser/model/dlna/ResponseProfile;->getType()Lmediabrowser/model/dlna/DlnaProfileType;

    move-result-object v5

    sget-object v6, Lmediabrowser/model/dlna/DlnaProfileType;->Audio:Lmediabrowser/model/dlna/DlnaProfileType;

    if-eq v5, v6, :cond_1

    goto :goto_5

    .line 543
    :cond_1
    invoke-virtual {v4}, Lmediabrowser/model/dlna/ResponseProfile;->GetContainers()Ljava/util/ArrayList;

    move-result-object v5

    .line 544
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    invoke-static {v5, p1}, Lmediabrowser/model/extensions/ListHelper;->ContainsIgnoreCase(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_5

    .line 549
    :cond_2
    invoke-virtual {v4}, Lmediabrowser/model/dlna/ResponseProfile;->GetAudioCodecs()Ljava/util/ArrayList;

    move-result-object v5

    .line 550
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    if-eqz p2, :cond_3

    move-object v6, p2

    goto :goto_2

    :cond_3
    const-string v6, ""

    :goto_2
    invoke-static {v5, v6}, Lmediabrowser/model/extensions/ListHelper;->ContainsIgnoreCase(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_5

    .line 555
    :cond_4
    new-instance v5, Lmediabrowser/model/dlna/ConditionProcessor;

    invoke-direct {v5}, Lmediabrowser/model/dlna/ConditionProcessor;-><init>()V

    .line 558
    invoke-virtual {v4}, Lmediabrowser/model/dlna/ResponseProfile;->getConditions()[Lmediabrowser/model/dlna/ProfileCondition;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_6

    aget-object v9, v6, v8

    .line 560
    invoke-virtual {v5, v9, p3, p4}, Lmediabrowser/model/dlna/ConditionProcessor;->IsAudioConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v9

    if-nez v9, :cond_5

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_7

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    return-object v4

    :cond_8
    const/4 p1, 0x0

    return-object p1
.end method

.method public final GetAudioTranscodingProfile(Ljava/lang/String;Ljava/lang/String;)Lmediabrowser/model/dlna/TranscodingProfile;
    .locals 6

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const/16 v0, 0x2e

    .line 476
    invoke-static {p1, v0}, Lmediabrowser/model/extensions/StringHelper;->TrimStart(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    .line 478
    invoke-virtual {p0}, Lmediabrowser/model/dlna/DeviceProfile;->getTranscodingProfiles()[Lmediabrowser/model/dlna/TranscodingProfile;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 480
    invoke-virtual {v3}, Lmediabrowser/model/dlna/TranscodingProfile;->getType()Lmediabrowser/model/dlna/DlnaProfileType;

    move-result-object v4

    sget-object v5, Lmediabrowser/model/dlna/DlnaProfileType;->Audio:Lmediabrowser/model/dlna/DlnaProfileType;

    if-eq v4, v5, :cond_1

    goto :goto_3

    .line 485
    :cond_1
    invoke-virtual {v3}, Lmediabrowser/model/dlna/TranscodingProfile;->getContainer()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_3

    .line 490
    :cond_2
    invoke-virtual {v3}, Lmediabrowser/model/dlna/TranscodingProfile;->GetAudioCodecs()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz p2, :cond_3

    move-object v5, p2

    goto :goto_2

    :cond_3
    const-string v5, ""

    :goto_2
    invoke-static {v4, v5}, Lmediabrowser/model/extensions/ListHelper;->ContainsIgnoreCase(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v3

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public final GetImageMediaProfile(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lmediabrowser/model/dlna/ResponseProfile;
    .locals 10

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const/16 v0, 0x2e

    .line 579
    invoke-static {p1, v0}, Lmediabrowser/model/extensions/StringHelper;->TrimStart(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    .line 581
    invoke-virtual {p0}, Lmediabrowser/model/dlna/DeviceProfile;->getResponseProfiles()[Lmediabrowser/model/dlna/ResponseProfile;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    .line 583
    invoke-virtual {v4}, Lmediabrowser/model/dlna/ResponseProfile;->getType()Lmediabrowser/model/dlna/DlnaProfileType;

    move-result-object v5

    sget-object v6, Lmediabrowser/model/dlna/DlnaProfileType;->Photo:Lmediabrowser/model/dlna/DlnaProfileType;

    if-eq v5, v6, :cond_1

    goto :goto_4

    .line 588
    :cond_1
    invoke-virtual {v4}, Lmediabrowser/model/dlna/ResponseProfile;->GetContainers()Ljava/util/ArrayList;

    move-result-object v5

    .line 589
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    invoke-static {v5, p1}, Lmediabrowser/model/extensions/ListHelper;->ContainsIgnoreCase(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_4

    .line 594
    :cond_2
    new-instance v5, Lmediabrowser/model/dlna/ConditionProcessor;

    invoke-direct {v5}, Lmediabrowser/model/dlna/ConditionProcessor;-><init>()V

    .line 597
    invoke-virtual {v4}, Lmediabrowser/model/dlna/ResponseProfile;->getConditions()[Lmediabrowser/model/dlna/ProfileCondition;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_4

    aget-object v9, v6, v8

    .line 599
    invoke-virtual {v5, v9, p2, p3}, Lmediabrowser/model/dlna/ConditionProcessor;->IsImageConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_5

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-object v4

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method public final GetSupportedMediaTypes()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 464
    invoke-virtual {p0}, Lmediabrowser/model/dlna/DeviceProfile;->getSupportedMediaTypes()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dlna/DeviceProfile;->getSupportedMediaTypes()Ljava/lang/String;

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

    .line 466
    invoke-static {v4}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 468
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public final GetVideoMediaProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Float;Ljava/lang/Integer;Lmediabrowser/model/mediainfo/TransportStreamTimestamp;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;)Lmediabrowser/model/dlna/ResponseProfile;
    .locals 29

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const/16 v1, 0x2e

    .line 618
    invoke-static {v0, v1}, Lmediabrowser/model/extensions/StringHelper;->TrimStart(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 620
    invoke-virtual/range {p0 .. p0}, Lmediabrowser/model/dlna/DeviceProfile;->getResponseProfiles()[Lmediabrowser/model/dlna/ResponseProfile;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_b

    aget-object v5, v1, v4

    .line 622
    invoke-virtual {v5}, Lmediabrowser/model/dlna/ResponseProfile;->getType()Lmediabrowser/model/dlna/DlnaProfileType;

    move-result-object v6

    sget-object v7, Lmediabrowser/model/dlna/DlnaProfileType;->Video:Lmediabrowser/model/dlna/DlnaProfileType;

    if-eq v6, v7, :cond_1

    goto/16 :goto_7

    .line 627
    :cond_1
    invoke-virtual {v5}, Lmediabrowser/model/dlna/ResponseProfile;->GetContainers()Ljava/util/ArrayList;

    move-result-object v6

    .line 628
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    if-eqz v0, :cond_2

    move-object v7, v0

    goto :goto_2

    :cond_2
    const-string v7, ""

    :goto_2
    invoke-static {v6, v7}, Lmediabrowser/model/extensions/ListHelper;->ContainsIgnoreCase(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_7

    .line 633
    :cond_3
    invoke-virtual {v5}, Lmediabrowser/model/dlna/ResponseProfile;->GetAudioCodecs()Ljava/util/ArrayList;

    move-result-object v6

    .line 634
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    if-eqz p2, :cond_4

    move-object/from16 v8, p2

    goto :goto_3

    :cond_4
    const-string v8, ""

    :goto_3
    invoke-static {v6, v8}, Lmediabrowser/model/extensions/ListHelper;->ContainsIgnoreCase(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_7

    .line 639
    :cond_5
    invoke-virtual {v5}, Lmediabrowser/model/dlna/ResponseProfile;->GetVideoCodecs()Ljava/util/ArrayList;

    move-result-object v6

    .line 640
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_7

    if-eqz p3, :cond_6

    move-object/from16 v9, p3

    goto :goto_4

    :cond_6
    const-string v9, ""

    :goto_4
    invoke-static {v6, v9}, Lmediabrowser/model/extensions/ListHelper;->ContainsIgnoreCase(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_7

    .line 645
    :cond_7
    new-instance v6, Lmediabrowser/model/dlna/ConditionProcessor;

    invoke-direct {v6}, Lmediabrowser/model/dlna/ConditionProcessor;-><init>()V

    .line 648
    invoke-virtual {v5}, Lmediabrowser/model/dlna/ResponseProfile;->getConditions()[Lmediabrowser/model/dlna/ProfileCondition;

    move-result-object v15

    array-length v14, v15

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v14, :cond_9

    aget-object v10, v15, v13

    move-object v9, v6

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v26, v13

    move-object/from16 v13, p6

    move/from16 v27, v14

    move-object/from16 v14, p7

    move-object/from16 v28, v15

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    move-object/from16 v18, p11

    move-object/from16 v19, p12

    move-object/from16 v20, p13

    move-object/from16 v21, p14

    move-object/from16 v22, p15

    move-object/from16 v23, p16

    move-object/from16 v24, p17

    move-object/from16 v25, p18

    .line 650
    invoke-virtual/range {v9 .. v25}, Lmediabrowser/model/dlna/ConditionProcessor;->IsVideoConditionSatisfied(Lmediabrowser/model/dlna/ProfileCondition;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Float;Ljava/lang/Integer;Lmediabrowser/model/mediainfo/TransportStreamTimestamp;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v9

    if-nez v9, :cond_8

    const/4 v6, 0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v13, v26, 0x1

    move/from16 v14, v27

    move-object/from16 v15, v28

    goto :goto_5

    :cond_9
    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_a

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_a
    return-object v5

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public final GetVideoTranscodingProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmediabrowser/model/dlna/TranscodingProfile;
    .locals 6

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const/16 v0, 0x2e

    .line 502
    invoke-static {p1, v0}, Lmediabrowser/model/extensions/StringHelper;->TrimStart(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    .line 504
    invoke-virtual {p0}, Lmediabrowser/model/dlna/DeviceProfile;->getTranscodingProfiles()[Lmediabrowser/model/dlna/TranscodingProfile;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_7

    aget-object v3, v0, v2

    .line 506
    invoke-virtual {v3}, Lmediabrowser/model/dlna/TranscodingProfile;->getType()Lmediabrowser/model/dlna/DlnaProfileType;

    move-result-object v4

    sget-object v5, Lmediabrowser/model/dlna/DlnaProfileType;->Video:Lmediabrowser/model/dlna/DlnaProfileType;

    if-eq v4, v5, :cond_1

    goto :goto_4

    .line 511
    :cond_1
    invoke-virtual {v3}, Lmediabrowser/model/dlna/TranscodingProfile;->getContainer()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_4

    .line 516
    :cond_2
    invoke-virtual {v3}, Lmediabrowser/model/dlna/TranscodingProfile;->GetAudioCodecs()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz p2, :cond_3

    move-object v5, p2

    goto :goto_2

    :cond_3
    const-string v5, ""

    :goto_2
    invoke-static {v4, v5}, Lmediabrowser/model/extensions/ListHelper;->ContainsIgnoreCase(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_4

    .line 521
    :cond_4
    invoke-virtual {v3}, Lmediabrowser/model/dlna/TranscodingProfile;->getVideoCodec()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const-string v4, ""

    .line 522
    :goto_3
    invoke-static {p3, v4}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return-object v3

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getAlbumArtPn()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->AlbumArtPn:Ljava/lang/String;

    return-object v0
.end method

.method public final getCodecProfiles()[Lmediabrowser/model/dlna/CodecProfile;
    .locals 1

    .line 418
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->CodecProfiles:[Lmediabrowser/model/dlna/CodecProfile;

    return-object v0
.end method

.method public final getContainerProfiles()[Lmediabrowser/model/dlna/ContainerProfile;
    .locals 1

    .line 408
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->ContainerProfiles:[Lmediabrowser/model/dlna/ContainerProfile;

    return-object v0
.end method

.method public final getDirectPlayProfiles()[Lmediabrowser/model/dlna/DirectPlayProfile;
    .locals 1

    .line 383
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->DirectPlayProfiles:[Lmediabrowser/model/dlna/DirectPlayProfile;

    return-object v0
.end method

.method public final getEnableAlbumArtInDidl()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->EnableAlbumArtInDidl:Z

    return v0
.end method

.method public final getEnableMSMediaReceiverRegistrar()Z
    .locals 1

    .line 349
    iget-boolean v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->EnableMSMediaReceiverRegistrar:Z

    return v0
.end method

.method public final getEnableSingleAlbumArtLimit()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->EnableSingleAlbumArtLimit:Z

    return v0
.end method

.method public final getEnableSingleSubtitleLimit()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->EnableSingleSubtitleLimit:Z

    return v0
.end method

.method public final getFriendlyName()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->FriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public final getIdentification()Lmediabrowser/model/dlna/DeviceIdentification;
    .locals 1

    .line 57
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->Identification:Lmediabrowser/model/dlna/DeviceIdentification;

    return-object v0
.end method

.method public final getIgnoreTranscodeByteRangeRequests()Z
    .locals 1

    .line 358
    iget-boolean v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->IgnoreTranscodeByteRangeRequests:Z

    return v0
.end method

.method public final getManufacturer()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->Manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public final getManufacturerUrl()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->ManufacturerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxAlbumArtHeight()I
    .locals 1

    .line 207
    iget v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->MaxAlbumArtHeight:I

    return v0
.end method

.method public final getMaxAlbumArtWidth()I
    .locals 1

    .line 198
    iget v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->MaxAlbumArtWidth:I

    return v0
.end method

.method public final getMaxIconHeight()Ljava/lang/Integer;
    .locals 1

    .line 226
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->MaxIconHeight:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMaxIconWidth()Ljava/lang/Integer;
    .locals 1

    .line 217
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->MaxIconWidth:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMaxStaticBitrate()Ljava/lang/Integer;
    .locals 1

    .line 245
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->MaxStaticBitrate:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMaxStaticMusicBitrate()Ljava/lang/Integer;
    .locals 1

    .line 264
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->MaxStaticMusicBitrate:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMaxStreamingBitrate()Ljava/lang/Integer;
    .locals 1

    .line 236
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->MaxStreamingBitrate:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getModelDescription()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->ModelDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getModelName()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->ModelName:Ljava/lang/String;

    return-object v0
.end method

.method public final getModelNumber()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->ModelNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getModelUrl()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->ModelUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getMusicStreamingTranscodingBitrate()Ljava/lang/Integer;
    .locals 1

    .line 255
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->MusicStreamingTranscodingBitrate:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getProfileType()Lmediabrowser/model/dlna/DeviceProfileType;
    .locals 1

    .line 42
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->ProfileType:Lmediabrowser/model/dlna/DeviceProfileType;

    return-object v0
.end method

.method public final getProtocolInfo()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->ProtocolInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequiresPlainFolders()Z
    .locals 1

    .line 339
    iget-boolean v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->RequiresPlainFolders:Z

    return v0
.end method

.method public final getRequiresPlainVideoItems()Z
    .locals 1

    .line 330
    iget-boolean v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->RequiresPlainVideoItems:Z

    return v0
.end method

.method public final getResponseProfiles()[Lmediabrowser/model/dlna/ResponseProfile;
    .locals 1

    .line 427
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->ResponseProfiles:[Lmediabrowser/model/dlna/ResponseProfile;

    return-object v0
.end method

.method public final getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->SerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getSonyAggregationFlags()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->SonyAggregationFlags:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubtitleProfiles()[Lmediabrowser/model/dlna/SubtitleProfile;
    .locals 1

    .line 437
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->SubtitleProfiles:[Lmediabrowser/model/dlna/SubtitleProfile;

    return-object v0
.end method

.method public final getSupportedMediaTypes()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->SupportedMediaTypes:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimelineOffsetSeconds()I
    .locals 1

    .line 321
    iget v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->TimelineOffsetSeconds:I

    return v0
.end method

.method public final getTranscodingProfiles()[Lmediabrowser/model/dlna/TranscodingProfile;
    .locals 1

    .line 398
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->TranscodingProfiles:[Lmediabrowser/model/dlna/TranscodingProfile;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public final getXDlnaCap()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->XDlnaCap:Ljava/lang/String;

    return-object v0
.end method

.method public final getXDlnaDoc()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->XDlnaDoc:Ljava/lang/String;

    return-object v0
.end method

.method public final getXmlRootAttributes()[Lmediabrowser/model/dlna/XmlAttribute;
    .locals 1

    .line 368
    iget-object v0, p0, Lmediabrowser/model/dlna/DeviceProfile;->XmlRootAttributes:[Lmediabrowser/model/dlna/XmlAttribute;

    return-object v0
.end method

.method public final setAlbumArtPn(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->AlbumArtPn:Ljava/lang/String;

    return-void
.end method

.method public final setCodecProfiles([Lmediabrowser/model/dlna/CodecProfile;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->CodecProfiles:[Lmediabrowser/model/dlna/CodecProfile;

    return-void
.end method

.method public final setContainerProfiles([Lmediabrowser/model/dlna/ContainerProfile;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->ContainerProfiles:[Lmediabrowser/model/dlna/ContainerProfile;

    return-void
.end method

.method public final setDirectPlayProfiles([Lmediabrowser/model/dlna/DirectPlayProfile;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->DirectPlayProfiles:[Lmediabrowser/model/dlna/DirectPlayProfile;

    return-void
.end method

.method public final setEnableAlbumArtInDidl(Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->EnableAlbumArtInDidl:Z

    return-void
.end method

.method public final setEnableMSMediaReceiverRegistrar(Z)V
    .locals 0

    .line 353
    iput-boolean p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->EnableMSMediaReceiverRegistrar:Z

    return-void
.end method

.method public final setEnableSingleAlbumArtLimit(Z)V
    .locals 0

    .line 153
    iput-boolean p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->EnableSingleAlbumArtLimit:Z

    return-void
.end method

.method public final setEnableSingleSubtitleLimit(Z)V
    .locals 0

    .line 162
    iput-boolean p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->EnableSingleSubtitleLimit:Z

    return-void
.end method

.method public final setFriendlyName(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->FriendlyName:Ljava/lang/String;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->Id:Ljava/lang/String;

    return-void
.end method

.method public final setIdentification(Lmediabrowser/model/dlna/DeviceIdentification;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->Identification:Lmediabrowser/model/dlna/DeviceIdentification;

    return-void
.end method

.method public final setIgnoreTranscodeByteRangeRequests(Z)V
    .locals 0

    .line 362
    iput-boolean p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->IgnoreTranscodeByteRangeRequests:Z

    return-void
.end method

.method public final setManufacturer(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->Manufacturer:Ljava/lang/String;

    return-void
.end method

.method public final setManufacturerUrl(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->ManufacturerUrl:Ljava/lang/String;

    return-void
.end method

.method public final setMaxAlbumArtHeight(I)V
    .locals 0

    .line 211
    iput p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->MaxAlbumArtHeight:I

    return-void
.end method

.method public final setMaxAlbumArtWidth(I)V
    .locals 0

    .line 202
    iput p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->MaxAlbumArtWidth:I

    return-void
.end method

.method public final setMaxIconHeight(Ljava/lang/Integer;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->MaxIconHeight:Ljava/lang/Integer;

    return-void
.end method

.method public final setMaxIconWidth(Ljava/lang/Integer;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->MaxIconWidth:Ljava/lang/Integer;

    return-void
.end method

.method public final setMaxStaticBitrate(Ljava/lang/Integer;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->MaxStaticBitrate:Ljava/lang/Integer;

    return-void
.end method

.method public final setMaxStaticMusicBitrate(Ljava/lang/Integer;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->MaxStaticMusicBitrate:Ljava/lang/Integer;

    return-void
.end method

.method public final setMaxStreamingBitrate(Ljava/lang/Integer;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->MaxStreamingBitrate:Ljava/lang/Integer;

    return-void
.end method

.method public final setModelDescription(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->ModelDescription:Ljava/lang/String;

    return-void
.end method

.method public final setModelName(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->ModelName:Ljava/lang/String;

    return-void
.end method

.method public final setModelNumber(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->ModelNumber:Ljava/lang/String;

    return-void
.end method

.method public final setModelUrl(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->ModelUrl:Ljava/lang/String;

    return-void
.end method

.method public final setMusicStreamingTranscodingBitrate(Ljava/lang/Integer;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->MusicStreamingTranscodingBitrate:Ljava/lang/Integer;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->Name:Ljava/lang/String;

    return-void
.end method

.method public final setProfileType(Lmediabrowser/model/dlna/DeviceProfileType;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->ProfileType:Lmediabrowser/model/dlna/DeviceProfileType;

    return-void
.end method

.method public final setProtocolInfo(Ljava/lang/String;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->ProtocolInfo:Ljava/lang/String;

    return-void
.end method

.method public final setRequiresPlainFolders(Z)V
    .locals 0

    .line 343
    iput-boolean p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->RequiresPlainFolders:Z

    return-void
.end method

.method public final setRequiresPlainVideoItems(Z)V
    .locals 0

    .line 334
    iput-boolean p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->RequiresPlainVideoItems:Z

    return-void
.end method

.method public final setResponseProfiles([Lmediabrowser/model/dlna/ResponseProfile;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->ResponseProfiles:[Lmediabrowser/model/dlna/ResponseProfile;

    return-void
.end method

.method public final setSerialNumber(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->SerialNumber:Ljava/lang/String;

    return-void
.end method

.method public final setSonyAggregationFlags(Ljava/lang/String;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->SonyAggregationFlags:Ljava/lang/String;

    return-void
.end method

.method public final setSubtitleProfiles([Lmediabrowser/model/dlna/SubtitleProfile;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->SubtitleProfiles:[Lmediabrowser/model/dlna/SubtitleProfile;

    return-void
.end method

.method public final setSupportedMediaTypes(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->SupportedMediaTypes:Ljava/lang/String;

    return-void
.end method

.method public final setTimelineOffsetSeconds(I)V
    .locals 0

    .line 325
    iput p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->TimelineOffsetSeconds:I

    return-void
.end method

.method public final setTranscodingProfiles([Lmediabrowser/model/dlna/TranscodingProfile;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->TranscodingProfiles:[Lmediabrowser/model/dlna/TranscodingProfile;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->UserId:Ljava/lang/String;

    return-void
.end method

.method public final setXDlnaCap(Ljava/lang/String;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->XDlnaCap:Ljava/lang/String;

    return-void
.end method

.method public final setXDlnaDoc(Ljava/lang/String;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->XDlnaDoc:Ljava/lang/String;

    return-void
.end method

.method public final setXmlRootAttributes([Lmediabrowser/model/dlna/XmlAttribute;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lmediabrowser/model/dlna/DeviceProfile;->XmlRootAttributes:[Lmediabrowser/model/dlna/XmlAttribute;

    return-void
.end method
