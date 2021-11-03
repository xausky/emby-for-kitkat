.class public Lmediabrowser/model/mediainfo/LiveStreamResponse;
.super Ljava/lang/Object;
.source "LiveStreamResponse.java"


# instance fields
.field private MediaSource:Lmediabrowser/model/dto/MediaSourceInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;
    .locals 1

    .line 10
    iget-object v0, p0, Lmediabrowser/model/mediainfo/LiveStreamResponse;->MediaSource:Lmediabrowser/model/dto/MediaSourceInfo;

    return-object v0
.end method

.method public final setMediaSource(Lmediabrowser/model/dto/MediaSourceInfo;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lmediabrowser/model/mediainfo/LiveStreamResponse;->MediaSource:Lmediabrowser/model/dto/MediaSourceInfo;

    return-void
.end method
