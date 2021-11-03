.class public Lmediabrowser/model/dto/ImageSet;
.super Ljava/lang/Object;
.source "ImageSet.java"


# instance fields
.field private AspectRatio:F

.field private Thumbnails:[Lmediabrowser/model/dto/ThumbnailInfoDto;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAspectRatio()F
    .locals 1

    .line 8
    iget v0, p0, Lmediabrowser/model/dto/ImageSet;->AspectRatio:F

    return v0
.end method

.method public getThumbnails()[Lmediabrowser/model/dto/ThumbnailInfoDto;
    .locals 1

    .line 16
    iget-object v0, p0, Lmediabrowser/model/dto/ImageSet;->Thumbnails:[Lmediabrowser/model/dto/ThumbnailInfoDto;

    return-object v0
.end method

.method public setAspectRatio(F)V
    .locals 0

    .line 12
    iput p1, p0, Lmediabrowser/model/dto/ImageSet;->AspectRatio:F

    return-void
.end method

.method public setThumbnails([Lmediabrowser/model/dto/ThumbnailInfoDto;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lmediabrowser/model/dto/ImageSet;->Thumbnails:[Lmediabrowser/model/dto/ThumbnailInfoDto;

    return-void
.end method
