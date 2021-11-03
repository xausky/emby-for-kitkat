.class public Lmediabrowser/model/entities/MediaStream;
.super Ljava/lang/Object;
.source "MediaStream.java"


# instance fields
.field private AspectRatio:Ljava/lang/String;

.field private AverageFrameRate:Ljava/lang/Float;

.field private BitDepth:Ljava/lang/Integer;

.field private BitRate:Ljava/lang/Integer;

.field private ChannelLayout:Ljava/lang/String;

.field private Channels:Ljava/lang/Integer;

.field private Codec:Ljava/lang/String;

.field private CodecTag:Ljava/lang/String;

.field private CodecTimeBase:Ljava/lang/String;

.field private Comment:Ljava/lang/String;

.field private DeliveryMethod:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

.field private DeliveryUrl:Ljava/lang/String;

.field private DisplayTitle:Ljava/lang/String;

.field private ExternalId:Ljava/lang/String;

.field private Height:Ljava/lang/Integer;

.field private Index:I

.field private IsAVC:Ljava/lang/Boolean;

.field private IsAnamorphic:Ljava/lang/Boolean;

.field private IsDefault:Z

.field private IsExternal:Z

.field private IsExternalUrl:Ljava/lang/Boolean;

.field private IsForced:Z

.field private IsInterlaced:Z

.field private Language:Ljava/lang/String;

.field private Level:Ljava/lang/Double;

.field private NalLengthSize:Ljava/lang/String;

.field private PacketLength:Ljava/lang/Integer;

.field private Path:Ljava/lang/String;

.field private PixelFormat:Ljava/lang/String;

.field private Profile:Ljava/lang/String;

.field private RealFrameRate:Ljava/lang/Float;

.field private RefFrames:Ljava/lang/Integer;

.field private SampleRate:Ljava/lang/Integer;

.field private Score:Ljava/lang/Integer;

.field private SupportsExternalStream:Z

.field private TimeBase:Ljava/lang/String;

.field private Title:Ljava/lang/String;

.field private Type:Lmediabrowser/model/entities/MediaStreamType;

