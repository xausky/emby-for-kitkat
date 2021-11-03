.class public Lmediabrowser/model/dto/MediaSourceInfo;
.super Ljava/lang/Object;
.source "MediaSourceInfo.java"


# instance fields
.field private Bitrate:Ljava/lang/Integer;

.field private BufferMs:Ljava/lang/Integer;

.field private Container:Ljava/lang/String;

.field private DefaultAudioStreamIndex:Ljava/lang/Integer;

.field private DefaultSubtitleStreamIndex:Ljava/lang/Integer;

.field private DirectStreamUrl:Ljava/lang/String;

.field private ETag:Ljava/lang/String;

.field private Formats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Id:Ljava/lang/String;

.field private IsInfiniteStream:Z

.field private IsRemote:Z

.field private IsoType:Lmediabrowser/model/entities/IsoType;

.field private LiveStreamId:Ljava/lang/String;

.field private MediaStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/entities/MediaStream;",
            ">;"
        }
    .end annotation
.end field

.field private Name:Ljava/lang/String;

.field private OpenToken:Ljava/lang/String;

.field private Path:Ljava/lang/String;

.field private PlayableStreamFileNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Protocol:Lmediabrowser/model/mediainfo/MediaProtocol;

.field private ReadAtNativeFramerate:Z

.field private RequiredHttpHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private RequiresClosing:Z

.field private RequiresOpening:Z

.field private RunTimeTicks:Ljava/lang/Long;

.field private Size:Ljava/lang/Long;

.field private SupportsDirectPlay:Z

.field private SupportsDirectStream:Z

.field private SupportsTranscoding:Z

.field private Timestamp:Lmediabrowser/model/mediainfo/TransportStreamTimestamp;

.field private TranscodingContainer:Ljava/lang/String;

.field private TranscodingSubProtocol:Ljava/lang/String;

.field private TranscodingUrl:Ljava/lang/String;

.field private Type:Lmediabrowser/model/dto/MediaSourceType;

.field private Video3DFormat:Lmediabrowser/model/entities/Video3DFormat;

