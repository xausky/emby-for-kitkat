.class public Lmediabrowser/model/mediainfo/PlaybackInfoResponse;
.super Ljava/lang/Object;
.source "PlaybackInfoResponse.java"


# instance fields
.field private ErrorCode:Lmediabrowser/model/dlna/PlaybackErrorCode;

.field private MediaSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/MediaSourceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private PlaySessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lmediabrowser/model/mediainfo/PlaybackInfoResponse;->ErrorCode:Lmediabrowser/model/dlna/PlaybackErrorCode;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/mediainfo/PlaybackInfoResponse;->setMediaSources(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final getErrorCode()Lmediabrowser/model/dlna/PlaybackErrorCode;
    .locals 1

    .line 46
    iget-object v0, p0, Lmediabrowser/model/mediainfo/PlaybackInfoResponse;->ErrorCode:Lmediabrowser/model/dlna/PlaybackErrorCode;

    return-object v0
.end method

.method public final getMediaSources()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/MediaSourceInfo;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lmediabrowser/model/mediainfo/PlaybackInfoResponse;->MediaSources:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getPlaySessionId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lmediabrowser/model/mediainfo/PlaybackInfoResponse;->PlaySessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final setErrorCode(Lmediabrowser/model/dlna/PlaybackErrorCode;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lmediabrowser/model/mediainfo/PlaybackInfoResponse;->ErrorCode:Lmediabrowser/model/dlna/PlaybackErrorCode;

    return-void
.end method

.method public final setMediaSources(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmediabrowser/model/dto/MediaSourceInfo;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lmediabrowser/model/mediainfo/PlaybackInfoResponse;->MediaSources:Ljava/util/ArrayList;

    return-void
.end method

.method public final setPlaySessionId(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lmediabrowser/model/mediainfo/PlaybackInfoResponse;->PlaySessionId:Ljava/lang/String;

    return-void
.end method