.field private Width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lmediabrowser/model/entities/MediaStream;->IsAVC:Ljava/lang/Boolean;

    .line 165
    iput-object v0, p0, Lmediabrowser/model/entities/MediaStream;->BitRate:Ljava/lang/Integer;

    .line 180
    iput-object v0, p0, Lmediabrowser/model/entities/MediaStream;->BitDepth:Ljava/lang/Integer;

    .line 195
    iput-object v0, p0, Lmediabrowser/model/entities/MediaStream;->RefFrames:Ljava/lang/Integer;

    .line 210
    iput-object v0, p0, Lmediabrowser/model/entities/MediaStream;->PacketLength:Ljava/lang/Integer;

    .line 225
    iput-object v0, p0, Lmediabrowser/model/entities/MediaStream;->Channels:Ljava/lang/Integer;

    .line 240
    iput-object v0, p0, Lmediabrowser/model/entities/MediaStream;->SampleRate:Ljava/lang/Integer;

    .line 285
    iput-object v0, p0, Lmediabrowser/model/entities/MediaStream;->Height:Ljava/lang/Integer;

    .line 300
    iput-object v0, p0, Lmediabrowser/model/entities/MediaStream;->Width:Ljava/lang/Integer;

    .line 315
    iput-object v0, p0, Lmediabrowser/model/entities/MediaStream;->AverageFrameRate:Ljava/lang/Float;

    .line 330
    iput-object v0, p0, Lmediabrowser/model/entities/MediaStream;->RealFrameRate:Ljava/lang/Float;

    .line 360
    invoke-static {}, Lmediabrowser/model/entities/MediaStreamType;->values()[Lmediabrowser/model/entities/MediaStreamType;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lmediabrowser/model/entities/MediaStream;->Type:Lmediabrowser/model/entities/MediaStreamType;

    .line 405
    iput-object v0, p0, Lmediabrowser/model/entities/MediaStream;->Score:Ljava/lang/Integer;

    .line 435
    iput-object v0, p0, Lmediabrowser/model/entities/MediaStream;->DeliveryMethod:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    .line 463
    iput-object v0, p0, Lmediabrowser/model/entities/MediaStream;->IsExternalUrl:Ljava/lang/Boolean;

    .line 592
    iput-object v0, p0, Lmediabrowser/model/entities/MediaStream;->Level:Ljava/lang/Double;

    .line 607
    iput-object v0, p0, Lmediabrowser/model/entities/MediaStream;->IsAnamorphic:Ljava/lang/Boolean;

    return-void
.end method

.method public static IsTextFormat(Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    const-string v0, "pgs"

    .line 494
    invoke-static {p0, v0}, Lmediabrowser/model/extensions/StringHelper;->IndexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "dvd"

    invoke-static {p0, v0}, Lmediabrowser/model/extensions/StringHelper;->IndexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    const-string v0, "dvbsub"

    invoke-static {p0, v0}, Lmediabrowser/model/extensions/StringHelper;->IndexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    const-string v0, "sub"

    invoke-static {p0, v0}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method public final SupportsSubtitleConversionTo(Ljava/lang/String;)Z
    .locals 3

    .line 499
    invoke-virtual {p0}, Lmediabrowser/model/entities/MediaStream;->getIsTextSubtitleStream()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 505
    :cond_0
    invoke-virtual {p0}, Lmediabrowser/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ass"

    invoke-static {v0, v2}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 509
    :cond_1
    invoke-virtual {p0}, Lmediabrowser/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ssa"

    invoke-static {v0, v2}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "ass"

    .line 515
    invoke-static {p1, v0}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const-string v0, "ssa"

    .line 519
    invoke-static {p1, v0}, Lmediabrowser/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public final getAspectRatio()Ljava/lang/String;
    .locals 1

    .line 378
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->AspectRatio:Ljava/lang/String;

    return-object v0
.end method

.method public final getAverageFrameRate()Ljava/lang/Float;
    .locals 1

    .line 318
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->AverageFrameRate:Ljava/lang/Float;

    return-object v0
.end method

.method public final getBitDepth()Ljava/lang/Integer;
    .locals 1

    .line 183
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->BitDepth:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getBitRate()Ljava/lang/Integer;
    .locals 1

    .line 168
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->BitRate:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getChannelLayout()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->ChannelLayout:Ljava/lang/String;

    return-object v0
.end method

.method public final getChannels()Ljava/lang/Integer;
    .locals 1

    .line 228
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->Channels:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getCodec()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->Codec:Ljava/lang/String;

    return-object v0
.end method

.method public final getCodecTag()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->CodecTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getCodecTimeBase()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->CodecTimeBase:Ljava/lang/String;

    return-object v0
.end method

.method public final getComment()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->Comment:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeliveryMethod()Lmediabrowser/model/dlna/SubtitleDeliveryMethod;
    .locals 1

    .line 438
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->DeliveryMethod:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    return-object v0
.end method

.method public final getDeliveryUrl()Ljava/lang/String;
    .locals 1

    .line 452
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->DeliveryUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayTitle()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->DisplayTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getExternalId()Ljava/lang/String;
    .locals 1

    .line 565
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->ExternalId:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeight()Ljava/lang/Integer;
    .locals 1

    .line 288
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->Height:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    .line 393
    iget v0, p0, Lmediabrowser/model/entities/MediaStream;->Index:I

    return v0
.end method

.method public final getIsAVC()Ljava/lang/Boolean;
    .locals 1

    .line 138
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->IsAVC:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsAnamorphic()Ljava/lang/Boolean;
    .locals 1

    .line 610
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->IsAnamorphic:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsDefault()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Lmediabrowser/model/entities/MediaStream;->IsDefault:Z

    return v0
.end method

.method public final getIsExternal()Z
    .locals 1

    .line 423
    iget-boolean v0, p0, Lmediabrowser/model/entities/MediaStream;->IsExternal:Z

    return v0
.end method

.method public final getIsExternalUrl()Ljava/lang/Boolean;
    .locals 1

    .line 466
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->IsExternalUrl:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsForced()Z
    .locals 1

    .line 273
    iget-boolean v0, p0, Lmediabrowser/model/entities/MediaStream;->IsForced:Z

    return v0
.end method

.method public final getIsInterlaced()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lmediabrowser/model/entities/MediaStream;->IsInterlaced:Z

    return v0
.end method

.method public final getIsTextSubtitleStream()Z
    .locals 3

    .line 475
    invoke-virtual {p0}, Lmediabrowser/model/entities/MediaStream;->getType()Lmediabrowser/model/entities/MediaStreamType;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/entities/MediaStreamType;->Subtitle:Lmediabrowser/model/entities/MediaStreamType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 480
    :cond_0
    invoke-virtual {p0}, Lmediabrowser/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmediabrowser/model/entities/MediaStream;->getIsExternal()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 485
    :cond_1
    invoke-virtual {p0}, Lmediabrowser/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmediabrowser/model/entities/MediaStream;->IsTextFormat(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->Language:Ljava/lang/String;

    return-object v0
.end method

.method public final getLevel()Ljava/lang/Double;
    .locals 1

    .line 595
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->Level:Ljava/lang/Double;

    return-object v0
.end method

.method public final getNalLengthSize()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->NalLengthSize:Ljava/lang/String;

    return-object v0
.end method

.method public final getPacketLength()Ljava/lang/Integer;
    .locals 1

    .line 213
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->PacketLength:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .line 550
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->Path:Ljava/lang/String;

    return-object v0
.end method

.method public final getPixelFormat()Ljava/lang/String;
    .locals 1

    .line 580
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->PixelFormat:Ljava/lang/String;

    return-object v0
.end method

.method public final getProfile()Ljava/lang/String;
    .locals 1

    .line 348
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->Profile:Ljava/lang/String;

    return-object v0
.end method

.method public final getRealFrameRate()Ljava/lang/Float;
    .locals 1

    .line 333
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->RealFrameRate:Ljava/lang/Float;

    return-object v0
.end method

.method public final getRefFrames()Ljava/lang/Integer;
    .locals 1

    .line 198
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->RefFrames:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSampleRate()Ljava/lang/Integer;
    .locals 1

    .line 243
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->SampleRate:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getScore()Ljava/lang/Integer;
    .locals 1

    .line 408
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->Score:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSupportsExternalStream()Z
    .locals 1

    .line 535
    iget-boolean v0, p0, Lmediabrowser/model/entities/MediaStream;->SupportsExternalStream:Z

    return v0
.end method

.method public final getTimeBase()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->TimeBase:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->Title:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lmediabrowser/model/entities/MediaStreamType;
    .locals 1

    .line 363
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->Type:Lmediabrowser/model/entities/MediaStreamType;

    return-object v0
.end method

.method public final getWidth()Ljava/lang/Integer;
    .locals 1

    .line 303
    iget-object v0, p0, Lmediabrowser/model/entities/MediaStream;->Width:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setAspectRatio(Ljava/lang/String;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->AspectRatio:Ljava/lang/String;

    return-void
.end method

.method public final setAverageFrameRate(Ljava/lang/Float;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->AverageFrameRate:Ljava/lang/Float;

    return-void
.end method

.method public final setBitDepth(Ljava/lang/Integer;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->BitDepth:Ljava/lang/Integer;

    return-void
.end method

.method public final setBitRate(Ljava/lang/Integer;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->BitRate:Ljava/lang/Integer;

    return-void
.end method

.method public final setChannelLayout(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->ChannelLayout:Ljava/lang/String;

    return-void
.end method

.method public final setChannels(Ljava/lang/Integer;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->Channels:Ljava/lang/Integer;

    return-void
.end method

.method public final setCodec(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->Codec:Ljava/lang/String;

    return-void
.end method

.method public final setCodecTag(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->CodecTag:Ljava/lang/String;

    return-void
.end method

.method public final setCodecTimeBase(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->CodecTimeBase:Ljava/lang/String;

    return-void
.end method

.method public final setComment(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->Comment:Ljava/lang/String;

    return-void
.end method

.method public final setDeliveryMethod(Lmediabrowser/model/dlna/SubtitleDeliveryMethod;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->DeliveryMethod:Lmediabrowser/model/dlna/SubtitleDeliveryMethod;

    return-void
.end method

.method public final setDeliveryUrl(Ljava/lang/String;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->DeliveryUrl:Ljava/lang/String;

    return-void
.end method

.method public final setDisplayTitle(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->DisplayTitle:Ljava/lang/String;

    return-void
.end method

.method public final setExternalId(Ljava/lang/String;)V
    .locals 0

    .line 569
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->ExternalId:Ljava/lang/String;

    return-void
.end method

.method public final setHeight(Ljava/lang/Integer;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->Height:Ljava/lang/Integer;

    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    .line 397
    iput p1, p0, Lmediabrowser/model/entities/MediaStream;->Index:I

    return-void
.end method

.method public final setIsAVC(Ljava/lang/Boolean;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->IsAVC:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsAnamorphic(Ljava/lang/Boolean;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->IsAnamorphic:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsDefault(Z)V
    .locals 0

    .line 262
    iput-boolean p1, p0, Lmediabrowser/model/entities/MediaStream;->IsDefault:Z

    return-void
.end method

.method public final setIsExternal(Z)V
    .locals 0

    .line 427
    iput-boolean p1, p0, Lmediabrowser/model/entities/MediaStream;->IsExternal:Z

    return-void
.end method

.method public final setIsExternalUrl(Ljava/lang/Boolean;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->IsExternalUrl:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsForced(Z)V
    .locals 0

    .line 277
    iput-boolean p1, p0, Lmediabrowser/model/entities/MediaStream;->IsForced:Z

    return-void
.end method

.method public final setIsInterlaced(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lmediabrowser/model/entities/MediaStream;->IsInterlaced:Z

    return-void
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->Language:Ljava/lang/String;

    return-void
.end method

.method public final setLevel(Ljava/lang/Double;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->Level:Ljava/lang/Double;

    return-void
.end method

.method public final setNalLengthSize(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->NalLengthSize:Ljava/lang/String;

    return-void
.end method

.method public final setPacketLength(Ljava/lang/Integer;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->PacketLength:Ljava/lang/Integer;

    return-void
.end method

.method public final setPath(Ljava/lang/String;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->Path:Ljava/lang/String;

    return-void
.end method

.method public final setPixelFormat(Ljava/lang/String;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->PixelFormat:Ljava/lang/String;

    return-void
.end method

.method public final setProfile(Ljava/lang/String;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->Profile:Ljava/lang/String;

    return-void
.end method

.method public final setRealFrameRate(Ljava/lang/Float;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->RealFrameRate:Ljava/lang/Float;

    return-void
.end method

.method public final setRefFrames(Ljava/lang/Integer;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->RefFrames:Ljava/lang/Integer;

    return-void
.end method

.method public final setSampleRate(Ljava/lang/Integer;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->SampleRate:Ljava/lang/Integer;

    return-void
.end method

.method public final setScore(Ljava/lang/Integer;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->Score:Ljava/lang/Integer;

    return-void
.end method

.method public final setSupportsExternalStream(Z)V
    .locals 0

    .line 539
    iput-boolean p1, p0, Lmediabrowser/model/entities/MediaStream;->SupportsExternalStream:Z

    return-void
.end method

.method public final setTimeBase(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->TimeBase:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->Title:Ljava/lang/String;

    return-void
.end method

.method public final setType(Lmediabrowser/model/entities/MediaStreamType;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->Type:Lmediabrowser/model/entities/MediaStreamType;

    return-void
.end method

.method public final setWidth(Ljava/lang/Integer;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lmediabrowser/model/entities/MediaStream;->Width:Ljava/lang/Integer;

    return-void
.end method