.field private VideoType:Lmediabrowser/model/entities/VideoType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {}, Lmediabrowser/model/mediainfo/MediaProtocol;->values()[Lmediabrowser/model/mediainfo/MediaProtocol;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->Protocol:Lmediabrowser/model/mediainfo/MediaProtocol;

    .line 38
    invoke-static {}, Lmediabrowser/model/dto/MediaSourceType;->values()[Lmediabrowser/model/dto/MediaSourceType;

    move-result-object v0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->Type:Lmediabrowser/model/dto/MediaSourceType;

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->Size:Ljava/lang/Long;

    .line 96
    iput-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->RunTimeTicks:Ljava/lang/Long;

    .line 186
    iput-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->BufferMs:Ljava/lang/Integer;

    .line 196
    iput-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->VideoType:Lmediabrowser/model/entities/VideoType;

    .line 206
    iput-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->IsoType:Lmediabrowser/model/entities/IsoType;

    .line 216
    iput-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->Video3DFormat:Lmediabrowser/model/entities/Video3DFormat;

    .line 255
    iput-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->Bitrate:Ljava/lang/Integer;

    .line 265
    iput-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->Timestamp:Lmediabrowser/model/mediainfo/TransportStreamTimestamp;

    .line 332
    iput-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->DefaultAudioStreamIndex:Ljava/lang/Integer;

    .line 341
    iput-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->DefaultSubtitleStreamIndex:Ljava/lang/Integer;

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/dto/MediaSourceInfo;->setFormats(Ljava/util/ArrayList;)V

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/dto/MediaSourceInfo;->setMediaStreams(Ljava/util/ArrayList;)V

    .line 325
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/dto/MediaSourceInfo;->setRequiredHttpHeaders(Ljava/util/HashMap;)V

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/dto/MediaSourceInfo;->setPlayableStreamFileNames(Ljava/util/ArrayList;)V

    const/4 v0, 0x1

    .line 327
    invoke-virtual {p0, v0}, Lmediabrowser/model/dto/MediaSourceInfo;->setSupportsTranscoding(Z)V

    .line 328
    invoke-virtual {p0, v0}, Lmediabrowser/model/dto/MediaSourceInfo;->setSupportsDirectStream(Z)V

    .line 329
    invoke-virtual {p0, v0}, Lmediabrowser/model/dto/MediaSourceInfo;->setSupportsDirectPlay(Z)V

    return-void
.end method


# virtual methods
.method public final GetDefaultAudioStream(Ljava/lang/Integer;)Lmediabrowser/model/entities/MediaStream;
    .locals 4

    if-eqz p1, :cond_1

    .line 362
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 364
    invoke-virtual {p0}, Lmediabrowser/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/entities/MediaStream;

    .line 366
    invoke-virtual {v1}, Lmediabrowser/model/entities/MediaStream;->getType()Lmediabrowser/model/entities/MediaStreamType;

    move-result-object v2

    sget-object v3, Lmediabrowser/model/entities/MediaStreamType;->Audio:Lmediabrowser/model/entities/MediaStreamType;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lmediabrowser/model/entities/MediaStream;->getIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    .line 373
    :cond_1
    invoke-virtual {p0}, Lmediabrowser/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/entities/MediaStream;

    .line 375
    invoke-virtual {v0}, Lmediabrowser/model/entities/MediaStream;->getType()Lmediabrowser/model/entities/MediaStreamType;

    move-result-object v1

    sget-object v2, Lmediabrowser/model/entities/MediaStreamType;->Audio:Lmediabrowser/model/entities/MediaStreamType;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lmediabrowser/model/entities/MediaStream;->getIsDefault()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 381
    :cond_3
    invoke-virtual {p0}, Lmediabrowser/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/entities/MediaStream;

    .line 383
    invoke-virtual {v0}, Lmediabrowser/model/entities/MediaStream;->getType()Lmediabrowser/model/entities/MediaStreamType;

    move-result-object v1

    sget-object v2, Lmediabrowser/model/entities/MediaStreamType;->Audio:Lmediabrowser/model/entities/MediaStreamType;

    if-ne v1, v2, :cond_4

    return-object v0

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public final GetMediaStream(Lmediabrowser/model/entities/MediaStreamType;I)Lmediabrowser/model/entities/MediaStream;
    .locals 3

    .line 410
    invoke-virtual {p0}, Lmediabrowser/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/entities/MediaStream;

    .line 412
    invoke-virtual {v1}, Lmediabrowser/model/entities/MediaStream;->getType()Lmediabrowser/model/entities/MediaStreamType;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lmediabrowser/model/entities/MediaStream;->getIndex()I

    move-result v2

    if-ne v2, p2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final GetStreamCount(Lmediabrowser/model/entities/MediaStreamType;)Ljava/lang/Integer;
    .locals 4

    .line 426
    invoke-virtual {p0}, Lmediabrowser/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmediabrowser/model/entities/MediaStream;

    add-int/lit8 v1, v1, 0x1

    .line 429
    invoke-virtual {v3}, Lmediabrowser/model/entities/MediaStream;->getType()Lmediabrowser/model/entities/MediaStreamType;

    move-result-object v3

    if-ne v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 440
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final IsSecondaryAudio(Lmediabrowser/model/entities/MediaStream;)Ljava/lang/Boolean;
    .locals 6

    .line 446
    invoke-virtual {p0}, Lmediabrowser/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/entities/MediaStream;

    .line 448
    invoke-virtual {v1}, Lmediabrowser/model/entities/MediaStream;->getType()Lmediabrowser/model/entities/MediaStreamType;

    move-result-object v4

    sget-object v5, Lmediabrowser/model/entities/MediaStreamType;->Audio:Lmediabrowser/model/entities/MediaStreamType;

    if-ne v4, v5, :cond_0

    invoke-virtual {v1}, Lmediabrowser/model/entities/MediaStream;->getIsDefault()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 450
    invoke-virtual {v1}, Lmediabrowser/model/entities/MediaStream;->getIndex()I

    move-result v0

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getIndex()I

    move-result p1

    if-eq v0, p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 455
    :cond_2
    invoke-virtual {p0}, Lmediabrowser/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/entities/MediaStream;

    .line 457
    invoke-virtual {v1}, Lmediabrowser/model/entities/MediaStream;->getType()Lmediabrowser/model/entities/MediaStreamType;

    move-result-object v4

    sget-object v5, Lmediabrowser/model/entities/MediaStreamType;->Audio:Lmediabrowser/model/entities/MediaStreamType;

    if-ne v4, v5, :cond_3

    .line 459
    invoke-virtual {v1}, Lmediabrowser/model/entities/MediaStream;->getIndex()I

    move-result v0

    invoke-virtual {p1}, Lmediabrowser/model/entities/MediaStream;->getIndex()I

    move-result p1

    if-eq v0, p1, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getBitrate()Ljava/lang/Integer;
    .locals 1

    .line 258
    iget-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->Bitrate:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getBufferMs()Ljava/lang/Integer;
    .locals 1

    .line 189
    iget-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->BufferMs:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getContainer()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->Container:Ljava/lang/String;

    return-object v0
.end method

.method public final getDefaultAudioStream()Lmediabrowser/model/entities/MediaStream;
    .locals 1

    .line 355
    invoke-virtual {p0}, Lmediabrowser/model/dto/MediaSourceInfo;->getDefaultAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmediabrowser/model/dto/MediaSourceInfo;->GetDefaultAudioStream(Ljava/lang/Integer;)Lmediabrowser/model/entities/MediaStream;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultAudioStreamIndex()Ljava/lang/Integer;
    .locals 1

    .line 335
    iget-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->DefaultAudioStreamIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getDefaultSubtitleStreamIndex()Ljava/lang/Integer;
    .locals 1

    .line 344
    iget-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->DefaultSubtitleStreamIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getDirectStreamUrl()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->DirectStreamUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getETag()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->ETag:Ljava/lang/String;

    return-object v0
.end method

.method public final getFormats()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->Formats:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsInfiniteStream()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->IsInfiniteStream:Z

    return v0
.end method

.method public final getIsRemote()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->IsRemote:Z

    return v0
.end method

.method public final getIsoType()Lmediabrowser/model/entities/IsoType;
    .locals 1

    .line 209
    iget-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->IsoType:Lmediabrowser/model/entities/IsoType;

    return-object v0
.end method

.method public final getLiveStreamId()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->LiveStreamId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediaStreams()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/entities/MediaStream;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->MediaStreams:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOpenToken()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->OpenToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->Path:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayableStreamFileNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->PlayableStreamFileNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getProtocol()Lmediabrowser/model/mediainfo/MediaProtocol;
    .locals 1

    .line 12
    iget-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->Protocol:Lmediabrowser/model/mediainfo/MediaProtocol;

    return-object v0
.end method

.method public final getReadAtNativeFramerate()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->ReadAtNativeFramerate:Z

    return v0
.end method

.method public final getRequiredHttpHeaders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->RequiredHttpHeaders:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getRequiresClosing()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->RequiresClosing:Z

    return v0
.end method

.method public final getRequiresOpening()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->RequiresOpening:Z

    return v0
.end method

.method public final getRunTimeTicks()Ljava/lang/Long;
    .locals 1

    .line 99
    iget-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->RunTimeTicks:Ljava/lang/Long;

    return-object v0
.end method

.method public final getSize()Ljava/lang/Long;
    .locals 1

    .line 60
    iget-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->Size:Ljava/lang/Long;

    return-object v0
.end method

.method public final getSupportsDirectPlay()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->SupportsDirectPlay:Z

    return v0
.end method

.method public final getSupportsDirectStream()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->SupportsDirectStream:Z

    return v0
.end method

.method public final getSupportsTranscoding()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->SupportsTranscoding:Z

    return v0
.end method

.method public final getTimestamp()Lmediabrowser/model/mediainfo/TransportStreamTimestamp;
    .locals 1

    .line 268
    iget-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->Timestamp:Lmediabrowser/model/mediainfo/TransportStreamTimestamp;

    return-object v0
.end method

.method public final getTranscodingContainer()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->TranscodingContainer:Ljava/lang/String;

    return-object v0
.end method

.method public final getTranscodingSubProtocol()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->TranscodingSubProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public final getTranscodingUrl()Ljava/lang/String;
    .locals 1

    .line 287
    iget-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->TranscodingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lmediabrowser/model/dto/MediaSourceType;
    .locals 1

    .line 41
    iget-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->Type:Lmediabrowser/model/dto/MediaSourceType;

    return-object v0
.end method

.method public final getVideo3DFormat()Lmediabrowser/model/entities/Video3DFormat;
    .locals 1

    .line 219
    iget-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->Video3DFormat:Lmediabrowser/model/entities/Video3DFormat;

    return-object v0
.end method

.method public final getVideoStream()Lmediabrowser/model/entities/MediaStream;
    .locals 5

    .line 396
    invoke-virtual {p0}, Lmediabrowser/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/entities/MediaStream;

    .line 398
    invoke-virtual {v1}, Lmediabrowser/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v2

    .line 399
    invoke-virtual {v1}, Lmediabrowser/model/entities/MediaStream;->getType()Lmediabrowser/model/entities/MediaStreamType;

    move-result-object v3

    sget-object v4, Lmediabrowser/model/entities/MediaStreamType;->Video:Lmediabrowser/model/entities/MediaStreamType;

    if-ne v3, v4, :cond_0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    const-string v3, "jpeg"

    invoke-static {v2, v3}, Lmediabrowser/model/extensions/StringHelper;->IndexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getVideoType()Lmediabrowser/model/entities/VideoType;
    .locals 1

    .line 199
    iget-object v0, p0, Lmediabrowser/model/dto/MediaSourceInfo;->VideoType:Lmediabrowser/model/entities/VideoType;

    return-object v0
.end method

.method public final setBitrate(Ljava/lang/Integer;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->Bitrate:Ljava/lang/Integer;

    return-void
.end method

.method public final setBufferMs(Ljava/lang/Integer;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->BufferMs:Ljava/lang/Integer;

    return-void
.end method

.method public final setContainer(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->Container:Ljava/lang/String;

    return-void
.end method

.method public final setDefaultAudioStreamIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->DefaultAudioStreamIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setDefaultSubtitleStreamIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->DefaultSubtitleStreamIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setDirectStreamUrl(Ljava/lang/String;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->DirectStreamUrl:Ljava/lang/String;

    return-void
.end method

.method public final setETag(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->ETag:Ljava/lang/String;

    return-void
.end method

.method public final setFormats(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 252
    iput-object p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->Formats:Ljava/util/ArrayList;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->Id:Ljava/lang/String;

    return-void
.end method

.method public final setIsInfiniteStream(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->IsInfiniteStream:Z

    return-void
.end method

.method public final setIsRemote(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->IsRemote:Z

    return-void
.end method

.method public final setIsoType(Lmediabrowser/model/entities/IsoType;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->IsoType:Lmediabrowser/model/entities/IsoType;

    return-void
.end method

.method public final setLiveStreamId(Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->LiveStreamId:Ljava/lang/String;

    return-void
.end method

.method public final setMediaStreams(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/entities/MediaStream;",
            ">;)V"
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->MediaStreams:Ljava/util/ArrayList;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->Name:Ljava/lang/String;

    return-void
.end method

.method public final setOpenToken(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->OpenToken:Ljava/lang/String;

    return-void
.end method

.method public final setPath(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->Path:Ljava/lang/String;

    return-void
.end method

.method public final setPlayableStreamFileNames(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 242
    iput-object p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->PlayableStreamFileNames:Ljava/util/ArrayList;

    return-void
.end method

.method public final setProtocol(Lmediabrowser/model/mediainfo/MediaProtocol;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->Protocol:Lmediabrowser/model/mediainfo/MediaProtocol;

    return-void
.end method

.method public final setReadAtNativeFramerate(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->ReadAtNativeFramerate:Z

    return-void
.end method

.method public final setRequiredHttpHeaders(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 281
    iput-object p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->RequiredHttpHeaders:Ljava/util/HashMap;

    return-void
.end method

.method public final setRequiresClosing(Z)V
    .locals 0

    .line 175
    iput-boolean p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->RequiresClosing:Z

    return-void
.end method

.method public final setRequiresOpening(Z)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->RequiresOpening:Z

    return-void
.end method

.method public final setRunTimeTicks(Ljava/lang/Long;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->RunTimeTicks:Ljava/lang/Long;

    return-void
.end method

.method public final setSize(Ljava/lang/Long;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->Size:Ljava/lang/Long;

    return-void
.end method

.method public final setSupportsDirectPlay(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->SupportsDirectPlay:Z

    return-void
.end method

.method public final setSupportsDirectStream(Z)V
    .locals 0

    .line 130
    iput-boolean p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->SupportsDirectStream:Z

    return-void
.end method

.method public final setSupportsTranscoding(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->SupportsTranscoding:Z

    return-void
.end method

.method public final setTimestamp(Lmediabrowser/model/mediainfo/TransportStreamTimestamp;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->Timestamp:Lmediabrowser/model/mediainfo/TransportStreamTimestamp;

    return-void
.end method

.method public final setTranscodingContainer(Ljava/lang/String;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->TranscodingContainer:Ljava/lang/String;

    return-void
.end method

.method public final setTranscodingSubProtocol(Ljava/lang/String;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->TranscodingSubProtocol:Ljava/lang/String;

    return-void
.end method

.method public final setTranscodingUrl(Ljava/lang/String;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->TranscodingUrl:Ljava/lang/String;

    return-void
.end method

.method public final setType(Lmediabrowser/model/dto/MediaSourceType;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->Type:Lmediabrowser/model/dto/MediaSourceType;

    return-void
.end method

.method public final setVideo3DFormat(Lmediabrowser/model/entities/Video3DFormat;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->Video3DFormat:Lmediabrowser/model/entities/Video3DFormat;

    return-void
.end method

.method public final setVideoType(Lmediabrowser/model/entities/VideoType;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lmediabrowser/model/dto/MediaSourceInfo;->VideoType:Lmediabrowser/model/entities/VideoType;

    return-void
.end method
