.class public Lmediabrowser/model/dto/ThumbnailInfoDto;
.super Ljava/lang/Object;
.source "ThumbnailInfoDto.java"


# instance fields
.field private ImageTag:Ljava/lang/String;

.field private PositionTicks:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHasImage()Z
    .locals 1

    .line 49
    invoke-virtual {p0}, Lmediabrowser/model/dto/ThumbnailInfoDto;->getImageTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getImageTag()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lmediabrowser/model/dto/ThumbnailInfoDto;->ImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getPositionTicks()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lmediabrowser/model/dto/ThumbnailInfoDto;->PositionTicks:J

    return-wide v0
.end method

.method public final setImageTag(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lmediabrowser/model/dto/ThumbnailInfoDto;->ImageTag:Ljava/lang/String;

    return-void
.end method

.method public final setPositionTicks(J)V
    .locals 0

    .line 22
    iput-wide p1, p0, Lmediabrowser/model/dto/ThumbnailInfoDto;->PositionTicks:J

    return-void
.end method
